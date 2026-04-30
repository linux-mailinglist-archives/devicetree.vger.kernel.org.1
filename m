Return-Path: <devicetree+bounces-292058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAoXLifs82kV8wEAu9opvQ
	(envelope-from <devicetree+bounces-292058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 01 May 2026 01:56:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 121F34A9058
	for <lists+devicetree@lfdr.de>; Fri, 01 May 2026 01:56:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 302FE304045D
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 23:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 055D93D9DB3;
	Thu, 30 Apr 2026 23:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LcSMixJU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC5E3D9DAA
	for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 23:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777593290; cv=none; b=Y1Jvw6eDNEiy0ynLTwvyK80FkM2xIDB4l7GR35DqFRNDCeWQpiY4n3GqR6IsIP+ohIQpmj6LSeFc9gqsw16Samz0K3UH1IGeOiRImsV3Iyytz68ZbRRTiOoS7w9mkY5u5wlAv/BafkXcb2H7rhBq1ThQ2O/u/QBMtNK++3saLts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777593290; c=relaxed/simple;
	bh=AAia2qkIDmebyJmcu5PDgIuA9G3bwKwbRmrU6wAzc8o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X9oJEanKhCv9PLY+X6+vk2n7NLdbjrSZpjrbG7E5UhIbG+9pIPRxZM9CkufgKP958a3pnlZlKgdjQcseznPk7Nlxl+caEHUJuAyxto1Ud1Mq3JnPJQAgSVCpl6F4sO1rQ3F4Y/TLbP1YEE+uLy0lhpsszgHvTidzcsjwKU0BkJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LcSMixJU; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ba8472c1613so254002166b.0
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 16:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777593288; x=1778198088; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DmXN7WSIeoo9s9Ua/S5/Car8IH3Zms7BcEHEOsscCUg=;
        b=LcSMixJUKRyld/VuQ5OlsCFEgvYSWsWM35y78hDiFCac64We1ApNtzRtDqPgPbagrO
         H9uF8iw80zzf268cqHmuPrBY93N5uxUkqK2pNHT+99XZr6ZW4JLGBL09Q30ZsEXG60uO
         49iO0qwR1zUf6IKUA08kEPeQz5YALCa4JF6v0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777593288; x=1778198088;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DmXN7WSIeoo9s9Ua/S5/Car8IH3Zms7BcEHEOsscCUg=;
        b=fy7bmh/yuqxOpJr9u6Q7wONEAEDs0B/321HuuNIcrAJL9BH8aa5vS+JQtARpvU6qGC
         lMXpZUD9axbI3ld6d4WvhU75a5B+PLjuZ+OPqHsLF1Ui0UGpeF76EPGvqvV0y2VWirNZ
         SGNhO+a9F0unxuyvIj+jHh94AAGDpui06R5oO6PR9BwPbONfoYso7tm+fZIxRrEdK394
         zyUVhVC4sLV/Er1juhBwBo+fmrQWpCLfHLbcMjRgqDu25BrSZaHAf8sUFu0G9nahjPSY
         N9JpxfccSdHgdg7cxjxu4B9lusOQDVn+TLJ4qQMSmqoA791j5Jh5HSw9tgjKFJ0iHvxm
         kKxA==
X-Forwarded-Encrypted: i=1; AFNElJ+roA3nohw3vlCuQh8MRFgEIYenVHcHbIf3yLWPEv5apuzV/2RJF4K9pmrkCUKqXpR938iIS2gXfyPD@vger.kernel.org
X-Gm-Message-State: AOJu0YzOLC7nCwp1vECi3iAeLeGvEwGHKIwKeV15qry4C8DMbdvof/pg
	L1AumT3doubVcKl7LTBOeXF6XYCIxdcnB9G8OcwAE95s0BsnMp5/KdB21fp3YmC4KbEerJRH5yp
	dFe7yDw==
X-Gm-Gg: AeBDiety6XOvqwiNqNsuAXZvFfV1qVqD3yl1M/dlIhjbPjaaR8ZtlU1bAkvtaS07pwN
	Wk8SGHPCpwk3K+LmjMvl0iJj1IMopfZgMW9gRGYW8DrGUqNeubjli6M0mZH+oDNDLCBplm6qWiC
	4ae0KuNP7szkEMSCTVUQefI9n7HWYgA4btT+cqHE60HmYxnzyQnRQ/gRnUo69uv8WbBC8iVAomu
	7A/vDp8t8OIoFVcx8r4K20GlYYDbXs9a/nislPaYHqPLrLlcg0bDuKb/HG4zN/02eD+BEIPejr+
	Ssy5vDwDq8VCykE/hXyu3Y5Jxv/eWxwczal4ieGZChQ7Yr5TexoItF2fqN8RoFlXpwR3XCHjxaw
	/n2NJQXeoSTr3Xz7OP8yfw2Yjh+EviYRW6Ii+jlRlKxpFgkiKyfROfuFg48+S5SGTzq7pLgPbqV
	ugkYLyBRQouaf+vqUG90+DMI24/mj90Me8G/9nsryprau6NEgFGrhPuLDSZTOIKXLz9aJK1d38
X-Received: by 2002:a17:907:2d0b:b0:ba5:8976:552a with SMTP id a640c23a62f3a-bbebf0ea01dmr41012966b.15.1777593287879;
        Thu, 30 Apr 2026 16:54:47 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com. [209.85.221.43])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-67b87daf995sm417569a12.22.2026.04.30.16.54.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 16:54:47 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-43eb05b1875so820203f8f.3
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 16:54:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/zV9knnFbZDdlBW97UhgR2EFElB8w1CTJ3yWwppiZbX3IYBFHyszil4acO97ygwOlIEbCy6slpYvt4@vger.kernel.org
X-Received: by 2002:a05:6000:2905:b0:43f:e16f:3cc3 with SMTP id
 ffacd0b85a97d-44a88058b32mr1086350f8f.22.1777593286514; Thu, 30 Apr 2026
 16:54:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428200712.2660635-1-briannorris@chromium.org> <20260428200712.2660635-5-briannorris@chromium.org>
