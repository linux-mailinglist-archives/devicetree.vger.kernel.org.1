Return-Path: <devicetree+bounces-243692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA2EC9B4DB
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 12:24:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9328B4E14BE
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 11:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26BC930F806;
	Tue,  2 Dec 2025 11:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K1vdQ1eM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AMZcI2JK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5027201033
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 11:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764674642; cv=none; b=AyySIG32dnwfbIqk9cq4mUbYSFGe7/N5GIlhGe/7tZ1tKwX+L5hhFPY9u89McfF/YpTYNqH6YhCW9weTXzSb9QBkZO/UbF4/qblnnw3q4zb9wGb7ErwhGANPWErKJuSLvACv5XZPqJNU7Qk5W+R5IAuUYaKivihIfl1AZi1QhOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764674642; c=relaxed/simple;
	bh=Ur35kC7ex1LlDAxoSgVabazTIjVWHELziTdwUeDTtwM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jJGMxcpkJovqrJZK3QHTghCdSYWQt9AE91wJDeE5KlzFbVjRULyQWuuN+2tVfo7o4eIh/w6KRgLnZapGw1b2YkD6K7fXwWoPtCLWiH3W4x2mzUV/ZOGJIEj5dgU+J8cvDyoeWVMzAqRaFx6+Ji+fmqsgGZDLimEonhJSnInRgv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K1vdQ1eM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AMZcI2JK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B2676Wa2821258
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 11:23:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BP+WE8Qo8est+P0uDoDlZmZ7Zwtd1KdJqw/NEEpJeFY=; b=K1vdQ1eMbnjh2Zl2
	4KEhF1uOFTXeGoD3W/Jokzc+pR4tW9Qwo0Ltk/BzilHMU9N9BX0VaXooOdihQa6u
	Kzlw8sP32n4Yn1+LIEuyMmcTgzxjVdmZVy+5HoIx9B/zadcwa9hVDO3zN6cy1GWm
	BkGMIiEnn45rHmX293tiU5KxUmBUkdllZRJP7ADK3d8ryPvF59jM0A7/4bcuq/+v
	4MtU4Qbov8BNqxug8JlrJqb5z/yTUWmcJnaOI+cwZnieAct3I95c4WMaeekZZJK1
	xlwuQ8kVd2fIfLMb65U1dksS6yyVVi6NGvBlC+JR9bK//5Ve0xW5TYYEndc/Agvp
	oQWp1Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4astjggyrb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 11:23:59 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29806c42760so171598405ad.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 03:23:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764674639; x=1765279439; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BP+WE8Qo8est+P0uDoDlZmZ7Zwtd1KdJqw/NEEpJeFY=;
        b=AMZcI2JK8cnQHHQXfVytr9ZD9c73QqOeQSEDJ+4IMQIS+Muf2gq0FBO/NRiTlhgiEa
         ZZvqgF5f67Bd50hZCeL7v/XjUkTLq8rQ7X9KQROFyu6FR0p0eznRUnZYRGBvpFxUjWTj
         K3Q5nHKdgCnwxBM3bmAZrEh0cAOdvSVe8kG5qyPo4RAMpnrkijuycBkMcygijwY2BA6s
         /UqQhIDv9S4WwA37LBxILEB0W4ZFYQw8N0s6wIxEe9E45YRW9Bda58UXuKMfJhru6Kq4
         yo6ttK1nb8HVQeFM6M3M1dLZCrxWxRrWnU6rMqe771UIXHwvrCOoRY+h3llKwmcEwnKy
         pP3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764674639; x=1765279439;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BP+WE8Qo8est+P0uDoDlZmZ7Zwtd1KdJqw/NEEpJeFY=;
        b=wTrZeCYZFM7MZGxi8CNkDdLhIRw9GUbkV2p6xivQNKKDepG8PNOiNqEpjD+3bogvtk
         nMP+gKcu5hxXJgzVFtgNHe3JgpJc3Z5LGNH4sl6eIiaqVdTnJm9lPARyIa64rE/6+i7a
         drNzt1rYNJjcypw2IhM+/kMLKDFw7Hfy/7WVMgs4JbqC6Dt0708HSsmtVBRkmVvXw8me
         4hBtT8S7Uj7vn2XtgqLEewBKR8ZPuC1OoTFU7BXEvSITgjXrhTs/lyWf9TzFcBR7djOs
         HkJ60QJhmw7/ylUFgaTQ8RRZRfgb8sNGmm7zFTATfsO+IZbH9+gs/fCwEY7QJlirTEKg
         eurQ==
X-Forwarded-Encrypted: i=1; AJvYcCVi+ZKLbq9TPFP0DJMri3UvDAnOXWr2sh0WnQP8QVA82C36OmrRiqFCPCceoLnMyYC/h0O6WE4IsT1N@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+ShVagu2/W6ogUwQXDNMmMk/A2LtZpXE4k4NPLXv/gdf3RUwq
	u8uPxnUJxTZ5Ia6k7Wp0QFCBqEWnn7siK8z7qgkC381IJ6Tgg2ksN2UdIXsXl/6yWzqi5hW2Hoq
	Wzkwhiwk9aXSaxSRaBW4CFIShenO3yqop5ANDSngQcrWgvrw/FxeE4FG7+laCHY02
