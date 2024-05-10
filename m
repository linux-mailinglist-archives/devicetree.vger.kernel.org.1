Return-Path: <devicetree+bounces-66290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0955C8C2512
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:50:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACAE62826C5
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F7B127B67;
	Fri, 10 May 2024 12:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F8uMkKM3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AAD44C76
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715345400; cv=none; b=WJ+9CxfTbbOvdE9RgL4VagXG8DXq+wGNepeLU8PgHaGD9esbjcqwKCXSYQFwvWOxoPn9+bJR4NXSJ0vcm0ZWDn/3/23/KUQfak700c7VhIPbKlFkYqNUotnyqasaA2eRcRCShkT82We8yTBvb8ulESCrrUYb3fu5U5M8P1OXrJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715345400; c=relaxed/simple;
	bh=e8oYhO8gpIXlkw2NTCH4PCGRI63BGYDQZ+LoX+zEZoo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qgxkEjLjdXM6cLEs0ql+bqePKQR0VPIKV6gtqwGhheanAQ4BINRM7ySYMRdabWFBl17I5M9N9lQvqlbhDVmzDoPsf0+QB/bvRY74mzRLXq/VaK7m7vrDd5K2rqtrVMEc1CT+sxXjOLQvb0zDr29gEcT/Ma7pZy59LaeEA6SUBck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F8uMkKM3; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-41b79451145so15023405e9.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715345397; x=1715950197; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dGh1C5y3FLEijiqD4sM17A/yGAQ20EDxp/D2IyXBR8o=;
        b=F8uMkKM3StAvUVv/zAgU0Zs/KiSTRl4+AXJkopLxasPYpuXBOAnKbJXg8SA5o1eowq
         Gbf3f1YKK4Z2AxS1w2PPEe43G1bNncOCDk9ZQlCfjeY+FVQ/3Vh5sl/fAnfKDxqNFtkA
         CNQ/L5kOGV4KYFKp4tA8q7PxM4cMgcEcE6VN33JpF5+oQL9uIvUgCF6xWMJLqXbFfhl5
         mPCcj4RoW3mMbm1sDNO9ok2p1T3bTBFiJ/1A66ZTYOfyYRnx1KGl8FvTnUP+Pu9NmcUj
         pZRYm4seHxgNeNGPR3s/VPo13osz0CGyowTzexWIqPTvyZwVyuewqu7yPdjMos7orG2I
         E3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715345397; x=1715950197;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dGh1C5y3FLEijiqD4sM17A/yGAQ20EDxp/D2IyXBR8o=;
        b=pwc3GTE+mIifVht5INoyFIfzn1h66ML4FS3y0WdXL79JJkmdjdBtk9gozAnlHc8Gw3
         +m1inPZyIf88J9fQ2HFvh/KrmagYAaprW6UU6nKW87T5Dsa0x05AxcozNetvrD5s2hNZ
         ToJCT+oPiQcRtbI1egvcPcOHpa++P0ePEEuPBfd+jlhA1DZZMc2lrRRrZf6qRj/Zy7+X
         ORR+3uZnkep5WH9Np0/nBd6KsoyWdecAKALyT5VDWLkbDN3Ue/hiW7c2Ye93Ltv/lpzM
         ZxS+HdEyLsKkgCwdpOQdr2qITm0Qc0BjdXxNbK1JC8rZoVku3XcJdREn+KK9eeSRY37Y
         3t9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXlwq/Hz9JMzj8AAwQIAwkqtIV/ao0BYuF/WQkZyQtF5C+u8phnKehLnFxZ+D1XRyUUmRY4GtN1jEiWs5ou/QV8uWBqnhDFMa7taA==
X-Gm-Message-State: AOJu0Yybp8MYxktuVl08Cps7Y6p+odqKAzz0N0olhSwVcjRJ7fjJ9NLm
	SaiGFQHLjkjojWTACChjT+vAFsdK7iuhZNmeHYluRkTxPa5p6LEpckmQ7kgO3dM=
X-Google-Smtp-Source: AGHT+IFsnS46zswqbpjJ71i4j/fP7pM80I7qhCs6nr0ajA+gbaKAJxnCuGqoRsRhUI941tuQahemjg==
X-Received: by 2002:adf:ff92:0:b0:34d:8f9c:e742 with SMTP id ffacd0b85a97d-3504a62fb49mr1871728f8f.5.1715345397278;
        Fri, 10 May 2024 05:49:57 -0700 (PDT)
Received: from [192.168.0.3] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b8a7748sm4499570f8f.49.2024.05.10.05.49.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 May 2024 05:49:56 -0700 (PDT)
Message-ID: <b4dba1d5-448a-4a4b-94d5-f27c6ff0010d@linaro.org>
Date: Fri, 10 May 2024 13:49:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/31] Clean up thermal zone polling-delay
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/05/2024 12:59, Konrad Dybcio wrote:
> A trivial follow-up on the changes introduced in Commit 488164006a28
> ("thermal/of: Assume polling-delay(-passive) 0 when absent").
> 
> Should probably wait until v6.9-rc1 so that the patch in question is
> in the base tree, otherwise TZs will fail to register.
> 
> FWIW, Compile-tested only (except 8280).
> 
> To: Bjorn Andersson <andersson@kernel.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: cros-qcom-dts-watchers@chromium.org
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> Changes in v2:
> - Un-drop passive delays. Whether they're useful where they're enabled
>    is a topic for another patchset, as it requires examination on a case-
>    -by-case basis.
> - Better unify the style (newlines between properties)
> - Link to v1: https://lore.kernel.org/r/20240319-topic-msm-polling-cleanup-v1-0-e0aee1dbcd78@linaro.org

So perhaps you can answer the question I have.

Right now, we have non-zero delay values, doesn't this mean the thermal 
framework driver has a delay between evaluating dT/dt values per

Documentation/devicetree/bindings/thermal/thermal-zones.yaml

Your commit log implies or my reading of it is, there's no functional 
change because its currently driven by an IRQ but, is that actually _so_ 
with non-zero values in the DT?

---
bod


