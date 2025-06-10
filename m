Return-Path: <devicetree+bounces-184106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8D4AD303A
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:27:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC4061895F3A
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5661286D7F;
	Tue, 10 Jun 2025 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GhjRt09Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FF128136F
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749543863; cv=none; b=D7W0z0GArKTEq4jowx4DQ6oXPtqrxRL5IwprptgNf4ERCCNU30H6nsZDuvlm7pCJdBNW5YtO1y9ladky/DtKao+i86ZrTxEjMLZlIY7wUhpLiKuQA/FVndXqq3m3smj7cJVOm/hjI1HztGXeThV0WuF+FiY7qr01+VbegQGD0Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749543863; c=relaxed/simple;
	bh=ILI1+nwSZM4+Hy55FKo6eSUQ8cHxKvK9T5wiE7/VuMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UYbXSZ3/rDtTWN498Os2f3ii1+7lkEIT+aFjvfbhAdxCgTrDoNeGFgHznJMWpv8SK+sGcHnap6YBf5hlwUvdR/aG8y2bQHnbJoLwipPFqn1o2ImDDhmDirM+LPrG/9i+iGTnndKN+7vHi/09ZDd0ZbISb1numXncTeLdE376oRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GhjRt09Q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A6e2vR020216
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:24:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nfQulKshIbOX1jA5bT+aOGyW
	1xi4H37s4R8qQsbLSqc=; b=GhjRt09Q08hUFPIYGEqcaepY0iDSLIDTas4FMMFH
	d18mgT4Dg0CLhe5ijOqmnkJQz+znH4utxJOdffFX9+7H5HDJTpE0DNO8rEXCSxrs
	22qNTtZUe2SVg7FaDwVajp37wF4luiBiPPs9UKl1mrFiYdnPkYhHItKsbK+5DLqC
	QCKr9woxMM19e96UOtT/uSpf7qvVjJUZ/4i4A71i4Y74lg13p1FObwIT+BZxcNHi
	8jHhS3AZoSZPKOJ4F5Sc3fxDgY5nwLjDfTCCjycxcddDBym0OJ9RelXYgUr/zSxX
	SQ1EdzgktaGEaFHhTWIj2XFQiDb1zXptcYPnxqWmf3MHVQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476fmn88qm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:24:21 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7cf6c53390eso491512585a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 01:24:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749543860; x=1750148660;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nfQulKshIbOX1jA5bT+aOGyW1xi4H37s4R8qQsbLSqc=;
        b=HR13lL0n/s/D2Hz7JDBnk1Hb8F9PlOvlTIZmhsGc/yUSkJI3L+iDX0BuMFl+caa24w
         7OgCcxt6BRJl32q66KyK+zz4L6Gei8gHJpt8R4DlkJuD9ojeeCdpDWemp7w9DZ1oLxJM
         C/uzMqRuwoLywUxSIu4DatRzbwlgHtuMKTQfqxyXR3p7AidRmAsjNCO08e1SW0WwAEd6
         VZibQTTdC769wMF3PgP/GAA+ozDxGttORXKVfAPsxkDNE08YY8YRX4taB+zmcQe6twYn
         Akb4qgzIwP+Yo8Iya/iWMAAZZucVMgoa35UYAoEoyPq/XqrbQyCaCnhvGZV8irpoWNk4
         XlMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcxuLrpsjm3uZ0b0x1pZ5a9pxk3qFaOAwtK76W055IY0jeroLXIjl+m2f+IfWe9NIEl+0RlVHCojhq@vger.kernel.org
X-Gm-Message-State: AOJu0Yzrf/vih2GZBlitO9PYEg8gdBPL9eFVHIy9WqGSGyVIVLyIM9yL
	+Zz8ERY+WisxbKpj9cntugUhwFH8erkY5DfOGLykl4zZemCVqe/HZ6eA3qWXwF3lwR6W6Hbn9k4
	Tm+AFganhgnjbGJ04dmJdg0NebYiWQuMK8gD7Kxkvm2At5c1C+UARObbGbFxmtUHn
