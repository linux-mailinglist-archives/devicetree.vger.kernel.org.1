Return-Path: <devicetree+bounces-173117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F336AA7755
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 18:31:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2F203AD230
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 16:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1607B25D90D;
	Fri,  2 May 2025 16:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jr8hSbse"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0A0255F26
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 16:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746203477; cv=none; b=YhkO9ILO1f4SjT7etuLOZwStHwrRIu2mWFWcOaTHSKivGi5Ph/4nxmX5tH3GvX+piFuykPxfCwKs8wLEJWFlc6Z6g5OyLQTb3P+KzRQzSPKhg5aXVrOijhgzkS5minH/6xw5ttw8/d6YF6sBvMUaXfX57g9T818Tlt3z/hYBYYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746203477; c=relaxed/simple;
	bh=HfhrNn6qbcYUoPHjEUu/qbSmHEO8TLmjIKVCSB/6Hz8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iL86iNVktNwhMkzz+azzMijChR9X8ti0GXXVDkTRbL2M/U6WKhpJHc/gkIL8xJ6KAIoK8Eeve8KD4ReP/H1XXwBlegvvR12bqVOtKWgNYkpYzDFBmVhikDLBeRjiRa+zC8wW+E6gIi7PV0TKuBRGSOJqh6mgRlNKl7DJ9b/dt6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jr8hSbse; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542Du56u015140
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 16:31:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UtXRYG9Q5qrj8myubAvBaI3Oe8aAUXM6QH1Fw8r6toU=; b=jr8hSbseZYhk5GDK
	eCuf6SvK55ZwCkZniRU+ObTIGXCxY21vMQDvrklXPN2qqZJ92AwR6bBX0SgIQF4n
	z8KOBR1XjtxADECTzZ2iCgFyaKE2RhxQ+NmqHkBk7bsdKmoGhyqNvMT8S+iUUkth
	Lvi1X6TbcqbpmFolEAMPlscvuDkOjWdE43J/4r2Vy3ipr5pVWNSFXE3z5MtDTozh
	K0kNv4CE6FjiaANQGmJa2dfEPME4O0+F+KfC2x6DrSvoSz/974P7ouYZCiqYYhMC
	ZDocXhHZS0XXFDVXijElGCc5JYh/7606Emgcy7s59j5o+zYFTLrKNIp8NMF55z8B
	gqieAw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6ub0ss3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 16:31:14 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-739525d4d7bso1643918b3a.2
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 09:31:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746203472; x=1746808272;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UtXRYG9Q5qrj8myubAvBaI3Oe8aAUXM6QH1Fw8r6toU=;
        b=wD//g31OSG+9zrfKFs0W2Us2LpgcBj28ZPrg1lXpS0S9Bw+O6yJUxLDkqVDeEzTiHC
         8PZ6VDv9yEJPPFCdORWhuVJ9d1nMDaFoaRGm0BU7dzsZQwjGNAgIjDR08aVanhoJ0Agv
         cfoMm1YKcJnCFyYZPXIu4MjIUiBvF1SH6f3ypWPyIcoNSgr7u+Z5l1M9vUoMIXAuFl++
         1nkkWRD6SP733iUOoq8WQylTI3DhnO52hpDTwrSPJmPSSLn7Btin0kHj8qtiOZIWMp0c
         47vX3fqsmo5mqQqAkxyDrWVmqf0VfHFaHwZ3sRdPTlwN5+BY7GllOgbRuBVQPXIKN4gy
         xYEw==
X-Forwarded-Encrypted: i=1; AJvYcCVCw3EGWo07y88JI7o7W/N9/84i2C5wpq3xMcsdBfXpYoFUkTfJm0dAetqIHvA7/JHvwXI4sCgc+y8G@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo5BKbTKlIiVyT/GhSKJAe/5BM44HdQvCALQMQseyILvEXEVoC
	IK212D+5mDu0UjaJWRaSJCQSIrMZeuqPY552RuEOFiFQdBOjpHb4lkx3eHfphZsAac9jjOPLCUH
	+GGXeIh/FZhabtJBC09nckyfXK32MEahwBJ79UGGlfn5jnHbxQTtekVmcMR2e
