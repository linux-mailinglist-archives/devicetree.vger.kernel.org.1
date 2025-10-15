Return-Path: <devicetree+bounces-227190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DDBBDF705
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 17:41:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFF7A3C73BB
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 15:40:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9CB32C318;
	Wed, 15 Oct 2025 15:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fFifcm06"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F84322DC1
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 15:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760542843; cv=none; b=cbF3hlrFFRcFhmNctmwLQA7HVEQms5MJjSNh7OyxKOTaUVyOqD2D5DtrpP6u6u83jZIHqVeV9BVHCEJvXf2HsrAwrsYEwXyQ78oJEdwNgQvTZgfhQyQQdz2T9326l3vDSws3UOUyo0fc4UUR4d9494ZkC8vk+DcxCI5J/uFjAfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760542843; c=relaxed/simple;
	bh=8yIzlOJSXfO6YXhbSck71FcfdlxfIEO0W1rlhZ3Foj0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=heC+7y1gl6Tyj8wAcScf/FLPAyBzvWTozQZQgTnTuckBNksVwmlTfmmb3ENOTiCYUV8UkhMnpa2MTep2VJxRngZXRwEvlr7ktziIeS6yR7Ym/suvlUC+dUED7IWgG+9FGdo9KyNDjKHgATgIz/b9jcXtVfvsAlAXbzq31GngriE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fFifcm06; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FA8joQ003418
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 15:40:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=v51xGGLBzfthpJ6uAG1FtfpT
	PpeQpU30JZDZNcynxBI=; b=fFifcm06MJtVgPqG3E+gCnYpVvRuDmp8Kd5uoQhJ
	KU8sxlsS/ZEY2VcwhzOQaw5i1Qtdshl/deNlyb8C9HL7eC0cQqMiBfIz+wje3iFa
	evnphpSb97MAd9bPeNhrZxG6HlnL530o9Ej323pF1JFTaBf54WAKcsbffE0ujUBe
	zZrvzCnoyKpJk33+0stXq639TgJd2N9UgnwjFHfsjKlaCifQlz+1yU14zd464FAT
	uINnJbFeeEXWLjF3ZrNXEMUfP00/kPcglhFjYRRjRPstwTQy7aQryG5+Sq+8K9S3
	v3GKHBAfFKsxohCoV8AEAKDVkeLxiTuhey1ErGpQ0gKqwQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8kjcy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 15:40:39 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2699ed6d43dso112123585ad.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 08:40:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760542838; x=1761147638;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v51xGGLBzfthpJ6uAG1FtfpTPpeQpU30JZDZNcynxBI=;
        b=JNMuXF+WzdN9Uu9rzMtTxaclRyepoq0ue/WboN/lzE2/zfvdyf4513zKMZ/brmvJB3
         VYN5FVB9eEIAuDmA6O+dCv8kuvQS4xhHL9SV/fwHlXlWbPxs6efaFD1wEIoX8rOpGDco
         L/S7sIGVva3gM3W5m5sQrJWWSk9i+BjlPcF5BQOOXA4r0HWG+y5gkMrWGdXfwVcLB2/Q
         /G3A5lc9URmifwX42afzx+jwu+hehgKTMaXr6rkXLbsQG37umcbDrqxS4eDWARvTGfne
         16Ond4NAMPlHmqJhdOaWu3R5BY713EDB8CY3wxJL40g+BitmlCvshp/w1TcVqqra/SSb
         gJUw==
X-Forwarded-Encrypted: i=1; AJvYcCUBs1MbV+dYJlqsxqJhe2n9KbbyMrfHDg1P9s87mWZRZ1jo/AphNb24/YAMQGAbltHh4JUdtW0RcX9w@vger.kernel.org
X-Gm-Message-State: AOJu0YzUJgidAti9/CtkLm4HdKNlqpqfuryOQ8AjpumnHUGJ45AAc9fN
	dlulSXe9nKv3taNIfGQEU8UQmNJD/nhFRcE4cyXHiZAlHeoUI/tX52bJjr4khfGzWGEkOleWWt7
	q2wnEeRdeC4bU+JkviF20hxAvnLoJ7MyKVcWnBh2DUPmqGXUKmP9qo01gXCnMOOJj
X-Gm-Gg: ASbGncuDmccxnd1hsTn/6Hbh/YkOEd0JZSSD1EpFFsUTByHSBo9Mg2d5wX5cbJooLLk
	WYEpvi+Jd/JDi1cMZIodJoA0MrbaAjQF5SGN8wkDhCuaQRGZN8TcBOLPXDuCa0Gz7ayKFy0O0D/
	+dfg7jbj/cmH+aSwSovTLKEeZJrkFXCdUilcpP8varntS7P8xrkzSo2HE8AaUe+quRAP6xe6Kfj
	IdyYh2h4iWiCXmELxBoCI453IWafvzURAp5oQyc9XxUBGn9EL/EYs9dG/cqB/zJC4CHl7fdGJxh
	NsdcDd634sYoHIFEzaYHG8NQ9UjPFCYegWJSZXvkayrMhLmB3DR4Q4Pw6AVCsQfXOHlEskp8XMN
	xpDmhZmlRyhEAUAs16sbx82UkgA==
