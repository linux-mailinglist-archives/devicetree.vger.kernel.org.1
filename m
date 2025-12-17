Return-Path: <devicetree+bounces-247475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A15BECC7F99
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2DC693084FAB
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EADC33C53D;
	Wed, 17 Dec 2025 13:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EEFr3Oo/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D232EF646
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765979140; cv=none; b=Rzqzq4lY4B+GDIJEMAbidd4OUV6wfz5tKRChGEhMshJy9q1fJ9CGtsl2mCvUARnKn5r55Dnf7pSksUM6VC1lj9XP+LC/YuyxnWMNXOBwHU2x4XPJHpZ68kw60Rl8SP0Uk1OT/h5IcCDoJIIJTCFvTizS+zJirQgDC5l9RLyYzxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765979140; c=relaxed/simple;
	bh=+zAuUq02Bgcmg/0k2UZ03T1O/rsKv7Es3qJ+xUU0dEU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TOnti3u8AjxKJiamc+MPkbnUd66BgWrbqKfIqltL8Ge3pnzINnxn5Kv10UbDXbe6UWD0p1AzaDEEL+BtYKR+sHfI2OjxwHSDaBWcrhCqf4c/Cyp5XuOL++TduMjJJDIVo7kAWIPU1UZwdAewGsmjEdSIs8Ar1RrJ6EibX/njT9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EEFr3Oo/; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-37a2dcc52aeso52648421fa.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765979137; x=1766583937; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9Am0LHG9AFMTHY53IOE1ujfJ8n+RIbg6P8g4jzIMdmU=;
        b=EEFr3Oo/RK2vFP/WdnKzXfQvIQ+gKnb+9n1fZtuIpIp482aNv6rJjul0j68YqrGudo
         o8hNlgL89D4jEg6LvkjZOGdbEytT4mC+A5WTUch0DcpPWBtPSen+9fpkTSBHti4UZzDu
         QT1vLBCdRC/aMytbcOj2d8CoZ10lyMnWgYxDfGTamsKhXiaw8G/kGVJCSinxRNZtn4Cn
         7qH8+y3TpVTcskdmi/XbmouCMVMeVxHKjhb1N4LTrUF8X2XxKyCIi3jOxW7vscFfucKM
         1a7EO5lgCK0CZe/KkeLF97PhH/UcwfrOG7ilR+azLck6uMWFcnTDGtXHB7PKa/bvtnn1
         tUHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765979137; x=1766583937;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Am0LHG9AFMTHY53IOE1ujfJ8n+RIbg6P8g4jzIMdmU=;
        b=KMrv2AIua2IBK8kIamdDfUcjcNEfBj6yQsf3kTcS1N0o/XKskhCllsEMx6fqiCvDa9
         h3U21OAB/OhruvVTa1UN3Cw39OWcSZQXLPo45XkENUVWXQcZfGjN9nBMH2G4+e84F394
         9hqP8VuZ35FtlofhWd5iKX7ZRmBTLxblUmmRUUpwtpnWwOpVcFcKEbaYA00PyZEfuABL
         4lEVQkGGbWcDtCB9cBaYThAAkxgmeSAzZuqPP39JrNGEkVZgjpnJPh8hap4zpJH7R2xj
         MjVZP+uARSNVCVtVxGen2+m3loViXwRX3gy4Wo1cvTVhtO//34FQZCKWeLT6195li3rA
         IsJg==
X-Forwarded-Encrypted: i=1; AJvYcCU2z52SXK4TuEo9gEJP6uyhSbtAaDByQEcCHGfUsSn1lk20XRKpLIJBi9uuIJ0r8BrCKevnYeD84Lrk@vger.kernel.org
X-Gm-Message-State: AOJu0YwNI/YQ8oRLiaVBu9A72RuFEqX78wuwXEacYZfWyC1VaJ8dt7zB
	nmKLre9QsWUTGzxMmIr5zkUXBl0bHIa/njWyNXALpbjppN89xOTQAlN7m7OfvZGXGf5K0XHXqsl
	5cebYD9MZp95hxP/SARQCXAS0q7G06666gv/6fKYeOA==
X-Gm-Gg: AY/fxX67oQv5Jp/1csRLRSDi/zNdmWcWpRvzxxZd5yxAwaw3Bvobvy3szNjZec6C2QD
	UH7kVnQ7sIGb3YLSE+A7LUqg4iEmCZTinH2oGgYovY6ekTTM3L1oTLpk0SnA0/nGP8pU1rFKqgJ
	VoLtJ4HSRSrVBBr78zm+fpHwK29Aii1mTeijaISXBj5h34eJdIa8SSfAtTdEIbFG8d1DbrHi7kk
	K0LlKxvUispMD3gkUA/tDjjwe2p0LgehUDJrvQNwb/JtK5NCsaHbUirJ7mW9TNC5RzBB4I=
X-Google-Smtp-Source: AGHT+IE4pUbxjRyhy6TNzG/Nfd5tcjceyB6SpLIAjY9OMlINt8NVyYcF87vH5C6t0W6FjsUPLlCSHxNZJapmN0vvQKs=
X-Received: by 2002:a2e:bc12:0:b0:37b:8bee:87f6 with SMTP id
 38308e7fff4ca-37fd08c6eecmr54455011fa.38.1765979137280; Wed, 17 Dec 2025
 05:45:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215212736.3321550-1-robh@kernel.org>
In-Reply-To: <20251215212736.3321550-1-robh@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 17 Dec 2025 14:45:01 +0100
X-Gm-Features: AQt7F2qrXt3fjvzfhy2YNvWmdMIJYPs4GlYbGWjBbEeh5dwzllyrWc_OzDcLLbY
Message-ID: <CAPDyKFrQ0Pm6524L15wrtAh_yyH4URWUf-hVELKsKYt=DiQ_WA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: brcm,iproc-sdhci: Allow "dma-coherent"
 and "iommus" properties
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Saenz Julienne <nsaenz@kernel.org>, 
	Ray Jui <ray.jui@broadcom.com>, Scott Branden <scott.branden@broadcom.com>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Dec 2025 at 22:27, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> The Broadcom iProc SDHCI controller is DMA coherent and/or behind an IOMMU
> on some Broadcom SoCs, so allow the dma-coherent and iommus properties.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
> index 2f63f2cdeb71..65bb2f66f8cf 100644
> --- a/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
> @@ -26,9 +26,14 @@ properties:
>    reg:
>      minItems: 1
>
> +  dma-coherent: true
> +
>    interrupts:
>      maxItems: 1
>
> +  iommus:
> +    maxItems: 1
> +
>    clocks:
>      maxItems: 1
>      description:
> --
> 2.51.0
>

