Return-Path: <devicetree+bounces-242223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D7737C88288
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 06:32:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 59C42343BAB
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 05:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16EDB31281F;
	Wed, 26 Nov 2025 05:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bbpya/Gc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZXZAZV/P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5A1347DD
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764135128; cv=none; b=O+UVeJNm62iVTISbDKiVlkDjVpUCAOX7OdVrEAyUKV25IoaOnSbZ4g9+tbfAem4CzC9mibkUUR0Td/BnSa9KTpOT6uUtj6JgoymiMQyJAjr7g7HyYOHlS85+5bDqW5LMhyJFD6ljxE64ysK96neGZjXt0NG1ezMNgTLc4IDahik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764135128; c=relaxed/simple;
	bh=9vz+Roz7bEChe74ZVnhptwavlPTZlYKkJ2KGtMeqF+M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gtw4pEbJDI5IQPg8fWn8P7GMneEKC0P0pJQoHuumRNw4pVCfaB31edyLy1egFF84/1PRZ1ZVOU6ql/zTS61BT/Z9FtP22WHhlmO96xPcHg5nMKSFwTSLQL+PZeFGakfylm6aR9Wkz/4XQkaEmDzwGgQ4je+j1eX/hpkeyve5fsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bbpya/Gc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZXZAZV/P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQ3nll72726732
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:32:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CY0yP6PdGzKZcYjI+VR4yc7uIS3H8798a8iw0AcJjgA=; b=bbpya/GcU/5H7Urt
	eGarurww3nNBp1qWFuhAcjE9tQaLem/osfaqmfSiCVI9yhS1sWbmfhk5a9TaLjBJ
	vZ6yvfKOzRDThrYOyZ35+TcanT8/M1EgAZLZOlespx/azyNCLMfnoOAULJie0ZpT
	Toze3jENUOZc8ObUVq3PC+MTRw9jdNIJ9T/kVTBPN/ADOQ4I5aeSKfVn3tXqjC8l
	InAJbb6kE15IzR4zPejSN8SGNJXLOd/QpVKMNQho8Uq1FMPj7zrQE6TUAaaF3B41
	GIPn+QGZgyTw6D/zhaUTMhYRc0nwBWNb3nwd2DAVMsglmHFOwzV5xB6b+ZdXDODt
	QGyxlw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4an8rvu8xv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:32:05 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297e66542afso215717555ad.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 21:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764135124; x=1764739924; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CY0yP6PdGzKZcYjI+VR4yc7uIS3H8798a8iw0AcJjgA=;
        b=ZXZAZV/PJT2zF7R4v7sCfG/1HbE8K2mABXyMgemJ270vut8PYC9Sp9qD1CJMnNjzMk
         Cfi7f0skOQk3gy1DtPqUiV9GG2nrj0s2dmXdG0K8/RwERAyvJ3hEahlxKzeVzbgO9vZs
         +8hs8xgFYtbaA/CKDAN8NHgrJVpte0A9kREbp7xD3S9NzN5+1PNYkXLrztOWAr8eRY+/
         wT7+L01a4yLkg/aobGzek15BhG2s1X/2EwV9I8UAqsRptUt+pNFaBg3SulwSd1qM7B/4
         b4IycZYHzQGNB8KqnO9xKAmC9UJ5AH5iDW1sLJa6jbHHB2RHP09yjwB6+/rgYiPYp2k3
         DLLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764135124; x=1764739924;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CY0yP6PdGzKZcYjI+VR4yc7uIS3H8798a8iw0AcJjgA=;
        b=GNXcH4zMW2yGMlvPfkeHOW1JNtQafsFqwP8zMSeyavVe3sJc33dzLfMmKWTb3IBYy7
         jYCGc++aoWxUR9OgF57YUwCBX6n0CWkXC7gpMTyBPfsD0+6ayYuGuNOGCamVLWdc0Snx
         G4zSu50zEd6NPwfwkMOg9TzQ4Si6NPzJ2lo62or3IitBZjE4zAgbbAmY3meafU4eXkwB
         f2pvcxmDizQS2EPm86TembdXW03+MkJE2OIDyfs06EH8fLhngmGzVQArYLJsViB+cK/c
         AnXu7zl0dczof96WyLnGRy998pyHytmrUUzTWBtRbuv8h7zxOFe48eio31xNT+R1BXDF
         6m0A==
