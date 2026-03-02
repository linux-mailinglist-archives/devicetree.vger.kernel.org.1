Return-Path: <devicetree+bounces-270192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uM3dN3jXpWmuHQAAu9opvQ
	(envelope-from <devicetree+bounces-270192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 19:31:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8355E1DE685
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 19:31:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E7BE305A419
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 18:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECAB5342535;
	Mon,  2 Mar 2026 18:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IsfZWYW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D60222565
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 18:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772476268; cv=pass; b=NkjxzMX2nzYYSMzF5ydHjxj7Df4tzMxn0tCfJ7DimQr79PWQbOQ0KpoKD6l/PqLMC9gIk188ISvABDPkrmCJYV6sHWNtbYAQ3eC2IQErBi+hdpH2i0ADM9o6bmbGze1xiRIhn+978b/BJLvEPw5uB+b/kDwQB1A9RqsgroKFau0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772476268; c=relaxed/simple;
	bh=kt2T9iC2Y/wd08xI3GU9gJHg4i4C2OvrhJg73KQ4pds=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FPGq6geTJwtX89C4ABmjZyA6H6XyybrMudEfDgKabc+66+xK+toVBFoEzqnyXqKSe+jY5HTaCGzCeNdybDs720RZLJNmnBNttVxEa6Aec2J5nCwAFHRBGaTDBhra1i3vBh6kk/DDrvbW/EYmWqAdWFMWtaq/oaaM4fTqhK3ivdM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IsfZWYW4; arc=pass smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-64c9a398bc7so4533304d50.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 10:31:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772476266; cv=none;
        d=google.com; s=arc-20240605;
        b=f57KH5/6kjnDiyBW2HHpX8TVvr+14aXSCRTVtCn76wzdvyvtGto1Wbe1HtqV/udjUY
         GsiwwDI58YpMiaGQJRy3GDG2koyY2nczjv3KN8qR6WwbkXDVywQ+rZhKMLl+u2rAlfei
         XfzUNhK9fByRl2hR+v+s5PedFbFA7R4TtkbiKm7p2jugbKgj7QRudyGR43Biu5rOwytD
         jvVkM0VuI6grM/RBDHx612xw6W0h0n0Exvn6mIPiWhyriVA1fCj3tngOys2UiTJs90Ea
         Oru/BvkcXRqxHS1zWvrOGPbZN2XzY5DObAqRkRNPqAr/sJ2dgn7D9kZrLZlbDM/kiSFy
         Ah0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=81g1AQ9LUBvNGZAcgE0oE1RFZWKZ81udvij0ADF9Goc=;
        fh=YB5C9qyJ7QrhLttBRQq63hf+Li8FDoVBB2XWH9NH+bY=;
        b=fLqlSsNmQiLKz7QVsuswGV3h8mCG/qgZVCLGPkdkYMDtkLisHkXiEz5uGo1oI7t73p
         Z1t7XOahYyt/s+Yv8q7P3dlHV7k4M/r0RizJtZTRxPUHzcs/HU/IQhFAycaFTJ7P8Juh
         L9+j68QjSrY21NhYdGwnCyIoWptwyfWhviTiBg4RJwiivRIqWoK/iBQRZarY9QML04/Y
         Feh0pWVvft0YAO7Q5fTZVcQOdohJ80/9iHI22C11vbH9z+Rqaij47+fFNFqUO4Loy0x6
         mXS56nxh5B0QvubkxYL4g3B/Hr+0yt3iIMdP6AydikunDt1092aVoEM2EWpwJIs6k6jq
         wImQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772476266; x=1773081066; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=81g1AQ9LUBvNGZAcgE0oE1RFZWKZ81udvij0ADF9Goc=;
        b=IsfZWYW4jZJ0ZN6TNJlkST4AU6gR+cnISCt1N6NZwSy40N2iZ+pY5KinFwN+vZUyEU
         DqmETpflSKqPtOnA2Dx0q2Be7tRAqv28/eouzOON68SCBUQwa1m50LEquroKh+jSSvkw
         JtDPAhSAW/L8akw/EJUKgH6BLJBPJ5lUN2eucqN+qsWqXlVJVLappLXdpl2YKgfzWk7C
         6RInREWG/HWugItMpcTiwTcVWaNcoSxF1x2utlSnMvjeQn2MK4xa0MoJugW3OtkOqi+I
         UlWf99I0+NY5idT6SgvJxVhJ5Xr0hOJihlbk4XedAKm6DexdTVUOV7cz927PWArNn3cI
         BXlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772476266; x=1773081066;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=81g1AQ9LUBvNGZAcgE0oE1RFZWKZ81udvij0ADF9Goc=;
        b=NTrjq5zJCE6a1oTJWTZVcOfuJ7yIWHbMQ4dVsRLe0j1ZgL1lz0n518T5i3ARA0huyu
         Uil2jHh3ka8bWzy5i4Ulx5A0gZ51feYEhSCj0eHfq5aZWNJ1zLIbpX0gJA7yijywh2Tc
         dxHVnesHmT2tDKbIVFpFdvsNFtUtTVfHsAFHg7Kn/zyCCv32xoAhU4QYMfSzZvkafJZm
         z7ZHk+JTPaKyvR+Y1Wc32SiGqa3yoSvbEITZlqAQT/T95pwj9zqvBtR5H5Aofu3XWaVN
         pk9mZFjECrl7LQH+/a8B/X9YpXYccGySZuJk7iwJXCm0PqwfG8cVKxodG4XYtatXdq+W
         LjeA==
X-Forwarded-Encrypted: i=1; AJvYcCWnyV77mYmW7fkGklzkUy2O7gWGP9L3Ml/wVazW1aWsMgl6UZcaFjZt1lJWU41As5Oh+JmP1w/MtEB4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9ajP2MCcZ5GnPe6DHsajmTKbMwGlzQ4M3eM5Nv+O0h1d5X1Yj
	Xd50DT1BwtzKbL6DuQVoTOWn0PC5IlG/iaYSFS/CLJ8bs5gYx/Z7hMpphsITgVogEFyt2N2IcnH
	j9sdsTws8d8T7bbHJkHcKSTH43iqKyzH5/Y3DqqyDbQ==
X-Gm-Gg: ATEYQzw/mYFbb2p8uMczZUeBeGOOI4l5vR1mWD7yLBFX1aRfxhfxNWt8bk81EzTHOZ0
	jF4z3dNxogpNTbD2NQM235YzsczKAy+w1MxcAqLr4DJKnYSRdbFxlc386IZdnmb4QVdVi6Yrz02
	tNt65s8M5Ep0jtoJewNOfLvR7sDHR/om9BuJHCgHxAjbBagfAr0FOIBn6NEpXd2tslVWAhaHXzf
	FBnNTR5Z3iccDD0JnNQez5JWsMBDIyPnIiSKjMPRUzTgIb2I34J8fkQz6rZ6QBe1KOvGoGWIV3S
	5oyqHRcog5dsfNDpHDybYtDlg4MIOYEz7LNsqVprUdVFvbsEcLLGs/hY13mONT/QvQ==
X-Received: by 2002:a05:690e:2060:b0:64a:e1de:e830 with SMTP id
 956f58d0204a3-64cc2025a5cmr8768669d50.16.1772476265235; Mon, 02 Mar 2026
 10:31:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org>
In-Reply-To: <20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org>
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Mon, 2 Mar 2026 18:30:54 +0000
X-Gm-Features: AaiRm515e3WzwnsMys39sfPXCKSu89p0-qrgz1al4LhQ_1OobhhtPkQJhg_LdoM
Message-ID: <CANgGJDpjsyoCnuXuMMi1L3nWNJsM4aMs6C=NvBcTkWeC3NFadQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] thermal: samsung: Add support for Google GS101 TMU
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	willmcvicker@google.com, jyescas@google.com, shin.son@samsung.com, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 8355E1DE685
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270192-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,intel.com,arm.com,samsung.com,gmail.com,google.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

