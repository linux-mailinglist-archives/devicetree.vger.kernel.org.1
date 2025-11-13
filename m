Return-Path: <devicetree+bounces-238339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3CEC59FA3
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 21:33:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 24FD93526EE
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C7F631C580;
	Thu, 13 Nov 2025 20:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GApEKKaj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fx01DTd4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9793930AADA
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763065961; cv=none; b=IWhgLNy1KdRzwWWnn1Ebk9Q9EU1ecpu6FXiMybUCpPMNdiI8QvYwcBWedmCxTqazhlNz9Cc8VYJL0IerSGgVKIx4v2iUgXR7j5mfDw2HKP/GY90mr9uWfljWKPcm/WFiouyjyZKxqwj5EOAE4OaVIFOvaoKYtFA4b+Pk6MBFY1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763065961; c=relaxed/simple;
	bh=YDhGpfj+ldsg5z1qX5rquYyyg3kbngw0flNYZh0jorg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pCOqsrPVbKoeX21suCOACIhmBENcd+92eODH+ORdfg1bKoIbBXcEXDJC6jDV79Kgkm1V8fleQGy9cDz2wrtkptLxKG+XPxMPYVU2XzGVJa+313We+dd3RDpoLAs+WK1Fd7WrsmVHIoQ7F1gDbiEkEfoEXWbhMcOle2rcBG7iKXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GApEKKaj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fx01DTd4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADELvgX3801086
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:32:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7pKUqjqXkVpLjhO3RA384uWh
	SJ47+BaLYYexXOKAxMY=; b=GApEKKaj8fGhLYPQgCHyRfG/AhY3NoYdW2sEcUQv
	fNVFJ+MVDqWH03zcVRYXt0OE+wgyRmM8pTG6oAN92oxBr6wk36cw13zYXUjh44FS
	CLnHjak7oYPqC5k2Ym16n/uN3ePEr6WGikJXJy84OrviRgXtVRkXNA1thxtG96vT
	5JlRp7oAbNjSzlUEeivzDuyNKWnWdRXQjasmcCBTuq+aev8Jl21YOuooo/dx4XWm
	XU4Ums5qKhVXJoOsKS2IQTJtFoKULynKqY2R4u+do59paP+2G1mz3M/+haEzbp/S
	BOB/kzgKUJR2a0n4ALJ7J2cqOSFO8v2PJZiz6KP+xpjhkg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adaamajka-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:32:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b24a25cff5so379077885a.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763065958; x=1763670758; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7pKUqjqXkVpLjhO3RA384uWhSJ47+BaLYYexXOKAxMY=;
        b=Fx01DTd4m/FEMKFQ3wPbInNIUSkpHPLA2QuHCH9bog4Dkuu0C+rGymJ0c3hE7BYmtj
         MM5WXECWgodhJemRdYxP5/D08d7Nhfab999VMUoxL76ed+zdR25uIx0oh+qFvw7M6qzh
         0HiNWA+f6HiblENIS3+h893Ra4pUeidTo3DN2RUQWcMkRKMp5gz/8YUNPMfawzHc0gHi
         mTqHzlSRRjAAmgmoHjNT0+SyKmorBC5F9RcQCmJ8kaacQutgCJfz7Tx0vSfvIacRWnjX
         ywE5/UbvkRfdJRV9bNI4ELFn0tK3vnBsfTZTJFzD19FZSTi18nEMRHKabqkkmHKwTFcr
         XdAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763065958; x=1763670758;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7pKUqjqXkVpLjhO3RA384uWhSJ47+BaLYYexXOKAxMY=;
        b=MN3DhuW+FQFm+glwrdrsU1jg1jUbZz2LrFBdEyNvUXcBeObwEPG2pGRYz9IkJIkQWR
         hGghxQz6VzXWUXciGwiKcpk+rLj3NbiqoJHz0MA+51n7uNP5G+njvj3D8diXkqX5nUVM
         ya8lBJCexQd0yMah5HBAwY2Ns8J2kjX0nxTd9WDyCMDGVAA/lsdykmyDhUmCWLiL9RdV
         Sk91OXlk2zuz4MP5NpYV+CcP1c5XRQ0QaDRlAFFZzA2yPdzEqLhUr14C+K9Z5CpBbZ3L
         cMhhg7B2NX6E8nTeHl/uFLmfh/O4uwadkDMJf4l6eA5dMqzgCx3eUqIEL1VXvgzc5QhO
         fIJA==
X-Forwarded-Encrypted: i=1; AJvYcCV7+aSCZZqRsx8REn3V8Mkp02LSY6jjOF8ZrO+lK3flMoroN0dQg7Lp4fK5iKouVdhPO3M/RC/NPqin@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2hzxAYWRSglvM+tnInr8OJ3zdCMiCsMtOTW4ZOva7Z60MUdIW
	CSwkjytBvXalhedhFRSOPhMsSwmsFrDHRRBwkF3YQrY+9vCa7cegA4yfTPxVIh7PLTrgwRhSVzR
	VgqCcNwpseyizHr8smz1/Hejr3jHYvGoMD+MftH4G08DkElco9nWZ0drXF5tKlaHN
