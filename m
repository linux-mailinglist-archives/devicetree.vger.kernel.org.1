Return-Path: <devicetree+bounces-189889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B309AAE9C2F
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 13:08:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 271AF7A9264
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 11:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B4F9275115;
	Thu, 26 Jun 2025 11:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gps6Mmm+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E13275103
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 11:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750936109; cv=none; b=nf2+bJ6gtLDNmX3JMOcWIMd2fQan7ih/iTbkzVfOi53ROMpYkxJG6/xqp4UCCTJAhJooXZm13vRrgx0v9t+YM+VriurgqIxtp4NMin3qfYmXIR/QEDGdA5pYC3t1CQJ55zH9jF8es1LAGUubICSqHLq2KU8AM2Ro5cCPNEx9gKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750936109; c=relaxed/simple;
	bh=tgDbUMq0bPViDmaVEOWRC3V0sWB1g3V6Suh5uci4jrQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GUNERjulTSSyx45mFstaE0PXfYHUbma1+pCgCnTArlb5SZqD/XgMU58SZOZBzPz1p/lsQuvD8Fs3TdYyXPjYwh4WEB6gKp7Y8dfSUAYwhEVXmhK4dNVfF/DPQj3Qrs0h5xwkT+RvHlO9VnUqPJ1cTYZcJVvFjddYdKaA7eUj+dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gps6Mmm+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q9xWmg013292
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 11:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NDO94FYMHnaHttKs7F20hKoE
	AFJH2zviQvqSiK66GDU=; b=gps6Mmm+xm+3TP0gdVGy1vO8M37A+AbGqGkeRzJ0
	AAOyeDRsWf/Pc3DWZDFglCrDwpvJ2HSuEWvQa6GztPba/aLqrl3IoaENyi22BcV/
	Zrb7dBXhGulA8JFiSK4xfD5Ym2GUluQvy6UpmWFlQDiZWnY1CN/uvZNTecnXH//P
	FrVUod3s/9ndkKhgLWSF9YRwlDf0qp9RpHxJqa0N8eA2ApdMiCdxof1FceJpEt3F
	4Wyzs9DX/AYtYSKIRBd3qWRHuKk+UTsWja31s7iEGLuxTpeaZ+LU+ZuTN0W5xWSP
	Jx/8FGFzcCj7OwZujLu/5txJuEM/pvuO/vPg/nx5/3MFvQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3bgk2q2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 11:08:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d15c975968so140280385a.2
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 04:08:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750936106; x=1751540906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NDO94FYMHnaHttKs7F20hKoEAFJH2zviQvqSiK66GDU=;
        b=A2hhw/I3j1oO43WVDSokJznI+s6WAURZ7ylKJcJwACu1y0BWgPsXt59AiRPGU8PV0d
         AiPjFuIbUodklgKvf2r4Kn0cdOGfpbB32pH/+KfVFI5NzQiyyrsqflzTRSOlP/bzYgXm
         S40UA2i8el8E+hEHp7NJ8N7z8ezRP6+8a+Sb1U4LuOWzWTdsacgbfGdlAyaUQaZlcSMu
         BM0Nwi9UTgSgm0KRqXqBhkXR+nlCV5sXKNGiosHjBhSks2KpSRlPRf1nysrWbxX5+qx+
         HpAJNwbkQKN6bhJcD/tyj0wTZOpKaDAAWilpIW8H/yty23Z7SO8pRVCtmWxaujSzC8z4
         UwRA==
X-Forwarded-Encrypted: i=1; AJvYcCW5IrdcRCuv7Z/MOYLG2HbF4Kx6rLNQn5DXNr7HZFWiA0JVCxBV83VgYGRO28Z1R093NzAulJtzsGlA@vger.kernel.org
X-Gm-Message-State: AOJu0YzjF4wjlxUKGYpKceGIIqi8/cZ+5i9MeJvHTZp7xmVXRG16z4rY
	YRGZLAx7qdp0XYjAGPrYFCK4B34xYDbt8Ewj4PEph8JleGf9LlPsvNNaBhGQhpmSOAlSLOdnMwV
	A6wRGB4j8EEAuvUMwRiQbjRo57DEOFIE8qeG4k0t9dgbNPAW9ilUjrwMsSdCyL0fs
X-Gm-Gg: ASbGncuWtCV38hF/XO36KrHqvtcWtjzhdvrtyJnYSwntAmgRJndzjIl1zC5Fg67Pyny
	fdP/YFuNQgn3SbxnnN9d/gCGV4zSPNbX6pN7G6TGEUHdDuKIFmCPi51EHP2UnjumZqFDuoMr98f
	RaY/1C8/+B3lECf+vjwOGvYPNkA6NwMD22l803FNxNvme1fo7VN9LTpB9NxnctR5cb8bgxFJRrl
	h6zGbVAWnftt4b+aUxj6Fs/m3xZTFxH+N28MRAW2FdOQKjeWqWn6mXZWYXppNDfG5r81jmMpieV
	NIiFmPj1MLwZWL7bogRFfaRLzvwNbw2rWaAwVJdnIYMeWf55BDV+kiD55VABJnr3+W4FP947Crp
	e+WttMxc5M934T+4JctBflDF8aCa5MKjPqBY=