X-Gm-Gg: ASbGnctEmJ4uADX4T0J3/TmAPHV10o+o84Y2hS9o8wJ6tU2TuTHYpN0wYy9YA8+Yi8W
	a50joyf4B2bpioRpbxcSCXJf4MkYvira1XGm387aSeU5UFAaBckXGc2GUKwr35fe0ULua295xzC
	j1pTm1GGJk5E9etcNxPz/dkZ1/tjc4pwnsueOuJW6dOVQPzCY193sHPELq5Z4NdrAud7ixYJk3F
	QSlf77Szq/01qukXjkDNWbaHUyMmapOVgF07vhxfFTMFv0LT5nK+uWIhnJODcP5SpKPZI+BAvrQ
	pcFYR++Dhgq5DFRgSuxna8HUfbip0ARyyMvnoz89arB7MJVmsPfgddzP2IjbpK4o8Wp8ghwkfz5
	i2Wx5iM8+YAKY27kfB5FIhvHag39uM9inQag=
X-Received: by 2002:a05:620a:1727:b0:7c5:a463:397b with SMTP id af79cd13be357-7d22995f007mr2469056885a.20.1749543859883;
        Tue, 10 Jun 2025 01:24:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFL9F5jqdq84IGa3cZa63QXPXnbFFEc0ZrAe1i+Kt381luyBdFVVtmeQ9rls0die/0j0iLbxw==
X-Received: by 2002:a05:620a:1727:b0:7c5:a463:397b with SMTP id af79cd13be357-7d22995f007mr2469054085a.20.1749543859459;
        Tue, 10 Jun 2025 01:24:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55367731929sm1460896e87.227.2025.06.10.01.24.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 01:24:18 -0700 (PDT)
Date: Tue, 10 Jun 2025 11:24:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sdm850-lenovo-yoga-c630: enable
 sensors DSP
Message-ID: <20250610082414.6pfpgqmvdyv3mrnb@umbar.lan>
References: <20250608-c630-slpi-v1-1-72210249e37e@oss.qualcomm.com>
 <e1367b38-875f-4a9f-9dab-9aa9f12488af@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e1367b38-875f-4a9f-9dab-9aa9f12488af@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 2OQHn-2jtJZ50MmWJONu9O-HHET6lhPK
X-Proofpoint-GUID: 2OQHn-2jtJZ50MmWJONu9O-HHET6lhPK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDA2MyBTYWx0ZWRfX9NmiiY8ZKA/E
 F+MDmfWAkCL9+1kX1RZdvtOGVG9bCAB7AoSTRuXGIIx//wTpCZtR8wFFdpS92ghAaE5HhdsrsII
 lXddJUyt8otnrsZphnc5Xop2BGi/6aEcCiu3X26U27jBxxurdeSuV1Oonc5UskqdNyc7fMifsDu
 sGNOAc983Wb1sXUTO6BeGFSDcxRQdpmOPegMVy7y745hh7swW4nQFA+QwTR/QBpnZkRYXZIbOAz
 DRny0WPXbdzlacDNjU5iZs4Ky7ZQ0BpX/0NHmZyoluQY8F8ORDZ2Rv2+PFyG5Jimo1gdTiHBU2V
 YNDeg+2D/25aGQSEeMrxH9JJxVWr5k/GHxMjoe+sytpFM7rdljQot5J8zxkF3hEr5VrBw03457T
 gJS+HUMhGt/aJIzXfBzSYUt2/gxhmdiM+Y0Xkskduk1ebs6Sj5Nca1VzvhJnIu7CBB2MzwXb
X-Authority-Analysis: v=2.4 cv=K8wiHzWI c=1 sm=1 tr=0 ts=6847ebb5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=_eEkAOlJaxbSRMKEyDoA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_03,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 mlxlogscore=513 phishscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100063

On Tue, Jun 10, 2025 at 02:25:28AM +0200, Konrad Dybcio wrote:
> On 6/8/25 6:02 PM, Dmitry Baryshkov wrote:
> > Enable SLPI, Sensors DSP on the Lenovo Yoga C630. The DSP boots the
> > firmware and provides QMI services, however it is of limited
> > functionality due to the missing fastrpc_shell_1 binary.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> 
> Check if the Flex 5G's signing key is different (or maybe Lenovo
> had more sdm850 models?)

Flex5G is SC8180X, so it probably won't help.

Also, if we check the later generations (e.g. Slim7x and T14s),
different laptop models use different CAs.

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad

