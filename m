Return-Path: <devicetree+bounces-219967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD447B90339
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:44:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6F1D171444
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD12030BB91;
	Mon, 22 Sep 2025 10:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kaREty9V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3588030BB97
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758537598; cv=none; b=jVvtdHVOxWG/KPaNzQBmANoc4X57R2I66VUefH5pa8MiPHAE3RMLjv437zF5gZD/swqhnP9ojZ2FPHDAmyBIF3e/2RvpbcWa1VFfEozXHt4G8KIUxH0SL/NzR760bvdAI488ZXuTsrruU7hKDwJ1/f6/V6IhXrGa3Dlbru9a/rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758537598; c=relaxed/simple;
	bh=twUcl12npOG8qzI9GA9aXYM/D+zCfltEzGgWykDIeu8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pcYL7+a5ot66N7avDRK4tO5Jt08agLzUDAuicLwmEsm1ks6f+itefnlbQrHu588bogjTLuJUPXiP6Bo+LtzdTXdZAryyaXnAoFz126a1bOzGRCQlmEShh8qzhgQFm4jaws7vP0I8WSqmJePb/lwObhJHb7wcWsN4V8VfTFu9kno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kaREty9V; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M7oYBd005183
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:39:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S/sA8nAMeAFMELZqIPjuLjJ4XtaKTMC4EnJ3WDadUqo=; b=kaREty9VXGeciDLI
	tCvv1KCyLhUfKm/djj2m4hnm9nMrsHRkwQzZgWImpLtgW00/4d39/gq+ziey5ral
	QSHeBxAucErWvK23cbWyWyvXCLMWdjufjUHvB0bGfHWcY2QaLk6QCTi3ReNYrTiR
	DJkmfa100TLfOC5xs5R+m3qOmLXAg6RfKqWRo3LlUGS3Q8ixL6C4tdba4NLLFS4v
	0yffZl8J5fGt178CwkdUL2tJpUwed5Y+/wAuOWw2sDaS+lrtPHx0tZuum52E3MIQ
	S8ih2sgoJweK4CzFWVrznjiSBOOB/l60gbOu2vx5X2mUhz286H1xsFLitauhQMg5
	2AMvNw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b2e10k6q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:39:56 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b54b25578f8so453516a12.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758537596; x=1759142396;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S/sA8nAMeAFMELZqIPjuLjJ4XtaKTMC4EnJ3WDadUqo=;
        b=lUdZLxbYyyc5byI/Bve+5qcmlQ7LDAtY4R+fAVYQpQSng4HnUKsT6FwtCtVXtDeHPt
         hoJRYfsOmjnrLq2bCWhTEVGHfSGvPUnk6gh9I0cjImpATVqEjh960UAMovUOHWmgydqt
         nKN4Xa/lyGEiCm+wNmbfzGOzmIvD7/3UqXw+LuJd6LroJBw54Xz0qmmSyktIqNms+04b
         i5rNp6JVaUoKidRHX3Zm4G4U5PmDfooUQfJa5Ykje8ZIsp8oAWO2u5PzkTkh3m8QOScw
         RIWJzd1pzwFPDIau1wX5ogU6AUntakHjn/9Pe6w3teEZHXUVoROQfHQut6gtxt0nokFK
         xcAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtdNAzCCMNBhdwMPbmw0rK0VgEbprzvlDGic6tutDPfQsfNJwL1AeNuJqy3o/H1wUmdSfEoKVgrWWj@vger.kernel.org
X-Gm-Message-State: AOJu0YxsuxI/FbaPQBEIRSMCS+w+JNxcsjqfUB9CNhx7ZFAD9DyDeZB4
	pUXGuUSCfapZSfeE2mTJDmKNK19rZCOhzCL/ZItZ4Dd83aBmgruVd+j5QN0xJp08pHEwe93QxSQ
	VZBoB24PhARfT+j4FHi95Ram9/q9/4M5yD9mnRuly9gpkhQLtyE5EYkQQmBCL8hCq
X-Gm-Gg: ASbGncu2JEWgByhbuIbClOOhZr7pAlrnfXuVyV/1ryWmDDGKCiy+dBr+VPVx3Rlr/40
	jnTWoy73Yd9qnNkY414P0nzlnwm1wS6kaBAylHxQccFzjfeCg3ZRlUiUKeoNX5iUHnsJKcqD4bz
	AScVsnj/u9YG6tNr88sshbMJ9sgrNYdL8nsISQJztJYKceN73wxFtbfhYcAi9z9hwiSXaHZ5Hpx
	iBiP6V4wOjiOsVEqwAvMZMbrEqKQV4ccIST12ZF9J1AeMwQAJc5iyMDtyqy6AHBfLjx95sKs1WV
	+hqagUrK/pqaRXfTsHmJ5r1HVmHG0JJJpZ3Sye02sXz/A3oB+ahnJf9BdzSjFoM1MA==
X-Received: by 2002:a05:6a00:1894:b0:77f:1a6a:e72b with SMTP id d2e1a72fcca58-77f3126ad87mr2512337b3a.5.1758537595658;
        Mon, 22 Sep 2025 03:39:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzeuarlsbMfcKnTGM+3OHSIOvq4mUD5eYqtObyzudC9HyNv9RqGfR6ipfD9BvwEsV1pOsHsw==
