Return-Path: <devicetree+bounces-129548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BD99EBF9A
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 00:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A452A18830DC
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3DAF22C35E;
	Tue, 10 Dec 2024 23:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aTyCii4L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515CC1EE7BE
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 23:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733874566; cv=none; b=W1Oc6H5ybNKVwhjjndPn/mtPt0ZgJpNsYifd148PWKQc6GN7JO9HSE6qrNP8lj/50rX36eyNd94mS1NkBRzPsKPAtVVVnuGeRHEUZYijKEeEaEtoXEQ9DR/YI01R8OD5wJOHvdTG3cf2ZeW+E5EZeOGUaULaAjEO5kYxP4H8ol4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733874566; c=relaxed/simple;
	bh=kdVOR3Wklu2GB+n1WaWD3NPikmxtKRQ+RYJP3kaNy8c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AJUCJGVvv9xMYdxF56BijS2qvTzxjamGk5N4xCZZ8apXhnnTEvntKkqIwFeckf9q06lNcK9F4VHhyXa8yc0cKZpKpg8ViSkT7o6GQ3JR2wd+Ch0FG+aYd8x0UyvpgXhuKjVeivzlJHnrQD+thpAnornwclpxk00oVhrKLzxtqgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aTyCii4L; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5d3bbb0f09dso6640025a12.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 15:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733874564; x=1734479364; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w0Bi83nwvzBHW9htNaoYyBIkvuLS9x1PWwSOzilvAhQ=;
        b=aTyCii4LWyoa2OHa80DLNkJS4aKIv2vO4xR9PuM8UmJ3ysF3MNmds8O+XAnDMS4POL
         lbcnRX/Td2hFIqMLlZQxw1OIbU9KiZScj8JoVpKPrQQsxU3I1jffXDasJAibMrCy/6wF
         fRoj/zvYlF9PzEbQHDLsb086pWeYTSeek8qMSVXYmSDOia38BOsQXPUMPvGI2yuQsbxu
         SFrn+YY4IfNSVIiW4XD0o91QEOX+aDEZZbZvhGp49gEqnt/YeoQFErxKO9LjUJf1+atL
         NulixXsya6sV0gVGOiJ9G2btnbq2+WUQdg9CEqi/ACl8vjN0mGMtjhmRNpLBeyp2OLhT
         Ht7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733874564; x=1734479364;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w0Bi83nwvzBHW9htNaoYyBIkvuLS9x1PWwSOzilvAhQ=;
        b=oXL1gPBlxvPnvoT1NRaqPVEMvCrATFOY82GAzpySLpK3VEYicXDfdaao9ukoNc1S2b
         KyMzuM+OijeHiDkcD8HMbHVZCd1YsQvuiFR6B7NYmquwOpbxa5kjeBvGSBe3wicE3u9h
         F/bz78ichMK/bNAUjgx0o2QIsLW0fx2Wa5gsoNLZvVDE8tJNmnvaI2eGP+THAxXJje/Z
         /IBCkEflBBN5pgphsOPuWFonCBeyAJp/37emQbj1E21ge9EvRCWSEuNWzWN8oXeO2Gfh
         HXGUzqMe0tLzs0p5yRjnWKY5m/51/KSqjRzMCMm57pPX23vyCZf+o1P+NibTUqe5toup
         j46w==
X-Forwarded-Encrypted: i=1; AJvYcCWFZsHml1661XFLUaoVwwBK/mgT8Ewl1O0Ersk5JYOhdD/Sh4lOo9IfageFfQf8AlsFM6OTF0itMt7d@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu3kjhYI1dhRsQTimvZ1VaLXOn2lnulDkrpkiV70W2pCAvRSTJ
	MmroUC7EqFmusFeyWpE8oU/YfaDQOqFtSX1VJS/ZUtEfhAst1vJHMoq+RT88c4MR6qI7wBDIFxj
	L
X-Gm-Gg: ASbGnctuoVma7arUY9344JynMwdL6Q0Ah3aED1RgKr7JaUfUz3i0uYhWwcqIhUT8Ko7
	lz5eKEDJavftQCx6opLldMH0n1hkHDqtMO4KUG3NsAPMwSwqwEzxo+QlE1Ct8wbsdGwAaaLDGVL
	elz4fsJ/Dh6iqhDdcPkgZ+z3CdCS3A0tPewrDuYVPzcQ11PqzUIa8M8fM0nqiYQcNCTDe+cMx7D
	F1Dhr44NEXRCBNCFhr90C3dCB127R8y9Av8NpYGj4J5sy97cos/zerfXQBRIgkTUtk=
X-Google-Smtp-Source: AGHT+IH3jF2Z/UsyE2JcokH/TitWFHL68lwzNBprD9TUestO/ngKH+QJQZekruekHvuCtiR3BRVDbA==
X-Received: by 2002:a05:6402:5305:b0:5d2:723c:a568 with SMTP id 4fb4d7f45d1cf-5d433094803mr714069a12.10.1733874563797;
        Tue, 10 Dec 2024 15:49:23 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3ee6ddf5dsm4755794a12.86.2024.12.10.15.49.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 15:49:22 -0800 (PST)
Message-ID: <fe8dbb4e-9d0e-4ecf-874b-be9225ae1487@linaro.org>
Date: Tue, 10 Dec 2024 23:49:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/5] arm64: dts: qcom: sdm670: add camss and cci
To: Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20241210233534.614520-7-mailingradian@gmail.com>
 <20241210233534.614520-12-mailingradian@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241210233534.614520-12-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/12/2024 23:35, Richard Acayan wrote:
> +			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
> +				 <&gcc GCC_CAMERA_AXI_CLK>,
> +				 <&camcc CAM_CC_SOC_AHB_CLK>,
> +				 <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CSID_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CSID_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
> +				 <&camcc CAM_CC_CSIPHY0_CLK>,
> +				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY1_CLK>,
> +				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY2_CLK>,
> +				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_IFE_0_AXI_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_1_AXI_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>;
> +			clock-names = "gcc_camera_ahb",
> +				      "gcc_camera_axi",
> +				      "soc_ahb",
> +				      "camnoc_axi",
> +				      "cpas_ahb",

I think you sorted the regs, interrupts but forgot the clocks ?

---
bod

