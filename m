Return-Path: <devicetree+bounces-178975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6184AABE410
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F39A74C2FA3
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 19:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 069D128313A;
	Tue, 20 May 2025 19:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PkiTnEhC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C19280CFB
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747770670; cv=none; b=PPE1U+L74ES6djb7m4/naXxKqF5zNM2Nf45727ds3Xwv5EPRIGxuArxL5jycPOa/8wRLRBeUyTqKmqdyT8j977Y/rpeH/N6GU0lzn6t1Lmrjxr8tTNBlizybvPgkzmd1CCxUdCswex67GtUnaQbqbQYDFFwOVASTui5Wev8OvXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747770670; c=relaxed/simple;
	bh=OQuO2MX2mV1qr8a9I8/izutKfXng/fSywHuJ73ey4iQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P0wmHS/bmba8AT0Xn9NKLR4jXAr2+5coGwdfRzIplg7v34rjhfhv0nZCQblVCWZ3AW7qmXp/dRl9jkT0O2CAmNo1GXewJrdT3Qny6cr3pWhAUUwOHAhKHEkBekwMLECGBWzmTvEvpXDoEcxSkE73UjRUtA3DyCy646JOmEeiZww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PkiTnEhC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGeFle027248
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:51:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pc28nC9P0XjjUTuMWViHDCd7
	YDNUjNlX8fYiEK3QnUs=; b=PkiTnEhC3vWKHZ/T+7gfZwGXnYi23ge2NdrGCBls
	fScnV3ydcL4y230s1Y8yYJTEMJwfCK8cBzGBLMAcEls1kUsIlRhq7pi+nZzR+Lh1
	KGMhuNE9mfxeWEiHnUtkcD57feeb2djjv0e5osHeFwmKvT3H0ADfsTcBi5Wb4TAA
	rwdtnjr/butNRok0fpg6d0XqijeJLQLH5tDrhw5m3b53S51PRqm8u4f4akgyUT3J
	L2JudnKy1Kb91vrZkB1I/kqjk7f5IeUHT194h1KPAtSpXi5ZZ/dft+KGuQMl+dF7
	2Wltg6uMsKpbl0Qgb74x84pebmMAjbSLLE6sgpynVo45zg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf98fq9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:51:06 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8ae0417b6so106806106d6.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 12:51:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747770666; x=1748375466;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pc28nC9P0XjjUTuMWViHDCd7YDNUjNlX8fYiEK3QnUs=;
        b=G4ZlVWM3rzlVOKVLf0jxcuCoYF3TWxBSzy7ssP33yKETqIV48YHo7CgFPVyTOsmCnU
         qTJojlf0xhn3/FZ/vkdCt/KR/8VcqmS9F7bUDfTLizeIssOPCGPGDFqJMJi4dnFh6CvU
         n36kHzOfjvI6PaGtiAuG2UP0uh78CjY9L8e236UqdIamMkCBuueZJJ5FfJ3xk8QMGnfh
         MbIy8kV2eNI6Ai/mYJMH6iUfSMPCWji2kTFtMzkYPY1w32CsIeRqUqx7shmZgb5JLo+J
         KQfWIDueGUg8d0UPkJKWJeNne8CeC6nq+YmEFb+AMVGfWv8r4NTDZGLCwWQLiraQ+pFN
         mKrA==
X-Forwarded-Encrypted: i=1; AJvYcCUqs7uNlNkvZHcSX80FyfxJAcf1SVwBujKGUJK52c+7N9WrgznLJb1BfzJDZCMsVBgv2z1pkwABB47x@vger.kernel.org
X-Gm-Message-State: AOJu0YyCxY6hY00ZJcT9ked6z9EMYojtpZJ/Z7iJUOnlaQJ/hd6F+E+p
	HTzjegZ0TMFCcHKM3kNHKYYgVpoT0SmjbvJhIOn/gtT3Rh2DJxLOtHIrFzNJRPZ00ugsTio203Z
	62FUXV6aKlVeVGf1qCp2h75Yr1ZSrik+fR2cnJzb96VEQowewF0MPEurjxKRwVcgO
X-Gm-Gg: ASbGncuVouMFU2waK/4Y0HyunDfEJKiGQH459STrm6buVERQ3DLr7Fb0SB4gAjLKNcK
	g5rvBnjgRHGl2I+VUFvRe4pDELjJa/qWYgr+Lbz3+/WVc1PeDfx2tx/9z2noNfGKqnjs5vMTrXH
	Q/oj1/wDuhnSwmWut8EoyqW9ZTNMZXBBb+AvL3z17Q5FRLCgUsCvbjNy/dpZrcjHHzIY2i1Bx0w
	WVtzE5uzoCBMsGi/6b49kqduYz7rhI3S2wttOTHIrphltj8QkPQTZA2Su46pDfgaKx2CGDwSEWL
	U7wYywgSEu53XJU4Cwx9uAxHu93uZ4slbu8t4TJFlAvcfBd+rmeNMlskz/x7luk/4VkhGlQ6hfA
	=
