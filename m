Return-Path: <devicetree+bounces-252556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 384D4D01048
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 05:51:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 012B43038F65
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 04:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EC6A2C2372;
	Thu,  8 Jan 2026 04:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aIh1+7qC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43B92C3248
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 04:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767847887; cv=none; b=dcR4YkttiRYFAOeU2H0ggcrv2esPKZV2zIhH5ZlFINOmqZSiXG8Kp+kXTJWn/P5vm7eGRwl/p6pdIzE5dHJdDf7kD9ye82J3Pw6Smfewc/joD+WNYJhDYsLzO+gQccK4jijGkikD4okJdWhU/eN3c2JFXQsxZE3YLI9DqnhEGns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767847887; c=relaxed/simple;
	bh=KInylRKqGPEZDy85HSAT4b1HbM1y3G03NZiizlBuoTA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bF/lFEonuh4ufcDB3k4v8VjbtrdAgNIVgT7CdlP2i89ZQta/wCq3S2KbqiHPfsMzXynnoDO9O/xLv3yeyHQf0FENpiGrsm+zJYkaJD8ymfsXhPNieSc2lg5GX0/d9WNYjZ6knZ3T954X1U7/aiSj0asR3e7GX8yKzzHRUDWY6r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aIh1+7qC; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2a0bb2f093aso21941105ad.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 20:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767847883; x=1768452683; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HBRC4McLwzpT9aXoMu4nX/56hk8UMq3mLiffjdzC7K8=;
        b=aIh1+7qCcYXWYNxHcxl7jRpy8dF/0oB8PBP2+ZBE73TBd2JmZErPE5KO/Nzp2KRumv
         TwI0oI1rvr4nP8T+sodN+Pa4mMJ7lRnfjlOlC6HJhuPRLkkXnC+0q2cKSSf+VRDPYFyd
         0jEcxlWdNCnyKooi3B2OCYXyGHGQBRsmZYk7iHDuSVg5IuIU6oPPmbWtMKaksVsQiYGt
         NVR+CeY36L2z7GXWre8YRxYevUhUSsBY4yVTStde24jzG9ph5F7vhie6iaxCGP//2cop
         iLDSUJ97sZekUd6dFEjcREmgvhSuGhTbdFNuf+w+e+JukmVS0S0AFSBn22/a0TrSAV/3
         JVSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767847883; x=1768452683;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HBRC4McLwzpT9aXoMu4nX/56hk8UMq3mLiffjdzC7K8=;
        b=BmHiZ3rPj0CrQtju25Yy4//nYjn+dkw/B7Amha6SRRjXWYW01o3A44WPv2eQHWaY+Q
         xzCstsdC0/9wM5X5FAFGFGjxqvkUu/LktYI+xFyd8ErNqLqDMoLwBewa98iqmJ4OvB1m
         c1MljKO6UzChkkQFcjs0uPWeZa98tpL43uSumQP+8zIuLJerj0WeNzN9w/Mmqrd2sTYl
         xzPTxqO3xRYQ65o8CMZgp9t0kOSSo7Cp3ZFOB0yADaO2tdzU3+Tn6T4X4yCYpuOvv6Pr
         hBMFrkQp7W9Jg7R35bTM9d8NjMXJfdAjZI/WHTvx49C6sbQfhHtaRyTNq1Fi38IA28Eb
         lx8g==
X-Forwarded-Encrypted: i=1; AJvYcCXvhZfmBGyLBTfOuOBnSuiul1560BhYdnnlZxtaK5ZvXcbyjfL3/oXnLM5+/h9xQGFVrKPxRcoczLSU@vger.kernel.org
X-Gm-Message-State: AOJu0Yx49yn5peDYjbMhLkaTY4fr0BTFW6dr0NfJGaZA8NNRqPlQEYUQ
	TZM13v3U1Ziwx/0gF7q2NMaaZ5P2Q2BWCeFsWBlAAAX0ZX2CLQTCk2/L
