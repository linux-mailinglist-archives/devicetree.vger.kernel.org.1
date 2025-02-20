Return-Path: <devicetree+bounces-148711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2F0A3D228
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 08:25:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26B6518938F7
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 07:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 069451E5B8A;
	Thu, 20 Feb 2025 07:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="agtM5qoz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810461E5B66
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 07:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740036202; cv=none; b=CySrkG8Ok9D6tI030YY/KB2sJWM6kzuGwzcQrb9YUzt29VGep5uxXVvVAbTD2KPQTPRtaLANGIW1AJcT3vY0r5kw94FZ3GFM4xFg0g6yOy0/GXgKm7ER7Gk+UdC9f4e/glJPBgMCREHQC7st6a/EB9B6L58brQaiLc6IX9BZJEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740036202; c=relaxed/simple;
	bh=K9ZzoyM+1e7NO7J3zZUXwBhWI7XOqAzjHQnjtaar3Do=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OMlmU5OqDDW3xFrjiafGhr/Nxq3p12xtWd/OVdk/lBFCmBrfBdRa1SDJjnQ5fhX552i9EtvwftQ7hf25WASft4YlUzK+STmqparrnivqm/FpAXshMuz0umOcRZVq7nH+qGAS0XZk1Vz4nA32YnzA0XY0WKcDwyf0j/EQxRDnpIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=agtM5qoz; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-22128b7d587so9820635ad.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 23:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740036201; x=1740641001; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MBR10xYOtbIjIrHbSQCuv8sZHXeBgnoMVNUybGZJ2DI=;
        b=agtM5qozeRV1lBkKO8JEekz8289DS0m1DLp0uFYMR9rAJOJw3bZB5H1vYUcZ0OOyqd
         YX/5aPXLMgwb/JTmZ9PB+dDjUQa6f1MO3a7ST7jCUvHF+SqcBEWykwqtLpsyHILyxg2K
         wE+cgorKR7jMmQGHOnPM2rGHp7BrqyVAJb3mKVLzRkbvonI/xIz9YKsN3lgghMxe8hd9
         Wty+AixQLkbAg019zbSleNakrQwFaiN8fGswDJJbwA212EDCMAkzQ1C1aIDTXwScAD9B
         3uPESW7AvdDE5sMBBW/3HoMBefDngooH2bMoL1XyTpGnyEXB94fP8FVpHmvrgnC49owt
         80fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740036201; x=1740641001;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MBR10xYOtbIjIrHbSQCuv8sZHXeBgnoMVNUybGZJ2DI=;
        b=M3+nd2VefcfTnrQL/dLdaDKmNpAwpkbD/yWCCRfMEEMJogSDNOUnsScyqIHT+h1gbW
         A+9ww13GOlyuqR/iqKnZuMrSkLHqmRNpJd9PJtDsVqyOEWm3505IUraKPnE4MkMJbKrW
         J86Nqdf2+aTl19qI8vu2blFwk7B9J/jbaq/fIzkpg8emfdaJY3QkpCL7xtX4L9EGQQ4b
         yiuUegqLeI1VvJ578BZONQZsb0cB5vkByCdwga6C3WdPGLB5j+RRZ5BUxrlvG5LWYcPz
         GyMf9iqvg8zKhHzY0yfIX+cPeL2yEKLJDKFf7kBlucf+Cc/lTldFz/xPwMgwXy0xqRE8
         QfoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUb9hkN5fI8ExPZKxpih//GYq43F4suR3mXxTV/VUVEXdSNWR38EI5jGobCIfeSSmeYu17wAZnN2VG6@vger.kernel.org
X-Gm-Message-State: AOJu0YyZbSPOo4Hn/OYkT6SzQYJWE2Tddi+fTez+pw0PocSqR54Dfz3F
	h/UGnqJQ60JBpf2xlAy/xQy9cVTuvc125vXZQGxXDbOxiFZQ7iucbx/PKtg2Ig==
X-Gm-Gg: ASbGncv2mlSd3pu/XhHGGJKDpZ20PVT/jW61pM9u5Qrq41iWK46CliLjVjyv7ExAZny
	66Rdw/bzucs+/Da8bsPis+fs+tEEINTeiqXqEn6q8VM5hwZLxYhUFiYmZZovpeMtaCRAYoC9jnq
	RtWQ1tuDH8YlWVHDFSq7us8l2EwntpUDcxAphfsGQfTZz/GqS5E4ohuCa2aRGkpzPWmmn7Vsfly
	+v5Agc2jkU6tmOgU4L4FezJgPvILhVURlw0i3ozh244Ztqu90Lgr1+OlEq5IOxDhbreczAgKDCL
	Nw3+khz3+KwQuWVt4CZLx02QPg==
X-Google-Smtp-Source: AGHT+IH9J0UpkJyiDrwNycJp/VSjSgTQ57aAkzHJRzuBfh3r1oEjseg2xJjXQ71AdNSHN8VrWOQlLw==
X-Received: by 2002:a17:903:1d0:b0:21f:3e2d:7d58 with SMTP id d9443c01a7336-22170773856mr86334165ad.13.1740036200747;
        Wed, 19 Feb 2025 23:23:20 -0800 (PST)
Received: from thinkpad ([120.60.70.244])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d5348f1esm115522325ad.51.2025.02.19.23.23.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 23:23:20 -0800 (PST)
Date: Thu, 20 Feb 2025 12:53:10 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/6] PCI: dwc: pcie-qcom-ep: enable EP support for
 SAR2130P
Message-ID: <20250220072310.kahf4w4u43slbwke@thinkpad>
References: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
 <20250217-sar2130p-pci-v1-4-94b20ec70a14@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250217-sar2130p-pci-v1-4-94b20ec70a14@linaro.org>

On Mon, Feb 17, 2025 at 08:56:16PM +0200, Dmitry Baryshkov wrote:
> Enable PCIe endpoint support for the Qualcomm SAR2130P platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom-ep.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> index c08f64d7a825fa5da22976c8020f96ee5faa5462..dec5675c7c9d52b77f084ae139845b488fa02d2c 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> @@ -933,6 +933,7 @@ static const struct of_device_id qcom_pcie_ep_match[] = {
>  	{ .compatible = "qcom,sa8775p-pcie-ep", .data = &cfg_1_34_0},
>  	{ .compatible = "qcom,sdx55-pcie-ep", },
>  	{ .compatible = "qcom,sm8450-pcie-ep", },
> +	{ .compatible = "qcom,sar2130p-pcie-ep", },

Could you please use a fallback? I'd prefer to not add compatible to the driver
unless it requires special config.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