X-Forwarded-Encrypted: i=1; AJvYcCVxLR/gUIPnltLmHVf5f2qj2JpXCfS7SxSwDvXC6n1U2Elnn62c+e3Reprm8/CJuaeVbzd8qyiiT9D1@vger.kernel.org
X-Gm-Message-State: AOJu0YxQWqknMaaypygfdA6BTotwVCtgyfcAVLe3DRgS4V/q1+iELZik
	gX8lBK4DtpmSyhS5KWymLF2D3pk6m79OhcSQ2YhHqvlT+P7y0UnPQWDv2IIGgRHTJCM61TluX/D
	JwWyCdJfpLLawHRbdFo/EZ1IOAVScuOlks2IuAuqjWjf6Yt+9pKz8QB1G/uxF6Hp0
X-Gm-Gg: ASbGncvkn5hCyiVubMOeuavcyu2XzdhWx7A5BiKM7lJzcxkmgbQKnKK/yI5DNdAqs1g
	TRAoEQ8LXY8r0qlXTNIT7boRUSKSwCjF7jIourC91uELI2JKwDmJDanIXHTgi+OEIp1oVwtF4Jd
	4pHbzieeYpkF1jiBi6vIMWsgGaUPPlLeoU0tMVvq1YBSzKkOfyUJzR5Jpjc/ojR52h2RPw3KYyl
	FWQnGFosD23xLck10+tIDMTZn11wrsd43H/FM2mNqkIYZI5VgiSs6Q/A83enMNULGZY4I0rCZiN
	trlrGU0f3YNrVQ9Ua5Lq/HBcLBNFXnpbr61CKPz1TtJ14esYemM7XVQQHg0M/hV7N7SQ87qtlZm
	M5qq2BUDoRCQU/V8j+k70BIp8dfqsgjl/ittz4FD3mrHuE1tT
X-Received: by 2002:a17:902:e78b:b0:29b:ab3b:70c6 with SMTP id d9443c01a7336-29bab3b7373mr63072885ad.30.1764135124266;
        Tue, 25 Nov 2025 21:32:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEOgDmEo9Mo3xBae9CsuKVbFBZMHpEbLZ+a2Mh8OYYeQ+nGjG1azdzeMWDD0altMK+ymqAUbQ==
X-Received: by 2002:a17:902:e78b:b0:29b:ab3b:70c6 with SMTP id d9443c01a7336-29bab3b7373mr63072465ad.30.1764135123788;
        Tue, 25 Nov 2025 21:32:03 -0800 (PST)
Received: from [10.218.21.154] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b138628sm185000375ad.31.2025.11.25.21.31.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 21:32:03 -0800 (PST)
Message-ID: <0b7dccfe-ac31-4d75-840e-96d8ddd66fdc@oss.qualcomm.com>
Date: Wed, 26 Nov 2025 11:01:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] pinctrl: qcom: sa8775p-lpass-lpi: Add SA8775P
 LPASS pinctrl
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, ajay.nandam@oss.qualcomm.com,
        ravi.hothi@oss.qualcomm.com
