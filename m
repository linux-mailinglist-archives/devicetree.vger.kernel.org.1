Return-Path: <devicetree+bounces-216425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB78B54B93
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:51:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D47AD1CC0F81
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:51:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D1A830149A;
	Fri, 12 Sep 2025 11:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P23j4hUn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2B4301485
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757677805; cv=none; b=MBePhzcV0kjYVQCCeJic01Go3OYwBjazvApOSjPSWIsm6SDxA5hoYDYaYnkdAKZNjNMacwv/VKAcOVt141HjeS+Ss8sSFlNJLefaNU7M7hXm7SDjd5Ulc2Y2MJ8k4WOsYiU1rMzzCfpXzQVip5ZF9gJLERZprMGK+45vPqxoyMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757677805; c=relaxed/simple;
	bh=isdUtD0RZVWdZOsVxmU9OJKyNgeg8G6d6TYmpVtZEsg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XDoMGd5Z05oKbQUAY8eJFm7q6YIGLeJTmTLvWh72yslH0w+7f4clyyAKWJAQvZlzTccLRTzR3ed8JBbOMQavMFxVv1fdSFHYsZVeNg5yHFEvhmFSajWWo8uQKrdp39y6X9W5CknmH2eH2MckQCRXWx63JKnojyH22UvCjD4qQ8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P23j4hUn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fJfh014005
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:50:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YzF2SVlfGn1ORuyJ7oHhWEvFtpmrZnuITZV7ypXxf3c=; b=P23j4hUnFVWwLMnE
	F6LQig/a0wxm5UQUp6+G2DMXP9+ABR6T/n+Vrkeyh7Gij5PeMMKBvcx6GqOfsAOq
	RYbkeeSi3QkVqV/wERaGFMo4O5LNwhCqJRp06Hka6FzLMCwTYGeNUczVcetKbIaq
	wsyqNdMz/SfG++cNyEF0jGuoKumN+3/tKNpvVrQVZTVCKDSO5XPqeWDesXYXMzxr
	KFK524t9rz3YoMeCM3MdmwdpgYwzdzFNckeEBUaYUDPvCC018hCc/OTh2udHLqH5
	OrxfprTgNkVlRxle6E87JTcncVrGwf9w3pYId9ESgnvabCpdkcB6cGjvqKUHqJxj
	zp8ZEQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493qphw7ud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:50:02 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24c9e2b6533so4614695ad.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 04:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757677801; x=1758282601;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YzF2SVlfGn1ORuyJ7oHhWEvFtpmrZnuITZV7ypXxf3c=;
        b=jQUx+WcUFngZb4Jkxrpjngb7f27i4ayIPzVUPLaQJtjXC0S0yPV4utMSQiqu/JaW/c
         QZHSb8I7m195gCWzxlIWqNAy4GENTdIbG0Sf6mg1eJYpB0jjM0j26A06gT93WnSkfzgs
         DMSZzYTBC27YzZCpEzHUYNKbik1MupJbQBg/eGwp1/uAwD8yYeggospO02Jb8R/pNC0M
         CmTf6seKSJztJuCvHM6Wm2KEAKiZWZFjEcd8kpGnr30VPs07X/ynBpuDE0WX9gLPmIis
         R87hp6Hv26jR5KEjh+GvzM3//UcRXAxfQAW855iSKrxRzI50huI4hhLNp32jAsni+uPe
         6l7Q==
X-Forwarded-Encrypted: i=1; AJvYcCV6eF8ZPlF+KG44tdv++aBpp3XDYMA/BPrOxMDW5fJH13WVhljcOKonO+XZTndSa/C2bxpA57nZErxL@vger.kernel.org
X-Gm-Message-State: AOJu0YzKfvnOXBE3cKTWuB0rGphU8c4TH9cX3zAv1Xw5Fi64HoCUtUaV
	0qbeDn2yh28p4TJD0dQwE6Y7ACmx7p3tZrcAzhLK+XfOTZcvvUdF0HMgDRYIxWAfnjhBDl4qJ1j
	PHxYPTzlNSIhX3fbUw6mmbhe8GDURNbR/1iNkrLnTV2bJwjFIwLFy0nu9ExIVVr77+b/al6xW
