Return-Path: <devicetree+bounces-207897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD560B31212
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:44:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5F9F188BD0A
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 08:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3581A2EBDFA;
	Fri, 22 Aug 2025 08:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="axp2p5FV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC9F2EBDFD
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755852205; cv=none; b=alYjJcn9/LQspETZN6L6iRQU9pXdfZX/M4MXNnJWl5DiEJutvTf6qTxaH6Km92gGrixfH8KD2xpBDVxwkpVn1OJZfjVIrmACcCYEtc+RhkWbdESoc1L2mVpJOKYRtj1P95j6Ri4IN9e2NQFpj4IYyOBR8Wutu2HSUrEDaumji54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755852205; c=relaxed/simple;
	bh=R5q219oQSBpeOcalKWFQBiSMO34ZKgzRjyeY80z0OQI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pslaLAk/re3qULEPJ8guOerGrKg5K5D2GO35W6QvrwUofPqv//2yzvCztVoIoK7XNp2ByrCWjEBHXZwuO0tLGJ//quD9tgdbjm7fW55iJtjaMSkmHdInx2qdO5oAc+DIXgBo7YPxZqiZJElKGM3Dc9SU9NZMzYU/O7KaME6JuK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=axp2p5FV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UVac011289
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:43:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	prp9ElU8fS7+zbL7ub2mUXEAEbk0qpOcYYPRR8CM44Q=; b=axp2p5FVzEy9YAcS
	QpKxjbGkrARU1RbimpueVhli6iCQEpUDyqcg494lAA22Jsblt0Th/sBfiscGIE69
	1cMrxA9iLjFC8wqeBW3j+iVi4qMr7244u1I2nLm0h8ZcHGhRtGUE91bywbj+wAC+
	dS1OXqb5MHjUQgLEWmycT0onvSSvjEhCGo3MvcxRyatfJNxu//k0NhgqtqE48r/o
	IQxgsdFIhbVJrbr+U3VeiDUKJ6oh2ETrWciK8ez1kn1/YDad6B5nZdZUNVYnfMn2
	t4hhYkryc5kLI8EpPH6r4NFTYV4FS6Ojkiu8Keq4erueicN48lcstEy2lB1MfY/4
	iGR/rA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngt8ebdg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:43:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24457f41f79so4155185ad.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 01:43:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755852201; x=1756457001;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=prp9ElU8fS7+zbL7ub2mUXEAEbk0qpOcYYPRR8CM44Q=;
        b=dn4gPkFS5SYOlzudIkkHFE9GCWBHNho1quoS8BZlgRVrT1fGNGOU8FnRrS5LeV0GOT
         Zw7bRGJWNr/VGXQqJfRxwgWy4E2zyji9uR/ato5CgLita6U/bAMzgc8N1R2pqA+kWMHN
         anC6iI2hE4csL0ZaAOzFgyqipTd8hvn2IWcTFzTTT04hkMDQr6fAsCSQSH1SThQdwLl+
         svD5Sy68+CTwE8NgUT5woTYaSvgBGesAyUTZXG9C8XdTjm6Sh2fZizJmrm49Fmf1no1J
         IogALRhI9077UNrrT1aCbtIhVUYZ7UBk6QgFvH91LBHZzhjT1PFMz0zHdMeULm+bCeAo
         vz1g==
X-Forwarded-Encrypted: i=1; AJvYcCUokYsJqgo6pR94KugptAGzJd8pR878Jz0QC2F2tlr2atyA5Y0LoBZ4DS+8fPP67B8n2C2TfD10jQNN@vger.kernel.org
X-Gm-Message-State: AOJu0YyWzaAklfyDTd8g7srJ8x4PUXZE73HmtLmM3bOFNxAWzS3sFaAz
	xcHET1Sj5H0J4wr/HdWQ7b9gzAHoTSowlLQzeYSzdpAJ2Npv1oFw3XJ6mXr1BeYsQ7Y/xM2rSYA
	9uKFlAOJI2V5emOSkva0yOI2CF11JWBtschNmK9m6Tzlm5K8at54MVP4a9O/5iwUI
X-Gm-Gg: ASbGnctv70NSGZGHZXSw98mKpRxG4MP5TzN2QPq8SFqJObUpWDECoChphPtmrxZWZon
	PwHxS8d5pmpl087nVEY46Z+kgnzaDJvWABq2/1+IZoAxdvdG8AdmWsZ7m0D04oFBnjt7dYHMY0I
	AW6dQs7Kxyr8dbOa5f2jRcu/DV+R1E4vCNg4HPPzFm3CQUhsDqpGhE05wBrJrTR03qqqkux9TFf
	FTwnRz8onxvdIPawAl2xMLMqCzFB7I8sVjX13NbVu1LiRQwqt8lwkCEvBQEOTQ1lcTykLGlhfWZ
	mg2CLoTproqJ+Y6mt8st6+A2qaOi9KgCyBcciHr4WxAWyDZbZreHabDQRP8hFK04+1KkdwUOjJh
	m2/qqXepGu3uPpUktMgXTZWeymp49sg==
