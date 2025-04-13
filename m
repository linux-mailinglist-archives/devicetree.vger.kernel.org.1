Return-Path: <devicetree+bounces-166388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5B1A872BA
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 18:57:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D8C33B5D9A
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 16:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2411A1E98F2;
	Sun, 13 Apr 2025 16:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="orN1vKHU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BF01C860E
	for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 16:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744563465; cv=none; b=ISZZYbuarfD6rKEEf6hAEcjcawVR4WcwLMEgvbVq7PgaAw/4DgeD/aXDLOuuQTjE8xP5+MXOLW/ZQjH4QQFEOT7qeS7HFEWqw6T3IWV847uVcvH9ICUDobk0Q60rr6LFoyyWCniz03IH50Ma5gaw3Fe0r8rWCAhVbw+j6V/zzj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744563465; c=relaxed/simple;
	bh=/7OMVG3YDsHT7VSBN3w3/iys+Aoi2WqcdkbwOgqe87g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PBHsOD9p8tuuEwVxMkB7OZMjUHizteOooth7eBWzHhTKJf15QfgNDp7vzZ6JGdsGkMwPeBl8FdhtBOeFj9Qaj8kZYv0wQK07cveCj1ycTmEOZlhXyDNM9XGJrKFCVd+p8PCiAiOGq3ABGsVGlKkTjT9akLwBftpYsVkSR75ABks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=orN1vKHU; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-224100e9a5cso38190565ad.2
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 09:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744563462; x=1745168262; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RBY58SxSSqyPJrcv2B/68pnLeAE4+ZGyiwdPmLMof5o=;
        b=orN1vKHUehvbX+Sl48MTqJNjfQx2wbaEgxrjfI1ez3+OGPmeLa5Hd5M9PT5641M9cK
         ogAYJSx70WgjUrCzj0cBDyYPOLp7FoUUWc09ReOUSxNtqVHQ8aWq4Sg+6NWOF0ZtvUwj
         ZFpab+uJalDpmoi80dOPK/TIqqZM2R4DXdKEKuW0q1E+NTC3sH0R8+c839COUM27DTBn
         jtN64A4rv36MaKJVaqn6m7/a0D7YrM5zmPT2X4jlxfNHcKBPpxH067M/4htJb/i4Sd1/
         LtxQYGk5AzEFuW3w9Nl0BZAu9OE+XLg/TP4uf8ESOzUAKGgzn8mEZjZZuXBm6b3R6lJ/
         UacA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744563462; x=1745168262;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RBY58SxSSqyPJrcv2B/68pnLeAE4+ZGyiwdPmLMof5o=;
        b=FHwVi4iUb11Wm58E+Vi+CmWjB/IcOqBRhhCPDbmR1ziTV/xonFgfbwI5CsSSLnaEX0
         YEgFc35V7IjVxOcnP/nl7Maua0bX/Q1Kldd4n+I9YWevZAM6h44OdnQEAbNQgp9cZLLL
         4EOzrK/Whk90LDOQKpug2i+fosMhkr6nnlmrvVxbUk15IEU/YvoraahWERJUe154KPz3
         29QTlvhNryN9G4v9uKO+OdIFpF+AZgC3hu7FldZOzM6TFUEltitoz3TImVWmU4Fl5h1j
         e3qwPGxE+ZE+N181uoVXkq5Gv8iEsxPJqj05j8vL6DPjTObfNtWpGYi4uuS+qx54TsfR
         5NVw==
X-Forwarded-Encrypted: i=1; AJvYcCXgqtEYWCbulyVHPGhjevqQ5k4LRz8ZeqIvWayZ04fBqVw3g4U23H096OsyYlfdJr6wT5CjKeHQykb1@vger.kernel.org
X-Gm-Message-State: AOJu0YzSSjjXsGpq1EkBpLiIl4DYWEpp+HdY1G25Y7x/IqQHq3Ydle5g
	7bacnL0Q8ltIiAudHJzHD1Mgd2A3pzAH0tn5hoMbV6B82iMXjmhDsUKFnQ+duxAdwEHSwj5zPV8
	=
X-Gm-Gg: ASbGncuVZq2Cccdn5cihpnK2gS0KbVL8391E6MhQjXnSCbuZmUlrKs15qQI4NkRy9yl
	2MV2OJCJ6zMJCnfzeXO5P5d8pfCo8W/ZpFrUwS/fypN44IpyaGfXAer3+kIsCu7rRmd5B0FUO4W
	64SrgHfCu8S+iN7Xv5WMSY5mztVDKnKLW5r/C2g/yHLLcBEjFdksQJVpge85yEZ6cp0R4EGxXjz
	pT16yUyjTknUqGn55K3iWsbnWEIrrRmBiP5qtJRBNuKGre5b1vdVo7xj0iBbinztciWp2128GwN
	qaYTFRe/Zdu0+v8k+Ola2XQAcsm4MYOhOiJ9WGWnvMPxY2IiXNKG
X-Google-Smtp-Source: AGHT+IGJt4v7frYs5ZTIrelHv7KmYlMcRfj04mYpK3QHDu8yhzesA2ae/Fc6/h0nwJZRdeyltFrEww==
X-Received: by 2002:a17:902:ebc2:b0:220:e63c:5b13 with SMTP id d9443c01a7336-22bea4fd043mr132747235ad.46.1744563462265;
        Sun, 13 Apr 2025 09:57:42 -0700 (PDT)
Received: from thinkpad ([120.60.137.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7ccb84bsm84013885ad.236.2025.04.13.09.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 09:57:41 -0700 (PDT)
Date: Sun, 13 Apr 2025 22:27:35 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marc Zyngier <maz@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH v3 01/13] PCI: apple: Set only available ports up
Message-ID: <k3wj3wkk3cymyacboalkhe2fa7jvkpuehq4knpsouoyhvoavpl@bafg4oakp4lr>
References: <20250401091713.2765724-1-maz@kernel.org>
 <20250401091713.2765724-2-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250401091713.2765724-2-maz@kernel.org>

On Tue, Apr 01, 2025 at 10:17:01AM +0100, Marc Zyngier wrote:
> From: Janne Grunau <j@jannau.net>
> 
> Iterating over disabled ports results in of_irq_parse_raw() parsing
> the wrong "interrupt-map" entries, as it takes the status of the node

'as it doesn't take account'?

> into account.
> 
> This became apparent after disabling unused PCIe ports in the Apple
> Silicon device trees instead of deleting them.
> 
> Switching from for_each_child_of_node() to for_each_available_child_of_node()
> solves this issue.
> 
> Link: https://lore.kernel.org/asahi/20230214-apple_dts_pcie_disable_unused-v1-0-5ea0d3ddcde3@jannau.net/
> Link: https://lore.kernel.org/asahi/1ea2107a-bb86-8c22-0bbc-82c453ab08ce@linaro.org/
> Fixes: 1e33888fbe44 ("PCI: apple: Add initial hardware bring-up")
> Fixes: a0189fdfb73d ("arm64: dts: apple: t8103: Disable unused PCIe ports")
> Cc: stable@vger.kernel.org
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> Tested-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/pcie-apple.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
> index a7e51bc1c2fe8..842f8cee7c868 100644
> --- a/drivers/pci/controller/pcie-apple.c
> +++ b/drivers/pci/controller/pcie-apple.c
> @@ -755,7 +755,7 @@ static int apple_pcie_init(struct pci_config_window *cfg)
>  	if (ret)
>  		return ret;
>  
> -	for_each_child_of_node(dev->of_node, of_port) {
> +	for_each_available_child_of_node(dev->of_node, of_port) {
>  		ret = apple_pcie_setup_port(pcie, of_port);
>  		if (ret) {
>  			dev_err(pcie->dev, "Port %pOF setup fail: %d\n", of_port, ret);
> -- 
> 2.39.2
> 

-- 
மணிவண்ணன் சதாசிவம்

