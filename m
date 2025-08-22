Return-Path: <devicetree+bounces-207846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62635B30FCA
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:02:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7CEB51CC7088
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 07:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781252E6138;
	Fri, 22 Aug 2025 06:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ft3q6spt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F074C2E2F0D
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755845998; cv=none; b=qDlAi5RQaYo+1wZxlLn8xV+y3Aoe298+sbdvvj2sBC5L6MOHm/oYMTOT4CYncZxyOJ/S6+QJ7zWvINFreb2vC0+fzlYLTymmE35P2YwQfrAFdK2/tjUYmz+g1qsrN+PmcUyhlpqRJuaBW1bq/VD5dbzxkXKhrBLsIydIiKosTPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755845998; c=relaxed/simple;
	bh=Lk20aKQPIVL6r16bt6tNOCbWihMefXdn9yhsskDmCEc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aH6r+GWufrid4WFyG+faSqWqCNzo1MH+o0LzATJscQTH8wqYYo5wlBnhM9qZSIXU1DNCzWKnQS0wfFxLDVsW791XZhERX5IaDh7DAfaG6R9sy2WbWGTzrxu1EcOMmtTfM/BZIvSzvM2tK4E4T/ztr2C3KZCAziTSGCBUPgYcagE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ft3q6spt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M6uQmC021387
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:59:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EvRSbSH/VoxM+9jiAgdHngTIpfLu8E8u5BFgwRNDeYw=; b=ft3q6sptkCQgZIvH
	X+ocxL8DKw1LaFTCRH3oXovsqFPtM3ECG5jSdO54qhWumdGzaRLc7txUhlWo0yM7
	p+nN1PDK+sXom5BuVh3bWH/Oo7eGNFh9BtOmVlah9L6ZCCiHutHN+ZjyNPzvziRq
	B2m2l22Z2d5rhjbKAF6UmL4yOGKXezMEoK1FkhaQpNP3zHx8Scz5bVbQJKSHrjtJ
	gmOFSdH/Ld7ddVIMKD5ZXaKgrSgTc9k0Z2GRk7FBJgakxKS/Nv7btUTN03hofBxE
	/dN99Z0whu7VZniV4GPrDK60bbtVHdKoZUWqLC3WgZbqt6boEWZRdXVA8yPN4YIK
	Qae0FQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a86wx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:59:56 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24457f44a2aso5688225ad.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 23:59:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755845995; x=1756450795;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EvRSbSH/VoxM+9jiAgdHngTIpfLu8E8u5BFgwRNDeYw=;
        b=us0ogx1BRFt/hkQlEpZYky7zk5eUs2Zh4PturW5/ZG3BY1FTlBtPWDOPPBHbR0Z5CO
         inu6HHpIErYbHAghow2pB7eclbHEGMX8VXCF33Cv25yaGkkjbFzRBOaSbGU4TN5XMcMa
         fnvT7t95SJ/I6c4K1bUYOaLvIg1Nw8UotzMYCZG/FJDzXBjSPmXOkQDbum1b2BbZySQX
         dQcp/t/DkbB1S8dW/OP2j1tzzepTSvih1WogJA2vdYnsjREZuzMlkCL7iSlJSGVeg6/G
         5UOV2ExgFsQTMYyg4ryZ3DE3eA80tVe9vhw/DzsiO2Oa+4jfSEl1NsDp2X7RC/rONejy
         zt3w==
X-Forwarded-Encrypted: i=1; AJvYcCVF2EdGOV0IBSQc3HkotDFfop/HuSf3vcnqAm2C+PSxEsLTGRrqTbvcZjOHBlZsF1ndcLXCXHEFXKyN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh34s1o0Es3Azca6q3zkujirjAnKNGdIaHuftI2ItZ8oogr16V
	lz6bfoQpfnVNAmunRIyG4AwhkQaHdl1AP2mu6mc8cmFdZNJ11CfGswuFn/5JJMag9mNygmPzmE2
	A+rVzeZ84kfCDcz2+YTpqR8g762FHefeF7A4yG+0OJHX6qSRRvSOw+az9J4OmHd15
X-Gm-Gg: ASbGncuUC3JfwnIgY1iEdjoH2CtXyuJJX4fQgGpe5yMIyK/tssAClqMs6SmKiwpaZmM
	2xr8W1Wa2fqFgspr7fnAv1sOvCC+H8xira/VySSMK2rl5GwDWCo2CC4HXTacgwa1qN4nSNTCPj1
	KJioNLoaomcg4F0C28IUsWdPFP3MjlP7vN9tdiIDHW46wz+gGbonl3OC45khAHpPOqKuwmWdyxN
	InLn1jyZEQsBQRf+sFBVzshl9VgQ8yGACi7Xwh5a3xGs9vH2uqiOetqRM4QXIlcLdamJ1veerAQ
	fW4duPKCKS/FJ4Y4v8+gqeL9VBlvgBqmniZEfG7kCX9/q9663PzEfBOIMwikIP0wNGyk7/yGeu4
	GiBKl3frOIG1KnN1whBnqp1VK1wxeaA==
X-Received: by 2002:a17:902:e74d:b0:240:52d7:e8a4 with SMTP id d9443c01a7336-2462ef4956amr15460305ad.7.1755845995441;
        Thu, 21 Aug 2025 23:59:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuEJR2wzIWQjgd8kotlnM7HkI7wYOwYms8taKFwN/LIJRGxlF0bSt7nWjIb6zaFE9ywZO9Uw==
