Return-Path: <devicetree+bounces-272153-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GMhFpTjqmkTYAEAu9opvQ
	(envelope-from <devicetree+bounces-272153-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:24:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E961B222965
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:24:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 51855306A3B9
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:22:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBAB83AE194;
	Fri,  6 Mar 2026 14:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PVLD/KKQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A45242FD696
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772806943; cv=pass; b=i5ZjiCirekRTaLihTAv4EtDfjufT2ZGHcoiXtbIB+UqhfxsKpNndc36vDFRsXRufWamGaEYUeKCSSIfW/GGXLA4VYXhHFuVN6xhgjQkg29Ij8DaL6Onrk9rqJ8JgdQqrbFFCfXLecuJCfen81FKLRnt+12f8wS2EKb2Swmh4268=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772806943; c=relaxed/simple;
	bh=asPIn/f86xwbt8KjfFnsZWBynaeK9J7DlOKrjInPb7c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oRABsKCjzoa9AoFyS68y3Q03W3JQc+AjWVbzqyQy3S1ihdEivQfDnEPbhh8sMQ36TsgGJ8/MAvtBWdL3r/1/6GIKvMoUG5aY8HIMCG4SQcXYs2aEM6RKHbDEnYzoA2yAEX/wQflLSboEQ6GS7fm+1tbwdLLDDXhVa5A012/gSeo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PVLD/KKQ; arc=pass smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6616cb8c80cso2366560a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:22:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772806939; cv=none;
        d=google.com; s=arc-20240605;
        b=O41bbQm4cQ2Lf73Bzi85tEzrB7bbMVQWvhJ7bysfQ/KAnsz90EUb/o2cV3cSNURLum
         xy5xQibCXzkQDtJ7PCENhxgjer9dWomSaYJ2IipRKz3dL3+fTz6B60ACbKMx4wCmyGBS
         yyhkIA4ZsVRAd98LpdAtwALtRSSQm8KgY4YR49ZxyXJMvmmg0XpQ50ST0fmG4CxiaHF2
         +ERDt4LQ8q/fFNKDOPPyR8eXVTm53VVMSqLYdTXWF6N870tm5Hu80bPBoA4fw1PsynOg
         PHNdBXbNp8jvNzoY7gjYUluoQG+yt3nwvBEcf/Eh7Ef6W9ZEtK5QaIOYpRGW3Cn5l6hx
         B8jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=V6ojT6B2pOAcNJA8AKYZusnktwWBE0CvG4HxrGkb5jw=;
        fh=rWGWYpkIErVGb97PdakYVm0y1sr04ilN1hKuDzy990w=;
        b=B7oyTBrGoQFjHxHyLwNejJmNE6G09RsbeVUHMytmXqHNfgDSEX3WR4CMNd2IvNshTy
         ZIwmo0DJbJ3SzYEepuKhGTdlWrtvm7XoeZuEgTPgpt5QJrKDtoGhQN3qfwnZpNCtwfvg
         zTGV4EsdKOPv3wspyCcBKusYSyNYfKdN7XfrloPjb5frtJS/I04UB3KxY4eYct+lR9Xc
         FvjhtqFuXCztEl0XpUZDkomBQBhO3v4x1MEi/+gvnh+5PfMTATcgTBhIk1CBwoyhX+yW
         wHyDXC6svvt8XoXoDNPOtlmNuDYU85dPfI42LJm/+vxib+I4iLzt249k83GsOnlYtHNd
         InFw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772806939; x=1773411739; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V6ojT6B2pOAcNJA8AKYZusnktwWBE0CvG4HxrGkb5jw=;
        b=PVLD/KKQcY1K+ZMVH90gInGPHMohIGBcmoZomiOxL/sYxDdM6IhWDfPO4UFzoEzq18
         pHrN/gQLEZU4/+c7dVixVnk2mJ8AbSg4lsCwEuH5U67UUZ5ijIB0d4/Rk6+TEPiEcc7j
         auLdxHvYaqW01BW7a9kv9BwIXjTkR0LUFj34pyR3BguANuT4M4uXf2u+iUEGNYdMyPWO
         JSXq6TgXmqdQrPCrU4VIJP+u+Vdjh9WJ6cYfj71uQjk2sp6XKDXwbF/GeWPiBLOYmHfJ
         BjMwXcEPTPh5qXqDS5Gn7SECQxMWxne80I9xci5aA/qP3fjhln1bH0VrfjblUNc0jZ9e
         nR6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772806939; x=1773411739;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V6ojT6B2pOAcNJA8AKYZusnktwWBE0CvG4HxrGkb5jw=;
        b=CGGUKHDRpM8/u9PcWpJ6I40dp3/s02XsMO8t0hyZmaIde3AVNUpqV/LyCPXNykp2pt
         KgW1BCj3Dy9/0bKleF1S7UVDUvb1i+Y4drhXBP6PlDPWvYwGwWuO0G0qCJSVa5wOFWEd
         RMbTm56yiCDBijgCzVat2060zgxTFNA+BU1HN0h05uzdJIiUQ4PM5ddhDlFxrIMbNom/
         aZ0fG70xhsiKDPiY3PkstCJEhcrq2HdBTppW7AriDRDliVvxGo2xcDseEDUpqxgfirCP
         Hci3fc6pFEEGXhaO5m97tEdoBng1Rn36v7kle0TTwrmKefseF3xpjwd/x/8f1tYKMglh
         XQNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHLtCSCTPwFU9wURE+OP5iCJPPbh24aBQLm44sfC2bruLF/qdbsNDivUzJDtdgzk/m7Mqj6oRBsiUN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2NVT6rYFU81SU7EeIqGwLdoEwFWn3C6p85Dmt0KXmrIu3i57K
	fjpbKuGRRS0U7YSQxZo9jt5xoBae35qGYuAJ09A94W7aTsJuII9XycHXCsiJurtcg2A+tAHq7Y2
	cLKSVhOquI/WdCgIdVePn6pLAxJrzxYRfeV9XlAI4/g==
X-Gm-Gg: ATEYQzw6GrcRH4sd1s64krOZRaGDRv/UTx6RArtUEHASVOw9Hb+NGFo3sDVTo/dkzJt
	x45RayLCjQfgoRAWE0M9ftHc0aZNyAUx0O8hCPCZbRnE0Y6oinV6e9B2zidV4of8uMaXo/yPQmW
	1LAZPvudrn+0X456eFPxsp4KWm7pVNugeTpRRU9d/ZZM1m0dcXHyFUEpZEq3O7i82B+CUeNnCpc
	rE6fS7puZyzammYvok8AyLsGjseaNdOSBQInLMSieLC8Qvz4MkArcmW/0IgqXMpupoV56GCdLOu
	Yeg6jUJH/PSkmWyteCNe6iPEmZBKMEEbRSukba0T4Q==
X-Received: by 2002:a05:6402:13d6:b0:660:f1a1:e8fa with SMTP id
 4fb4d7f45d1cf-6619d51f8a8mr1194732a12.15.1772806938879; Fri, 06 Mar 2026
 06:22:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org> <20260226-exynos850-cpuhotplug-v1-1-71d7c4063382@linaro.org>
In-Reply-To: <20260226-exynos850-cpuhotplug-v1-1-71d7c4063382@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 6 Mar 2026 14:22:05 +0000
X-Gm-Features: AaiRm50tjNf_4y_LSd43JUB-JI4HV8BibVu6BzHdRNYQHYI0j8IJYTG4MdR3kHI
Message-ID: <CADrjBPpfSLN9A7jjxiVSYL_5__kZmxdP0H6+UJiK563KpvxTLg@mail.gmail.com>
Subject: Re: [PATCH RFC 1/8] dt-bindings: soc: move and rename
 google,gs101-pmu-intr-gen schema under soc/samsung/
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Sam Protsenko <semen.protsenko@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: E961B222965
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272153-lists,devicetree=lfdr.de];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.105.105.114:from];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Action: no action

