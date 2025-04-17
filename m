Return-Path: <devicetree+bounces-168051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4F2A913E2
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 08:19:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9145B1902116
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 06:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 318FD1F4C94;
	Thu, 17 Apr 2025 06:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gMbZXpsj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DB71E98EF
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744870774; cv=none; b=CXrLy3ffdUlygUYNqe2zpxHCo85YLW1it+XZaIm5tHlUn+8lc/MLvNticG6rs457mOXLIOlz+B0s/ppE/bSppB2yGFQB2wueiZXqnuU9pTV6k9GORyd9Af52OYnE/qORcjcL4vEZMhSQ8Q9If0KEtgzXqNZGX76+imk4mwPAQIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744870774; c=relaxed/simple;
	bh=4SaNcvRSUmw17peZENYtXe9a5+FLCzXbF63BdifSfFY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jbkNyBoBl8U8b45Br/qkPuRLRGeijvHIC+SWVTIN+pP2UU5dnxeA4D7fgW68KNXEyqQxTAcQnpQQB+73VxI6Efq/D+5tm4IAq6lcbZLnupXvzcgqq2hpDWUZwVfNRGQeioqmh2+NVOy1aFWCK3etEHT/X2U0pLryvkpiDSroxa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gMbZXpsj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53H5l3xR022767
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:19:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YmyWTVfTvdIgm61cHoCvvxTKB4qtt0R/AYVgAU4T22c=; b=gMbZXpsj2/M068/p
	4ruAl7VtuWgK1C67UJP5JHGrIKlSr3/lwG50WvRBhPlcS5GmolnQQHzAX/EI6e/n
	/2h/iEhM3XNTqM0+fbevxZapo+8BFSaWDga4CX05I4GD5lQS42EyR770jLLv6hIP
	DKA8SJVNFA/A/SIJhUpeQjQqOTqUlhM8Y5PvNXkveEOp3RID23JtShhc0Lzvi4kj
	j2KeMze3y1lWAPC7hOyF4Ygb+X22YHAfhF59nAih5SLxcwifcBe4NZSFKONJ4OGJ
	6JahJJv+yCh6hH2yyF5KjLTiFejNxhry5nnrzaIsMCWAxPjBrXHfdEvQycdPeIm2
	1MdNYw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygj9dufu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:19:31 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-896c1845cb9so465369a12.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 23:19:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744870770; x=1745475570;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YmyWTVfTvdIgm61cHoCvvxTKB4qtt0R/AYVgAU4T22c=;
        b=Z9Re/JydOAkHYUlbVBjsQlcUWSQpBrD8oyxGXiIa+SKT844KstoPkLNoQRBcw9ytg9
         UxNZ+fngdMYPkVRDuIq1DMkRtReW5YF/uvrEFm67hgLg7Qc+ecXFxAqZ7oWIOKsPYgca
         AfcW/OU8TwutpWeA7U5GUB15Lwqy3m/sqrJtibr5s+HAqxfqoptqBSE+3eJPLBKcWzpX
         x/iNNJziW+d2iUlyEj4sIatbeJTt2bjFPXP5eByUezm671sWBZbCUwcXQ0yBWvc09NFx
         VgeWBjwF5cR/UH+p/jrDMBGU1kypnTVHS5YohFjjSAP+fA861cwhUV65F0Gpqr4S5G/h
         G/dQ==
X-Forwarded-Encrypted: i=1; AJvYcCVO/WwiCs8bK2mNE+MUKb8gJdED630FX1aCaM9JY8X88uTuc6ATES6CTLH7PaB+K/jQxq3JzoMS/xxS@vger.kernel.org
X-Gm-Message-State: AOJu0YwRbbRukTfZWfOy5NOk0suiv2xYjn4x/uhTKVD3m2VKozG9SppM
	Y0NABZb3X3TmuuCJ+/Nqzywg/6NuL12wsm1Sd+rKCzr2fcAxPwxZe8Hu+t+akg48/EQczr6eEEp
	mC69AWRYoQFOq7lTnXjBQsGNJfW8oOvrHPsIehO7z77QmpcHDiBwS85XCywWK
X-Gm-Gg: ASbGncvY1otix5G/gHIp7cBiF1ltdNxG42IXzZ8VQiBZMisscQcwi+gpQyVVpkrqPQF
	X0lN5mZcXEHfLvwsCGXeKyq+5H2tPgHg+8Nz5IK9ioWxjhzXNb6cRzZHgYdkJY75n/8iLSRHUNZ
	LiuyzhYwMakMMmVXtNmQXtGCgrrvQP8RdTsaJ+sKQyXlx9Yo7SihE/iSTSzCw06l48956WiP73M
	0as0uNXh1QalXpkcqL+sreEeX18JTH2DW9SwIheiAcwlI4q4MbrlxrBgteR1/Bmad4rs+ZRqSki
	Iq3BqHNed3wDrvIBGomeA+9ynxAaZsTks671BliactJihmVGOH9F
X-Received: by 2002:a05:6a20:3950:b0:1e1:a449:ff71 with SMTP id adf61e73a8af0-203bdf7c2a6mr2467360637.1.1744870770134;
        Wed, 16 Apr 2025 23:19:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfR2q7EsCzAFAh2c6ykwdluIfy3j4GXbBtHOsR6AYzf219xIeMD/6Dxz9o4TroUZTIXvTXfA==
X-Received: by 2002:a05:6a20:3950:b0:1e1:a449:ff71 with SMTP id adf61e73a8af0-203bdf7c2a6mr2467330637.1.1744870769786;
        Wed, 16 Apr 2025 23:19:29 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0b220fd37csm2326166a12.44.2025.04.16.23.19.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 23:19:28 -0700 (PDT)
Message-ID: <0a774c34-e82d-4ff0-aa3f-4f348f4c2296@oss.qualcomm.com>
Date: Thu, 17 Apr 2025 11:49:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] watchdog: qcom: add support to read the restart
 reason from IMEM
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
 <20250416-wdt_reset_reason-v2-5-c65bba312914@oss.qualcomm.com>
 <4e9621c2-f347-4cba-9422-b14f96ee4c0b@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <4e9621c2-f347-4cba-9422-b14f96ee4c0b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: VBqo6arEkvOr2CGzV94bH0T5Wr3R9wcN
X-Authority-Analysis: v=2.4 cv=PruTbxM3 c=1 sm=1 tr=0 ts=68009d73 cx=c_pps a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=it6VRh0H-s_lwkDzcJIA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: VBqo6arEkvOr2CGzV94bH0T5Wr3R9wcN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-17_01,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 spamscore=0 mlxscore=0 mlxlogscore=963
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504170047


On 4/16/2025 8:21 PM, Konrad Dybcio wrote:
>>   	.max_tick_count = 0xFFFFFU,
>>   };
>>   
>> +static int  qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
> double space> +					const struct qcom_wdt_match_data *data)
>
> Please align this


Ack.


>> +{
>> +	struct regmap *imem;
>> +	unsigned int val;
>> +	int ret;
>> +
>> +	imem = syscon_regmap_lookup_by_compatible(data->compatible);
> I still think nvmem could be better here, as it allows to plug in
> more magic values


Sure, I will be on vacation next week. I shall check on how to use nvmem 
here once I'm back.


>
> Konrad

