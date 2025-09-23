Return-Path: <devicetree+bounces-220269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B27B93C4D
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 03:00:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05E8B2A6790
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 01:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C235B18A956;
	Tue, 23 Sep 2025 01:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lde4wz/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218CA4A32
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758589219; cv=none; b=bwRRVt8rM/MSNhmWlVMxpO+SXiYvZsLjfKB+cEtyunhxgXjd0KMLGAPpfE3gWj7sVjQbpBE6Vc19oeJ4p/Z7blF52X/6bocECW38SI0QVhcDLvjZB/N4FdQQZ0QP01RTH7nCwNKPRU4a90zNd1vPVMw8nkiQkVxx1i0F6uP/eE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758589219; c=relaxed/simple;
	bh=dlQdFts8UOM21Z7m6BJhEeiMH5cFC4v6+wXAIsrbMlA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rfL3vOm7PoxOyKXH6eGA8hwKypjK3ozhsnrRJoUOKXH2mCOn/Rc0lTM2RZs/nUZiCXjI1h56AVpDekEFK/J/yRhkF6EWLmwwVcYmZKlaqMj1oeUka5vgqZRFr2lM0MJFhqKpxLj0G9lXFId+gUg2iFv2cc8ywtkuHXazWkgUpM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lde4wz/T; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MHUMCZ004724
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:00:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XWLc1VvNWjlvWYqGGxKBcg7/p+JOxI4yci5dyPnXzGo=; b=Lde4wz/TlbDmZV/d
	RoQtBSG6l4gjxMIm1vx37YEBU/427uzg/x7fhRLL/SN754dd4f8htIAaWo9oILaz
	UmxWRuJEhTqYSh7OPKE90yVEtwHNGGpY/lXrfpcaMJxBwnh9uhb4o533jeLdV41P
	d82uZrrpCnU0n2U55hH/6tnC+MMcToM+WBbv8a3hoGtKy9oRRNOa2Yx3DFheCQHS
	vfJxozcgNJM7okXNx3cMoXEn4sDHxBoPkzWkUlXbDWzk1en4sqcReln4JH0a7dGt
	l8zI6va5suuJfvrymkyz8mDQurLtM3GVLv3vYMNoM7bVaCXf9A5FH4BX3Co5/qVP
	GbxmMw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnpxsn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:00:16 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-26e4fcc744dso23920635ad.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 18:00:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758589207; x=1759194007;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XWLc1VvNWjlvWYqGGxKBcg7/p+JOxI4yci5dyPnXzGo=;
        b=ULk/yUamViSzi8MERgZFPE2mj1RyXHj2r4/ltUFxU0g1UmrIWOyBpE2tFqRG7G4R86
         crWLZifRp4D4FLXfbP0ksDGBHomx9vChhdCW9CnF0AtDvo+dOM8Xr8B0SJ6BApLoQkPz
         nm+ZgGV863LZFfvYgyku6cFj0yNvmmHIFuwE5HubzDZrcEgFu95fplilV/gW7235YsRo
         ldywqmmV4euta99voF9FUuc6K5cv0ljrhrC7pI57kOxUi16WX9oy0ndB/RxJFbfNqLr7
         WgBlpaZH/VYjTGMqwv3P9CaGbWp03PygzZaLs1iLQiMbBL/IRtzorlkIYPFUHJ19W9vo
         /OgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpzLLDXWvR552q8KYJkNNpPo0VfFIm6SypkJyyyqPsSTGamKvUrfHJwEASrulDhZUyAS9WGVSlwLd7@vger.kernel.org
X-Gm-Message-State: AOJu0YwtfMWwheF8mzv5YfKfc+INbpkdGdX66sWNyhFciHKgsfk/Vny6
	BfYXAqz3ql2fALgazuY+/b0fk2ZUhjt3/zLgHW6htMeJ/FRNtrj2rnE13eqUiNX3ctlarsfW0gO
	sGAR8WI/1a9UXLVRkCq0NDyGrL97KL6yvmUGFc4kHAkxtBM38zY8dkB3pw+ToEciH
X-Gm-Gg: ASbGncvDITkHMFoxCZnOlhl+foJBN+qaT0UcmJVdJmKxk9aYk14HBXcKO7xvjL1acj4
	Pktkx4awg4E0esjeZgNwVpwvjuePFd9mf6hQjfxXkI5CWDs3A8qRyL0TjM0CuE5iZ6I5aDUSxy7
	Xn68G7uTvmoz9KntFe+M/YvYYZg/M0wVdo493rF2IygcENQ0fM1aiQ+otG2qcNfFpPVEkktrgsk
	thm9mB8b7znhxQggqReUtxq/rofZ27gQ/ddxMqQdvmA3XL5tdMyKpTdNpAvEH97sJcxeFw9Yj/c
	lDpBHgR7XaiFFqdz6UUU43qk9T7lBN5PoH5vT5SX415CsWrJNSTjT/z8fNUxYMJd1RYZED2w6eg
	MsLAgYFKg0locSJRRlodZ/8a2GwV1whQ=