Hi Alexey,

On Thu, 26 Feb 2026 at 15:47, Alexey Klimov <alexey.klimov@linaro.org> wrote:
>
> The GS101 PMU interrupts generation block is actually a standard Samsung
> Exynos IP block found in older SoCs like the Exynos 850 and others and
> not exclusive to Google SoCs. Thus, renaming to
> samsung,exynos850-pmu-intr-gen, moving the schema file to soc/samsung
> directory to reflect its origin, since Exynos850 predates GS101 SoCs,
> and preparing for adding Exynos850 description.
>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

I'll leave it to Krzysztof to decide if renaming/moving makes sense
and if there are any guidelines/rules around this. From my PoV it
seems likely that there will be many more Samsung Exynos based SoCs
with this IP than Google designed ones (Google SoCs I'm aware of with
the IP being gs101, gs201, zuma and zuma pro).

regards,

Peter

>  .../samsung,exynos850-pmu-intr-gen.yaml}                              | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml
> similarity index 80%
> rename from Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
> rename to Documentation/devicetree/bindings/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml
> index 2be022ca6a7d..f9b40f3fd165 100644
> --- a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml
> @@ -1,10 +1,10 @@
>  # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: http://devicetree.org/schemas/soc/google/google,gs101-pmu-intr-gen.yaml#
> +$id: http://devicetree.org/schemas/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>
> -title: Google Power Management Unit (PMU) Interrupt Generation
> +title: Samsung Power Management Unit (PMU) Interrupt Generation
>
>  description: |
>    PMU interrupt generator for handshaking between PMU through interrupts.
>
> --
> 2.51.0
>

