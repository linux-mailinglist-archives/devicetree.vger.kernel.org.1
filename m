Return-Path: <devicetree+bounces-171003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF9CA9CF8B
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:27:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 189F87BA443
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A4021FFC5F;
	Fri, 25 Apr 2025 17:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lSFUQ4ki"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C62E1FBC92
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745602029; cv=none; b=alXf6Fs7jRgrlPv5PwRIhyjPZGUUrp8SK6ql5NlHpmPnBOYEBWHltPj7iqMum2mgkosedw8LEZO285HRAMR8tIPqWRl7AAeG9w0G00xsgRLpCSvs8O3p6CVmMksTt98CKuNOtiJMRqJVuKa6QUqGdXd5uqZ/7g6VIuuiwe03jQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745602029; c=relaxed/simple;
	bh=YE9G8mI28GW/5ukb5vBgVbGkCs/8fgzDRlzPwIB3S2Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o0BowH6dnq/ThCS4fDLfOpcAagNTqHc8dB6nxGZwb2PStiZxpbomUdU+77QmYtNk90iqvWa/AoJZncBmh9Mne+ye05re5oX1aB9a9lWqJWY5nQPjKFhzQ337lDyt2+/smMORDJGge1aSrYxYm2HExoCyTagWzNnx6s9YQ344RfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lSFUQ4ki; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGK1rI021809
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:27:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6atleiqSWOqhZ6HNJhi955CI
	NiLi08p3xHpsze8E6/o=; b=lSFUQ4kiv5h9xhe+e2zaqVS+TZXDcDsPQT9rkiay
	RUs0FJO7vPvjDt7Y/0NtkjwV/FJApSnlcGB+D5YcHMTV9ueUF4yldArVi4MnyHhs
	N3Ig5QOrMcR6VGl7jz/SkLxBNjMsBsfdZ46rRKaBvRj2rMIcTFSGTJ+9gpKiriNe
	a/MGg5JI629x0RdjzHWeTTynjPBMnmv/C1kyKYrwWk+rS9PKcxUi3V4Lrb8NqCeX
	W5rJ3lROmLD+PR7fjm8sIM7RYPIrnEq6WV/9TlDeghDR111AQ+VRhuM7nJXs8CAT
	MgRrEoRwJdYAS/+bmPtT40b113vxZF1x1JMxbHNaEcHBhg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh5hvq0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:27:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c95556f824so268617185a.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:27:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745602024; x=1746206824;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6atleiqSWOqhZ6HNJhi955CINiLi08p3xHpsze8E6/o=;
        b=pBgWja/bqCMW0h1cpo3tgoytPLlYsKyhK6YjVEXj3E+1SIyYou52UPRxD9g3jjNKAb
         ZEuJkB7FMInHLzcyVNgkrfT6uXVgfauyrjebHWat+h08KIfD+4JUNx3e93U2XzsPriYn
         auu2waaZrWbHd/5uhsbq0T66GJbzd0y4tEd6o47O7Hxk9o6Mu3f3E9HlH7xltMrr8sLH
         95t9fBv35E/RBzjr/hB/NnJZ3HtmUwXY/T1D89sbl/rk2K5xLYqTRxAO1hSUtRPdjid6
         xi+0qc/DVrf5Bk5+iG/7efciPpF7GQPIrdPRoQp6WlnrPhDpznvCC6ijnzuo68cxnhzy
         fdyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnWI4h5z8dzSuyYwfSItSyS8+2UUNxtCtXU1/S2ZM5NRDcCZCfBACtX32466KMgNE0LpTjwSd+YT1N@vger.kernel.org
X-Gm-Message-State: AOJu0YxKeQcBV4748nLaQ72S3G4clNsD1Bj/T5uJVLkstZpxQXO18vMm
	clbBsDs7eQdyn7Z8wvEQ/grmTnaaZwRlXCLXO6gbLwgsKz2b0aH0pMvFIuvAI6l9FSArdEePoO/
	I2BN7QK1k0IQeaasaM5YR0eFCvoRAy5+z2k+7ZhxO4S7pv8xpECVfdaMheOx6j3oIBU5U
