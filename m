Return-Path: <devicetree+bounces-215490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5F0B518F5
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 16:09:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2AE6156471A
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98628321F28;
	Wed, 10 Sep 2025 14:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x5rKPwR0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD273176FD
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 14:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757513341; cv=none; b=QnN3EVPtOThjYer3OeDvHYLauhxnL1GIFqzqAyxpbyjH4dfvwBrtjCVIkV3ylqL6jB4uCeVxStRKqKKOt2Y1UDE6gBdiVZk+YOY41NtFYUIUVu5YWH0SpNT8QlHqcUrYLGvcwdTH4yvTUU1gyNzzGH9T4jOIU3ChNcletOn/sec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757513341; c=relaxed/simple;
	bh=jyWB+tQA8G60dRJ1a/3JvX4zUlNMFVNjVgIRaHfH1XU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mfIIslCWcwk2p+Z1NbdWgcZjMTgkAOzsufOzk4mF1R9m+oEyvDhf8/HOtbZGg4jE2975qgYmzb/NJTTCgl6qEBgyA8kK7yMEou6/bepOlFu3DbWH3c+biiGISOE/XSX2uCODXrdURUYsJ6002QM0nxJsi8hEmALfDE0EIMvGA8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x5rKPwR0; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so4433693f8f.3
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 07:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757513338; x=1758118138; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BhI8c9fUpWOPpWCEzFMrs816kFgN9hDlCR19oA75+ZA=;
        b=x5rKPwR0ni9QYPahflyh7NA9BywfQ1qQ5La0+gVuhhZeJ9sK+AEoUC2X65Zx7lLWEn
         jqDPnfC3wtM+wkkqU7qpe9PoAaz1huAyCIUlJukCawdssv6AFIY6Y0Sh3tu9exrUniRL
         e0YhXb/VLJeaHd0idlMr6n2e4yABsciHBWwZP/6Xs4JBgPpx5vWOPqGDiPWXS6jUWZL3
         iSFI6cSJYaNYpKLZSJZ8bzBd2qur5DiR/po1Be8BW6TXu6Io1Yc9KsjW+3xMK8RqDVKI
         018cxnb4eSquZhCnwYXqDrKgRwyntTleHA2nnux/g0swOd3BWmkHIrJ4GAvWPricRrKF
         ToDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757513338; x=1758118138;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BhI8c9fUpWOPpWCEzFMrs816kFgN9hDlCR19oA75+ZA=;
        b=Iv9isTtSDDd9SAlihY8V+rm/59Km3xjvJtPmh4dgVD/vhPIE59UnGOnC3zQWn/rOcA
         5skCaWGZRxVhzMIDdRzTtgJa+iaKNxnKXZow2QLRlX6xBuNejExYf3dSZWvcEtIWDZT7
         bwHnWrQlNY9fsRsRrkf3GObHp/KIeqBDe6Bvpuj1NxtqJPrz4y+kmbLZOy4Vv6Pi54hw
         ArAGOAp94kYlD6K2hZ/gubHEjs1HHgHTuw4+GtuuxyRKtYCPQrcH80wbDclZRLiZLsYl
         P/SvZ9Tvj61yuP7lz6gE1VJdiQ63WAqfjiNfwnvmRe1FQF5OuWPztMl1oFp/kUlfw1ah
         lf3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXko01rPCyf3sQ/VjNXnMXKGEHW9VljsqoeLEaMka2lmfu/HnIBt/1gu/8IADWO77skIrI2Sl3/RkUo@vger.kernel.org
X-Gm-Message-State: AOJu0YwV2eu0KPQtwd11jlhEjSWcK15yAymmTcLCa9lnDERPGsXXdpTt
	D7C1wUV+3dX7mA03fSjKuNZ7sw+bb4iImsHjlou+fF291SJqxS+3B9AgEKlpQU/3EO0=
X-Gm-Gg: ASbGncvTc46K5sANZ1zZpdPpsOQLvJALTMNSNU0U8DNDfbsQ+5GAeItsvJvvcVCZ6hs
	ispPHMPVVZtUCTY/YZD7yV6oi1VxEsGI2cCyq4Dww52Rsk/XvGpMGd9N00SdhEgTW8rFdQSAT/U
	LNn21GaTisZmOKCI6iHHbTbTbSK15tBzlRRmWArO4OGedfo3SaD/oc/2NCmfpA0p7RrwuN51AvS
	AHIsxc3XjFE/Klu7SwSskpUZdAi7tHhLQUmld0A5O1TsMU77h458QLopqliCAD18OWbW5mY2Ms5
	RD2rTlBvdryV0aNdyvWVD7K19ZNdGoXeLAbXTkQMzhWwkzKxEjw+6yBc6IkKc4FtMvZkA4xaVDk
	dJoBM5dcM8zeiukdXg7FUhJXoPLJZ494UWPjlIpJtnusFeascxDV7+yaWC9yrjc8h3XbKJaGmHI
	gQgUQ8lTt/OhLLcqe79N8IP7sbNuFnoyujvGTwjo4d
X-Google-Smtp-Source: AGHT+IEU0i5tKvI1IML6r1qb9OCYAjtEaa8WFITlkibEW1V8pMtdtSftNzuAhODsfk/YrIRjrT2cRw==
X-Received: by 2002:a05:6000:24c1:b0:3e2:ac0:8c55 with SMTP id ffacd0b85a97d-3e643c1a48cmr13509406f8f.55.1757513338089;
        Wed, 10 Sep 2025 07:08:58 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75223ea04sm6916892f8f.45.2025.09.10.07.08.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 07:08:57 -0700 (PDT)
Message-ID: <e72800d4-cb65-443b-be7e-0966a60fa5a9@linaro.org>
Date: Wed, 10 Sep 2025 15:08:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3.1] media: dt-bindings: Add qcom,qcs8300-camss
 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
References: <20250813053724.232494-2-quic_vikramsa@quicinc.com>
 <20250910104915.1444669-1-quic_vikramsa@quicinc.com>
 <21ea1149-9b61-487d-9afb-d3b8b41fe71a@kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <21ea1149-9b61-487d-9afb-d3b8b41fe71a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/09/2025 15:07, Krzysztof Kozlowski wrote:
> On 10/09/2025 12:49, Vikram Sharma wrote:
>> Add the compatible string "qcom,qcs8300-camss" to support the
>> Camera Subsystem (CAMSS) on the Qualcomm QCS8300 platform.
>>
>> The QCS8300 platform provides:
>> - 2 x VFE (version 690), each with 3 RDI
>> - 5 x VFE Lite (version 690), each with 6 RDI
>> - 2 x CSID (version 690)
>> - 5 x CSID Lite (version 690)
>> - 3 x CSIPHY (version 690)
>> - 3 x TPG
>>
>> Co-developed-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> 
> 
> Fast review only as courtesy to Bryan:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Next time patch which cannot be compared to previous version and has
> broken threading will end up at end of the queue.
> 
> Best regards,
> Krzysztof

Appreciated

---
bod

