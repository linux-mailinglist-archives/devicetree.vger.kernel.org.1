Return-Path: <devicetree+bounces-190120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 162F0AEAABB
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 01:38:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C4121C40E36
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 23:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B05E92253EE;
	Thu, 26 Jun 2025 23:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NHmDmM5p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352B2222590
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750981078; cv=none; b=Wd+Lp8E6gtJlqhZt1BhvkwSqeL9JcU+tevbqgtRJcStkMevwRw7mHxoyCp0FyxeNeMWsO22pDfgASXYd+C5w4hsiW/A5lSrADpWjo85hWeB4DNkHGuOxaP/KltkKTY9qzYs5wcBE0985JpN9mcg41Vs05y1rEr5qrl9uSOOuuxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750981078; c=relaxed/simple;
	bh=EGpeMWLKnG9VFthSqSlUF2fQOm9eZpsV2Fv3d8hs0zs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z7TwYlZuseMDAALyBvNTCOCuAa+Vyx8/HnJJL1bO/mzA1ccK3zcF/7ZVeFEjz7KGet9yS8K7gjn8UbexUWgPNpl4GGshOGEiFQT4Tvd5ZU2t2e11kgmPwiAqr716AWleCnOkxZZflZj7x4I8vn34esNzZKLjpUl3HzPFKG8FcIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NHmDmM5p; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QJPiBT016254
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:37:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oNGoQxfq9BmzRNrHBiOpebN0
	WGqD2gPosHFTzl27EH8=; b=NHmDmM5pPEOobkbBiDC814/nRYzrdpLvgK7ea2eq
	FYpbxy1e1ZpO4SHYQ3XyaUP6nCMkstPED78kVJv7N3ZFR1on5T2xOnTuKyheFU2R
	bGqMF+aj/qW5GiBLHPUVObEZB66DGEQFiFSrU4JRIkE9jDo93dS42NW0U3y5g92w
	cvTXUhCODMsPWAXBzGo0FSdfNTvwsPKDc2lICs5YIwMUmxlLSjaME32E4iLbuqJW
	tqgRotBh99dZXW+Aodukbat+q63nzO+QxXmQoFc0aZlRGvohXhBbo4nR/rfjzZpP
	KaTtyIq88R3q2QTId8UIOCNLX4uX+a8SwS/k06Wx33cOBA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g88fem3g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:37:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5cd0f8961so259192485a.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 16:37:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750981075; x=1751585875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNGoQxfq9BmzRNrHBiOpebN0WGqD2gPosHFTzl27EH8=;
        b=cKACyQdEX8S480jGnuSFVZjvAsylmpDSnFO0/994gwQ6d9J1a10qe1bMK81BqFBRkM
         Fm7/KEPbFRZRJqqbyxzG4rsf4CEyWoytBUyg1QqcbgDWoeJ17W7cnreBpXO69JgLcgls
         zp4GpxZjR66xXIEOuJNXBTSvC4e1ug4GTxowuYsZdX1i1z7M3j5YnBApfMkBZqlDw5/u
         javemG7Edfwza8OjGK/wsZWlMExhcbIQmfEDU3Dgp2W3kmP+DdkWNkBw+DMQHRkX5IY2
         Zur/+KKyInYIvjyR9dCqIeJr20frE1EkzOWFLvk0qMvOojTi3VEaEz06ZbqpiUG6WZeJ
         mO/g==
X-Forwarded-Encrypted: i=1; AJvYcCX9h5qDlpdOoR1DhfJtOyKEvRm9aRL6YDaKeRiCEWoAMGPR+RjBOOcr8LFiOQ4iQtO813LYM47I8/Mf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2SnuhooED51PBO/qCgdSCm7eKkax9Sm//G0YC1MeoY8nCzdIw
	RgcFGRSPL/fONEXaRaTZqGGH36BuSis85a1vC1iYdcXfBXbZ8W/eTG3Cw30pcpe7VeFbpn7ECYd
	OhX5K4fSO1JjK7+H6rphVKLfjZ7DYOxeb/FFSGSHHC1gSE5XLLSh8l+7Ldci30cgh
X-Gm-Gg: ASbGncs10yFT1GhKoT/4pznG104QfODy5B5IoDvaEYzR6YelWVyoJL6Koy/bGIRMuJO
	8ZFOHXI8upQmZOi4llaED2KJRKAA0EdcjmJAJ0VYm8RKI0ByIoZPhs8v/eNwm++a5/SpSlYOyUf
	Z69JsSziRwLn0yKqlSemNqK0QVkcrvYVhZaZ25lc44aW/ZXzUd7tFKj1n+JJjtNCzDcCG8qE15N
	rdpUi2EntrNYQgZGrqO3ujEhUfWPiOk0E71V0Fm8n0A5xpNfiQsY71+TNf5sHOB//oZ/OpqKm8q
	xR1wI0gFJX1R+pqUI88JWTgU8RFpsE0dBij4tlAbbdoUC0I3p3Gde1IxFU9U39efpE3BUfGsGqj
	4FF5MATKVg67PnXNgt24ku6f5J28IP7K1KG8=
