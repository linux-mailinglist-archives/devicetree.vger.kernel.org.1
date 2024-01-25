Return-Path: <devicetree+bounces-35181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1711E83C816
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 17:33:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B7F2B210E8
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 669F512FF90;
	Thu, 25 Jan 2024 16:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FWgTDDkd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE241EF13
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 16:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706200405; cv=none; b=DFXbzrkOc46WCS5KEzS8YGQtzOpn3LtmgHJMd7Xu2wf8GOISUPo0la09F7p5+eNXFllPsG65op/9ucLrfoUjcUC+0xcTLOWg8vSknx+OITKq0AeceXjtI9jRzgYbNzc2ZgnNJ3eeMeeCj6QVZeopDdFcAQ/usvkYaMiVZK9PUyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706200405; c=relaxed/simple;
	bh=ihxgyFrcT7s9Ma8Y8p4UwpKyfv9bS7pdvN44uW1TpUo=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=D40WnaM/W2Fo+G/Wg072Mj6OiRh+GvYIIHxTIc/K/Yw5iUh1DGopDcX018f3Iikk86gOctD361SSiJs9a3Gk5WUlhempI2zInLK2QRvCW8GmXCKiclRrDCIM9qUtBztxqzjX3iWn+fB6TEVMngFSZxBtFlGyqkbHVv1+vvAIqAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FWgTDDkd; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51020e061b5so554859e87.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 08:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706200402; x=1706805202; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/d43P/Uy9I2J/v93EDqYhmotAxSPv+0TR7ioE4qk+MU=;
        b=FWgTDDkdZApQhW9fKDO1b4g1HC1UvH9oEMDLEbH1kVABjLcds0XVVXFgz9NRhTYJdM
         4jUALiExPUp1yTd9Zb37vXXMcnyQVRXzuEK0qvug7PAFqtTQO5p+NbhLC1n2CIFBWF7M
         y7eTCFS2E4iw5lKK9R17J2Fs3/FPre7U89zfvHH58VZRUDMioBZF0wt91VTBH4TaaYXw
         QAytzvg8T31NE40s5zcAYgQz4uzDAEf6SKF6GCyWktTGTw8E0+rAtezK7pJznydfHu6Z
         n7zcEkLDAjXhdSvY+KmubONvWBourwmAhFQfIcrRtSIqh7x/zphbjPcepLekKEtxxABy
         ax0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706200402; x=1706805202;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/d43P/Uy9I2J/v93EDqYhmotAxSPv+0TR7ioE4qk+MU=;
        b=G6NX0TD4sgqSgLlFvL6SXBFSkvgFFd3Dq13uVWt850sStsV/H3fGMH1sgtwgv1yOY/
         JsVdKWGvl3gcqj4+ZjGVKoU5VGwaKpQ5DskHmOEHYpUoLLIB96Nc4Yd/YAWN8jk17dRU
         2jPrg8pO+lpc+AAG/CMVlVdWCM3/8kUs8A/sKQF9eZN/OOm7+Y4BOXAdmW/xZdylEMVK
         WzArWJcaVfbikJJ3LLABiUwf5KMCWn7hiCAyJyQEJMkLA1gONAXzAY1plADyyKB205TM
         dq/+1XEggLQm1Zzsalla/nyQrDkXSIZQwgCarD80YI7wVHiQ3P+2qiV061Y9C7BXvcsL
         OOmQ==
X-Gm-Message-State: AOJu0YxKhVgp+o2xL32zJ8kmjes2Aw+y4OvzcWpn/nwCkiN9/LpyfRU3
	9D01bJ52OyuVyxStTCnwvwVZI3EPNihzFmkUZQZH+cnox/41Gb1qO5zTbFwSTz0=
X-Google-Smtp-Source: AGHT+IEYTYENdHeSvfHhnFZbKZmLfCsG6DgmAtYKpsA+Uw4XUd5FxA/ypZmxPjbApkGHB0vOaPa53A==
X-Received: by 2002:ac2:43c8:0:b0:510:f58:e646 with SMTP id u8-20020ac243c8000000b005100f58e646mr21658lfl.129.1706200401623;
        Thu, 25 Jan 2024 08:33:21 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id h4-20020a056512350400b0050eebe0b7d2sm2931938lfs.183.2024.01.25.08.33.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 08:33:21 -0800 (PST)
Message-ID: <554d8d03-fa8f-476e-97a0-96d1ecc8e158@linaro.org>
Date: Thu, 25 Jan 2024 17:33:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] arm64: dts: qcom: sm8150: describe all PCI MSI
 interrupts
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240125130626.390850-1-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240125130626.390850-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/25/24 14:06, Krzysztof Kozlowski wrote:
> Each group of MSI interrupts is mapped to the separate host interrupt.
> Describe each of interrupts in the device tree for PCIe hosts.  Not
> tested on hardware.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

There's no cover letter, so I can't batch a-b..

Could you please resend, turning interrupt-names into a vertical
list?

Konrad

