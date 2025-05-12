Return-Path: <devicetree+bounces-176502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D58CAB459D
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 22:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7812719E5ED6
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 20:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9495258CE3;
	Mon, 12 May 2025 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NmdosR2w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AC82571D6
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747082896; cv=none; b=ekBqw4t0neFKlaqV8T90Tnv2Vcj+HUF9tX5BOajCxNqFyDBydWU6OogpFSQNdGti/urX8toRKTopDqvxe0PU+0yjrnqo7Fr+pxl2QXaUZjDrMYzWnpFftlkV18WBoYrI7ShRe/8QaqYYLrO+bfJVut4/hfOWeqPqsBfc/pOXy6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747082896; c=relaxed/simple;
	bh=wetSk7KQyPe93VuWtTaariuwT9d+FE4GY1/B0UWkXGQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nA7d945l5jJrBh/ZI3ZtcmdIj1CPkwDiXyeSCDjqNzm+Xba396xFXIiszjjrcCzRdHRLwtOuAPKBKjMCFqDJez7gBo13UA5hgV7HQbSx1Tfjq7j+z55/P7q11uXaN2M/B2SHZQ9rSqa13xwVgcvgAYDVbVdUdJxOLQwWAV0dqsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NmdosR2w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54CFWpln023589
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:48:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kMEGDGWDes2oQel40VYHijcONjInO+gIQOaXNYTja7g=; b=NmdosR2wzeX82hjX
	R7xfQNChr9s2zZRwEvXdMAMePnYf+JdmCSvMKpmtM5pHAPB4WbzC6UqF0byemHgR
	na4kT9knRJBd7KBRH+oezlf+aLo2y57Zunnb1BalfmDQyzkc7FYiIQcxwUbep/gP
	Wk1B9DC2Lp2f2elSVqOc+XwWzF/D3Nn1U8hCQkxXEIPOHQGt3ht9PMPbdUXq3S2c
	A181Ik3scTCZwoGH8aDUvACinXDjr6UcxqJZp395tB9PG+DG5dBn9DC1LAltrbcK
	eQIaPFbJqQK4v411v6qFvUGzyg30gbwDaTMMPz0H0iLw//4NwUUV5nI1jiSfI5gt
	aKUpSQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46kcfej2hp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:48:13 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f539358795so6553706d6.3
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 13:48:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747082893; x=1747687693;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kMEGDGWDes2oQel40VYHijcONjInO+gIQOaXNYTja7g=;
        b=EO6HR7V7FZx0yKj7AxDoH8tX+DTdHiuMzXkR6UTUVQ/oBEVQGIkBqEfhI+yHg8XZdi
         ikDPeGLyjCOg43vdHHFNXc/3u7DV7M4Z1FNVk2m/uXodsZ10roupb/0NqR27Z89rlwVq
         T36yAbcYzE55mxoyDbTJCmf26CUzsyY2bTAxZkRz5UkIBNsiV1Ta8PWMLVMP1DrA4C+/
         tlLw4SLpGquuOWedYVvdGEtkqqccbWAfxU6yfWR9jlB3dQXhvuCOwgBVi4OeaMFFQtrc
         KxgQ7BXLlCVOYiWEppYCPz3kBFl9+SjTLrTSN8VUgQtzygEJFOIhdmdtsvc5E1KU2r5D
         Rp8A==
X-Forwarded-Encrypted: i=1; AJvYcCV+CxaEJEjRA/VhjQEd609Wz3uZgu34semV+/ScRcDC5V9pEKcmteO4wmWTooB69PbgErKVPoAj5raa@vger.kernel.org
X-Gm-Message-State: AOJu0Ywsp46A3M9+Fpxdb+v6C5mCy76PIJWjj5F7oVrRpZLBebfXy+oX
	LfqWXPxT21jPb24wA0S8axgGlEdAsn05IHVDXAkt/STOJD7L1MrdPVtIyZUdlDLze9YZ0kvYYJH
	OdVH7olV4tC89uw6iQZDe8fDgNOB/pbs8ouUaKRnl/kVAe4OFYKLuD26MXvtL
