Return-Path: <devicetree+bounces-144558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 944DCA2E77E
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 10:20:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8648D1886A2D
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 09:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C005F1BEF83;
	Mon, 10 Feb 2025 09:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EEfkQZoL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096EB1A8F9E
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739179219; cv=none; b=cwMLTz9dJ9RnjrCwMH+ZmAC/9d5LTvlWH5hLhl6/J1J9o58DJzFfDZa2FpcFcLQWsmmrzgWMkAW1FW8ElpP2CSjKLA4mPcStRGs1v6UZTnn4vozxlCPcU/Bw7PoJKm5QyezPuFBglGNeSOomPK46W86mA3hlaEAo66jRbquu/Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739179219; c=relaxed/simple;
	bh=2Hd0+L6N5jG7D5+yOI5Eh0udHf8fZgIAry9GwgHy85o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N09q7+4jZVydlwjImpL7kirOTSEUnOxFRX101w2bbY3+ucrEesfH43LyqBuDB66nESiADVOV6U463LSIevKTfR7lXbZFbt8N24kQcOD6Ke3G32E2R5krTeU/Q+bFw1ZGtTNqQd+ACgZXo/Wkoxdv9l3RFTkGTWeR0Vt2mTWPRFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EEfkQZoL; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-21f0444b478so57856275ad.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 01:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739179217; x=1739784017; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6Qe2qcRZ88BSLH/SzbhXpYMzUQ4getoZho+X5vsY0Kg=;
        b=EEfkQZoLcYoxLMrWxUFJn+djj/jND5RgZBv6016e1HTdLhaSF/xqfJcphBiLzvZoJd
         EOpVFlEuGu4fRFBW9AH1cDh7V+R75qffuP4Wv1jgaRIcQc2vE9g3rQOWRaWzotZ3dsbO
         T3sOj4oti0dPdQHLa8M45xM+AkQe/6NYCk27jwemP8GngnVA+lytLpXPGrY1Oe9hY34M
         9M70z6sm4yMn6ocxMj/3LJdwNmJbMPnp9Y0Bho6oeOU3Dz8AgPPgypzl+JU2UxH5YEmd
         eemoecEbNSI/SxLgchQUsUtnGJhXad0Bf+z0Lg93zBjXEnF0H7SFP4NYDURLBwolr9JL
         9z/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739179217; x=1739784017;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Qe2qcRZ88BSLH/SzbhXpYMzUQ4getoZho+X5vsY0Kg=;
        b=ptJaT7sknjvd910KySoZGJkdNGJUDqV8WxlYqOw2VZ1DhCDCx+PC7IoAdXKiTUFyLT
         Mvn46/cfGq946+3UaaEYrZ7ahh9hsji8PI9qMw5wPXVloAUgozL1Laq+vsr0hISaLmWV
         ps1ry+m7nOcZ5EB7oDjd/IP37OQGgcdm76qPRAvOhnNSEUALxp8NTA5LNRKnb+mu+eMf
         Medg5LLIXcjbvFQVNIInF+bYJ5/J+KHXmxvFvGxQdZ4Vavl+J7Cqrz2ACxEbPACdHlBz
         fWXm5R18zEoPOOjgyT0YOOK13ytMFKrK7rCVqsTaXyZ0ojOQr0Oea4wyEL74bOb1cLuD
         p3Lw==
X-Forwarded-Encrypted: i=1; AJvYcCUpj+WHRFmhqzL2TxtEDiYe3STX1j2tvXRuFwuNAwhqRdkw4kSngof0LZSnL2q9vymr4Dw3R7QO7Zex@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3roMrtji36kQUg8JaTCZIpevst+t00tc25A5hxHHiPY6vQDl4
	oTnqyCu6+qCphmd6joZE6sBh3AopXO+J0qY+WkhAGSqN+Nxr9JCpvlqssnXBhA==
