Return-Path: <devicetree+bounces-209787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4C2B391C8
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 04:37:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA27C1795FC
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 02:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F6DA25BEE1;
	Thu, 28 Aug 2025 02:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TMLl/Xyd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807EC79EA
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 02:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756348663; cv=none; b=VhMRBviP0rG4glLRgI7bU6LrFnGHc/SoI8FMjUD45w+iHhjiUhEaDD5X16nWge3k/DuJX56cdcsvMwB3jmzWtAqn2YICzUkPoul0h1/D3/A9FWTvGX1FNWJcgexeDRSSZYrJ0XZeASSvVpfDsIo8/mxoNcuSy/oozbc/gzf/wiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756348663; c=relaxed/simple;
	bh=k1bnMOyX+QJBbqn0uCmtmVzxRpeoNf190g/x5IfrSec=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XkjXbnIPJJE4HwPSYcsF2ot5/b3bmvP3zRkktv/qsqfc4Q3ebAW/RCoNtIS9KEEyH70Q32lQ8KbSj9m5hsNGQRLYzFJjakPq3nTVjc+bMunQN4Qh3jchum3SqG573KGGiNsVHYt5hcTfFXA70nhHHUcvgQ3sipk8jn5eqy0GpoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TMLl/Xyd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57REuWtu001842
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 02:37:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CzpcX1ydkh01oreyPdVhWuWFkuUt/DHhQ7WgcSO750o=; b=TMLl/Xydf3peKmCe
	3SJjXBy53cYoHckUs24pk4jiQpMdnIUK4/0lzziwMe9wGDQPQps29hwfZ8qDwG6L
	y5rwjPVEvjgE6p7nPXO85SsJR/2cR3NQOOh7snQGUiuMeaoO8DnwnTsWmwTmpM+A
	ov2U4t6uUfN162F7218VBxd+Tilqr1B05PSPzWwm/chUSlpouTb8jwCc9wVbe7W3
	zpTxbI6/NmX6H4KPnT29ocU03slHyAqVcgPQWgIOjPtyvcYaN8mkxavwy3wKDmPM
	YWE9yIcef7XVxNc/LGZ/gW0aT4BKSBtGvogfUKuFwJjfhEPeqlvUgrCEj7v0+LM4
	luvzeA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48t47b9mrn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 02:37:40 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3275d1275d1so138967a91.1
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 19:37:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756348660; x=1756953460;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CzpcX1ydkh01oreyPdVhWuWFkuUt/DHhQ7WgcSO750o=;
        b=NRlmzEcQTm7qvY/glatRbE/PCPOOkOCDFyExMS/iq4L9mTvbmG531hK03YnX9J6ruE
         kF3WTSzFMRxmmCv9ardSsRkX6JTfB2dw8kkUAo1HMtB9J+Q2sQjW0OuiMLD3j7v0m+3+
         mHTHxKmDcTSet3EaIX+xDV4QPwVQK4w575BXzCP0YQ3OZR+HT9Oo3RDgXrpryA5+eG4o
         v2x6sSfndUgNJd/dYXk6pPJcsgEALGvwg55Yqmed1i/bg2trkqFKzm4F59qZ/HDtTVHq
         PP3RiTIXC/DgfOKh/DnvAie5P90hfi+2cITLlLKzD/UbE0HcEfqF/TIDGKAnkZKVIs4/
         WFFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhhn6/jnp30rALKr9Y5OC1HV77vJuTtKquLGh529pAyGH45GyONjgGjGzbrnPXFC3an6iInLXja1xY@vger.kernel.org
X-Gm-Message-State: AOJu0YzqctOsyMkXo7btUVl3AhbPw+I1TvtPspUX87fiymrD3eCnTCrU
	RSbwSD3yuu88cq2DMEdSv06av6SsPuSxaMaL4nmrrbvKevq4fzIMA779tTlgjo9Kjl3KvQGGhvm
	idtPthDXrcxvYy7oUYK5oxBEEF4NIj3dl0qj4ylesFwjlVg9anbo+Ht+Sz3pJvXzc
X-Gm-Gg: ASbGncsVhMpdYx0mvsrUMawHRdN1ZCO3teCgh87HR5YZqIsBxCrCwLbhHnmDKHPfAE5
	RheigkWn9JE9mArcOgWQ351WJ6xc60GvO7+h14IBk5oUv8RnWYOtVxcsbnWvF2pcRRweYR8Z1QK
	31t+lfEbTVw0ntfNx0G2GeugCTn01fe3M9E6hE+fZ/r+ccxfjS9gcaRtP5qHcpGaL/F2XPlbwjc
	zFHRgsCrKg7W4qZyXUWaOR8rVUCRF5FhtBX5pSEj+M+iV+dUp00zqYbUeLmAQWT//jUgTWNjk5E
	jD5eOP1g149UUNo0cDM+BcWdEIaEIaa0/cbGPRB/NahLhBIF+42uDM/OuTxhcipilvf2nxGGEem
	FRErzSvwSWmTw7Ia6Sc4t/vapwqAUng==
X-Received: by 2002:a17:90b:3885:b0:327:76b9:3c74 with SMTP id 98e67ed59e1d1-32776b93dc0mr2682872a91.4.1756348659718;
        Wed, 27 Aug 2025 19:37:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHe55ZTHJRQToocxrNCqcxFeBqSv5AmBiOroCNnrtBkGeKvVOpw2UJG22Bn+GftHwdcq8/fIg==