X-Gm-Gg: ASbGncsCcMzfx/yy/vev1rP/s3MyUysnFFCy5sp//teUm6QVSfqED8PejqJjCZRh8Yh
	nkngRhooHaqlckr9eEnC5b469d5Lo22gO9lKjF4QhzXiqKZCJ6Ujc4aLN5qbBCfJR2iDVy5FsY+
	ov8RXxEZFuFppvz/gq5b5o8Ewqb3zwXqHz4LIboCQPtbAN4N1RlKBRG4BrTO/sxSH4DeqNrw+hF
	Af5UbZvKX9K+lQyEiKAVWMF+hV2wagbzX4hcD6A3fVq0b8Jtidl//B1heIsT+M16v4dK6jcnmQy
	df3B90BoIJdVWbUXfzszx3cZtjDQTCyPgNr3QLZyTizi6+YGVePL
X-Received: by 2002:a05:6a00:1c9d:b0:725:96f2:9e63 with SMTP id d2e1a72fcca58-74058b25d87mr5417116b3a.24.1746203472637;
        Fri, 02 May 2025 09:31:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFb54Eg6fwcaKmb+QzmXQ8iGK/9mI8N87y3T04YynY4pAo54pLrPvinNqZ/362AoLpwlYrDpQ==
X-Received: by 2002:a05:6a00:1c9d:b0:725:96f2:9e63 with SMTP id d2e1a72fcca58-74058b25d87mr5417076b3a.24.1746203472209;
        Fri, 02 May 2025 09:31:12 -0700 (PDT)
Received: from [192.168.1.4] ([122.164.87.156])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74058dbb804sm1839193b3a.52.2025.05.02.09.31.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 09:31:11 -0700 (PDT)
Message-ID: <c2b0b0b3-6fa9-46b8-84ef-81314965848a@oss.qualcomm.com>
Date: Fri, 2 May 2025 22:01:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] watchdog: qcom: add support to read the restart
 reason from IMEM
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, bod.linux@nxsw.ie,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
 <20250502-wdt_reset_reason-v3-4-b2dc7ace38ca@oss.qualcomm.com>
 <gmoe3ykmns5hmmz6hdyxgzxiejb3nycghhvt3pgjysq6xa2zni@wpqyuz2pj5vy>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <gmoe3ykmns5hmmz6hdyxgzxiejb3nycghhvt3pgjysq6xa2zni@wpqyuz2pj5vy>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: NiwpC0dsyijaa3Xj3OBey48Oos0XWWKj
X-Authority-Analysis: v=2.4 cv=KtlN2XWN c=1 sm=1 tr=0 ts=6814f352 cx=c_pps a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=wj/iefQKNY9P1RSDfSoyGA==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=sAsrsCsg_48icDTAn_UA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: NiwpC0dsyijaa3Xj3OBey48Oos0XWWKj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEzMiBTYWx0ZWRfX6dB6IsbDAONt 2RcKgi4Cn5/N9+TYaDwMeRoSMV23s8hgfSIQ8S4nIYTG4QZFEvr+KjyqVtisiKf7ciOZLjuLn13 cTh3YhYo5mcpJie30dllGnT8isUQOomcB6166m6My7xmLEC6XuLbPMgk/f9CV+irpLNcu/uyYVI
 nJ0SJWt+3+qy8OwB/l1AuudYSVP6lx/B8av1FEAPIXoGvj1//6BU/85DbP6xDzu/R3RmH1qFpJd vtXAwMIBcFC/eE4I/L6heVLqU0ohl6hHZsR+qjyF6f9Mah3pK0+YjBPQgvUnfZGdeSPcoVdKKao EbvjlpJByyTMz2iSf+oUEJZpfvDGAknQKHw7kT5r6eseFc2sOT8D3veFNDFacQRMNFikelB3HSq
 nbd3cFVotjYCDizr6Ro3HvgOmkKtPFdcCPzw9s2jGseWWFUb/47oI9D2FJuXb+iIWYDBiacV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_03,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 mlxscore=0 bulkscore=0 mlxlogscore=848 spamscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020132


On 5/2/2025 8:24 PM, Dmitry Baryshkov wrote:
>> +static int  qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
>> +					const struct qcom_wdt_match_data *data)
>> +{
>> +	struct regmap *imem;
>> +	unsigned int val;
>> +	int ret;
>> +
>> +	imem = syscon_regmap_lookup_by_compatible(data->imem_compatible);
>> +	if (IS_ERR(imem))
>> +		return PTR_ERR(imem);
> Why? Just pass the syscon directly via DT.


Ack. As replied to Konrad, will rework this.