X-Gm-Gg: ASbGncvp0qYluNBREN4OtBZCTjJGqRG7DpPulCdAQnCbg2amCQUCKt1BcV5bV5zqzhv
	aIjb0dtCSUCan/c+VO81D+WAQXPlC08GfPp3JOh8w8G0MUj1WQlfw4k2Leo+poYJgcBb+RVdbzX
	k1g1nqf0WR730YWByBIy3PGPHwigXGlvfs4QU9tCvt7d9u1Hgyk8PutDjInY+9yS2BPAX7flEPl
	29Mco7v3H5VNsT2J+1gG8f7qDR2rQ5jPe8uTchRlxwzKvAqBcaZJAhy8lltccbZFmkeL2XtYZ4o
	g2aZ/bIf1hcEiN/c+A8tk/t6CHjCdj8+TGjqB00Air0EzY2KsIFILMy9daHYWJXhYDThYXkN3+s
	=
X-Received: by 2002:a05:620a:2a05:b0:7c5:4463:29aa with SMTP id af79cd13be357-7c9607971d1mr452398685a.40.1745602023739;
        Fri, 25 Apr 2025 10:27:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfcY2I+rhTM4dIprfVROD5tVH+EAafw13oZ005cpJIfKjET5O8mPgkhb+t9ebqxFtJj9FPRg==
X-Received: by 2002:a05:620a:2a05:b0:7c5:4463:29aa with SMTP id af79cd13be357-7c9607971d1mr452393685a.40.1745602023298;
        Fri, 25 Apr 2025 10:27:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d1b96d90sm8189881fa.93.2025.04.25.10.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:27:02 -0700 (PDT)
Date: Fri, 25 Apr 2025 20:27:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, krzk@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] media: qcom: camss: x1e80100: Fixup x1e csiphy
 supply names
Message-ID: <ukwt7mxabaq2om6is6smvwedo4nweugbauapeuzhbzj6jsbwk4@5eiksknb2bf4>
References: <20250425-b4-media-committers-25-04-25-camss-supplies-v2-0-8c12450b2934@linaro.org>
 <20250425-b4-media-committers-25-04-25-camss-supplies-v2-2-8c12450b2934@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-b4-media-committers-25-04-25-camss-supplies-v2-2-8c12450b2934@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyMyBTYWx0ZWRfX4HD9JBVNApMR KG7gdGybPs/fvzBggj4scbtzTTjAZT+BDX+7o0w7H/SPDbCCYIIWy06LuDX21bgdLeA2ABd5e3i wgpXCO5nCSQr2Kam5XF/7wCZLnqkvShC6EWndGuDCccfLkats4XW7oXBfE3VzNyj37vBUhHHhZE
 unt1yANvXvG1y5U3jZjFGs8fiJTrR2TZ2BpwneQYEpMqXrUgLDfcEnRxICOBlcQrK9EotzPN7kx ggEcJ+zazgMYYOEC/rSWy64phrDEeKS8W7GgYsZnWvgEne0jlWY45Na8182m9WDmHhBHjoqTzcq HODBcbngCTFh143kSPiyA5Py2Sexrta93aKIS0WIozpoXMKTfpZs0kP3o8BQWjcpwl4hbD1smO3
 jdQ8+E3CHxnSohXmjVHasM2CrBQGW9wpRTUItUPGYpx4DVbECs6aGWvyIkh6zkp0ozJB2ZbQ
X-Proofpoint-GUID: G1ffTGIt1KDuEAs5BPdx2F0scpD4avUR
X-Authority-Analysis: v=2.4 cv=B/S50PtM c=1 sm=1 tr=0 ts=680bc5e9 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=QtrjCutIs_zDAuGvUncA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: G1ffTGIt1KDuEAs5BPdx2F0scpD4avUR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250123

On Fri, Apr 25, 2025 at 04:17:34PM +0100, Bryan O'Donoghue wrote:
> Amend the names of the csiphy supplies to be specific to each CSIPHY thus
> allowing for the case where PHYs have individual or shared rails.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  drivers/media/platform/qcom/camss/camss.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 06f42875702f02f9d8d83d06ddaa972eacb593f8..d63bc7dc951690132e07ee0fb8df7cef9b66927d 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -2486,8 +2486,8 @@ static const struct resources_icc icc_res_sm8550[] = {
>  static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
>  	/* CSIPHY0 */
>  	{
> -		.regulators = { "vdd-csiphy-0p8-supply",
> -				"vdd-csiphy-1p2-supply" },
> +		.regulators = { "vdd-csiphy0-0p8",
> +				"vdd-csiphy0-1p2" },

This is an ABI break. Please mention in the cover message why we are
allowing it.

>  		.clock = { "csiphy0", "csiphy0_timer" },
>  		.clock_rate = { { 300000000, 400000000, 480000000 },
>  				{ 266666667, 400000000 } },

-- 
With best wishes
Dmitry

