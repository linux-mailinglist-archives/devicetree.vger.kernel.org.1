Return-Path: <devicetree+bounces-190122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B4AAEAAD3
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 01:48:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E9D73AA6C4
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 23:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B918225A3B;
	Thu, 26 Jun 2025 23:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZSSzIlaz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EFD1459FA
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750981689; cv=none; b=hOvtLut/5cgd6wis8FS7tzXYQap4BMNMAOBXDVKFiA+/QZ4zdW5NH1fm4aBXKDBOhNagXEEuwr6koBOYNPNPax8ExoDd0MYZypmBuxVe0LOC1d55JMot/17UTDB1ZD6ALEHkjfQfvhKyIG5+2UfoQcjLOE5XZOTVEGu0/38P6AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750981689; c=relaxed/simple;
	bh=GJeEEk2k+9QDO4GRwoK8rdidT7Hui7V7SG1hw9vaPec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ihJxbhIisQiTG9YAw7g2oMqQpycEvhldZWdkD3r9i98eJoCgWYfDiQd6G28ai9AarX/TxG80UXpht+tDr1M/f1/V9VD25nFgSmhEXexnF5up80NgnhVNa6JAooiuQXTwRtr8pVxvmIM4uLQZxoZbTaeAiSwMTuf1S4EwO6vrfaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZSSzIlaz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QJ7BjU030208
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:48:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Jcqp3+hst16YWzvGdkkJ7rEp
	8MCwqlwyZH1HL9EQbcw=; b=ZSSzIlazO7dpLTO4uSjFpg7YD4GcFkAhKwAyuZIH
	8WrWmXgW1TLFGI4nEwZUHc54LLaU6TRdXObY+7C3k7VpXGVcsDjm4TfpKOGzjI5n
	YZyccFObOU3rlxP5ibsv71XourvsqCTEB5WYPJuxk0Zk67F8Yge2LmfqBjdbMHE3
	gC76Jz66379TiHtY7jhr/95qXos7HvU24jw6ofabRfQ1iSL+EKcPm9G6V7MiVmZZ
	v1xFih6iEd0KTnl3ri4VumAXXRi7AKinj5MFt5s+2fyW9stn1YEwZ6+MF7VFJKiG
	/CbuT0b1ZVil5KY4ggIWZsIOgiHM7HPKmFKi68rI/eIvKg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4x5be-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:48:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d399065d55so205549785a.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 16:48:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750981686; x=1751586486;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jcqp3+hst16YWzvGdkkJ7rEp8MCwqlwyZH1HL9EQbcw=;
        b=EV1dykyS58LMkEYDtUJ/i1LChtsBJxhtWnkYU2nusQdIfrzFxjGrbjBWGANz1s5hbi
         89YS5TuBgOfMDJO+mhrBiLvd8YVWn1BRcpT8LlT60jD18vs3h99TCGTLFaYYmG7jD+Ax
         inGmQbAgrvVKl34KtpDNtcGIHLbHps+jQnyuuQh0w6W9zWFvjLs+pS8eY25yyJ1Tf7li
         nlbTrg8sxWi9n4PTQ2wbsIpOC5qvjo1bwq/nSAd3FtCsPQgUfJY9Kktjm7AfCoHnsXV9
         PYD4pm4mZWmYAvTBEDp/twa/5cpGpB1Do9d0Pfd0Avoub/lu47oD8kaMAVMCJ532MKKa
         4ieQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsJcTPJnxSruVCNfSg8kfR5xg9z9X8kZrfd0gLhD28qVsv6c2XuYeLEV4nkadO/F4/Wkczh0KxfqCR@vger.kernel.org
X-Gm-Message-State: AOJu0YzaCyBJIzE1TzLLfSWfSnNEQWU+wSZuqgLGWnx2LvHAwHy4gSgf
	90JAMo3fFkte0SW+u4MWDTtFpwWyZkOkhWuqcPK4CJCWrqKTko1Qnlq4k+rVFN9AanwC/bNTIok
	V6+EosMStgv59hgiAU5/oZm2CDhD6YJY6KEx3BevL5YBARrpaYWqnwXLn25KqbNRh
X-Gm-Gg: ASbGncvECzg77/T+4rcIkr6Mz+T5h8xfz6pGECboEvu6P46+3skPiM6gxW5m+fybtd1
	CX67BgBwH4022mANetfN05/2nZQriaTsfWYM3vIGG8f0+BqDn3h60kEa0Jyy3zVaZpr2/XOPEpn
	majYEVzQGvbZXmqli4osBPyXjm4slsn7tZeg9gK5paEkgNWXTCaIfERzrrYdKX1TcOD0KRbjABx
	dRVxTvfSyueVnAsV8IBM3xjHtizJlQgigVRA8A+NoXiy3A1rUEBslZ+fFec5a6UF2CIx23XjIv6
	71kYah3ZSsmN4RnJAs+Xc9+70uCR2p+JJrvoPRkHT6ya2igAwvAbBIr9f/dCcIe4yl+qqbF6Ooj
	+sKENxGnlF5GZeiT5k+2QLiLJfsE2VLlGIMw=