In-Reply-To: <20260428200712.2660635-5-briannorris@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 Apr 2026 16:54:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XrPJwCC3bUJVQJGPwO3HifNOkK4tFd+xwNac_36kHvqg@mail.gmail.com>
X-Gm-Features: AVHnY4IqCV1PxHRIY-OTvaBqqWEOfyPxbcpa8ZWBIyLwROAiOEZ_SsblLMHW3zY
Message-ID: <CAD=FV=XrPJwCC3bUJVQJGPwO3HifNOkK4tFd+xwNac_36kHvqg@mail.gmail.com>
Subject: Re: [PATCH 4/7] ARM: dts: samsung: Add #{address,size}-cells to
 Chromium-based /firmware
To: Brian Norris <briannorris@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Tzung-Bi Shih <tzungbi@kernel.org>, chrome-platform@lists.linux.dev, 
	linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 121F34A9058
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292058-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nvidia.com,sntech.de,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,chromium.org,samsung.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:dkim,chromium.org:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Hi,

On Tue, Apr 28, 2026 at 1:07=E2=80=AFPM Brian Norris <briannorris@chromium.=
org> wrote:
>
> Chromium/Depthcharge bootloaders may dynamically add a few device nodes
> to a system's DTB under a /firmware node. A typical DT looks something
> like the following:
>
> / {
>         firmware {
>                 ranges;
>
>                 coreboot {
>                         compatible =3D "coreboot";
>                         reg =3D <...>;
>                         ...;
>                 };
>         };
> };
>
> Notably, the /firmware node has an empty 'ranges', but does not have
> address/size-cells.
>
> Commit 6e5773d52f4a ("of/address: Fix WARN when attempting translating
> non-translatable addresses") started requiring #address-cells for a
> device's parent if we want to use the reg resource in a device node.
> This leads to errors like the following:
>
> [    7.763870] coreboot_table firmware:coreboot: probe with driver corebo=
ot_table failed with error -22
>
> Add appropriate #{address,size}-cells to work around the problem.
>
> Note that Google has also patched the Depthcharge bootloader source to
> add {address,size}-cells [1], but bootloader updates are typically
> delivered only via Google OS updates. Not all users install Google
> software updates, and even if they do, Google may not produce updated
> binaries for all/older devices.
>
> [1] https://lore.kernel.org/all/20241209092809.GA3246424@google.com/
>     https://crrev.com/c/6051580 ("coreboot: Insert #address-cells and
>     #size-cells for firmware node")
>
> Closes: https://lore.kernel.org/all/aeKlYzTiL0OB1y3g@google.com/
> Fixes: 6e5773d52f4a ("of/address: Fix WARN when attempting translating no=
n-translatable addresses")
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
>  arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi | 5 +++++
>  arch/arm/boot/dts/samsung/exynos5250-spring.dts       | 5 +++++
>  arch/arm/boot/dts/samsung/exynos5420-peach-pit.dts    | 5 +++++
>  arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts     | 5 +++++
>  4 files changed, 20 insertions(+)

As per:

http://lore.kernel.org/r/afExm9HeB-FMmP4P@google.com

This patch shouldn't land.

