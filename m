Return-Path: <devicetree+bounces-221695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FC5BA209B
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 02:14:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B269116582B
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 00:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E069B34BA5F;
	Fri, 26 Sep 2025 00:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RTZFtog3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B57D10E0
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758845677; cv=none; b=FwFHK3iXDIaVtHTRdu/IoR57iDnn/nEYGIUqeJYJlYUoBhjT8ELQ2gCNBeQyNZeBabOpEFj41mTFEif15glBDf2m/WjD6VLg/+1+eGj0dmnHi2eQ8rBoNcsYr4ecjlSVnYQvWH1cfBETEL6PqimFgAwMxqQiD3WXW9dFWr4FeMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758845677; c=relaxed/simple;
	bh=81r53nq+yKoXBaJ4jwvZf/v4iOezccpg3MNQTvV2+X0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JS2HEuhnNtu5vDtFhWYvFxNYeHol/xMK9uXq3o2/qOsRCI/byx/YaIEpzwtY5ChyJ8PshRLk8+TSz49F6jz0YkPG7ZffQjycLt7CAMwz8ouZzxeJURWmnUjDTlDOSTxqlOEf6Yg86hRCss8cJ0SGtMrq2ZL6gKNY35NF0RTSaxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RTZFtog3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPoc6014849
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:14:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y9aVQL6fEAcMEMTP9D/9Z6oTfy+cY28XMdggMyG2w/o=; b=RTZFtog3ulZxflRw
	CVYRks4Vr+AFqtvRb2kti29vCk19UwRstvMPlqFZakQgnHKJBcKuBm2qEEB+n1bx
	ikU5b8JQzPbne7dxrVJXIAlC/PUDsjYrZYkx3LKq8HNvf8UzsfnTLVARh4ehBetw
	Vs0WmegRNIP12xSGOqMJqc64YMhV8EvldY0JoaRdJaKRdrJDgVIUcCfQ1cCihINt
	h8247sc7y7UiTy7sKudy8cFnTkckARR0QwyBMGo6GBOYX2piLZEo+xaKiOI3iioW
	QCTH2+253rOeFFlqMcpFQEppiPq0B0OaQ33xaCrs7mgX3QneJs4ajd/kN6yF9cIQ
	CKRnCQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0t8sh7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:14:34 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2699ebc0319so16454305ad.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 17:14:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758845674; x=1759450474;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y9aVQL6fEAcMEMTP9D/9Z6oTfy+cY28XMdggMyG2w/o=;
        b=nxFCh4pAT1afGsBCKvoU7tWZkY7simAWxZ+gfvrjJo9qEdWnGBgPMpJXuIR2QYHix4
         s3AfhEp7bCdUuDvOKnEWe8IB0HshBm2Jk1MmS2PQ9uX1OKeEOdGEkmQzCoA2x/R2AwZT
         mgfklw3tWS4fDxpdhvoIiJP+cu9DUUVvhsAk5PZ84YJYc6YEi094F22S5ynZ6BkLuT9i
         E42nVh4IB0L+SvjOZNEfrh/1j5bJbJQ18FB0ykIK0oWzcwtY7/cjNxdlvP2o+OUmgIwn
         JOZWr2jjOfMcadmw5tsSQnTyaCOHwlPRIehdwPjts8unR7E8wuFBJX8ROc5XYpoJ1nhy
         8+fA==
X-Forwarded-Encrypted: i=1; AJvYcCVaUhAJy64UXGTXRTWSVE2WGQyBDNcIkgmhYLMHI6KA2lzmSP1GeygOsrYsqskhKC4o2otiTe0bgvtB@vger.kernel.org
X-Gm-Message-State: AOJu0YxxEcdk2smW8C7CO33qEteJPFya6qBmk5FqmWVF5iscq4adzwDu
	or3GPDJn5LrX7Uffvnn4SXRqlx95OTptHGBreADNJ/tBvbi7Evbt5TCjSPCuv0ejcmi5vyO8TTa
	HQvHXxVY2YzUWJgdqf/29YWCACmi4ynYQMB33m0EKcfqXbJCnqc7EhAGiBNVpnwz1
X-Gm-Gg: ASbGncvOoAOPwSyiu4RQAH2VZLcwBdXUK+YOA51e0f8wJKi806i8jWKvWHvg2eFxkhe
	wa+3y7su9Go2rkJX2QUgn9E8g14NMZAQ5BHcOjJKN37Dj+c1bSsi0cqdD02dnKkZfg5qRXZXGQU
	5Tmpr733ef2k5bAP849GyWkrV44BL8LQNS9ef/r1v6Gnc/CQgyC9+tEiyfRJI9E0uCKclMMZDMk
	4f56XPyi90jhBGymwgodnQlXokpO0RyyRkCeeF+5ku3FCkp/JjWsztV2SaNNiU2HS8OmgvGRVVg
	S4SgItOX17unHLwqKS7W6QRFqLmyXeEEgoCODRHyaDIib4CGR88T9pyBFkPEB46/+h/kESLknyd
	ee6iLPz4=