X-Received: by 2002:a05:620a:1a0d:b0:7d3:f9a0:2c10 with SMTP id af79cd13be357-7d42976ae51mr772802285a.57.1750936106366;
        Thu, 26 Jun 2025 04:08:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYQ7jiX3CY9CqgVQJOm8mOTCxYPh5cLR7q4CRfPMz1xEcvXyNgrncOwmwhAndCAILJnT25Hw==
X-Received: by 2002:a05:620a:1a0d:b0:7d3:f9a0:2c10 with SMTP id af79cd13be357-7d42976ae51mr772798985a.57.1750936105882;
        Thu, 26 Jun 2025 04:08:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e414444esm2545086e87.29.2025.06.26.04.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 04:08:25 -0700 (PDT)
Date: Thu, 26 Jun 2025 14:08:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Steev Klimaszewski <steev@kali.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-efi@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 6/8] firmware: qcom: scm: add modparam to control
 QSEECOM enablement
Message-ID: <gqoba4uu62sh4qxapqkhlufxnliatevnsqcxvijvb74tposf2b@iyonh347aext>
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
 <20250625-more-qseecom-v4-6-aacca9306cee@oss.qualcomm.com>
 <aF0cyOpkjUI4R3bv@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aF0cyOpkjUI4R3bv@hovoldconsulting.com>
X-Proofpoint-ORIG-GUID: Pey4UceQ9X-wW6iawAY47prvDMnow5dN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDA5MyBTYWx0ZWRfX4K26VTDflbpj
 pX6YtXMhtZ+iWkdE1DDBPZ0/2Jd4M5o64vX022QCr8S0kiDYn6wv2UBlpd9l0zcRHo4Mq+Z33Hb
 o7EUTzqgx4aTS4LJaf8xIBH4ME/QFHzUTY1kPovWmYamZKisbxta2n7W9C8UryNi6VyjJh+FfdA
 tV/d7MSZ9/H5YzMjs6bseNFsjbunrH//ElQK4m0sB4n4ZkUkzno5n8ILI3YVNEcugUGfwprF3ac
 D3UJsi6xsY6q3I1z5YbNTUpDc/J+Wxfr+tNNN0l7wj9mPljOUVniD0zM71T0RFxg9msveY141Nk
 tABMRrBzK3f+Wq2o9eL19TfgCx/4wpYMen3llcF/rJeo2TZ1c1TxBJ2DE2q2kuusxdB1kcWuBrR
 D4rGM60jSNmZ7JVR6dynhQ+cw7+QJX8B8oleGUfczGfmnV3l6sneZkt01AcyplIfzLPd7/t1
X-Authority-Analysis: v=2.4 cv=L4kdQ/T8 c=1 sm=1 tr=0 ts=685d2a2b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=H1AuHuLdujuPDguO8vQA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Pey4UceQ9X-wW6iawAY47prvDMnow5dN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_05,2025-06-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 mlxlogscore=999 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260093

On Thu, Jun 26, 2025 at 12:11:20PM +0200, Johan Hovold wrote:
> On Wed, Jun 25, 2025 at 01:53:25AM +0300, Dmitry Baryshkov wrote:
> > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > 
> > In preparation to enabling QSEECOM for the platforms rather than
> > individual machines provide a mechanism for the user to override default
> > selection. Allow users to use qcom_scm.qseecom modparam.
> > 
> > Setting it to 'force' will enable QSEECOM even if it disabled or not
> > handled by the allowlist.
> > 
> > Setting it to 'off' will forcibly disable the QSEECOM interface,
> > allowing incompatible machines to function.
> > 
> > Setting it to 'roefivars' will enable the QSEECOM interface, making UEFI
> > variables read-only.
> > 
> > All other values mean 'auto', trusting the allowlist in the module.
> 
> I don't see the need for this. The kernel should just provide sensible
> defaults.

It does provide _defaults_. However with the next commit we mass-enable
QSEECOM for SoC families, which includes untested WoA devices. If the
user observes a misbehaviour of the UEFI vars or any other
QSEECOM-related driver on those platforms, it is much easier to let
users test and workaround UEFI misbehaviour.

I can probably add an explicit message that if the modparam is used, it
must be reported to linux-arm-msm@.

> 
> Johan

-- 
With best wishes
Dmitry