X-Received: by 2002:a05:620a:708a:b0:7ca:f2cf:eb8b with SMTP id af79cd13be357-7d443950f18mr219893985a.34.1750981685898;
        Thu, 26 Jun 2025 16:48:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8LImz54AwYU8qJ3uD+qw0ctbfw33heYi7sSbh/STbsvQec9M5PenlZbd9yKarCy9GjAAvFQ==
X-Received: by 2002:a05:620a:708a:b0:7ca:f2cf:eb8b with SMTP id af79cd13be357-7d443950f18mr219891785a.34.1750981685435;
        Thu, 26 Jun 2025 16:48:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550be2a0bfsm126329e87.153.2025.06.26.16.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 16:48:04 -0700 (PDT)
Date: Fri, 27 Jun 2025 02:48:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org
Subject: Re: [PATCH v4 5/8] firmware; qcom: scm: enable QSEECOM on SC8280XP
 CRD
Message-ID: <wqmnh7x7pi3tg5ascnfmy7lzjbe4wbmcf4ycjndtovbxkxajsf@ghayhqaixhnj>
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
 <20250625-more-qseecom-v4-5-aacca9306cee@oss.qualcomm.com>
 <e5e3e8f1-4328-4929-825a-3d8e836cf072@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5e3e8f1-4328-4929-825a-3d8e836cf072@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685ddc37 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=Xm4G249AS8QJ8kFCN1QA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: OsVB8s6_p1V2AhRzyVlqeXGH5pPXWllv
X-Proofpoint-ORIG-GUID: OsVB8s6_p1V2AhRzyVlqeXGH5pPXWllv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDIwNCBTYWx0ZWRfX4/8NBM7e1QPx
 esqy0eE9GnXGih3Bl/Iniqv1TX0NvWuP10M3GQ1XJl/ezRmPQfz0vmAZJN9aCaYwJg0txcDGgI0
 MUYFO+XgdNYb6GNpv/ySN3rxTERiqqY7sHWqEmkxx2zOia2i086Lbx7S0zdDOganWcTdOd44Yem
 PIEn8JDsY8RQ0W8zXLkQ8rfzJ56v22p7K1P7VoqrMbMJDbwrnR8BHJV0t49yrFxHD3T0xlrL6p8
 KQ9PfJn5KtBAtcnGhQLdNM8hHwaGxALdRfPIvcSWPStFJNWnvyd1mqmuHIJKxvigcGb1Oc94YwK
 Jb7WqpkKjiNOiiYAaaqwVGOqz69OBn8b+uQve6fvQq9V4ajiOCTcze1ojcLGK1od+3CNlTcI963
 /pVLBFvbL+qP/dU9TQE3Hysqsmg5Scpo6ToaKzZHP7npXYD02YYdCnblMpzCKqH/P3ztKINB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_07,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=999
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260204

On Fri, Jun 27, 2025 at 01:34:56AM +0200, Konrad Dybcio wrote:
> On 6/25/25 12:53 AM, Dmitry Baryshkov wrote:
> > As reported by Johan, this platform also doesn't currently support
> > updating of the UEFI variables. In preparation to reworking match list
> > for QSEECOM mark this platform as supporting QSEECOM with R/O UEFI
> > variables.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  drivers/firmware/qcom/qcom_scm.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> > index dbb77c3f69ddaa931e7faa73911207a83634bda1..27ef2497089e11b5a902d949de2e16b7443a2ca4 100644
> > --- a/drivers/firmware/qcom/qcom_scm.c
> > +++ b/drivers/firmware/qcom/qcom_scm.c
> > @@ -2005,6 +2005,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
> >  	{ .compatible = "microsoft,romulus13", },
> >  	{ .compatible = "microsoft,romulus15", },
> >  	{ .compatible = "qcom,sc8180x-primus" },
> > +	{ .compatible = "qcom,sc8280xp-crd", .data = &qcom_qseecom_ro_uefi, },
> 
> R/W works for me (tm).. the META version may be (inconclusive) 2605

I'd let you sort this out with Johan. He wrote that variables didn't
persist across reboots.

> 
> Konrad

-- 
With best wishes
Dmitry