X-Gm-Gg: ASbGncuc96cQm1zfxUnQw0V+Gp7DD5wq/LjCHcwuExihKUkU2/JKKgmLMB3pJbGQzP7
	e+ME8Fv0ifB3zOgMBllz5Fu+/HTK1/Ey9C10H10QnydmB06M+fW2JKgPXOPXy0nQFO2sLETdTR/
	eyId85xDSirSDXYhiVGUP6MtenF/f4IlgrVDK/cwouVSlRwRADC5HShrFAvDDlxZEEZqj7lzbh+
	WAgHa0VUZl4NtrhgxasPlqRqSF76qLKWLJgc+JVzP/DX9Fe1JVaxq/NKc+VCA7MTOJqkRhz7xr6
	9F7mXgQedcLaI4SHWbma5rWQOkhXFx+NZeGKM/BKnLDGNuvOetksxHf/thOgiJApSnLcHo2K3y0
	Je++iTFy+dLWxLALJLA84R42hS7NyOeK04QMYKlZiEMAVR2jl8p3LgF47do0bCbUVKAB1pKIp6R
	9E8T0jN278VksT
X-Received: by 2002:a05:620a:370f:b0:8b2:1fee:4029 with SMTP id af79cd13be357-8b2c31bdc9bmr106001985a.47.1763065957716;
        Thu, 13 Nov 2025 12:32:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGk5FHB2Bju/65VvUGI0+bU6hUboMV1drFLQJDIgC3dVULGUEERraCph5z1z906w17s+/rZeQ==
X-Received: by 2002:a05:620a:370f:b0:8b2:1fee:4029 with SMTP id af79cd13be357-8b2c31bdc9bmr105996285a.47.1763065957140;
        Thu, 13 Nov 2025 12:32:37 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59580400458sm597998e87.63.2025.11.13.12.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 12:32:35 -0800 (PST)
Date: Thu, 13 Nov 2025 22:32:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: add apq8096sg-db820c, AP8096SG
 variant of DB820c
Message-ID: <wf4h2lwyvgswtv4bgdfidj4vpvykwhu2gri4crvvtd644hf6nr@cnpqi5bmpvm5>
References: <20251111-db820c-pro-v1-0-6eece16c5c23@oss.qualcomm.com>
 <20251111-db820c-pro-v1-2-6eece16c5c23@oss.qualcomm.com>
 <02a9d6eb-e480-431b-bd4c-a35cee170516@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <02a9d6eb-e480-431b-bd4c-a35cee170516@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE2MCBTYWx0ZWRfX2Mml9AwVh6ov
 CZQp8NHqrA7eALFN72c7GiiWqdGnaQUHRfhXgFjkV/6L3XegxW1Q3/DMkkVezafh+u+M0q8SxsT
 TbX0QlMNX0bSr7ovufCe6ZBMwZW0Que3ZenWjTsg78Ex/PuTH+dLYd64QkyPthz6RFUHmwT0CUk
 +NI0aOoHdxXPnbRGXIuVzNTO7XWrtw8vXRVI+s9yEuBbW2sOnj40AdyfKQbZJGADIPXeFu/n4g+
 Pb89aLFejJ8NGKuD8ONmKGqsstkXAYfnF8JT/UKQ+0MamH54aDO4ocrXzxBPiGkKGJsXGwZPSOp
 tgAeqvEcO08fU7+9zxJyRgZtvD/v0uJvnumMhPLMv0YNgKrnMOp+UF9M9FtSOY1Ty5wn3pApDoH
 gU/atPcmmHeREU0fDkSpIaq0sF1VGA==
X-Authority-Analysis: v=2.4 cv=d4f4CBjE c=1 sm=1 tr=0 ts=69164066 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u3Kf3rDHAAAA:8 a=vz8XGB6UFhsza2CXe-QA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=EGheP1PGFffiXWuNiQ4X:22
X-Proofpoint-ORIG-GUID: 5xKcTN3Bx8dCLB6n1I8aHA2eo4bDkPy6
X-Proofpoint-GUID: 5xKcTN3Bx8dCLB6n1I8aHA2eo4bDkPy6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_05,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130160

On Wed, Nov 12, 2025 at 10:44:49AM +0100, Konrad Dybcio wrote:
> On 11/11/25 5:02 PM, Dmitry Baryshkov wrote:
> > There has been a (rare) varint of Dragonboard 820c, utilizing Pro
> > version of the SoC, with the major difference being CPU and GPU clock
> > tables. Add a DT file representing this version of the board.
> 
> So is the conclusion that both flavors were used?

Yes. I have had a production unit with a non-SG flavour. Bjorn's lab
has a standard one too. All units in Collabora lab are Pro ones.

> 
> This product brief
> 
> https://cdn.lantronix.com/wp-content/uploads/pdf/Open-Q_820_Development_Kit_Quick_Start_Guide.pdf

This is a totally different board.

> 
> suggests it was the SG all along, FWIW

-- 
With best wishes
Dmitry

