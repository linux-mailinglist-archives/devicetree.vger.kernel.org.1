Return-Path: <devicetree+bounces-178183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EB1ABAE98
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 10:00:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7FA93B4B18
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 08:00:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C1C320E003;
	Sun, 18 May 2025 08:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S8AiQOaQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 820C7154C17
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 08:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747555244; cv=none; b=tYZEl1TlPHQ4tGJH1OVH0TK3KlP8C52fNTSAjN/NntRVR8bw0AVt1LGXHRdmncdPmLiTcYOXkPUBZn5ko5q3sykW2BIQpBlLIeU6O6yzXnmTvJ/PF9VBFdzQx3egCW+S99pYHRdZaTehb3j+U2kk5rw5Pr47WukRsGjxgKPO+oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747555244; c=relaxed/simple;
	bh=eEpOAGltDfZQrcPF5EABRdNdezAR1P/s0r0PFrHNgxw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bPFWdAxutP5K7XD2Rr5xTVZ/CzVMxtZOidmy7OkM3/3DnK2AYKoRkwTYXfQ7fvI3eXltXzDaMAwAyGLRhNKEaHTLIUyuCcORc6avya6MhQAjEnmkj6HPLzemk0jsYw6ss47nERmoFLkB/x/zPYTbsMp9RdumvT4e54xOISJpTFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S8AiQOaQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54I6UDQ2012621
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 08:00:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M1hSROUXIIz884cqASZZtnpd
	DRy1hYWsqulvbnSF7qA=; b=S8AiQOaQ+pE5llTKK816AwTQwrikZRsMjbxfApB+
	eR7tEcghOsJ+FZuhw+P0+8AfonM8xnZAWctboybc8Ep1f2NNGrT0/f0vBj9BRqzX
	Z+QUX7kdNLNkh8fMmNd1+eIENl5jhC6x609GUSCgd52y4m40auKxpcKYeBzvoMb+
	grhZVoS9+8xM9RrIv3Xn7BS9lNDyZwUb1Ij5XwH7HvsTfL3a8UDc7zpqn/hG25O2
	T1DQOHYk8xSZoeC06hNn6oMEj0KSkMDBhSC6g2b59IhEUXGw40uP6txUwFDdeZlO
	nSWKowVBFtHunsDcUTo21VbPNeToMpYaG9OVX+lgfxxUfQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjjsspgy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 08:00:40 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8c2ad9cf2so26430806d6.3
        for <devicetree@vger.kernel.org>; Sun, 18 May 2025 01:00:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747555239; x=1748160039;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M1hSROUXIIz884cqASZZtnpdDRy1hYWsqulvbnSF7qA=;
        b=Lqa+pCQAOaycxgA0J6t1uWkhIptESvImzJR9iQaRQ8TCjhhr4DE4+IY0GL7cg7HFFt
         X9alX4zDFGM6yH7ujA5YFicz/smfH51uFVGYRaNSMkTC1kGdZ3Gydp0cgnfk7kLqLCVK
         UBB/Rv1MYwFQp9/h6VF8VS/JW1RFZ1oHKBUjhqcMVimwNGHncyShOd+6q+t2I0Iabu3I
         pRzsntbQ727hPfYHeTjQwspmoG1FD2DtDEpJSR104meliimnKrbx6225GJqgq9Mbf0u4
         +DDkg6od9kxfGm8OYNd8YAb5Z0CONBeKzz/KoV1MJ2D7x35AQURZOAhk5dyyuXb5jcC6
         6YzQ==
X-Forwarded-Encrypted: i=1; AJvYcCV27p96BcNB7XGRodq5PWiw+AsvpYUeTUEchJgea1tpSqvIgjzCqFDbwd1CznkEG65ijAf6aqsWUJN9@vger.kernel.org
X-Gm-Message-State: AOJu0YxIQnmkcIOtTtaJ75vQOahac9RDcxWU5L52zDhfsNWMMVPbFt+i
	zQpbGSI9pQlCKBapfS4CDdSvpTYwjdxQ/1H5tLWYxdxGY3jjPEoTBAHKIF/ocnn9rWPeNfifuQA
	278Ul6fTMCMA9ER5shBynuDQ+Tx3nUqu9QYlT7WJmp0NK69EEucYvm30vIq3TnNXk
X-Gm-Gg: ASbGncshWtSNzT9jHabJKL+2ZJKsmB2vJA9g5KgmiEPqts6oximNXTBm8TaGt9/VcS1
	nOfVaCL0v6HJNrK8bUiqZSvArltJj3+im/1/gWSVDqyQ3UuL3houKUlG36SmjyLvaWlTLHA+bM4
	vCebgLp1kWW3cUKygRARaQzEsOzKjy8h6Zlohx2G6KRL1cmDRUatZ5qT6DTWhh0StCO1+IPKX32
	R5+3ExUdrN1hroAEok9h4ejM17hFIiXMTgMtEJxbtUIQTyegcltPbjOhle1M/Mk2T3VK6k7n/O3
	tYyH7sRv/8yxLPNGRpO4V8s9ezpOGn/ng9wh9m4ulMK6+fihTelrOLKyO45VMGykqZBS/j06qz4
	=