References: <20251116171656.3105461-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20251116171656.3105461-3-mohammad.rafi.shaik@oss.qualcomm.com>
 <3c0e994c-7484-432f-b3b1-bc7523d27242@oss.qualcomm.com>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <3c0e994c-7484-432f-b3b1-bc7523d27242@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 7oOa03s1RtTWukYWgbgfEzP-ctAR3gp0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDA0MyBTYWx0ZWRfX4FIWg/3Q7nNU
 tegY2JDIa0W7yU+DONVKz+H3enQESqNVxYlwYwx6QCJLcA5x2ivrb7w1KKg9/uslflA8aFUFwKC
 uwlzty1UB4XMLJiWs/14Rmx39XJsqmx7Nxj7IHlfMwBvO6AaTrQTyYLJOrRbJW8yvvCa0WdRnON
 rgPIMRiIs419eMlB3zr2W8Yv3XdKJOsbma+GoQacwX4feN6t6MH8aZziY2xrrWw2a9KbfxJczEP
 or+crqnk+j7TraRBJlK3KKFux+7h0uGFAkDDPQMdJ+93jMjbH1MPdfvzUEjKRL8tWLqGkcKUg3I
 o/evOvV71RZiqu8N140TaYcCvPx9R/xbKcqIUN7QA91odxRsf9tUA3P9R4PQI42eoQifqud+7TF
 EuIkUoEJIJ6dXYQazMmXw83nOvs3aw==
X-Proofpoint-GUID: 7oOa03s1RtTWukYWgbgfEzP-ctAR3gp0
X-Authority-Analysis: v=2.4 cv=Ushu9uwB c=1 sm=1 tr=0 ts=692690d5 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=I1aTOh26RNZvAKNcDqYA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 malwarescore=0 spamscore=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511260043



On 11/17/2025 6:47 PM, Konrad Dybcio wrote:
> On 11/16/25 6:16 PM, Mohammad Rafi Shaik wrote:
>> Add pin control support for Low Power Audio SubSystem (LPASS)
>> of Qualcomm SA8775P SoC.
>>
>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>> ---
> 
> [...]
> 
> 
>> +static const struct lpi_pingroup sa8775p_groups[] = {
>> +	LPI_PINGROUP(0, 0, swr_tx_clk, qua_mi2s_sclk, _, _),
>> +	LPI_PINGROUP(1, 2, swr_tx_data, qua_mi2s_ws, _, _),
>> +	LPI_PINGROUP(2, 4, swr_tx_data, qua_mi2s_data, _, _),
>> +	LPI_PINGROUP(3, 8, swr_rx_clk, qua_mi2s_data, _, _),
>> +	LPI_PINGROUP(4, 10, swr_rx_data, qua_mi2s_data, _, _),
>> +	LPI_PINGROUP(5, 12, swr_rx_data, ext_mclk1_c, qua_mi2s_data, _),
>> +	LPI_PINGROUP(6, LPI_NO_SLEW, dmic1_clk, i2s1_clk, _, _),
>> +	LPI_PINGROUP(7, LPI_NO_SLEW, dmic1_data, i2s1_ws, _, _),
>> +	LPI_PINGROUP(8, LPI_NO_SLEW, dmic2_clk, i2s1_data, _, _),
>> +	LPI_PINGROUP(9, LPI_NO_SLEW, dmic2_data, i2s1_data, ext_mclk1_b, _),
>> +	LPI_PINGROUP(10, 16, i2s2_clk, wsa_swr_clk, _, _),
>> +	LPI_PINGROUP(11, 18, i2s2_ws, wsa_swr_data, _, _),
>> +	LPI_PINGROUP(12, LPI_NO_SLEW, dmic3_clk, i2s4_clk, _, _),
>> +	LPI_PINGROUP(13, LPI_NO_SLEW, dmic3_data, i2s4_ws, ext_mclk1_a, _),
>> +	LPI_PINGROUP(14, 6, swr_tx_data, ext_mclk1_d, _, _),
>> +	LPI_PINGROUP(15, 20, i2s2_data, wsa2_swr_clk, _, _),
>> +	LPI_PINGROUP(16, 21, i2s2_data, wsa2_swr_data, _, _),
> 
> The max slew rate value (shift) here defined in the register map is 18 for
> this platform
> 

ACK, will update proper rates.

Best Regards,
Rafi.

> Konrad


