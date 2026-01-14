Return-Path: <devicetree+bounces-254800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CECD1C934
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 06:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E45D530AC948
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 05:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE24233032A;
	Wed, 14 Jan 2026 05:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W44kEkzJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fXdPJcdK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A5632C331
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768366815; cv=none; b=rc23JFWaqxLikZHdqzB+9fq3HLLJHxSP7TYH4IR9SaULcpBtNrd6uTBEzIAj1Jj70jYPt8J2EmlNzUVW2LD1dEaAHO29HoW12ZYmZdE22HxQz1YMf/JrDaUN8vKlMNZGiEOu0HzRqzaBPPvxINcMCzqh1hfMUKFq7JbfN3WvkL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768366815; c=relaxed/simple;
	bh=Me0uaNCOCdmDG93e4FTUyqIjBV+w7Z2GzDu76zrkl5A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aVvAyiffpkpGwuo3EPTNdYDY4csXJt8reD7jL8FOJmQXorBsCoveiHVCwT41RBxCnsQNdJ2FB4IDRogEYB1u5XDdpFny8a5OSx8aMqm1D0YaWmCVDmNCRrvC+ciE2UPqpNWePvNgogEKS3RRBOO/7XNGVS5R4HSmTU/KYlio2f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W44kEkzJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fXdPJcdK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E4NYC82067341
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:00:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZBV+73iqbWqm/MmkEzJmjXDj
	m9RpMn1YYDYUK/AL1VA=; b=W44kEkzJ+qgNefc987D4mcbXWbNK6nMQGv8A1MAt
	Pv8+MkW3fEBePb9Q+ewgJB9Ox/nbf6njnOY5kQcU4y6rpV1PoJRvA2HSQLA+n2Zf
	OMbW11mViCmFbDxCCndbKATEbIfU9NqHYXkx32g9rJGIQEk8ojY1AP/nNXzbxBeT
	GHYacBiq7J4ONmPQiHH3Ym69jcd6kxsq5pymM8a6PhKHz3L34rqTgSAaZNx/n/PX
	rnOcgLgvtPNTGJVQPVMqgGiRaiNqiesc7hdKRnp/+W//y2uTCZMs7cLuOrNnHKLt
	Sl26GwsIlUE1lHnZTPxr83aXs7UGURu3+Nj3qj7xKkm6WA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp16x0pd0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:00:01 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a32bd53cdso265425346d6.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 21:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768366800; x=1768971600; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZBV+73iqbWqm/MmkEzJmjXDjm9RpMn1YYDYUK/AL1VA=;
        b=fXdPJcdKzaqDhBwNHodenkQDL9u4+JvvPv3VBxku1OgAGL820fEoQ+zdVcDIIaGm6C
         U+ijjLwdypoVM9H4JJcLfYqKw9Nt/n4vozJl//8Jbgm5ALJ25z1xL2EUNcobJSa40+u1
         qlH26HFtXpavJ2iTxPk17DeJ21qSd0IGLOsaU32QRhgs/mIA+Lr3/IoRJ8u4LhZGB8Tc
         uCamoRH/vkIlTt4Q4OTTfZSqz8wk28ICGo4p4VEpiYj46YUgQ15c91s1TKniDP4KD8R9
         /ECE+qHPXnowg3STQqSCgyPMPoMd5yyxHJPA8P8a4qHdfQ29d5HOwY+eMbZ/THUFdZOn
         0tzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768366800; x=1768971600;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZBV+73iqbWqm/MmkEzJmjXDjm9RpMn1YYDYUK/AL1VA=;
        b=jBnH+UzrWHAX1NfZ0UUqgtm8ssp4n4a8Bt5NkjANwYsRifXdVfn9InD64NqQ+tY1Ll
         sJvWSfB410tmUvkJPY5RY10UEILSOrkMfA+t6q4BVugjR/w0MjfV8Ll92CSlE28++99g
         w+bWCEXtLJDG4/Oq+lPL57STSXXS+vBLeHoZemEQD1yNl9H/DReV9xo/JA53i4HVeB8j
         4faoEJcGHpQwzSPcbIVZTm6w3LYi6ewpIQYgJS7H/a6s65Or0XmOP+oy4rF8Kd/IThvE
         Zdv26HiB7MFzYm1zxF4VUDD1r1/3a08Y9ZQUqky98PRr4QUrWPl/ua1fS4uA/FOkj02R
         jsjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOlhhhPuD/NrSmUHoIBs2/w5Ot5kh7u4FtwvERAZY3YgxOFbuCXILUvR9EjLbX/Vn/YOQSUGz3dqq+@vger.kernel.org