X-Received: by 2002:a05:6214:1244:b0:6e8:fde9:5d07 with SMTP id 6a1803df08f44-6f8b2d43931mr128486026d6.26.1747555239355;
        Sun, 18 May 2025 01:00:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7U6yVFqqgxWTJepkwkMTRStZXikQatyTxkBmj5oyJSp2W376ewY4h0spqmrjhxjC95bxVtQ==
X-Received: by 2002:a05:6214:1244:b0:6e8:fde9:5d07 with SMTP id 6a1803df08f44-6f8b2d43931mr128485546d6.26.1747555238986;
        Sun, 18 May 2025 01:00:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084ca0b9sm13615991fa.32.2025.05.18.01.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 01:00:38 -0700 (PDT)
Date: Sun, 18 May 2025 11:00:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <quic_wenmliu@quicinc.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] media: qcom: camss: Add qcs615 camss support
Message-ID: <dw37t3kefhxtzmygcdkdtl6nh733qbx6cpqmygaanbq7pg42b2@lutist5sdt2e>
References: <20250518-qcs615_camss-v1-0-12723e26ea3e@quicinc.com>
 <20250518-qcs615_camss-v1-3-12723e26ea3e@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250518-qcs615_camss-v1-3-12723e26ea3e@quicinc.com>
X-Proofpoint-ORIG-GUID: 5b0wgKWL1PKfLiMIfrRmMi5IU0t9jXpB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE4MDA3NCBTYWx0ZWRfXzzzcIVXPJsw/
 pylZL3oVe4cki441lpZxPLusFBpZyuxjJ3ZFztPUfRa6yNw/BCynNR0QcvczYdIRLT8zz9E8kRg
 XoB0XTTqIUwp3Ox0YsRMZ7BTGc4u9EC5/cLQNfIyH9xAFYtjP+MVn5Ign5XIHRYnKCKyTJmvGCr
 C1pjSB6Q1/g9VgzzVXvmRKvYgMTg2Zh5AIwDoTIeVcXEjlGZjjjzcdl2X1CotHAz3HZ0vcPB/94
 hT5cry9xqLuu5as5c2Sa4JhVW58WWStpmfoGc+qnTxLldG1QX9Ob1EgWIYLyAj1ijq0Jid0Jn2q
 c8artrtkvsNLb+zp95RpSANwz6UHneLH7n9zqkTacRWuUlrVO/uuZaXd+SXpl1U65IVBJ1SvxHT
 px6gu2gBWqmNKSFHgI2ZXaEix+D3EoYkLLk9/wyD2wnVvG4DRwBW6L0sb30oDb/NtICzWdAA
X-Authority-Analysis: v=2.4 cv=K4giHzWI c=1 sm=1 tr=0 ts=682993a8 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=Zj0UxLc9_TXd3n-uCjcA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 5b0wgKWL1PKfLiMIfrRmMi5IU0t9jXpB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-18_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 mlxlogscore=999 suspectscore=0 phishscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505180074

On Sun, May 18, 2025 at 02:33:09PM +0800, Wenmeng Liu wrote:
> Populate CAMSS with qcs615 specific hooks.

QCS615

> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>  .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     |   5 +
>  drivers/media/platform/qcom/camss/camss-vfe.c      |   2 +
>  drivers/media/platform/qcom/camss/camss.c          | 196 +++++++++++++++++++++
>  drivers/media/platform/qcom/camss/camss.h          |   1 +
>  4 files changed, 204 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index 3f3d875b8a74ee8f6585bebd29629bdb16eadb28..3b58b938ad419b6d482314e23b4f51aae5f8a59e 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -824,6 +824,7 @@ static bool csiphy_is_gen2(u32 version)
>  	bool ret = false;
>  
>  	switch (version) {
> +	case CAMSS_615:
>  	case CAMSS_7280:
>  	case CAMSS_8250:
>  	case CAMSS_8280XP:
> @@ -905,6 +906,10 @@ static int csiphy_init(struct csiphy_device *csiphy)
>  	regs->offset = 0x800;
>  
>  	switch (csiphy->camss->res->version) {
> +	case CAMSS_615:
> +		regs->lane_regs = &lane_regs_qcs615[0];
> +		regs->lane_array_size = ARRAY_SIZE(lane_regs_qcs615);
> +		break;
>  	case CAMSS_845:
>  		regs->lane_regs = &lane_regs_sdm845[0];
>  		regs->lane_array_size = ARRAY_SIZE(lane_regs_sdm845);

This definitely should be a part of the previous commit.


> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 63c0afee154a02194820016ccf554620d6521c8b..04e2359fccd5f61b27692caadf2855a1fde31ed9 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -77,6 +77,7 @@ enum pm_domain {
>  };
>  
>  enum camss_version {
> +	CAMSS_615,
>  	CAMSS_660,
>  	CAMSS_7280,
>  	CAMSS_8x16,

And, as a dependency, this chunk.

-- 
With best wishes
Dmitry

