Return-Path: <devicetree+bounces-245682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 25839CB443E
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 00:35:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EFFDA301AF7B
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 23:35:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52244313285;
	Wed, 10 Dec 2025 23:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pEfQa4Jf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xh9t5EaY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48A42264B8
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 23:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765409729; cv=none; b=eZee0RA0wgeTNYNEI+rTrJUyEXz1qG37+AqrMaEZpoij6SIFZ9QQrCENYXxMEGvtoCLpZdinw1UQ70zsrDzCAg5e2VAdyujUCECFqf3stY1KpP0m5XkIcXxPKgM7/6r6skhNJTeIkBUx8dwuZqd26RC+XQAgFl2sRwk0I6B3Byg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765409729; c=relaxed/simple;
	bh=uaxlZ6IxDbCVW5S9qIzG5ZakA7pUBpu0lF2z1ruINKo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XAJwCrkZ1oQikalb3MWqg2I2ABGQVMvbPX9GpJGmEC3EnormsgGkgv0uuK4ks1c6tWq6ey7LYU/zJXcFl3qiGCODIX+z0WO81MxXjFy3gi2wp9GLtg7mPAZIg9cma+wQXg+XSJNxVSrYCyB2Wa8D7h5gqVnq9pC2MJbKS7o81NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pEfQa4Jf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xh9t5EaY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BALPOiV2991195
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 23:35:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fNsvZ/9g7tyrufjDZiD0tm1Q
	gLerpS0Tm1zlKjIGwAk=; b=pEfQa4Jf/uXZabDdMsRHYtTwt4nwy2JEVGH/kKg0
	Y+E3VTS8tQUn4dftoa3mRA6Up5qC3FPly7gPr99QO+j0ZBlXks7vtzkFY1mvMWci
	z6/0NUuiPZdswKBwoi/ILDVJ37+3LbmwmZoTxTdOzzmtZYFjKoqmdZNf+VNcTN7d
	eBgxSbe6xVYOSVHxVUbBvcoF+4PLC5LmrDU+ww8KpVaBeB0St/qYuDr2U6UnIzrf
	ppyelKy5OKoOogjF2xeTwm4B5xEcNB7Tqe61rr60xOFbsyUr7SCBDsX4upejstZF
	3b9KObreHiVwzj4pl/C7xF7X5pg9THvh8bxKtufkFLSOvw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay75qaf5b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 23:35:26 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-9371fb858afso227350241.3
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:35:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765409726; x=1766014526; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fNsvZ/9g7tyrufjDZiD0tm1QgLerpS0Tm1zlKjIGwAk=;
        b=Xh9t5EaYJ1K6WGZnr4pQmJYijpXvdQ5PkmUMovc0WvnFIFtlzk35PLjLYlN6ZujYs8
         tEDqt1yDlTSIpPWt5v6816bh1L+Dk4aTZ4Z/v6QT5J3zB8SvkiYzyvBY3jarZWuUXBtt
         VE/Iyf+jibZBNamJvVdWEGPT2sW1A5nRQVw7SfmQp/+Z67N6mAfsXKWlaYuXu5h19Qf3
         rebrX5MghHLBFZa8s9lOOVS6Ig4chSuSrhPYaKXhRo9HxBUgs9OSTSbkF1BCYevFgoAV
         a+X0x/ZmGYNf7V7/E6SLX0qwlw6YkJDCMFArfMsz/WYlCayH2xrTGuSFtCpDmuZ5DuEg
         72mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765409726; x=1766014526;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fNsvZ/9g7tyrufjDZiD0tm1QgLerpS0Tm1zlKjIGwAk=;
        b=FSt51fxHddQoI+JOet/SCpDZMXO40OoWvpvILsEUQcG5j2/SI3jwXQaKGIQzUluKoh
         eSwJoIeVniDtQqF+LzsjkTjvtxpJdcTbXuEEE6jmY+YZITeZpG8eH7ACOq/FZDo6J8gS
         Bg9mnU6wvFiq9JPBXlfcBHcqQ+7ppoH9wIog8HkGnx8CDklAEwr5ZSKc5eu6G/DmU1Hk
         oX8ybjEWwA1/KPDDU68sICFLKstRJlqMWjW1gVUyO5PMdtylCh0dQdff1Kgx2KzLAWIC
         xkVFHBCBbzo+cUET/IaoB09qlqG6YRWHeJ9FC2xzfj3rEdqGIkqTv1lO74v3eKrk1HYO
         tKCw==
X-Forwarded-Encrypted: i=1; AJvYcCXtO1gCYLQf3krtLyJ9+qSB851omJR8y4uv//d1bVME5eGFlk60d//wDCVsgsZFZxrlu4+0M97gZp1Y@vger.kernel.org
X-Gm-Message-State: AOJu0YwPq84ghMMZTKvR0rWH7B/0ZezOccKfBIcnoQs4PikQWKTdGzby
	wVo9HycA1zdrnR/74WAOyao2VyquBG3eizPSeonBIKbTz3ZdtuhgyLDMxuxL6qM4XyB8NqwIyma
	uUnN8mtd6roJ42sWsmjvRuOE6J4LqzDpkNn6MNAhPbZ0gW7AI2piP4FbITJkMfLPE