X-Gm-Gg: ASbGncv6Fk4ucZxEB45vgZ8eBTbr+ItCjoZhTc4RX4YH8A2NGIfrZtvUQc4ed1Xvwyl
	Ce8F/C9QOzVt1dbVcULZUdRS0aZjp0Gzwzfy1ODmg1115QT0Z6UOkhnJs0kPCYGP4TKsqPyNR+S
	FpYeZ72+pYyVhaq+uRU4W/epH1UUhg7qIWJiZv2HS7Bo2U7eLAxpEHMjRwfKynHCAhJ5G2uQ+1p
	OXCwQfKth7Y6gRUHhi6y9Zt1eP7cfL5gs16sCBnlYkZpj5QxQCP0Iqxlw/9HVTKsxksvpmpgx1P
	K/gXwZonttGfjKNTh9y9Krn7ltqF
X-Google-Smtp-Source: AGHT+IFGxn0rXuvYtc581KEtsKuAorkqiaER6So77Bh1zTJq6DAV0+/8Q0ZfTy+t7Puq9tJIaUHHPw==
X-Received: by 2002:a05:6a00:71c7:b0:730:7499:4036 with SMTP id d2e1a72fcca58-73074994503mr10207025b3a.22.1739179217138;
        Mon, 10 Feb 2025 01:20:17 -0800 (PST)
Received: from thinkpad ([220.158.156.173])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7307a29ecdesm3490924b3a.173.2025.02.10.01.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 01:20:16 -0800 (PST)
Date: Mon, 10 Feb 2025 14:50:10 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_mrana@quicinc.com, quic_vpernami@quicinc.com,
	mmareddy@quicinc.com
Subject: Re: [PATCH v4 3/4] PCI: dwc: Reduce DT reads by allocating host
 bridge via DWC glue driver
Message-ID: <20250210092010.nyt3n3tflipcrpt2@thinkpad>
References: <20250207-ecam_v4-v4-0-94b5d5ec5017@oss.qualcomm.com>
 <20250207-ecam_v4-v4-3-94b5d5ec5017@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250207-ecam_v4-v4-3-94b5d5ec5017@oss.qualcomm.com>

On Fri, Feb 07, 2025 at 04:58:58AM +0530, Krishna Chaitanya Chundru wrote:
> dw_pcie_ecam_supported() needs to read bus-range to find the maximum
> bus range value. The devm_pci_alloc_host_bridge() is already reading
> bus range and storing it in host bridge.If devm_pci_alloc_host_bridge()

What do you mean by 'storig in host bridge' here? Mention the exact structure
name if that's what you are referring to.

> moved to start of the controller probe, the dt reading can be avoided
> and use values stored in the host bridge.

Same here.

> 
> Allow DWC glue drivers to allocate the host bridge, avoiding redundant
> device tree reads primarily in dw_pcie_ecam_supported().
> 

This makes little sense to me. By this change, you essentially want DWC glue
drivers to call devm_pci_alloc_host_bridge() just to get rid of one range
parsing.

I'd suggest to move dw_pcie_ecam_supported() inside dw_pcie_host_init() and call
after devm_pci_alloc_host_bridge(). This way, the glue drivers can rely on DWC
core to detect ECAM like other resources. And the API could be renamed as
dw_pcie_ecam_detect() to match other resource detection like iATU, eDMA.

More in patch 4.

- Mani

> Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 826ff9338646..a18cb1e411e4 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -484,8 +484,8 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  	struct device *dev = pci->dev;
>  	struct device_node *np = dev->of_node;
>  	struct platform_device *pdev = to_platform_device(dev);
> +	struct pci_host_bridge *bridge = pp->bridge;
>  	struct resource_entry *win;
> -	struct pci_host_bridge *bridge;
>  	struct resource *res;
>  	int ret;
>  
> @@ -527,7 +527,12 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  	if (!bridge)
>  		return -ENOMEM;
>  
> -	pp->bridge = bridge;
> +	if (!pp->bridge) {
> +		bridge = devm_pci_alloc_host_bridge(dev, 0);
> +		if (!bridge)
> +			return -ENOMEM;
> +		pp->bridge = bridge;
> +	}
>  
>  	/* Get the I/O range from DT */
>  	win = resource_list_first_type(&bridge->windows, IORESOURCE_IO);
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