Hi Tudor,

On Sun, 1 Mar 2026 at 02:26, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:

[...]

> ---
> Tudor Ambarus (7):
>       dt-bindings: thermal: Add Google GS101 TMU
>       firmware: samsung: acpm: Add TMU protocol support
>       firmware: samsung: acpm: Add devm_acpm_get_by_phandle helper
>       thermal: samsung: Add support for GS101 TMU
>       MAINTAINERS: Add entry for Samsung Exynos ACPM thermal driver
>       arm64: dts: exynos: gs101: Add thermal management unit
>       arm64: defconfig: enable Exynos ACPM thermal support
>
>  .../bindings/thermal/google,gs101-tmu-top.yaml     |  67 +++
>  MAINTAINERS                                        |   8 +
>  arch/arm64/boot/dts/exynos/google/gs101-tmu.dtsi   | 209 +++++++
>  arch/arm64/boot/dts/exynos/google/gs101.dtsi       |  18 +
>  arch/arm64/configs/defconfig                       |   1 +
>  drivers/firmware/samsung/Makefile                  |   1 +
>  drivers/firmware/samsung/exynos-acpm-tmu.c         | 212 +++++++
>  drivers/firmware/samsung/exynos-acpm-tmu.h         |  33 ++
>  drivers/firmware/samsung/exynos-acpm.c             |  35 ++
>  drivers/thermal/samsung/Kconfig                    |  16 +
>  drivers/thermal/samsung/Makefile                   |   2 +
>  drivers/thermal/samsung/acpm-tmu.c                 | 643 +++++++++++++++++++++
>  .../linux/firmware/samsung/exynos-acpm-protocol.h  |  30 +
>  13 files changed, 1275 insertions(+)
> ---
> base-commit: e2211f5d980086dd9fbdab3bcd86b715e12cae13
> change-id: 20260113-acpm-tmu-27e21f0e2c3b

JFYI, the series doesn't clearly apply on today's linux-next:

Grabbing thread from
lore.kernel.org/all/20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org/t.mbox.gz
Checking for newer revisions
Grabbing search results from lore.kernel.org
Analyzing 18 messages in the thread
Looking for additional code-review trailers on lore.kernel.org
Analyzing 20 code-review messages
Checking attestation on all messages, may take a moment...

Base: using specified base-commit e2211f5d980086dd9fbdab3bcd86b715e12cae13
Applying: dt-bindings: thermal: Add Google GS101 TMU
Applying: firmware: samsung: acpm: Add TMU protocol support
Patch failed at 0002 firmware: samsung: acpm: Add TMU protocol support
error: patch failed: include/linux/firmware/samsung/exynos-acpm-protocol.h:40
error: include/linux/firmware/samsung/exynos-acpm-protocol.h: patch
does not apply

Was it done against mainline?

Thanks,
Alexey