X-Gm-Gg: AY/fxX4SkFnH9rZIID1AQbdEmIQl5WIDJui0koldJLncXeHzaT0epoyKU5+pahyFGg2
	gcAjS+WVKDKNqn1vscBL9C7YUQdvoOh9VXrgNHu7911DHKRgnvoi/V9h60UoF92I3W3XtSYLsVh
	yYS+3ZhFt+EWVixK+Zrq7v/leoQddh6/DWF8qQxc6FFkVasiJsNvROA8jPfaKQKwmgJ2IVh79Ys
	EnPI7/D6iVcyEIZEumCMKosqmsP9kQbBcTqPwpiLQfzTLdh3AUtYsoVYFT6oTHU2xul6vQNI3zv
	sfqFF3jts7PayGwrqEM2/WDmtw+44xlzbQjKu530pATSNehIxF31urPvLciZQLrhn2rLTYtIvyh
	6yXJYyxbunCpB6WNH4K6HCSQWz1M2jHzTaBIj1x9FqLDdV2PRCg+huOx6blDyhAnOZgfjwlUKfD
	0KfQ4lTXg1o3FVdnOnWx76TMc=
X-Received: by 2002:a05:6122:4b83:b0:55b:305b:4e3c with SMTP id 71dfb90a1353d-55fcfc46923mr1354585e0c.18.1765409725803;
        Wed, 10 Dec 2025 15:35:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAlzQd3wZ5b0NMBDv2oVEqfO5xYRhsf7F5DlsuAwRILxGvkoCm82xdE+3Vr1eKEIh+y13Wxg==
X-Received: by 2002:a05:6122:4b83:b0:55b:305b:4e3c with SMTP id 71dfb90a1353d-55fcfc46923mr1354570e0c.18.1765409725208;
        Wed, 10 Dec 2025 15:35:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37fbca6c2b2sm2260211fa.25.2025.12.10.15.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 15:35:24 -0800 (PST)
Date: Thu, 11 Dec 2025 01:35:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Subject: Re: [PATCH v4 4/6] media: iris: Move vpu register defines to common
 header file
Message-ID: <sza4bf46ydbv7vuzghayyocys37ectz2m3m7vyuefoldoq6zd7@w2fzau6y6vhu>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
 <20251210-knp_video-v4-4-8d11d840358a@oss.qualcomm.com>
 <4pxuzfdcwr56gtt4rjgodvtmf6cgprpb3czyrqjktx6qk5kryb@njj7xwtnnjpi>
 <4411f6ee-478f-487e-8f95-bf0959363e97@oss.qualcomm.com>
 <bc7784b8-b63f-4739-ba22-2fd7e2c23928@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bc7784b8-b63f-4739-ba22-2fd7e2c23928@linaro.org>
X-Proofpoint-GUID: -g82wD3HbiX5ATi3KJkGOcK56VqzG09B
X-Proofpoint-ORIG-GUID: -g82wD3HbiX5ATi3KJkGOcK56VqzG09B
X-Authority-Analysis: v=2.4 cv=NtrcssdJ c=1 sm=1 tr=0 ts=693a03be cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=4x2RW2A63U0yQgEr7xEA:9 a=CjuIK1q_8ugA:10
 a=TOPH6uDL9cOC6tEoww4z:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDE5NCBTYWx0ZWRfX+lmy+lsIhPSL
 ne1C9BfXeyxA/ThEfVqJmQZ40b2kAwmlrltGb4ke1sPBrKBA4FPN8wkg2Gz3DG75xJYqwPdgbfT
 Vuf6NzGdsNN6jDU/Zbfdt2AWE5wlfIpRuLH4sBDSTK7Z+jpEjahgYn3racEzOR4sXaQ0RHONpcT
 fieGaGtLq802aHFUZyAAS7wAKbZeGXqBWLOlkaOoF0CFdvLFkpP2kder6p8venT/uGED8INbhHE
 Z7pOFvwWeEMDu75diXgEnlD7MSIgjvwOYnvtWcOyC9ZsDJo/B/DFBTUTe1zdByAVuh/yckbhkM0
 reVP15iOdG1BpJvNc02KE0ALjZmKjt8ZNS8BaPawySXF8NR1mEZw6p/LDzQtFiiAZPlik3Q78Ty
 9aXMR50LPHkH+pKDv3z/fRJn9UKBSA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100194

On Wed, Dec 10, 2025 at 09:26:26PM +0000, Bryan O'Donoghue wrote:
> On 10/12/2025 15:47, Vikash Garodia wrote:
> > 
> > On 12/10/2025 8:33 PM, Dmitry Baryshkov wrote:
> > > On Wed, Dec 10, 2025 at 06:06:02PM +0530, Vikash Garodia wrote:
> > > > Some of vpu4 register defines are common with vpu3x. Move those into the
> > > > common register defines header. This is done to reuse the defines for
> > > > vpu4 in subsequent patch which enables the power sequence for vpu4.
> > > > 
> > > > Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > > > Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> > > > Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> > > > Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> > > 
> > > You have missed my CdB / SoB tags here.
> > 
> > Sure thing.
> > 
> > Bryan,
> > 
> > let me know if you can add while raising the PR, or else i can send a
> > new revision.
> > 
> > Regards,
> > Vikash
> > 
> 
> Its fine b4 trailers --update will pull this.

Then:

Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