X-Gm-Gg: AY/fxX6ScMSYNiiCq3cTrwqCmMGjERARw3V18NAXn46S9nmruVzLXuU1duliAJAL2YC
	9L1U4XNBhwdgXnl4olG+xdvZUkdtehe2ptNHUENGoItoS7dwexvmeGxldK3ml03E/sfA6gR4gYN
	2AaxNJMJa0/wiuoqCSuGI5U94pCxdEhOpySa3OkUDxjdbf6MzYPbVTZkef7NakXmLsfBiS5i9qO
	vaDuHSo2drxwoXMimx66idGi+Ilb+I3rJKDO/NkiBCPP5OtwjGjzXJkYjlx8tYPIRhIW3zcoKn2
	HvqyT9MBj9Cr8cd4z52AJIIdM9FYuBzHNJcG1B1EwDmnMtu7fib+1HXT4/cI2x6+wnkn0VRFdEU
	Ai5cAFiNXb9s0wF38go9gmidPI8KC0gC8R75Rt3mai9PJbzizB4XMaG0nWibIbqLR1k/eHgKxZi
	OlItgjn2kWWhPbm6sxCF61tBJfuAK8mww0
X-Google-Smtp-Source: AGHT+IE59Bw/HBnzQSE/d1trKAC4GO+IUnojcVfX4jX81ZYUTScmwSMkXhGxR4AZZpLfkuzHeSkUQA==
X-Received: by 2002:a17:902:e790:b0:29d:975a:2123 with SMTP id d9443c01a7336-2a3ee4ebc93mr32662825ad.60.1767847882906;
        Wed, 07 Jan 2026 20:51:22 -0800 (PST)
Received: from [172.16.20.12] ([136.226.245.1])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2c5bsm65408935ad.58.2026.01.07.20.51.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 20:51:22 -0800 (PST)
Message-ID: <2e20bbe4-ef4d-4f17-a84a-4f1cdebaeb47@gmail.com>
Date: Thu, 8 Jan 2026 10:21:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/5] arm64: dts: qcom: talos: Fix inconsistent USB PHY
 node naming
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251230130227.3503590-5-tessolveupstream@gmail.com>
 <aV4YA6wFjPD8G9kk@yuanjiey.ap.qualcomm.com>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <aV4YA6wFjPD8G9kk@yuanjiey.ap.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 07-01-2026 13:53, yuanjiey wrote:
> On Tue, Dec 30, 2025 at 06:32:26PM +0530, Sudarshan Shetty wrote:
>> The USB PHY nodes has inconsistent labels as 'usb_1_hspy'
>> and 'usb_hsphy_2'. This patch renames them to follow
>> a consistent naming scheme.
>>
>> No functional changes, only label renaming.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/talos.dtsi | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
>> index 95d26e313622..c7dc507a50b5 100644
>> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
>> @@ -4304,7 +4304,7 @@ osm_l3: interconnect@18321000 {
>>  			#interconnect-cells = <1>;
>>  		};
>>  
>> -		usb_1_hsphy: phy@88e2000 {
>> +		usb_hsphy_1: phy@88e2000 {
> 
> Here just modify talos.dtsi, not modify qcs615-ride.dts
> 
> we will meet compile error.
> 
> Error: arch/arm64/boot/dts/qcom/qcs615-ride.dts:635.1-13 Label or path usb_1_hsphy not found.
>

Okay, got it. I will make the necessary changes in qcs615-ride.dts
in the next patch series.
 
> Thanks,
> Yuanjie
> 
>  			compatible = "qcom,qcs615-qusb2-phy";
>>  			reg = <0x0 0x88e2000 0x0 0x180>;
>>  
>> @@ -4412,7 +4412,7 @@ usb_1_dwc3: usb@a600000 {
>>  				iommus = <&apps_smmu 0x140 0x0>;
>>  				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
>>  
>> -				phys = <&usb_1_hsphy>, <&usb_qmpphy>;
>> +				phys = <&usb_hsphy_1>, <&usb_qmpphy>;
>>  				phy-names = "usb2-phy", "usb3-phy";
>>  
>>  				snps,dis-u1-entry-quirk;
>> -- 
>> 2.34.1