X-Received: by 2002:a17:902:e74d:b0:240:52d7:e8a4 with SMTP id d9443c01a7336-2462ef4956amr15459895ad.7.1755845994827;
        Thu, 21 Aug 2025 23:59:54 -0700 (PDT)
Received: from [10.133.33.119] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed50352esm73974115ad.128.2025.08.21.23.59.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 23:59:54 -0700 (PDT)
Message-ID: <8922ae6e-9be6-49f7-ac84-d4a1dd60421b@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 14:59:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/14] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
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
 <20250820-add-displayport-support-for-qcs615-platform-v3-5-a43bd25ec39c@oss.qualcomm.com>
 <7b6utbnibia767bp55vhvg6ghdavb66ubdpabyguohuwtmz3mp@unvm36jttota>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <7b6utbnibia767bp55vhvg6ghdavb66ubdpabyguohuwtmz3mp@unvm36jttota>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=feD0C0QF c=1 sm=1 tr=0 ts=68a8156c cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=S4zsw1PvXi1YseiIK68A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: jtGkqr3gue6n2OakewvfpR7A4usBCAGo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX81ils41a+ggN
 sUYjRY1Oh+s6ol09gEKYiaQYHYegti6Dbz1s4EAcCIoD4C8+YyzsYWGt237J8G36UsvAc5jZktF
 uc6lxn9OHgIeeOxqFzyjFNYnpyUsusXdI9b+rV3z8CnYEO0zyfV5RXy92UPAbi62oyaNi8Ki0H4
 2/Txdp3ta0NBMFv/p9PKSSiYlOPtmQpg4yrRr9OijGj4qgdrSwSu02/86W5sTcmnvYqcrPSrRt1
 rRffLezKKGa+NQoHiUcRxymLY2Oi9PoaR6nukrlThWeZs1UE8d8wqlvlveRoHqm4+YIg3HOZRsD
 yCiWhzbcNi4mBxPKLgJ2Z42YmLMeobgCdNDIlXR+3B7bJka8BXU0g9AH5BQrGop8Y2w0QSsaUa+
 T4v/O0cFgCRQbNZSKr0feitYOQruBQ==
X-Proofpoint-GUID: jtGkqr3gue6n2OakewvfpR7A4usBCAGo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013


On 8/20/2025 7:47 PM, Dmitry Baryshkov wrote:
> On Wed, Aug 20, 2025 at 05:34:47PM +0800, Xiangxu Yin wrote:
>> Extend qmp_usbc_offsets and qmp_phy_cfg with DP-specific fields,
>> including register offsets, init tables, and callback hooks. Also
>> update qmp_usbc struct to track DP-related resources and state.
>> This enables support for USB/DP switchable Type-C PHYs that operate
>> in either mode.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 73 ++++++++++++++++++++++++--------
>>  1 file changed, 55 insertions(+), 18 deletions(-)
>>
>>  
>> +	struct regmap *tcsr_map;
>> +	u32 vls_clamp_reg;
>> +	u32 dp_phy_mode_reg;
>> +
>>  	struct mutex phy_mutex;
>>  
>> +	struct phy *usb_phy;
> Should be a part of the previous patch.


Ok, will move usb_phy rename to patch 'Rename USB-specific ops', 

then shall I need drop the |Reviewed-by| tag in that patch since it will change?


>>  	enum phy_mode mode;
>>  	unsigned int usb_init_count;
>>  
>> -	struct phy *phy;
> Similarly.


Ack.


>> -
>> -	struct clk_fixed_rate pipe_clk_fixed;
>> +	struct phy *dp_phy;
>> +	unsigned int dp_aux_cfg;
>> +	struct phy_configure_opts_dp dp_opts;
>> +	unsigned int dp_init_count;
>>  
>>  	struct typec_switch_dev *sw;
>>  	enum typec_orientation orientation;
>> @@ -874,11 +911,11 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
>>  	qmp->orientation = orientation;
>>  
>>  	if (qmp->usb_init_count) {
>> -		qmp_usbc_usb_power_off(qmp->phy);
>> -		qmp_usbc_com_exit(qmp->phy);
>> +		qmp_usbc_usb_power_off(qmp->usb_phy);
>> +		qmp_usbc_com_exit(qmp->usb_phy);
>>  
>> -		qmp_usbc_com_init(qmp->phy);
>> -		qmp_usbc_usb_power_on(qmp->phy);
>> +		qmp_usbc_com_init(qmp->usb_phy);
>> +		qmp_usbc_usb_power_on(qmp->usb_phy);
> and these.


Ack.


>>  	}
>>  
>>  	mutex_unlock(&qmp->phy_mutex);
>> @@ -1106,14 +1143,14 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>>  	if (ret)
>>  		goto err_node_put;
>>  
>> -	qmp->phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
>> -	if (IS_ERR(qmp->phy)) {
>> -		ret = PTR_ERR(qmp->phy);
>> +	qmp->usb_phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
>> +	if (IS_ERR(qmp->usb_phy)) {
>> +		ret = PTR_ERR(qmp->usb_phy);
>>  		dev_err(dev, "failed to create PHY: %d\n", ret);
>>  		goto err_node_put;
>>  	}
>>  
>> -	phy_set_drvdata(qmp->phy, qmp);
>> +	phy_set_drvdata(qmp->usb_phy, qmp);
>>  
>>  	of_node_put(np);
>>  
>>
>> -- 
>> 2.34.1
>>