X-Received: by 2002:a05:620a:1b9c:b0:7d3:f0a3:d91d with SMTP id af79cd13be357-7d443988248mr214251885a.52.1750981074918;
        Thu, 26 Jun 2025 16:37:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtdY9OETvGBAKYL+WWZHvWwuSqbMuPgwVoPJD7Cdt12Xn2UPw8ZnPr9A16Kk7BI7zL9BsGfg==
X-Received: by 2002:a05:620a:1b9c:b0:7d3:f0a3:d91d with SMTP id af79cd13be357-7d443988248mr214249485a.52.1750981074540;
        Thu, 26 Jun 2025 16:37:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2403edsm201771e87.14.2025.06.26.16.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 16:37:53 -0700 (PDT)
Date: Fri, 27 Jun 2025 02:37:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] remoteproc: qcom: pas: Add SM7635 remoteproc support
Message-ID: <id45mfkotz7g5xyuoumlx7oqkprwfue34bmh3plefurvmznq5m@275kadhyh4ry>
References: <20250625-sm7635-remoteprocs-v1-0-730d6b5171ee@fairphone.com>
 <20250625-sm7635-remoteprocs-v1-3-730d6b5171ee@fairphone.com>
 <3dd39700-4fa7-44e6-8893-b46c601d772c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3dd39700-4fa7-44e6-8893-b46c601d772c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDIwMyBTYWx0ZWRfX58d//W8hhekd
 7gaEyu8LhdKti86d7rDq0WBvZ4O8B4n73pgvD3nMglyjqgEhi7M/9qRhxG/swj3kxbG0svSqY7/
 gxjqHwfFaVFIyZUT1MklD0BXIIxuTVhU8ReoKZrpBGk/DlsSGsEmaNV4q2vBoL82NBG3QHbR3eC
 mnPiJ2O0C/JdDxjhuSIfSKZaT1orFvD9IIfLzpGSk4jgFqm4uTFVSV1RGA4W2wf6Oj0NKYNg0ZL
 LCGTDVVdmqVI8fn4tp5lz5gXqHPvTkeKL//3dq+7EDdlCSQ7iEAh56GrsCHB0fjC4hMd5PGJtUL
 M8Wc6duQk2LImkW33MLOhgTdJjuY5ZcsnLlWbDLdbE3zejRSjz3JXlqYt+9o1cTOAgmBVfsZcSF
 3jX4TjL0c5OWoaEoGuLHOCQfgtaBqBrZh+BuU0NjSfPirNsiccKlDe3JyweK992UqWKXjsNG
X-Proofpoint-ORIG-GUID: 8qFBe_VMhfTpKF7vjEfCMymT4pPcXvAj
X-Proofpoint-GUID: 8qFBe_VMhfTpKF7vjEfCMymT4pPcXvAj
X-Authority-Analysis: v=2.4 cv=LNNmQIW9 c=1 sm=1 tr=0 ts=685dd9d3 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=-dTNQW8ulQ0M454dHoYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_07,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 mlxlogscore=999
 impostorscore=0 mlxscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260203

On Thu, Jun 26, 2025 at 09:20:28PM +0200, Konrad Dybcio wrote:
> On 6/25/25 11:15 AM, Luca Weiss wrote:
> > Add the different remoteprocs found on SM7635: ADSP, CDSP, MPSS and
> > WPSS.
> > 
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> >  drivers/remoteproc/qcom_q6v5_pas.c | 24 ++++++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> > 
> > diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> > index b306f223127c452f8f2d85aa0fc98db2d684feae..6aae61dea8d0dbb9cf3ce84b9dbebb77b5aa1d52 100644
> > --- a/drivers/remoteproc/qcom_q6v5_pas.c
> > +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> > @@ -1261,6 +1261,26 @@ static const struct adsp_data sdx55_mpss_resource = {
> >  	.ssctl_id = 0x22,
> >  };
> >  
> > +static const struct adsp_data sm7635_cdsp_resource = {
> > +	.crash_reason_smem = 601,
> > +	.firmware_name = "cdsp.mdt",
> > +	.dtb_firmware_name = "cdsp_dtb.mdt",
> 
> I wonder why we're not putting MBNs in here..

These should be .mbn, yes

-- 
With best wishes
Dmitry