X-Received: by 2002:a05:6a00:1894:b0:77f:1a6a:e72b with SMTP id d2e1a72fcca58-77f3126ad87mr2512307b3a.5.1758537595213;
        Mon, 22 Sep 2025 03:39:55 -0700 (PDT)
Received: from [10.64.16.135] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfc2473d0sm12066251b3a.27.2025.09.22.03.39.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 03:39:54 -0700 (PDT)
Message-ID: <bf823249-18e3-48af-a291-63b89bf83163@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 18:39:47 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
 <z6x3bwb7izywozeran5aq64uw4tiwlbwx4kekoy3vv3vt7qyip@2ibiat5focw2>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <z6x3bwb7izywozeran5aq64uw4tiwlbwx4kekoy3vv3vt7qyip@2ibiat5focw2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA3NiBTYWx0ZWRfX+HKFk+2jOWS2
 /MT6E6oPswCcFPuzmt12JpnenUpvs1z4dtLUv+DD/dL3Cz8MI4JX3G1QcSuGxn4Ik0I2eTBml8m
 pXZMiC1PbaiFL/1+c7dsUedWrbvHq1SsDEIW+cjRTewYb+DsVqAEuYkLpWyVapBzl7TYWECMjCP
 2T106/Ez97TRT92FTvjFpyoWvhx5dsa2/MW53bTo/3Z2vedDIARLycth044ocX/UkA04JN8s1LH
 xBBgJFNRbH/eWBxvILb6yrW0DzepHc7RgS98VbHUJmrCfCua7Cd9JzLVOWcirp1ICKjJIvwvWdf
 ZxiwAajzvO3d/5lTRGd49bmRVp5Yj4VA2RMM+DOLCdvyNnq3Px0U2jnNCGDR/+VI253YG+6AZzX
 2I92Cfo7
X-Proofpoint-ORIG-GUID: WGIADGQC5xyqhg1XR7JHpVvGC_wK0Gi3
X-Authority-Analysis: v=2.4 cv=HM7DFptv c=1 sm=1 tr=0 ts=68d1277c cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=kiRbvkIhkhXhhATYQ8oA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: WGIADGQC5xyqhg1XR7JHpVvGC_wK0Gi3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220076


On 9/22/2025 5:39 PM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 10:24:22PM +0800, Xiangxu Yin wrote:
>> Move resets to qmp_phy_cfg for per-PHY customization. Keep legacy DT
>> path on the old hardcoded list; non-legacy path uses cfg->reset_list.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 +++++++++++++++---
>>  1 file changed, 15 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> index 3b48c69f9c3cb7daec495ebc281b83fe34e56881..3d228db9ef0882eb76e7ab9e82f8122fa9cfe314 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> @@ -335,7 +335,8 @@ struct qmp_phy_cfg {
>>  	int (*configure_dp_phy)(struct qmp_usbc *qmp);
>>  	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
>>  
>> -	/* regulators to be requested */
>> +	const char * const *reset_list;
>> +	int num_resets;
>>  	const struct regulator_bulk_data *vreg_list;
>>  	int num_vregs;
>>  
>> @@ -428,6 +429,10 @@ static const char * const usb3phy_reset_l[] = {
>>  	"phy_phy", "phy",
>>  };
>>  
>> +static const char * const usb3dpphy_reset_l[] = {
>> +	"phy_phy", "dp_phy",
>> +};
> This is unused in this patch. It should go to the patch adding QCS615 DP
> PHY compatible and the rest of the config data.


Ok, will move in next patch.


>> +
>>  static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
>>  	{ .supply = "vdda-phy", .init_load_uA = 68600 },
>>  	{ .supply = "vdda-pll", .init_load_uA = 14200 },
>> @@ -464,6 +469,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
>>  	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
>>  	.pcs_tbl                = msm8998_usb3_pcs_tbl,
>>  	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
>> +	.reset_list		= usb3phy_reset_l,
>> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>>  	.vreg_list              = qmp_phy_msm8998_vreg_l,
>>  	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
>>  	.regs                   = qmp_v3_usb3phy_regs_layout,
>> @@ -480,6 +487,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
>>  	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
>>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
>> +	.reset_list		= usb3phy_reset_l,
>> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>>  	.vreg_list		= qmp_phy_sm2290_vreg_l,
>>  	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
>>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
>> @@ -496,6 +505,8 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
>>  	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
>>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
>> +	.reset_list		= usb3phy_reset_l,
>> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>>  	.vreg_list		= qmp_phy_msm8998_vreg_l,
>>  	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
>>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
>> @@ -512,6 +523,8 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
>>  	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
>>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
>> +	.reset_list		= usb3phy_reset_l,
>> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>>  	.vreg_list		= qmp_phy_qcs615_vreg_l,
>>  	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
>>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
>> @@ -1051,8 +1064,7 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
>>  				     "failed to get pipe clock\n");
>>  	}
>>  
>> -	ret = qmp_usbc_reset_init(qmp, usb3phy_reset_l,
>> -				 ARRAY_SIZE(usb3phy_reset_l));
>> +	ret = qmp_usbc_reset_init(qmp, cfg->reset_list, cfg->num_resets);
>>  	if (ret)
>>  		return ret;
>>  
>>
>> -- 
>> 2.34.1
>>

