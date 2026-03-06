Return-Path: <devicetree+bounces-272128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPwIACXcqmkZXwEAu9opvQ
	(envelope-from <devicetree+bounces-272128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 14:52:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D9722222C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 14:52:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19EB2310FEFB
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 13:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F57333BBB9;
	Fri,  6 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WcWg+paN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3086739B4AF
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 13:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772804692; cv=pass; b=OAuxiWfIKA9njNOViqW1hZq7NTBaBeQdFKdyUwIxn1FoXAmEgRTK0IgBS/DIDefIFGdbUpUshjwdai7Ld7JaS5nEiPAgHlGHuxllWJn19wAAYvJvFnawZG7sdzxBAbfZaEUROGhw00C+fKityV0ShVTGYNnUwrsyyHiFViZ0OnA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772804692; c=relaxed/simple;
	bh=i0WGYGTm8LqEUFseEa3URMmZTt1pdK7ZgIZfNZS4/U4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F+5DxT1AiGOp+Td7qpOeA/L3978eMmvm7dach/3I3U6LcVvZJFtkH7PhQYPMoabKQ7X2kqaVONQt/SfQCVN0qs9hPyLrYA5u9VgiSRy2VekfwU7o1S8f8INWken9zN3W7MtR1+WmigYWj5wzT6uuLVq0+Pfh+LYxcFHOK6WTGOA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WcWg+paN; arc=pass smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-661b16ac011so597357a12.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 05:44:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772804687; cv=none;
        d=google.com; s=arc-20240605;
        b=RhJPOz3ueW2hlihmZKGXur7VQnm5Bb0u4j1Jr6UJxEfotYwdnfuKUO8cSkukvOeL3X
         nqgX1VrRT+yIHFHWgx1OTNZeY5F1RGppxkXE7EmYi29hG1ErcsPXgMBpu00OjEcgQlHh
         V4M5E4+VqRYWIwy+ozLnf9fcT3LjE5WooW30H9w16Hs1la+eUIMZlMAnJA+y3aU5fCDp
         b+PI0cFqHB2aFzcsS4fzCRh+w5v9eXetjGKAW7DeMK3AsoD3oHIBnv2Htoq+jeRLapMw
         BPpZZ944W3zVW4EumfkrXiC+NTBQbzakrHqGnIaM6UoyG/8Ggev0QCQEELUBsA2c1AhJ
         Ap3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d9tE6SYwSgsJrr2u3o4fxvU0+ZPS0+ntS2T2Xm0Ak0I=;
        fh=lCYhFJvBRtRsk24G1lzL6cqB63uoC04H3XfT7royd80=;
        b=AGVLvLjoguQkqRnWr66EPZcOexyUnFn74itpUeDlQ+dh6p+emOm6Jh9uezBlus0Sn9
         A1QrgjBhdHeSYP1nJT3a9SQNIc+I1DNbCfTMlg6W58mU/96k+gOyRuPFNdKHWshnNfHt
         e0hy/NjU3Wsw++DGfCdRskB517kWmYf+MAH8ZniDYMCxD67jb/q78cVOjvkA5Im/+ozH
         l1hMzEsn6EOvWGUo0LiYpphip6EN5toCP/zdFQkIutiSeBTjizWLOcMY1hdXKxrsLFUu
         nQ1YrEOXP9TOrJ7eIketiuqH8eBkg3fVnFudehfa+KcddJKD7KJTgWtjYT6S0Yyhh5AC
         tQPg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772804687; x=1773409487; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d9tE6SYwSgsJrr2u3o4fxvU0+ZPS0+ntS2T2Xm0Ak0I=;
        b=WcWg+paNKn3XkydwMW23pU4DL3rC3tD8dkef6StvkSBm80KQFO+LY8NEHzQ2l+Jzkx
         RoKBsXI7ODtcfQfTEweQXwlYK0xtbMEXF/oq2uirxmfC0yQHpTvDWIjdfiR4USAAgCMf
         ZqjaB7r7xVQjGxEln3iLv3XbGtY/GbYVOuVp7iuct6pbYBJ3//+TbBJWZVDevccxkT40
         fEdexUAxvQ4mYL6WKD6waXtMMyqCWY0CcF89wdMGMSLPVHxqQfe2ynlT5o/moW7SQVgU
         e8V+npHxel94T4AXBMEgGgZ22gxKnnFk+8NSTdLujzN12g1NQ6iRTAKYEx6mDzDuznbE
         /jag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772804687; x=1773409487;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d9tE6SYwSgsJrr2u3o4fxvU0+ZPS0+ntS2T2Xm0Ak0I=;
        b=UiL6U5cwdgQrBjZiDIQREBoGSEY+E1SYQTpyhPIPu6ylZ4AJA80N8fdqJOwjHUrJx+
         pbQEHXfudhFLLO0EHaEQIAdYuIcnsETDW1Dee1GSgjxmK99gD2WXYAwmKew6f28gThKE
         I1hMdjqC7EvpyQ6ZKi0NR0oUWKTtuEh2X29P5aq0jqrzajuj5qqr7AEYtg6RwOcckBkd
         +eNqmntl/2CsE8FUr2OQR98wznnQjXCf71KBGRLEJivCM0R0KeQd2jEro/CZnb9Bzsgu
         V5FUaBAEXbkBzYbLrSTR2LLjswxSamfX3nRd11Clz1iUW6iFZhGONijJrS8Ti7e8jhXs
         H5aw==
X-Forwarded-Encrypted: i=1; AJvYcCVGl/V18nvXBpfJQ7V3s1s2YtnC9qnvoneK63eSuiq+qJ9VXk6PbkYYgz2dcJ4t5jZ0zYSVp4VyoD4V@vger.kernel.org
X-Gm-Message-State: AOJu0Yye3IcBAbndt0d/nhWmlmHTRH2+84kk4VuAMzsquJ4hh87iG/9Q
	gDDEKyM4/yi8UKglF0IzZhPxoXvO7mo7lraHk6xDq3xcVBe6CPf3+Hre+bT+mQJHkBHFnBTWbSF
	PNdV6WOO3vajiWzyrJUMFmwUS9yWSVlikwPB/TC+O9A==
X-Gm-Gg: ATEYQzyzNF1xtfW+iygld7HXwwVm7t9gSQWmy5KC1fCR2fyWzcZ3uqu+TKGCuXzGT1c
	CPKMIokbPZWAwErw6Iwzf3EQHu8vd8wcy49j4d/wTesOSg0vFitKl9gMOQ5+VkZqHeOKSaiK4P6
	p80770oqfQDHAZFiFZQkF6ut3j0aRu2ICzeixQM4WRjsHOiT4+Vw4qajA8H58qBNuP9PHb/ZBSw
	v8cSjHrIntS2ilBiO7STpPcV6KqartaW2B/FLBlF262Qsh24l/zPDjzFkV+Ryx8Bo4jOvGki39L
	m+bgAaAf0VdvgAFZED8nPZ4KGHh9HJ3+OvliTM5qow==
X-Received: by 2002:a05:6402:270a:b0:661:3f3c:400d with SMTP id
 4fb4d7f45d1cf-6619d518a9amr1086790a12.26.1772804687337; Fri, 06 Mar 2026
 05:44:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org> <20260226-exynos850-cpuhotplug-v1-8-71d7c4063382@linaro.org>
In-Reply-To: <20260226-exynos850-cpuhotplug-v1-8-71d7c4063382@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 6 Mar 2026 13:44:35 +0000
X-Gm-Features: AaiRm51h_tbggsegFnRWczT_UoE9IcJIFd8TaOFwY8gKX5lWJfUXchYtPyM6aB8
Message-ID: <CADrjBPrC43gaRZw8289a15PLBN8ideWvO9jJwPr5beRJ=x4Rbw@mail.gmail.com>
Subject: Re: [PATCH RFC 8/8] arm64: dts: exynos850: add PMU interrupt
 generation node
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Sam Protsenko <semen.protsenko@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 95D9722222C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272128-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.181.31.48:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Action: no action

Hi Alexey,

On Thu, 26 Feb 2026 at 15:47, Alexey Klimov <alexey.klimov@linaro.org> wrote:
>
> Add pmu_intr_gen node for Exynos850. This hw block is required
> for different power management routines like CPU hotplug and
> different sleep and idle states.
> Also reference this node from main PMU node.
>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/exynos/exynos850.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
> index cb55015c8dce..e3f4fe6ee118 100644
> --- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
> @@ -211,9 +211,15 @@ gic: interrupt-controller@12a01000 {
>                                                  IRQ_TYPE_LEVEL_HIGH)>;
>                 };
>
> +               pmu_intr_gen: syscon@11870000 {
> +                       compatible = "samsung,exynos850-pmu-intr-gen", "syscon";
> +                       reg = <0x11870000 0x10000>;
> +               };

This should be ordered by unit address (so in this case placed after
the pmu_system_controller node). Refer to
https://docs.kernel.org/devicetree/bindings/dts-coding-style.html

Peter