X-Gm-Message-State: AOJu0YyJxU7utOSUazlVwlIW0+SxZN6/g9tHmsMJ5EFLQ59Kq+4qjdpx
	Lrcdex1e7SxFAtw6rgVQT6jt3ydvNTAsKLdIxoE4Btye7Gee3tQ0W7TnmSnUXZFvO7QSD7GYB6s
	NFhsWnUm5Q/ivkIdc//iJvzOlq4Si7+LCWCrK1eKCBEs5RlOfGGk+uJzAu4MHXuwq
X-Gm-Gg: AY/fxX42gaoAZvh0QqlMGxfFImNJ/gxSqJ6HvGRATf7Y153USKnHjFW0qTFu63TOSch
	8he1p44VBzF7cG+y6PdNmRcH7tF+stqzuiWuDEzuRd8kj0PpNIxm9H7+h2u+2CH1ORvT8Lv9EZT
	+UFiurhDhnBTbXTy6319Ko/6CaVGHZx1S5QCAsRPatjya4EAaKoZycuzYy7mALkRSTqI0HKQQyb
	jGVFlL8OLDpp6xGJtGr0Ur3C8Z0x0gEJTwsd8kCmWqrlnjzVTqoqqEYI2twefJPv3f+Z6/y9rbh
	59QSHHEa9g5rFUdUP7DqfRAySI7rRTrKcHWQ2jAVV96HGVyWdhHbYnR5sE9WNMIsgDFzTAZ/nlz
	MICTpOWqNd0rcGL1/x/4pO3AWHnZiOHjDlwJlc/sj/lP3HfMOOb9UrbdMtV59148/9YGSZ7q9O1
	dMFdby5PKHJnjZ452OUDjsfUo=
X-Received: by 2002:a05:620a:25ce:b0:8b8:dd7f:f032 with SMTP id af79cd13be357-8c52fbde068mr210513685a.78.1768366800166;
        Tue, 13 Jan 2026 21:00:00 -0800 (PST)
X-Received: by 2002:a05:620a:25ce:b0:8b8:dd7f:f032 with SMTP id af79cd13be357-8c52fbde068mr210512585a.78.1768366799742;
        Tue, 13 Jan 2026 20:59:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba101ac6esm344536e87.15.2026.01.13.20.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 20:59:59 -0800 (PST)
Date: Wed, 14 Jan 2026 06:59:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: merge duplicate references to
 pmc8380_3_gpios
Message-ID: <xgxijlsbnslrdcrghmmdrpvnfpnxxwhhnqdkkrj6lh7lpcjej2@mihxs35ofiir>
References: <20260114-hamoa-v1-1-c96ab354924c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114-hamoa-v1-1-c96ab354924c@oss.qualcomm.com>
X-Proofpoint-GUID: VR8EH1pf4lYEmqXc9aeo-kYgFWdao1H_
X-Proofpoint-ORIG-GUID: VR8EH1pf4lYEmqXc9aeo-kYgFWdao1H_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDAzNSBTYWx0ZWRfX0Ig0brzhqqQ3
 mJcTTH3QHUaTEDdMGbYkzOOLmoNHSEA5EiO77W7sXKyrZ9taYuQ92qOh596cSJNRkJRUDBlFIdz
 Ize0vZUlzc9W68Sm4ZxZH4+HI62iuCuekj/i1/AoLT7yNrSCnntci5U9gOWIqsazHU4iJPgZRmP
 CSMAgsvQJy+T2N3am/A6kUcGFFXvbQ0cTUzpdEQgD1fR0jfRdehyNmWw3Gx4iNc69zKM63yN4hG
 z6FScBezVXLrl2qd0V2Lct/CwOCPAUB7kC5Z20jqmtTa42Egg2OXpzynlqCEA/oKISXGCy0InaR
 +J4FdXtYqDzCdmhzLSCNWSPWSc1E9ULZD36j75/4w9bnhIszjoHOHYxzRDgJ7LK9tfq18dtbm/W
 AIfSv0LBodBe/sxsRrJdtfkvxgJ6HBQxdYtWUg2MUPDccaWn6/W/0MQ6qUmKPPf+a7sd5EpP/NY
 oiO3QDJgeJpkSH8hZ2A==
X-Authority-Analysis: v=2.4 cv=JvT8bc4C c=1 sm=1 tr=0 ts=696722d1 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=sQY9gcyLkgkrsXYK8ucA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140035

On Wed, Jan 14, 2026 at 12:30:43PM +0800, Yijie Yang wrote:
> Merge the two identical references to the pmc8380_3_gpios node to improve
> clarity and remove redundancy.
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 2 --
>  1 file changed, 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