X-Received: by 2002:a17:90b:3885:b0:327:76b9:3c74 with SMTP id 98e67ed59e1d1-32776b93dc0mr2682846a91.4.1756348659166;
        Wed, 27 Aug 2025 19:37:39 -0700 (PDT)
Received: from [10.133.33.166] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b49cbb7c0e0sm12696409a12.37.2025.08.27.19.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 19:37:38 -0700 (PDT)
Message-ID: <31a1d952-eab3-4630-8337-94a45d144199@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 10:37:29 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/14] phy: qcom: qmp-usbc: Finalize USB/DP switchable
 PHY support
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
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-11-a43bd25ec39c@oss.qualcomm.com>
 <jjsijdmh4hdbgd2boebtrmzvblvhz2hnl7mtv5ga76ine2fnsb@i72dz3r4lbjp>
 <82d19340-b887-4093-9d24-4b2e19b99f8b@oss.qualcomm.com>
 <inxoswyre3qalrb3dj3lz3b5vmnpnkyy3hh4oum3z6p7yqlo2v@7g67yvvb25tc>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <inxoswyre3qalrb3dj3lz3b5vmnpnkyy3hh4oum3z6p7yqlo2v@7g67yvvb25tc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: y_4jm1Atu77vvy1l8n1ZqpsearYIzeom
X-Authority-Analysis: v=2.4 cv=CYoI5Krl c=1 sm=1 tr=0 ts=68afc0f4 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=cSqeRI19cUNuZMl-djwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: y_4jm1Atu77vvy1l8n1ZqpsearYIzeom
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDEyOCBTYWx0ZWRfXzWw9YYU0xQgk
 xstLIFEIcmiadrSvbMeV8m80BWh/wmY1qUG7JlbWXjzlNFKxVTb3vxuXlw3TwJZROEvpdutKqWp
 QVg1cTggHObEjVp8rq2NxXvDdvSS1zS05nBjaVtWCxRK1gVYvg3tCHzMweK9Su0IWwZI/veinrJ
 YsFiJ0YMZgqPBoSCNQzXVihEmXWgQwqWgmGGsG/mYx4idZS9g4u+eSXTxcRE1F3uf1uCT2H1Yif
 PZ5iypN8efHJrrzv7kmMF542vcI/HkkN+Rqj3gJzIri3QCXCtV3yZo/SGcH2i4XwJQCTceFwjVc
 vB33/YFjb6n+xO1Abw5XhB+VMBSSP4JgPvJwQlNrNWE0UEmASuzg8jFGw456YgQ0RZ/LeJG4EGZ
 ZznSapka
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508270128


On 8/28/2025 12:14 AM, Dmitry Baryshkov wrote:
> On Wed, Aug 27, 2025 at 08:34:39PM +0800, Xiangxu Yin wrote:
>> On 8/20/2025 7:42 PM, Dmitry Baryshkov wrote:
>>> On Wed, Aug 20, 2025 at 05:34:53PM +0800, Xiangxu Yin wrote:
>>>> Complete USB/DP switchable PHY integration by adding DP clock
>>>> registration, aux bridge setup, and DT parsing. Implement clock
>>>> provider logic for USB and DP branches, and extend PHY translation
>>>> to support both USB and DP instances.
>>>>
>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>> ---
>>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 331 ++++++++++++++++++++++++++++---
>>>>  1 file changed, 299 insertions(+), 32 deletions(-)
>>>>
>>>>  static int qmp_usbc_probe(struct platform_device *pdev)
>>>>  {
>>>>  	struct device *dev = &pdev->dev;
>>>> @@ -1703,16 +1944,32 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>>>>  	if (ret)
>>>>  		return ret;
>>>>  
>>>> -	/* Check for legacy binding with child node. */
>>>> -	np = of_get_child_by_name(dev->of_node, "phy");
>>>> -	if (np) {
>>>> -		ret = qmp_usbc_parse_usb_dt_legacy(qmp, np);
>>>> -	} else {
>>>> +	if (qmp->cfg->type == QMP_PHY_USBC_USB3_DP) {
>>> Should not be necessary.
>>
>> Got it. I’ll merge the parsing logic into a single qmp_usbc_parse_dt function.
>>
>> Also, I checked the compatible strings in the dtsi files for this PHY series
>> looks like no current product uses the legacy binding. 
>> I’ll drop qmp_usbc_parse_usb_dt_legacy in the next version.
>
> No. It's _legacy_, it has been implemented in order to support old DTs,
> which existed at some point but then were refactored into the current
> state. You can't randomly drop DT support.


Ok, understand.


>>
>>>>  		np = of_node_get(dev->of_node);
>>>> -		ret = qmp_usbc_parse_usb_dt(qmp);
>>>> +
>>>> +		ret = qmp_usbc_parse_usb3dp_dt(qmp);
>>>> +		if (ret) {
>>>> +			dev_err(qmp->dev, "parse DP dt fail ret=%d\n", ret);
>>>> +			goto err_node_put;
>>>> +		}
>>>> +
>>>> +		ret = drm_aux_bridge_register(dev);
>>>> +		if (ret) {
>>>> +			dev_err(qmp->dev, "aux bridge reg fail ret=%d\n", ret);
>>>> +			goto err_node_put;
>>>> +		}