X-Gm-Gg: ASbGncsku25SQy8i7cPdax79rjtfRyW/x+lr6a8WRHTuENNDSlnVLT04s/zY3xeEzaJ
	0rJFD1tVL6JHB4NxQc3lV+7tvAM6rQAWRfx93AHKMOys7b71fkZO5AeZm64HfFxmOfyT9c7iBY8
	nFxPCsBTYyrmGczvDk6H8rpMs2myEvscksS0ApE399lUY4CV7ZxcV20zgsCtpQKVAtndayhJPqH
	a0MgA3aMm2kMcoq390mD5+U2WCReUAdEsQkMNTBtc4fyrzIx2izBkGk8umv0HDadfIUoqUjjUxu
	P48ucMaJTzVfFLVttuWYDNNmrUTbXymzF9im00ZxLs/LHhmiWx7zRTAa1teqrC6a3Ww=
X-Received: by 2002:a05:620a:2723:b0:7ca:d38c:5d8b with SMTP id af79cd13be357-7cd01044e2amr926154785a.0.1747082892956;
        Mon, 12 May 2025 13:48:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1PFEnie7QK9hvQDnRlsXVbaR2Eq3M0V2Jui8DCrhPHVSNfmueMAmpx3G3g/iNJeK6Yme+lA==
X-Received: by 2002:a05:620a:2723:b0:7ca:d38c:5d8b with SMTP id af79cd13be357-7cd01044e2amr926151285a.0.1747082892344;
        Mon, 12 May 2025 13:48:12 -0700 (PDT)
Received: from [192.168.65.222] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad23eafca8bsm428846266b.87.2025.05.12.13.48.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 May 2025 13:48:11 -0700 (PDT)
Message-ID: <24173d3b-272d-4cfd-8519-ad5c9cf7c555@oss.qualcomm.com>
Date: Mon, 12 May 2025 22:48:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: qcs8300: Add gpu and gmu nodes
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20250509-a623-gpu-support-v4-0-d4da14600501@quicinc.com>
 <20250509-a623-gpu-support-v4-2-d4da14600501@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250509-a623-gpu-support-v4-2-d4da14600501@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEyMDIxNCBTYWx0ZWRfX5tgwgG81lG6j
 ZN8Y4Ss8c9/cxRViaBU3rJpWjI4FcHtxGXa7xY/nDWrTt1JPNp+R16HpHWpLuh1BPDqtPyTgYhW
 iAF5aHXPOmw0QRrKUB619CzzisNWLYPpV4efZ5AySOsUZ2bdFzqJWT791m0S3OB81ZarIPqfcDU
 /qABQe1AqUUFjig4AFs3kSCnpItPVBdWDjGYThffFe2+Hf+Q2jeZN35VK0rkQtEIaQw4UmMHWvV
 f/6GrpeJZ8mPrz+YFOwtcktYlaOWlf8hqr93jGFrHuFLAlcd38NwDTaugqu6bjvFYZajSgsRZLp
 yK/dfvPm9SQqjGQWnS76RvGaePXiA2v2i/sj56bQ0lyveLdjKfVebGZhx+grdA3z2hzwjI7VWWe
 yn6pohaEl2jkVX1adgvBlJ0PS1YvPD2Zztbfrl2Xc/+WUeUEzS6ztz9FBcvAxMRpxT6OxvPR
X-Proofpoint-ORIG-GUID: cxlOZS1mwQBP6ImB5e23N_LqYkxEyVOM
X-Authority-Analysis: v=2.4 cv=asuyCTZV c=1 sm=1 tr=0 ts=68225e8d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=NWoSzSQ9CBVd_tIZLS8A:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: cxlOZS1mwQBP6ImB5e23N_LqYkxEyVOM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-12_07,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 impostorscore=0 malwarescore=0 mlxlogscore=999
 adultscore=0 phishscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505120214

On 5/9/25 9:21 AM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and gmu nodes for qcs8300 chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---


>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 91 +++++++++++++++++++++++++++++++++++
>  1 file changed, 91 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 40771b062e8d7010dd93d7cc7b3db73cfa16bfdb..1dbccb9a0c75366aa6986b6adb4feb6164ee8845 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -2660,6 +2660,97 @@ serdes0: phy@8909000 {
>  			status = "disabled";
>  		};
>  
> +		gpu: gpu@3d00000 {
> +			compatible = "qcom,adreno-623.0", "qcom,adreno";
> +			reg = <0x0 0x03d00000 0x0 0x40000>,

I haven't noticed it up until now.. this should be moved up in the file
to sort the nodes by unit address (the serdes node above is 0x089.., gpu
is 0x03d..)

Otherwise, please check if there are freq fuses on this platform, if not,
feel free to add:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

