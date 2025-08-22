Return-Path: <devicetree+bounces-207840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 31ABEB30F85
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 08:49:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C9621896F0C
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 06:49:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FE2F2E54D0;
	Fri, 22 Aug 2025 06:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XpypsNBc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA5A42048
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755845366; cv=none; b=sAFkN+l2UFPSGazEW3ZzZILo0A1ubFJaOkIcFkwsaYJj3wIxeilPDubsFVPqucmVlcVwFMAQX9p1Q+/Y7Uu/0KaVHtx+o5DiMS55vQ3+8KOhGmivDozqZdTQaJv3sqQ57vNChSs59n7ZDxHMT0iUkydKvCnwfsW8yHFlnCzkofI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755845366; c=relaxed/simple;
	bh=d51gPt9fVVIQrlb71UzF3auHKTHOiR8lyyNLgba0IKI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DG/MtYQrcWxX2rTsUl6jvsbe5ASAjwn540XMEbE+RhCO0B5MnNjKdeimv1B8tFbcR0Vt270fVx03BdOgW7nLBBG1r1x/ukSz7NWCulLJFZ32YhiTyeNstjFG80aPG/kki33MgukZ6/UvPHb9+mKBh3Qsfy6S9/GvV0+epZGlzlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XpypsNBc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M6H4bb003225
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:49:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PAelQyATkPA6YSXiRQaF3kDsfrHXJ4J/shH4gx5CIb8=; b=XpypsNBcuyAp/E9l
	cMSqL9doPX/KQeFqCC5fdM4wqiI1J54UThwJttpQCwPqaSWuP3Exn3DdAtl6z7nH
	dxunfAwgv4QMLgEo2clVv8ZtS7Hl5FjHMy2ujAsTDUJYY0jt6qtfMKI1xgZMo7fr
	K3O//G/YQBO0uqeuP83fdJl+g5dwuMzWisOt+OYY8y37rekTc1VPy0j5gp0cuBBE
	G1Hse0gaaU4//wDwBnX7+uL17KX0/EKFzABR9OY79PS+8tKi+f++eLP3WmpwMSEv
	1Gcl+sbQ4IP9+x+gdEHHa8m3Fc31y/QIxHm42aNykv4nJRwADxGei5WViPKfh+J2
	5Aso1g==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52984fj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:49:23 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b471739121bso466597a12.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 23:49:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755845363; x=1756450163;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PAelQyATkPA6YSXiRQaF3kDsfrHXJ4J/shH4gx5CIb8=;
        b=TGW0TX8K8d/W18bCI54Jl0V/wYeDCfUTygMyqH28lv3hG73ucXZqppMXiNb0LQCvVm
         /Uf1yz8HY7pO1ajASgEKuJ470whC/U37Vf/MXNLov/w3cNCMhNVQ1RU5RAVXdgmOkAmG
         o7yDYI375MOyJ3Ie/+U1NBlrbn9WPKnQck8tQjmS0oibLS9HmcJSfP6bwgN/P64kxLSz
         Gh32T2sAIYKatdowCiWn5Nl6mgXC7c/R9hj4gCOpmsJQsSfPUGHv6cWgzXB9j+G6mx6f
         9Kq3trNprCuNUMUkf/3OlNILgRV6kt4p39+5Lljc0+Id7jKcrWFKWsOz15nL7myMePJT
         NpDg==
X-Forwarded-Encrypted: i=1; AJvYcCWcPur1+/mdakwsQvlY+f83ScaHiBtN3uMXlkEtbXY5Li5GqsMXyrUTRWRjVcJAGDQDX42+oIeV0j7O@vger.kernel.org
X-Gm-Message-State: AOJu0YwYo7FphCSuuKqSHaWpSuXxKDoZfn6DRNHLxtjnmej3+m75rnfV
	9Tz4mAo2OUrK9MVqw6jGh7j+8M1mUyUPETQN7+3gAh2AoeS2a6/WeJXTokYFpUm9ObSDZ9XJcUx
	PR6JtPh1cHchxmKjUB8EVyohcYLh+5vXYbAPJJsfxuUB1EflpFBm7Yw7pju9Ul64C