X-Gm-Gg: ASbGnctFPe4J98CzmCbNDquHqtwoFcQSY5O/RjHVnjMx3u62H3UMdoFBJYCDmxzLCdp
	YEsf8vNV5Qc5trUGMQmI3DLPudSD3E1f0CQKd+jJjDCjYc32XzUwG1CezVXe5Ez7IOIhmWrJVjT
	rzvYsuLeUU74w9ZtlNxF7qRSk6SNC+9x/Bh4M7SUM/iVisTOgJr/TfeIUsFT5YoHJo4v5A7lb2q
	IRxRBJvlrP+OhFeMmBd/4Epu+6izHlaqtu39SEm2wimNwSD/41giTn1bSDczTSjmfpmOZYdmVV4
	/qx8qy1YwABeDAe9CDwuESTo8B5G1kKVC123wNPT7VqAuFnS4Pb2waHyhnVyxdisHE9+eK8axPB
	8C+Tal0Yjem0yPIP5+Q3jMXIJ198aUg==
X-Received: by 2002:a17:902:c406:b0:24c:b36d:637 with SMTP id d9443c01a7336-25d246da083mr18921185ad.1.1757677800625;
        Fri, 12 Sep 2025 04:50:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWi4TjYFXB7GnUvOOedYDlXm03TtmgN9ypPJ2FZ+xs8IcitlyLZkYRTQqPLihrLpPvtOZrUQ==
X-Received: by 2002:a17:902:c406:b0:24c:b36d:637 with SMTP id d9443c01a7336-25d246da083mr18920925ad.1.1757677800095;
        Fri, 12 Sep 2025 04:50:00 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c37294b5asm47417025ad.50.2025.09.12.04.49.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 04:49:59 -0700 (PDT)
Message-ID: <5d25d05e-d545-4b2f-98f5-40bfbcd24d7a@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 19:49:52 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/13] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-6-2702bdda14ed@oss.qualcomm.com>
 <ejwrkogssqdzxraacvxdbasxg2ud4t53rb6da2g4vdryyjuzoi@evdibveq7w46>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <ejwrkogssqdzxraacvxdbasxg2ud4t53rb6da2g4vdryyjuzoi@evdibveq7w46>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=aPDwqa9m c=1 sm=1 tr=0 ts=68c408ea cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=vDXniOzG41h6BQfMLKwA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: TAyCX35eksaQ_6TJ5JduEC2ykuR7TWi5
X-Proofpoint-ORIG-GUID: TAyCX35eksaQ_6TJ5JduEC2ykuR7TWi5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA0MCBTYWx0ZWRfXwfSVJ2PFpGI4
 9peb3cfyYPe0rhUGtyze2+G9T0BHjWs3S//Giggfy0lJjIjoLA6dbb3Kyt6F5DiXxmJWTkyflzc
 lj6JcvM8crMphJOX5vAuPLY7c3auRYrnKO9v85iwGEze/u/5WZyMGJLHWbUUGWULbNUYIZcsZ/v
 aW3HtI3FxERQDBc8FvKZ15z/Tc7CvsYnY+stmzYVaEMIQ9L3nFfoquzrzgSMlU+ySC+UXkUxgsZ
 YbWE92lYKLIg39xrlEp39LO8sbINhKN9b6s9lHws0X6PuUKxxiWZafSpq7XRZkWl/m4AR0KqtUZ
 NG+cmlSj08RWbPp2AWro+w8wWJQUj+HC5ufnYoJ7HFMNCVpSKUcOHzOm8Q509JuzX/SLYcxOfF/
 vy4PeFoe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110040


On 9/12/2025 5:56 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:03PM +0800, Xiangxu Yin wrote:
>> Move reset configuration to be managed via qmp_phy_cfg instead of
>> hardcoded lists. This enables per-PHY customization and simplifies
>> initialization logic for USB-only and USB/DP switchable PHYs.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 56 ++++++++++++++++++--------------
>>  1 file changed, 31 insertions(+), 25 deletions(-)
>>
>> @@ -1147,11 +1159,6 @@ static int qmp_usbc_parse_dt_legacy(struct qmp_usbc *qmp, struct device_node *np
>>  
>>  	qmp->num_clks = ret;
>>  
>> -	ret = qmp_usbc_reset_init(qmp, usb3phy_legacy_reset_l,
>> -				 ARRAY_SIZE(usb3phy_legacy_reset_l));
> You can not do this, it will break compatibility with the historical
> DTS. Legacy code should continue using the old list of resets.


Ok, then I'll update it, since qmp_usbc_parse_dt_legacy still uses the old
list, and qmp_usbc_parse_dt should use the one from cfg.


>> -	if (ret)
>> -		return ret;
>> -
>>  	return 0;
>>  }
>>  