X-Received: by 2002:a17:903:1d2:b0:240:3e41:57a3 with SMTP id d9443c01a7336-2462eb662c2mr18145045ad.0.1755852201153;
        Fri, 22 Aug 2025 01:43:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGEXolhUjPQKDUCRG284FJEb8zvrf0fcnVfDTTz3DHtqN0qA20e9P4wmEWvBmU3EEicTDFcdg==
X-Received: by 2002:a17:903:1d2:b0:240:3e41:57a3 with SMTP id d9443c01a7336-2462eb662c2mr18144665ad.0.1755852200709;
        Fri, 22 Aug 2025 01:43:20 -0700 (PDT)
Received: from [10.133.33.119] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4c7588sm77576235ad.101.2025.08.22.01.43.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 01:43:20 -0700 (PDT)
Message-ID: <2e3c1559-7da2-4c6e-bcef-eb1e8dfd4c31@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 16:43:11 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/14] phy: qcom: qmp-usbc: Add DP PHY configuration
 support for QCS615
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-8-a43bd25ec39c@oss.qualcomm.com>
 <su3zkeepxaislh6q5ftqxp6uxsyg7usxmc5hkafw7yn2mgtqeu@wua72odmy7zp>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <su3zkeepxaislh6q5ftqxp6uxsyg7usxmc5hkafw7yn2mgtqeu@wua72odmy7zp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNCBTYWx0ZWRfXw7m6PSxZSgfx
 wqHIJBNM68GsT7pw+C4XoyUBdoJYg+IQKXwe53VBu1xji4YZXFggbtnArZCRcAfAi4Gq9qvZUfI
 BfrdNKQyIJK85fH2gh66thjH1YWxj16tyGjGzhLcqTTGHbS5Yp5hn9dzsxSt4inNbkkNPQI/R0B
 vJgLYdtifHQ+S2e7x8c+QlXFqlPfWCxAjLUsVGpwH/xQ4xaEoeW27Ugvm4EQVUOvh4DtQWtF5ky
 FBCyF/vJgYX6MMe7G7GZUfh4WAa4EhHXRaVUWQZ72ns2XQ+TkbX4lAyw1CXCd8dfvKyjLi+AX6S
 YF1l4pox5I5Xa8M17rL8o52JJVHFOd1pTNtHo/LtIbkTTF5jCYVWnFn7H4UkZKQY9esrH2bg5qO
 +rkNZJYSZbFA55Ya2Hwd6SgCs33bXg==
X-Authority-Analysis: v=2.4 cv=c/fygR9l c=1 sm=1 tr=0 ts=68a82daa cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=B0UfJI3MrboyiCAuw3UA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: _YjjiwurTD3-XcZo0eY6LXmz_rrNv92K
X-Proofpoint-ORIG-GUID: _YjjiwurTD3-XcZo0eY6LXmz_rrNv92K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200134


On 8/20/2025 7:16 PM, Dmitry Baryshkov wrote:
> On Wed, Aug 20, 2025 at 05:34:50PM +0800, Xiangxu Yin wrote:
>> Introduce DisplayPort PHY configuration routines for QCS615, including
>> aux channel setup, lane control, voltage swing tuning, clock
>> programming and calibration. These callbacks are registered via
>> qmp_phy_cfg to enable DP mode on USB/DP switchable Type-C PHYs.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h |   1 +
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c   | 251 +++++++++++++++++++++++++++++
>>  2 files changed, 252 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
>> index 0ebd405bcaf0cac8215550bfc9b226f30cc43a59..59885616405f878885d0837838a0bac1899fb69f 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
>> @@ -25,6 +25,7 @@
>>  #define QSERDES_DP_PHY_AUX_CFG7				0x03c
>>  #define QSERDES_DP_PHY_AUX_CFG8				0x040
>>  #define QSERDES_DP_PHY_AUX_CFG9				0x044
>> +#define QSERDES_DP_PHY_VCO_DIV				0x068
> This register changes between PHY versions, so you can not declare it here.
>
> Otherwise LGTM.


Ok.

This PHY appears to be QMP_DP_PHY_V2, but there's no dedicated header for it yet. 

I’ll create |phy-qcom-qmp-dp-phy-v2.h| next patch and define |VCO_DIV| and shared offsets with V3 will be redefined accordingly.


>
>>  
>>  /* QSERDES COM_BIAS_EN_CLKBUFLR_EN bits */
>>  # define QSERDES_V3_COM_BIAS_EN				0x0001