X-Gm-Gg: ASbGncvsaCO3Nw+UlFPO9Hkl+A3JpOuuJkaXCqYMe6LK7/LVupTm2KyWgd2bD5qx72A
	GWxV51PIWRYuj+kEuBCie0am5Zr4Gpqa76cfg5MRQhArZvDDX+wFuq4RnBoXzm6igYS7OX2skQ0
	2EE+RGssR2ywuK43NJLMIPEcxKrOq5KzXpVqgAho1vQPOCbsFQwxxwfy/N4joH0Uc2Qr/D4+UUu
	RqSY5TqO45hN/+h8bjBoKZPtvNgWHU+2BKAuYvAdcqS8AOayIgoI2qoN16an8OPkfEQWoIhrNN+
	+fd2cRcJJKXHnmUTEN+hwu+XeOlftIg2YZPBXExCvsoYR+YdAJbilWoX33QhSNuicgzx6o+urju
	k5XzeY2HO1W92z9NrtmNvAmwIw+IgpQO4yXp4pbMOQAzF4KUzWkF44pDJ1OV9QB5shIGUh7tEWU
	O+nCIxXeSVOCMsALYDCmielROuSrmvLQsb
X-Received: by 2002:a17:902:db0e:b0:295:3d5d:fe37 with SMTP id d9443c01a7336-29bab198021mr312051585ad.41.1764674638535;
        Tue, 02 Dec 2025 03:23:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEkTyb2UgaQNFXC0mQ+wVAuD2Q2MIZoOIJIXSBk6SLZyZ2ecRicxhzG8Pw9QeVrE5MtSZbhMg==
X-Received: by 2002:a17:902:db0e:b0:295:3d5d:fe37 with SMTP id d9443c01a7336-29bab198021mr312051275ad.41.1764674638070;
        Tue, 02 Dec 2025 03:23:58 -0800 (PST)
Received: from [10.190.211.199] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce477e94sm150184345ad.43.2025.12.02.03.23.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 03:23:57 -0800 (PST)
Message-ID: <6a8f5d62-f6ea-44b3-9baf-acfbc1e58efe@oss.qualcomm.com>
Date: Tue, 2 Dec 2025 16:53:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/2] Add support for Gunyah Watchdog
To: Bjorn Andersson <andersson@kernel.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Wim Van Sebroeck <wim@linux-watchdog.org>
Cc: linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20251118-gunyah_watchdog-v8-0-e5de12e2eef5@oss.qualcomm.com>
Content-Language: en-US
From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
In-Reply-To: <20251118-gunyah_watchdog-v8-0-e5de12e2eef5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: g6Lau1ktGG8hmm_8ZzKORlLUfkz9aoET
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDA5MSBTYWx0ZWRfXw/12Hhtc9PBH
 /prN7Xr/39AJwtdDycpmO+w3+2aU+tOut8NgO7WTMUH8zwOLPrRhWQFRl4huiVrL9Cuc4qwJfW4
 pEKGIT/j1pTVec0AOPITOvWzvXMqX2cmZeUhWviMjKqJeOLVzY5k9PK6HdWd4kZcWZ+UYlKdt/A
 12kqIIlf0vlpXhhZD4xe8vE66H3R8/FvscqtX0qxDdF+YzOptPj+5wZ9nh5lYOF2rDWjNK936wB
 P6UIYrXv6kZxcTlVbm5okQMkv6JSvX8jM6UrzGkTJ4ZJAE1g1oiCWqV5NU74nD1EYXv0Lqp7Ptq
 nrPYDYXV5Ev6GF6b5mK/cd2l+f4Fq+HlL9QJc1dNn1TwkQQCLg5qtXEhya116dtYRQGeoiw6WH3
 EVZffK7MWTkdDBiKMxdw13iJd3cyPQ==
X-Proofpoint-GUID: g6Lau1ktGG8hmm_8ZzKORlLUfkz9aoET
X-Authority-Analysis: v=2.4 cv=EbfFgfmC c=1 sm=1 tr=0 ts=692ecc4f cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=BFnnhZRdYZWPRrPjbyQA:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-01_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 phishscore=0 impostorscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512020091

Hi Bjorn, Guenter, and Wim,

Just a gentle ping on this series.

Since the patches have received Reviewed-by tags from Dmitry and 
Guenter, I wanted to confirm the merge strategy.

Bjorn: Are you planning to pick the QCOM SCM changes separately through 
your tree, or would you prefer the whole series go through the Watchdog 
tree?
If the latter, do we need an explicit Acked-by from you for QCOM SCM patch?

Thanks,
Hrishabh


