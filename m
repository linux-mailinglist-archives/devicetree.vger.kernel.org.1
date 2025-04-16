Return-Path: <devicetree+bounces-167844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 163C5A90748
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 17:04:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9471E441A66
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 15:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CAD41FE457;
	Wed, 16 Apr 2025 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ifYBf12c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA1F1FCF7C
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744815863; cv=none; b=a3rqSD9ZuAGAlAJ8eRk+xLst9Ra/D45FKqf3b1fEeW5P/nxKUC/hwqRz1EQEHn9bxHpi0nsQqwSXErfM1fTUxkOJNa9O71tlVzIxHOQA2qOtRJ8Wl6d0ro7zak7Y4NORKVkVklvoTfYARKnoSb/xfJ2cWeBWKsvn34iq3wkp+nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744815863; c=relaxed/simple;
	bh=wlov7nFR2p7UcnpULR/zq8qyspFKNmoNYk2OBZFYc68=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nFlazhNZVdhMxMnUnJq1hqs4+57t7SJyGKkNXF5NPfKcM9HLS3UlNa2mDexmpAaMUiZPS8YmEw6174ODOm5wgfnvWiZk2aXvd8bxHKvFM1HOdC4LpHivQLBYUZmO1BixAAdr8EnVflVc+FwiZTzTQLkfCR1RVkCDdPxAxyNIpSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ifYBf12c; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43d0c18e84eso35081905e9.3
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744815859; x=1745420659; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dPcE+iBE/Pijal0cRxmb6/wFqB+XH5H8pnX226mgPTA=;
        b=ifYBf12cvQ0y/etIky2Es+NC/j0b4nEbhsuaD8+WRA5DrPu/uu3hbau7n8j62dSlEo
         i7hbUwiKI1YfKaxsQC8dNXG1TCRZIjaivXeXa/OmpiwmA/9BDpSmG4CpDqN6uP2pHmIB
         NdzyF9QgiRi4/KsA0fF5LWGbHAzMKvj3kPsWsUNV6W1OwpPv3XhKuLM/3vUfnrL4Kjyq
         jw37FLnvgmYRDaE/rLDsu8FeziESsBZbNuKwdTKUwu4ObPRobcpzomZY5DU55nuJQfdy
         MWHAtOkldB4LpWKD1jxUUTtMHF53vbucp/eu+BuxNGku/tHWxeGPLiNa8ZHbfPgrWv6C
         HTDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744815859; x=1745420659;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dPcE+iBE/Pijal0cRxmb6/wFqB+XH5H8pnX226mgPTA=;
        b=dzfmef+PoaxkOaSW1jsS18TXeUo56SFNW7FOEzuTT4ysMUJOUGTkZZxMPfIVZGXbNu
         A91IiT6MXOl+fGS74Djs4foguHYSiyoO9Iea1dXlayDkVvH2Y++eliAc7G0/TKO60lg3
         04LHVT/rn3CVdBRwMYNmrtb65h0bPPUUc6DyWkBtgxID+vUC3wqN0fisKVLweKA6q2DO
         jZtT5wFr48vc+vGqpSiSjQNyKry4AyoyTk+MDh9I8rwPGTsJaWLvTtRxJhRQ7YMppsIY
         ksMxVP7vBDquDd6SM6jLr9OxkrqMLv3aVj63I0DbocsULrIyf61vTe9UA/3aUnblqr9v
         KEXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAP4E+LMw8XJYBdeWKWnBuJTzQfkuUHgCYVJQ7+3Ps8lFmu7j1CqJdzhzZ0NxT3ZXMW5iYS+Hy8uyn@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf6oJqqsxs1fBfjwxJ65Lo2rMwaeQk1/DtSkX6FPMpjl6A4Gz2
	NtGnKc5maxP3Mp9ZYVWBnSWZbWFukhz4/4xl+C+2g0YylcFPZK0fRyjFVJELUJk=
X-Gm-Gg: ASbGnctrCbyKivQdw6j93jOPfB/7JpnNNYAjx8rxMBiymmOKMlBEVamxkitu+gKhhom
	9tk0wd6+wai/tE/g9sBQFNs8hogyLQgx96mW2R/GQanzkEytE7O6Z2p5PCP0NJ2uXLxVaxvO+gA
	PoS/Xkzl93HxulZZpUmoz3cfUA+ctan02k62URvgY1xUA9iKZtYyVi4fN9uoz9hxa5Wn9dX8MeK
	GMEFT8Tit/ffZDyXwJee4t8eZ2VkYezD8fJdfdNRUd6aAQ6jXGKRNTLzSgPgQmUukm1XsNnTUkx
	2tz3D33YrjLLzYH1YeVQH7WlvhH4mXvXbIm2qDSsTObed7DpjffEKsYhTLoLAnD+jvUFOv9kkPc
	agVImyDrs8KiPpbjv
X-Google-Smtp-Source: AGHT+IGw+0z/rdG4QreP8lH8WBio2oP2tc9ggR2a5uQKSnw+ZcKCRs53G862H86hVcTyY0XyJXoY+g==
X-Received: by 2002:a05:600c:3b87:b0:43c:fffc:786c with SMTP id 5b1f17b1804b1-4405d636761mr16958455e9.19.1744815859432;
        Wed, 16 Apr 2025 08:04:19 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4405b4f3407sm23479845e9.21.2025.04.16.08.04.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 08:04:18 -0700 (PDT)
Message-ID: <20b74cd7-127a-42ee-b2f8-a144b9ed9304@linaro.org>
Date: Wed, 16 Apr 2025 16:04:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: qcm2290: Add CAMSS node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: rfoss@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
 <20250416120908.206873-6-loic.poulain@oss.qualcomm.com>
 <c57084c4-189a-484f-af2f-8e4181f547fb@oss.qualcomm.com>
 <CAFEp6-0tZQowmDrEsHgU1Ncx6jR2f=Lp259vaj3mefc-9BfUbg@mail.gmail.com>
 <1bb2c12a-df9a-4ff8-bb76-0b5dec86ee3c@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <1bb2c12a-df9a-4ff8-bb76-0b5dec86ee3c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/04/2025 16:02, Konrad Dybcio wrote:
>>> @5c6e000
>>> (first reg entry)
>> Ah right, I reordered reg to be aligned with other camss drivers.
>> Should I keep that order (and update node name) or reorder with phy
>> lower addresses first (PHYs)?
> That seems to be wildly different across a number of socs, so let's
> just say this is okay as is, as we're not gonna find any reasonable
> order in here

eek no please - we've been trying to make this consistent.

Please do as was done with sm8550. My stress levels can't take another 
change.

---
bod