X-Received: by 2002:a17:902:ebcd:b0:267:b2fc:8a2 with SMTP id d9443c01a7336-27cc28b71e4mr8498345ad.23.1758589207332;
        Mon, 22 Sep 2025 18:00:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1/GZAeFp7rCGex6eqi3pw2AUQEj40WLJVjcaoY5Pse3ZDm9IPKaBVgK/AuqXdN1xlZJyImw==
X-Received: by 2002:a17:902:ebcd:b0:267:b2fc:8a2 with SMTP id d9443c01a7336-27cc28b71e4mr8498055ad.23.1758589206880;
        Mon, 22 Sep 2025 18:00:06 -0700 (PDT)
Received: from [192.168.1.239] (syn-075-080-180-230.res.spectrum.com. [75.80.180.230])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269803661cesm145268935ad.147.2025.09.22.18.00.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 18:00:06 -0700 (PDT)
Message-ID: <4116b593-d36d-df10-6101-4e3539b8b812@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 18:00:04 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
 <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d1f120 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=agQD+r7xwyS+FYqxhQjztw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8
 a=RTc6a8mmi5jc5_0K4gkA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: ON0rLYwuF-BqeC2jkGYruetcDVDO-iY8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfXw7siJR02lT7A
 MKvrOwsgZYvKLJZsQ3zmGgEa5h245lE2+3y5qpC6lo91PuIQhkAMxIiwhYnQ78pf45MklTMg4xv
 rpy7bkxOWqv6ExJU5j17g3MCC+K8QA6PmiMZ6ZbjFZSZvoFcS+uct+cxhtRYWNHcj8KGHJBKQxE
 RvKHBfH91GSppiJtXIi7BTPyNo9/6mbzq/zw6owFJDv5IBDWmh6e3dtp3Hu1wTwAzn3Q5fNdJET
 2oH3ZOCs3fvuex0WShfMKWuwbaJWZGZ6v2bYktEexhRx0jtD6joqtQVyEgMsJb4o82LCnhAV6tx
 wyDY8HMdco0kzVOiWJ0fYMpqWhFRkIxTZwkoEvuwLWJ6vj/GskhlapreA0YSWnsDqgdxiITUAX6
 m1zXytF/
X-Proofpoint-GUID: ON0rLYwuF-BqeC2jkGYruetcDVDO-iY8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000



On 9/20/2025 8:22 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 08:21:01PM -0700, Wesley Cheng wrote:
>> The Glymur USB subsystem contains a multiport controller, which utilizes
>> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> index a1b55168e050..772a727a5462 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> @@ -16,6 +16,7 @@ description:
>>   properties:
>>     compatible:
>>       enum:
>> +      - qcom,glymur-qmp-usb3-uni-phy
>>         - qcom,ipq5424-qmp-usb3-phy
>>         - qcom,ipq6018-qmp-usb3-phy
>>         - qcom,ipq8074-qmp-usb3-phy
>> @@ -62,6 +63,8 @@ properties:
>>   
>>     vdda-pll-supply: true
>>   
>> +  refgen-supply: true
> 
> You've added it, but it's not referenced as required. Why is it so?
> 

Hi Dmitry,

The refgen clock isn't always required on each and every platform unlike 
the .9v and 1.2v rail/supply, which directly power the QMP PHY.  It only 
really depends on how the refclk/CXO network is built for that 
particular chipset.  The refgen ensures that we're properly voting for 
the supply that is powering our CXO buffer.

>> +
>>     "#clock-cells":
>>       const: 0
>>   
>> @@ -139,6 +142,7 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> +              - qcom,glymur-qmp-usb3-uni-phy
>>                 - qcom,sdm845-qmp-usb3-uni-phy
>>       then:
>>         properties:
>> @@ -147,7 +151,7 @@ allOf:
>>           clock-names:
>>             items:
>>               - const: aux
>> -            - const: cfg_ahb
>> +            - enum: [cfg_ahb, clkref]
> 
> Why is it being placed here? Please comment in the commit message.
> 

Main reason if to avoid having to define another IF/THEN block, but I 
can do that as well if using enum here is not preferred.

Thanks
Wesley Cheng

>>               - const: ref
>>               - const: com_aux
>>               - const: pipe
>> @@ -157,6 +161,7 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> +              - qcom,glymur-qmp-usb3-uni-phy
>>                 - qcom,sa8775p-qmp-usb3-uni-phy
>>                 - qcom,sc8180x-qmp-usb3-uni-phy
>>                 - qcom,sc8280xp-qmp-usb3-uni-phy
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
> 

