Return-Path: <devicetree+bounces-167145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC16A89880
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:45:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80140189E71C
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9157A288CB3;
	Tue, 15 Apr 2025 09:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OMlBxtQq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2EC2820BF
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744710269; cv=none; b=B/S0IrcrB3PUhNndNiuL0r1PF7Oel5fR45R3Mh5IRlo8cIdGJU0STwFQVYvLaPQaNHlg8zfkPDvSG4ZzYY3rwnCL/RjGg2lauqJ8VkMvdTlnNHjtHLc4PrOuSuhMAhI68ei41hpVqnNQ5TCpWKPKwbYbtHqYFBD7i/G9wFE9lzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744710269; c=relaxed/simple;
	bh=Uprxl+1GFiY2y+Cgn8JymqTKxPDvtaIfmc8l1d4uhI8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XWexI7gBfyHHuUihCSXssfoXbF+eOtEkP9InFvcQZ6HfVv7wl4VhAN2P1sRygh++Ka8sLv+H94FMiE1JtfKm+0fYmeDkmxCCIRqWwXwpNdFjmQPS3aKKffRh0XcwxMZIeT6vsvAb/miXvnZOcRlUh6+XHO062RCi3GAADJG9jjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OMlBxtQq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tRQI023423
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:44:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rW9FWPSdQt2D+614W81JrfXlNn32mGwhXPgp/tUuSmk=; b=OMlBxtQqJGmWEZFV
	EBm4SupL8+T0JUt9IMgpIMdoOcxKuu4vkazTH74g/ms5JkQFxD6BGlgW/GiNrktZ
	8pdiBvJ09qTbFOGWs3llxl+r9dIstAw4eqWC/kHp5Y1WpS6awHLao4zz/wDnehl8
	mg8OSuY3VOTHHHpLSkylrJ3GlYr9xm3gxzO0vPRZhJrGQHm3HpHA4enuKJ8+T2lU
	bmU0SmpBA9sma7PTDW8+pjUDf+JQlw2JCX/ZCDXQKhJFpxjlmh/YYEvNKzcMTyok
	U2Te52FfUql3eX3kJTjdQUs1j7T8POnCNoMwBHUNu6NUVSJj6CzfWGdEBpGiMnfe
	np79ng==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygj97h62-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:44:26 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8ff8c9dcfso9528036d6.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 02:44:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744710266; x=1745315066;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rW9FWPSdQt2D+614W81JrfXlNn32mGwhXPgp/tUuSmk=;
        b=C6PYaThgDu4BLE039j5ZW0OWagBei90OWf6xwMiml29TSeugy5fPJTiNeZkPw/yV+I
         cMz3CrkZN8OLRJfiuAIKn227G0oLu1CGooxaROm2kWCowL9LZcLcmpJwt2GaK30aathg
         g9TWPLJer6wix/sNVVRTVJO6g59fcK5P7i4oSArKBfdZoC25qXEKaiVpblSa0738jtpY
         ZXIZbW9nJspE/oix76gPmfVEqNEpSLhqSEvhIMr7tax/rJUl0BxcYcOwdcyI6kp8r0Lu
         EyigdeC+UMnJ/aq+PV4ugdOlXcYGfqx36A6xjNxRSFZKCGdUXeLsItA96llAQrNSz3Yh
         VOvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTev9Z3F5Kjl4zCF313Eg6EbJQ0CTVsf6GG5FehDqG0dTxb4TednQB2/2SMRy8ctlpFBuKQIhuV4AF@vger.kernel.org
X-Gm-Message-State: AOJu0YzjeHwK7ntiRRtGyIWI2fwTnuGPmxYwTmaNSAAUnQuFu602rMYd
	gcD3APrl5vT8JjBCbf1OE+ZV4S/YH75jQCR3XPrY/9nvrYNV1MYooxxaVKTVKnS5hE7Hl3UxYJ6
	mmMY8UQ4/iTcNXTpm4LScBIbRZArWJFuPLTm87n0Dlhif+f+p8A6KG7NSt56W
X-Gm-Gg: ASbGncvLaRzdBGGbQ+cMfljmRfhg4XHJOAaIEunB/H/B/c8R48/OhnZcV3nXTSmtj6g
	w+OfE8RuN3DCkKR5Yvk6EYs9Ff5s/ikSocDxd/A8Jdy6Zc+oDoSbHLLhPqsYKxH0IL2HCR6ysSH
	y8NvA2dTfRzkoLSdZX6V1rJhsnAnFYEiBj6pXa/oCjAU6f002+/jECi+ch12LZOJrnK/qQGgIBo
	+Pe8kEfj1VsPyAbjpob7CJklimguKT7Baipc0nqEeQ9kVgeW6r5sBYmb7Wsx2YvegAnbBb1GanX
	T98aw+lKgJ/g15HD4A8TZceDPNMfpadWX8UUhWZNKHzy9HmtVnSt80InxkQsQQ2AUc4=
X-Received: by 2002:ac8:7e96:0:b0:472:6bd:f620 with SMTP id d75a77b69052e-4797753cf0bmr78171491cf.5.1744710265933;
        Tue, 15 Apr 2025 02:44:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJjjs62RJ3mQbU5ZqHBwBsMfWuvAGXOnlnbzwKsb07Asi8nZzrMPgemoIu+Bz/6N9J+heGTQ==
X-Received: by 2002:ac8:7e96:0:b0:472:6bd:f620 with SMTP id d75a77b69052e-4797753cf0bmr78171241cf.5.1744710265610;
        Tue, 15 Apr 2025 02:44:25 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36f06c5desm6431552a12.48.2025.04.15.02.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 02:44:24 -0700 (PDT)
Message-ID: <96e38ebb-5847-485a-8bf6-50e7b10ce572@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 11:44:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/10] arm64: dts: qcom: sar2130p: add display nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org
References: <20250415-sar2130p-display-v3-0-62314b1c9023@oss.qualcomm.com>
 <20250415-sar2130p-display-v3-10-62314b1c9023@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-sar2130p-display-v3-10-62314b1c9023@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: d4YxDSoIHKVcpPzTjS2Hru-oNiHlAQa2
X-Authority-Analysis: v=2.4 cv=PruTbxM3 c=1 sm=1 tr=0 ts=67fe2a7a cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=RooFfVGkvEW2JHd4kGkA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: d4YxDSoIHKVcpPzTjS2Hru-oNiHlAQa2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 spamscore=0 mlxscore=0 mlxlogscore=931
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150067

On 4/15/25 11:39 AM, Dmitry Baryshkov wrote:
> From: Dmitry Baryshkov <lumag@kernel.org>
> 
> Add display controller, two DSI hosts, two DSI PHYs and a single DP
> controller. Link DP to the QMP Combo PHY.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> +			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
> +			interconnect-names = "mdp0-mem", "cpu-cfg";

The first path should be always on, so that if CPUSS collapses,
the display may stay on

other than that

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