X-Received: by 2002:a17:903:94f:b0:250:643e:c947 with SMTP id d9443c01a7336-290273ee209mr362922935ad.28.1760542837792;
        Wed, 15 Oct 2025 08:40:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0flfR5h7EFdAnGkZA4xK4OhgMnYLtcfmupB0TvW9tUJ2NNuuPUm+lRnMe685BmxN8pgVIOg==
X-Received: by 2002:a17:903:94f:b0:250:643e:c947 with SMTP id d9443c01a7336-290273ee209mr362922665ad.28.1760542837307;
        Wed, 15 Oct 2025 08:40:37 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e1cbcbsm200774325ad.45.2025.10.15.08.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 08:40:36 -0700 (PDT)
Date: Wed, 15 Oct 2025 21:10:31 +0530
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/24] arm64: dts: qcom: glymur-crd: Add RPMH regulator
 rails
Message-ID: <20251015154031.hbifj6khno3gi3mz@hu-kamalw-hyd.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-9-24b601bbecc0@oss.qualcomm.com>
 <a49f3f75-c882-4635-9be3-a433b7fe32c8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a49f3f75-c882-4635-9be3-a433b7fe32c8@oss.qualcomm.com>
X-Proofpoint-GUID: Ilh15b8MkvdbEAEIYn9ZIGvb33GUIn-4
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68efc077 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VNp9kv7xENmXbawpSbEA:9 a=CjuIK1q_8ugA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX9ywN3JB2zmvM
 iP58O1hzd6lcWZRdreKiFHQ+9cWh7qV8YV270n05amNhN4O1BgxdRA2gFRf2HU5cs55WsvOCbqY
 gkXKVgFUdDm+jkv1fzFqFqEPy47+8dLUkaYxOiKWp8lYoAOAydfYVrGFM0Cbc8ZsovF6CNwMxJk
 gOvkMLcrzOPQxdvIerRIfJJ6OO6zsJn4OmtTHuQDeDWJy/n1ZWb0RoBDX8/XlXWnBRiiC8BfLXX
 Ue0s47pWmI6hN6veP4+rDy2zLh/GyMmQVnOzX0RC9EPS/4Nenle9NOAe0Ltq1vRUqDkZ8802kJ4
 OWpblA9DkFMutmV0bqSA+U5yEzU5YFAU42KEWzH/T5soQ/sToreTYWGd6rC1qKHjdMGhzDqoUf5
 B/YxVk75nG50FIXoTu2E8bqohIkyuA==
X-Proofpoint-ORIG-GUID: Ilh15b8MkvdbEAEIYn9ZIGvb33GUIn-4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134

On Thu, Sep 25, 2025 at 01:01:56PM +0200, Konrad Dybcio wrote:
> On 9/25/25 8:32 AM, Pankaj Patil wrote:
> > From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > 
> > Add RPMH regulator rails for Glymur CRD.
> > 
> > Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +	regulators-1 {
> > +		compatible = "qcom,pmcx0102-rpmh-regulators";
> > +		qcom,pmic-id = "C_E0";
> > +		vdd-s1-supply = <&vph_pwr>;
> > +		vdd-s8-supply = <&vph_pwr>;
> > +
> > +		vreg_s1c_e0_0p3: smps1 {
> > +			regulator-name = "vreg_s1c_e0_0p3";
> > +			regulator-min-microvolt = <300000>;
> > +			regulator-max-microvolt = <1200000>;
> > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +		};
> > +
> > +		vreg_s8c_e0_0p3: smps8 {
> > +			regulator-name = "vreg_s8c_e0_0p3";
> > +			regulator-min-microvolt = <300000>;
> > +			regulator-max-microvolt = <1200000>
> 
> Both of these regulators, having no consumers, will be parked to 0.3 V
> (the lower bound)
> 
> There are other similar cases in this patch

Ok. I will remove the unused rails.

But just wanted to let you know currently i have exposed all the rails that
are allowed to be controlled from APPS, mostly these rails will be staying
OFF if no clients in SW are there to vote on them.

But do note that some of the clients may be getting added as more features
get added, as lot of these rails are not unused in the HW. The client driver
just isnt enabled as of now.

So wanted to check if I should remove ALL rails that are unused in SW?
 or
Can i keep the ones for which clients will be getting added in near future.

(i would prefer the later option, if that is ok with you?)

> 
> Does the board still boot with all the expected functionality with only
> patches 1-9 applied?

No. just tested, it seems not able to boot properly with just 1-9 patches.
is your concern about squashing of the patches?
(just trying to understand)

> 
> Konrad

Regards,
Kamal

