Return-Path: <devicetree+bounces-217192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AB3B56FE9
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:52:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 62D1B4E1391
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 05:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A81C275B1B;
	Mon, 15 Sep 2025 05:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lle9oRFE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0ADB2550CA
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 05:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757915521; cv=none; b=npSL2kpPS7iDkF5fRMsNG5KR3Ox1KTOMiURDu1xFNfsHzxqlVbtwXh+bjNjNtQsy93Qt/0R+9AWcenplXBBBxJt6a4d509Q+7563aKyZggnqi2u915AAym6yGjI2MXY5RupOlrHXaAV3E75YGKTa7vu4TuEZsgmbjSPRTWbHW5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757915521; c=relaxed/simple;
	bh=+OmwbhBwAj/kZFxtuFt6jJjFEcNRsTbyTPdeHDh41MQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xs8+3wOjFbxcEk/mEgqJjqU/DS0Et9lYAF8KE3huhO3/+xB+N67pIxnjICK+Ic6jb6l0oYIFG1VKnejq0ThQeAaHWF2eekV4fVbPytnPxnCgL0Z+TMGZVn8y9BPrslh2wNdRT0GNqvxuRThL6fVIdDg6GrxiHRAl68kNa29cOUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lle9oRFE; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7723cf6e4b6so2956645b3a.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 22:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757915519; x=1758520319; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qye2LPY5LHrCvbMXDQFOPvLnwVK53Fm0yxNdoRHSMt8=;
        b=lle9oRFECuwKFqG4Id231HsoRs4X1X5slP1wiAhVNIY2rTugoeNRXet0qx8fknYKQx
         913U0XSi30aoYpkCGGEUomK3ZQV8JSNKI7ka11vPdqIgGYkxXThU90JE3+uL6ObeJ4Ko
         lxgkZ4Eet/1nubh43lxp58n7xKoie7aGbelXICu/wQrjd8mkXeXFhfhFHfRUrLscxKnt
         P3Gm2RHuQRTbo4HP/Wt0FrNPAq4SXOZsJzjPFc0vUvmzsED6zRI8YAJxcDaAAdtttwu/
         gFgw3GuH2UR1Yfg1bWr10x5+1ngOuWxRos4kWNZsyMK1ZyM5+KbOWKRfOQCafpqyDdkU
         9TgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757915519; x=1758520319;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qye2LPY5LHrCvbMXDQFOPvLnwVK53Fm0yxNdoRHSMt8=;
        b=VAbWyIHUOrXJus8IxalI4euc/aF3XyEIe6/fQWlxyoNqrtUqNe/UzEDrTQbUFrDDuY
         rBDTPD77tg/ByfO5VlXLmn0e+BqmDw+kCunQz/J3jkLnWJ3zoG6cLuJLoYjRKzdXLNoM
         e2CjwetrCGD+zeETxJQUcYkL7YJjnuuliNtXp4uPjMmJJrOG9AUlH0luNsgPHR9MFAcO
         +s+FaWRxh7/V1tS8fHTzj+AS2LHhNhq5m9BCJ6bFuhj2C6fsMSvUQh4P+oDDR6gZ4eul
         ylhi2bTuM+vFXQv5FEXxFYSZ/OatbRj0iVyKuHvc6I7NhJVDwDKn9Af9oYo9S4+gr3jp
         UCcw==
X-Forwarded-Encrypted: i=1; AJvYcCX5lev5q0AL87xucUda/VDgPB7OMUZ0QUprpfRTrE3XWDtp2W7QJ/EBzUlIxqN1WkYBHdgkzkU+znvY@vger.kernel.org
X-Gm-Message-State: AOJu0YzfTUjgsd1MfNxo+ndQhWbvwkOL/5SwcrsjpeLy1bqd/6qRjdiH
	x81sCjFaYGCRm3PwrbrJaLAUhubU08umtJCl0nPgwyJjQuJESyiJCGkY
X-Gm-Gg: ASbGncubGq+XsvlBfPVEOgt/EPm+KpJfjJbeRqo1dplnZ8k1+D3YT+FS5isXvmZtW9c
	Upg7PygZc/IPP4q8TQugfTBoRBpoPoY02EELul51TdB9/HMFsBpKnzqDhaXRL60aSZwcceZKXy9
	Pxyd4xxl55lie7+xS/zEMkfJRmUHY7WOCsBMERLl2NlLED7nCu2UcmpDNN2AoOojIJM/gIFRtTL
	OWor3Cep8WXqPmmQk7Rkml+XVjhDknvsJq96mAzS00laKKCTsl9SVx5lN9dYXdymnyGhn7uO0Q8
	2Gi3jsjMT7NAyZwjj1WF4eUrIp+Ts95xASy9NpV7cPaQcElKxQA/r/HLtb+Gx512/ffh8U192Zz
	mg2TiNeX+326Lh2X3KricyO8oJS30Mr2oHfsuuiULOKA=
X-Google-Smtp-Source: AGHT+IEKmSBecZ4BelqxEIPSzjz6N/VEwgCmMS99XLpTk+f8tgPrz4XwnNDEw4iVMCNnUKH2o2yCcQ==
X-Received: by 2002:a05:6a00:4b13:b0:777:800f:9652 with SMTP id d2e1a72fcca58-777801ee27cmr4565149b3a.12.1757915519043;
        Sun, 14 Sep 2025 22:51:59 -0700 (PDT)
Received: from [172.17.44.75] ([49.249.92.90])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7761853866bsm8595437b3a.95.2025.09.14.22.51.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Sep 2025 22:51:58 -0700 (PDT)
Message-ID: <433068b2-f899-4b28-8498-e9672b8c0b69@gmail.com>
Date: Mon, 15 Sep 2025 11:21:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: add bindings for QCS615 talos
 evk board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: konradybcio@kernel.org, andersson@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 tingweiz@qti.qualcomm.com
References: <20250909125255.1124824-1-tessolveupstream@gmail.com>
 <33ldjudketkyledzp473bwal4jmrigozjjwqtqlrmrkjmh5sze@ak4cusfossus>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <33ldjudketkyledzp473bwal4jmrigozjjwqtqlrmrkjmh5sze@ak4cusfossus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 09/09/25 19:20, Dmitry Baryshkov wrote:
> On Tue, Sep 09, 2025 at 06:22:54PM +0530, Sudarshan Shetty wrote:
>> This adds binding support for the QCS615-based talos evk SMARC platform.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>> index 03a7d3c92ecd..a5dbe6af68ac 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>> @@ -952,6 +952,12 @@ properties:
>>            - const: qcom,qcs615
>>            - const: qcom,sm6150
>>  
>> +      - items:
>> +          - enum:
>> +              - qcom,qcs615-iq-615-evk
> 
> Should it follow the recent example and be named "qcom,talos-evk" ?
Yes, I’ll update the board compatible to "qcom,talos-evk" in v2.
Thanks for the suggestion.
> 
>> +          - const: qcom,qcs615
>> +          - const: qcom,sm6150
>> +
>>        - items:
>>            - enum:
>>                - qcom,sa8155p-adp
>> -- 
>> 2.34.1
>>
> 