X-Received: by 2002:ad4:4ea6:0:b0:6e8:9866:7398 with SMTP id 6a1803df08f44-6f8b0827d98mr304389606d6.22.1747770665784;
        Tue, 20 May 2025 12:51:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAlrRavO8GE8YIpqqEJZw92ZUYhqQUxS+53ugRsRkVied/hyGm7s6YLVBT/5Wgbq9F8FR9Ag==
X-Received: by 2002:ad4:4ea6:0:b0:6e8:9866:7398 with SMTP id 6a1803df08f44-6f8b0827d98mr304389056d6.22.1747770665301;
        Tue, 20 May 2025 12:51:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3289f29953bsm19216051fa.86.2025.05.20.12.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 12:51:04 -0700 (PDT)
Date: Tue, 20 May 2025 22:51:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: vincent.knecht@mailoo.org
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        =?utf-8?B?QW5kcsOp?= Apitzsch <git@apitzsch.eu>,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 2/4] media: qcom: camss: Add support for MSM8939
Message-ID: <wc45nu55l7venjmz7mllvxofd2j2ymmj35efefrejaupnyf5xy@27k6glye4n52>
References: <20250520-camss-8x39-vbif-v1-0-a12cd6006af9@mailoo.org>
 <20250520-camss-8x39-vbif-v1-2-a12cd6006af9@mailoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250520-camss-8x39-vbif-v1-2-a12cd6006af9@mailoo.org>
X-Proofpoint-ORIG-GUID: WGpVknHQ8TnYzmklF67m85TAjMTbF0-c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE2MCBTYWx0ZWRfX8lOjs8be21gb
 +8ZDuVIqaifTOty/2f8efkwtUR/VdHuf+S3M5loLDt0QuLPG03dS1nJ2fsY86WR9fIQG0IgsZNz
 omrk8xMbjSKM5zrg7rnKMpCxsamOsv6or8S3ujCUOBs5qgzZ3eh1bBmy9tVWdfktDtAFX0OmrBM
 hvdyMS7mqjvEGF6gONfw0z2mvqRqwlybGc4rnYco0Qpk/R6a9OErwrn5cP09jrTH7PhtU3ePUOd
 q3sDJWuu1iarjKBaEDUsuKbhjvt8VC/KSoAep20KOPosbk3utwablQ/SLkrXYwfGCeo+kCbZGTd
 2ma1bTS+1OtNq28A9VqcteqB5pe08n1OWMCqRVSAAm/UMJuGO1O3rnEvduDL35sKMUo0qUVDiRL
 9G4YCKXKqluHBWrHVq3IfqRsB12sJAP/4rm4ygaG/RUlV3pfs/H+15cZyk8ozppM5VrkbLzp
X-Authority-Analysis: v=2.4 cv=GawXnRXL c=1 sm=1 tr=0 ts=682cdd2a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=TqukyxIwAAAA:8 a=I8k2uAQB9J5w4mxu1W4A:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=e_wvXvRcY2B3oMitRgDS:22
X-Proofpoint-GUID: WGpVknHQ8TnYzmklF67m85TAjMTbF0-c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_09,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505200160

On Tue, May 20, 2025 at 08:39:07PM +0200, Vincent Knecht via B4 Relay wrote:
> From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> The camera subsystem for the MSM8939 is the same as MSM8916 except with
> 3 CSID instead of 2, and some higher clock rates.
> 
> As a quirk, this SoC needs writing values to 2 VFE VBIF registers
> (see downstream msm8939-camera.dtsi vbif-{regs,settings} properties).
> This fixes black stripes across sensor and garbage in CSID TPG outputs.
> 
> Add support for the MSM8939 camera subsystem.
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> ---
>  drivers/media/platform/qcom/camss/camss-csiphy.c   |   1 +
>  drivers/media/platform/qcom/camss/camss-ispif.c    |   8 +-
>  drivers/media/platform/qcom/camss/camss-vfe-4-1.c  |  11 ++
>  drivers/media/platform/qcom/camss/camss-vfe-vbif.c |   7 +
>  drivers/media/platform/qcom/camss/camss-vfe.c      |   1 +
>  drivers/media/platform/qcom/camss/camss.c          | 157 +++++++++++++++++++++
>  drivers/media/platform/qcom/camss/camss.h          |   1 +
>  7 files changed, 184 insertions(+), 2 deletions(-)
> 
> @@ -742,6 +744,15 @@ static void vfe_set_qos(struct vfe_device *vfe)
>  	writel_relaxed(val, vfe->base + VFE_0_BUS_BDG_QOS_CFG_5);
>  	writel_relaxed(val, vfe->base + VFE_0_BUS_BDG_QOS_CFG_6);
>  	writel_relaxed(val7, vfe->base + VFE_0_BUS_BDG_QOS_CFG_7);
> +
> +	/* SoC-specific VBIF settings */
> +	if (vfe->res->has_vbif) {
> +		ret = vfe_vbif_apply_settings(vfe);
> +		if (ret < 0)
> +			dev_err_ratelimited(vfe->camss->dev,
> +					    "VFE: VBIF error %d\n",
> +					    ret);
> +	}
>  }

This chunk should probably go to the previous patch.

>  
>  static void vfe_set_ds(struct vfe_device *vfe)

-- 
With best wishes
Dmitry