X-Gm-Gg: ASbGncuShvcA3ovtdZysWatktEW/IrpgYi+OUyQK/cOvK9rB8SJfV4x60ap/C3kRxYV
	QnRwAJmrql8NN7+e7MtEZxSLAxsmKAMdoxD0eB1JyvtEDjQ1A3fXF9PPoZ1YwkJYIFcpLGw5A/0
	OA7SE3E1r+OMAj7npqtIGtvqkW9EcoG/4T3kWpIlSJQ3Brciytlor/EkVJ4U1O8QYofL2BAZzHl
	LMqvN4E9nCnwdeu0s+8NaRuSkvM5+0HCRGNSN4BUTGP1klrhb3C3qNWLZpu05HS7zooQsG25gSn
	kxZn3L8E0hsYoDv8QyOSpy31LrUbV12j4XD9MnNPeHjsTXLCYqbPFbZvwm0h/N6rb13beRgQDNe
	uPXdiLW1s2+IVOv7vdUkuMXC/LPW27g==
X-Received: by 2002:a05:6a00:4b16:b0:748:f854:b76b with SMTP id d2e1a72fcca58-7702fc0b4b9mr1451094b3a.3.1755845362725;
        Thu, 21 Aug 2025 23:49:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGw2XinJYhFdfeOr2DKaBI1LxvJNvXAx1nbOyA+a6mHNvNi1D2KrOEAJ42/+JTdElCmxHO/Qw==
X-Received: by 2002:a05:6a00:4b16:b0:748:f854:b76b with SMTP id d2e1a72fcca58-7702fc0b4b9mr1451069b3a.3.1755845362261;
        Thu, 21 Aug 2025 23:49:22 -0700 (PDT)
Received: from [10.133.33.119] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d10fdd6sm10099827b3a.29.2025.08.21.23.49.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 23:49:21 -0700 (PDT)
Message-ID: <d21c4c74-a36b-4f01-9c22-44bcec3c20eb@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 14:49:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/14] phy: qcom: qmp-usbc: Add USBC PHY type enum
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
 <20250820-add-displayport-support-for-qcs615-platform-v3-4-a43bd25ec39c@oss.qualcomm.com>
 <cueyo7huj2m2yt46sjk3atfktft6y5slhhtslwmi44r7h7lxbn@5zvwxtdmk34t>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <cueyo7huj2m2yt46sjk3atfktft6y5slhhtslwmi44r7h7lxbn@5zvwxtdmk34t>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: rIyNOQchoajrr-LKSjgYVjJ54Q02MgtN
X-Proofpoint-ORIG-GUID: rIyNOQchoajrr-LKSjgYVjJ54Q02MgtN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX5vehlP3nRlem
 xMjewPHD+XhTYfcKrUT2RfBDGhaY7mimYVBSnzv0DZXuRr2DcDcXdgR6dv/5Kz+T1NKVa/G/hYA
 5OBTcI8gihJWmG43fD6dYCxzawi8SfSOpcnrQLSKAxnNPHL/7J9AzfWvTXx9rdkXptpmolLeFCR
 MnwQa8704YDW+tFuwEkzp4sWMH7wim/TcApSiBjoduiFBqloe7+s6cxrd0iogIfK5ZQPtcnj0w6
 HYEm10ezQXbkmL/wkWkshO5fJ2ueIRGLQC/SvX0VybP83g5m8LNd+E7IBWXXG1q0w4/Sg3tRJUo
 tv+vvY/dUUCVTPinEhf/WxYFC6CdSXCAOvtijrFATt0k50LiM4spcCn8HTzzsszzg5YhuPIGV4x
 SPlamw8jHYSBmy/03hO11mWQ/RbKDw==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a812f3 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=LJgbN-Jd--P93uwsTkIA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013


On 8/20/2025 7:34 PM, Dmitry Baryshkov wrote:
> On Wed, Aug 20, 2025 at 05:34:46PM +0800, Xiangxu Yin wrote:
>> Introduce qmp_phy_usbc_type enum and a 'type' field in qmp_phy_cfg to
>> differentiate between USB-only PHYs and USB/DP switchable PHYs.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> index e484caec2be20121cfe287c507b17af28fb9f211..5afe090b546977a11265bbffa7c355feb8c72dfa 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> @@ -284,6 +284,11 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
>>  	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
>>  };
>>  
>> +enum qmp_phy_usbc_type {
>> +	QMP_PHY_USBC_USB3_ONLY,
>> +	QMP_PHY_USBC_USB3_DP,
> Drop, you can use presense of DP offsets in order to differentiate
> between USB3 and USB3+DP.


Ok, will drop.


>> +};
>> +
>>  struct qmp_usbc_offsets {
>>  	u16 serdes;
>>  	u16 pcs;