X-Received: by 2002:a17:902:f544:b0:246:7a43:3f66 with SMTP id d9443c01a7336-27ed4a06c04mr62262875ad.7.1758845673431;
        Thu, 25 Sep 2025 17:14:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6RS0Z+VcLwtx06uS7E/LrV2b7e5WIQiC7s7bIX/lu3xtr100NQaYggwOJ4VVgTNHsEDWRcg==
X-Received: by 2002:a17:902:f544:b0:246:7a43:3f66 with SMTP id d9443c01a7336-27ed4a06c04mr62262565ad.7.1758845672931;
        Thu, 25 Sep 2025 17:14:32 -0700 (PDT)
Received: from [10.73.53.199] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cf181sm36713155ad.28.2025.09.25.17.14.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 17:14:32 -0700 (PDT)
Message-ID: <5e9e2824-923c-1328-dd7a-a8b496c44a70@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 17:14:30 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
 <oecyjwj7ouufjbiq2fpvlhhuaof5agm22fdsruf3ppayiu4kkm@wvi4no53x64y>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <oecyjwj7ouufjbiq2fpvlhhuaof5agm22fdsruf3ppayiu4kkm@wvi4no53x64y>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 5bGtd-Qy6bBqO0pqekXAMTEPgzeGBQ53
X-Proofpoint-GUID: 5bGtd-Qy6bBqO0pqekXAMTEPgzeGBQ53
X-Authority-Analysis: v=2.4 cv=Jvz8bc4C c=1 sm=1 tr=0 ts=68d5daea cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=INxguLwuHvTa_v7rZvUA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXwgrmNDSmGu69
 KNE0sAXTcOypFocMeYOO0GSsuG9EiKrOUxrrI1zkIGcnUm4K4s32MkeoLwEr4dTIbAWQvL4sCKW
 wc6eUqsoakmcDMh6B/CowYeIAPYscUHJNfw2s3ThvJHqhqIxh9PhC16s9c41uR1Bk/MOk8k5JFL
 qAOHJz0uy1wFRJ0aIEVVT0RUJNnm/LmX6YkNnmCDutkTwWRkZnhRN3AAIl3kB8KEcDnCdLGmt6d
 GCWFjIq3Kxb7YO5MRKkV4TgpucwTzzVgLu6XpkZrnQDTfe5EPKgHUoXCmwvvG1Pog1Lx/P2JcII
 5Rmti75QspI1hHG0D1AwoTnMCywLIGFqFCirCZfe94xJdiUOoBf1esFYRAsYOOpmnzkxe7aWfbs
 iKgUkvW5erjetZ9bObRL0aqwPS7pkg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171



On 9/24/2025 7:54 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 07:28:47PM -0700, Wesley Cheng wrote:
>> For SuperSpeed USB to work properly, there is a set of HW settings that
>> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
>> these settings follow the latest settings mentioned in the HW programming
>> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
>> new ways to define certain registers, such as the replacement of TXA/RXA
>> and TXB/RXB register sets.  This was replaced with the LALB register set.
>>
>> There are also some PHY init updates to modify the PCS MISC register space.
>> Without these, the QMP PHY PLL locking fails.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 311 +++++++++++++++++++++-
>>   drivers/phy/qualcomm/phy-qcom-qmp.h       |   4 +
>>   2 files changed, 314 insertions(+), 1 deletion(-)
>>
>> +
>> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_misc_tbl[] = {
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1, 0x01),
> 
> Why is this V4 all of sudden?
> 

Hi Dmitry,

Will fix..

>> +};
>> +
>> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_tbl[] = {
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG1, 0xc4),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG2, 0x89),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG3, 0x20),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG6, 0x13),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_REFGEN_REQ_CONFIG1, 0x21),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_SIGDET_LVL, 0x55),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_RSYNC_TIME, 0xa4),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_CONFIG, 0x0a),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_DLY_TIME, 0x04),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG1, 0xd4),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG2, 0x30),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_PCS_TX_RX_CONFIG, 0x0c),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG1, 0x4b),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG5, 0x10),
>> +};
>> +
>> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_usb_tbl[] = {
>> +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RXEQTRAINING_DFE_TIME_S2, 0x07),
>> +};
>> +
>> @@ -1667,6 +1899,12 @@ static struct qmp_regulator_data qmp_phy_vreg_l[] = {
>>   	{ .name = "vdda-pll", .enable_load = 36000 },
>>   };
>>   
>> +static struct qmp_regulator_data qmp_phy_vreg_refgen[] = {
>> +	{ .name = "vdda-phy", .enable_load = 21800 },
>> +	{ .name = "vdda-pll", .enable_load = 36000 },
>> +	{ .name = "refgen", .enable_load = 936 },
> 
> Is this a meaningful value?
> 

I need to adjust this value.  I just want the load for the regulators to 
be in HPM, and after taking a look, looks like based on the rpmh 
regulator table, I need to be voting 35000.

Thanks
Wesley Cheng

>> +};
>> +
>>   static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
>>   	{ 0x00, 0x0c, 0x15, 0x1a },
>>   	{ 0x02, 0x0e, 0x16, 0xff },
> 

