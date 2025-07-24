Return-Path: <devicetree+bounces-199527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE80B11161
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 21:08:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CE2E3B967E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 19:07:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 934B22ED151;
	Thu, 24 Jul 2025 19:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AxghhJcd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB913223DFB
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 19:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753384074; cv=none; b=X03pHy/VhcZxrUCVjDJ8mtF8KLHeINPuQPA51tLanbdBmm7F+gB3xb1m/hXg2Ne1cTKFRRy7Y/IKU6O1WkgH1jIXioJ2n9RfuZFU7NwIcvO6ZL2gOA1MwOvpQZiMFNo1OigzUX6FjmMGONU8Qrb2CMoWs66MQumTUOfIdsnngzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753384074; c=relaxed/simple;
	bh=26XDVP5566GAnWIYeOLHW+dlq96NO4/Osy8Txa6q1gU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QGRZxvrTOf/3Xk9P6vZpYvOaGXJXqIux6DdzjZ4QS1QQn6+Y+svuRsuqtvj3AH/WFer/5MVhYRPrTYTEjjB6+UR0bf7j03+8kbPAiN9QnZ1TnPXsO6CGViidl/hpGjyNYPa/L07KwxaPEZe+QOpwDOgs4guvfu+oszB9R6a0UVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AxghhJcd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9nc6q005783
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 19:07:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7gLTH/iPfyYd7ztc/IvTC63q
	u18XmYjP9dX1gtpz5vw=; b=AxghhJcdmkVlV8A/LFkqNi4x3192Kt+rBYmEFZaS
	IF7YKhOFYHTyTug3dzCfg2+4qN3KYpuGaXyxbXCUheRyYPklVK/MPsIhEDJ4RJFP
	TPKy9ekePpdtgXKz4jpf/0rHQlySHIOWR0RHkY5ViBo7wIeLNxHn5TrKBMAER/9q
	g8tvXBFkD7/RjEil2nODxKfNoo36W/+dNRCJ+Bd2YPL07QY6MJXu0xRadVSOzGnl
	jXtQ8vpEyIfhZvlKYDnsZ1w0v80Mim1ES1Z90l7Ju2t7zWv/Olfx0JYmukfLw3xk
	yv8TvWPe1t0RYRZxOiXZro4NPxURKkkWK22cTg+D+sNfEw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48047qhub1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 19:07:46 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fb01bb5d9aso21073276d6.3
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:07:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753384066; x=1753988866;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7gLTH/iPfyYd7ztc/IvTC63qu18XmYjP9dX1gtpz5vw=;
        b=oI/xjJe60jJkPXAKNCectg1jzEIuiZ4/L4H8nOpgYAkqA54OZep/EEXTc6HuvaeG4V
         wBG4fF39iWFEnHipVkQLgSY33FdECSLlnm6xykMJAY0KAFMUVYDp0OLOJPPh/6OPLJZF
         MoTOb3ObU1bqDA5JDskd6aXfSo/pewwzR75B2tDYCpuBk4wEYh6Umv2KbhmOzYU0Q06X
         lY2AGCavaAD4D/+d14YXfUBB2ianMnSO0VNljJ19++F17nZNnKJ1ScNoz8Xi25Cx//Zr
         zFLTFoQQ5y/+KUstZsOGiSvZJjb0sWD4XjnLguIpIcWmnzzIoXHpaK7c2Kh6Ky9Z558x
         aCTg==
X-Forwarded-Encrypted: i=1; AJvYcCWYDv51C7CzAfrAVMy1PtwNqtYZ1DR7QlWZU9XIAhilXJt0ldBjT/fL/LC5C7SoJbru4n9J1839kFqF@vger.kernel.org
X-Gm-Message-State: AOJu0YznRgN7mMUymeD0dVDeRf+FnaSRzHUVBeGK0TKUPsO9SR+CgdLq
	ZWqUmaj5RH36tsLl8wbMLOD7YB8QXmDP02gwz9CfeM0mCGxQDBxOQK1qaEEQjsuVZ4CpQt+zCNu
	3LDG3iewxF9s0w59v6iNtEMnSCjzRc3KNQnc2o8fW8KgVJdmuDxfC+2duovhH1Uu6
X-Gm-Gg: ASbGnctdzu0K6idouC9PNlp5LdTcEIRqTnBz4NbOUKpZBC3ESl4Q7vkqkbA3aRyUAFd
	Tt+A3wtmpirkGfNM3kbEBcrpphgRY8P+8iinZmHDfmumBxVuSqYBeJ0yG9TMgkkFDcBpUXnHd4O
	cqzpyn/u91MGQVoxlNxWQUjn42UlLt4M4GSDCh621UrCLejNKjrn1jjmAVJMkaehEj2LHv9CTGx
	2iih5ojgDSLlHKOv+nHguDXADGQtxamhHOwfO5op33ZaYh+iinqZnY0o+VaxsDN2M7yvhOMoJYX
	KWK6Hfbe4gKfWS2y1u3D5a4ZiWA1ejUYVix1VgaoCL1wSphCKfZ9eJI/yR60NC17pa8bE4lZUlm
	23T7rnoeIh6iWccuXATK9wPkqBeLl90ftDoKf6kO2oGwUTTydsOd8
X-Received: by 2002:a05:6214:509c:b0:704:8e3c:7b4d with SMTP id 6a1803df08f44-707004b3635mr101404346d6.4.1753384065353;
        Thu, 24 Jul 2025 12:07:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3ezANv2YxvlF9vrpMbyVqY3MqWwG4tyluV4xdmyQRehKExXlS4PDANRKq0ZCM55RnwD9Y+Q==
X-Received: by 2002:a05:6214:509c:b0:704:8e3c:7b4d with SMTP id 6a1803df08f44-707004b3635mr101403786d6.4.1753384064736;
        Thu, 24 Jul 2025 12:07:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b53b35dd1sm480953e87.65.2025.07.24.12.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 12:07:43 -0700 (PDT)
Date: Thu, 24 Jul 2025 22:07:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        kernel@oss.qualcomm.com
Subject: Re: [PATCH 1/7] arm64: dts: qcom: Rename sa8775p SoC to "lemans"
Message-ID: <blexn4zno3azgfbh4vzh7daizy3lbh5s26z6sivtyqgb36phnw@neorhsyqrgz4>
References: <20250722144926.995064-1-wasim.nazir@oss.qualcomm.com>
 <20250722144926.995064-2-wasim.nazir@oss.qualcomm.com>
 <20250723-swinging-chirpy-hornet-eed2f2@kuoka>
 <159eb27b-fca8-4f7e-b604-ba19d6f9ada7@oss.qualcomm.com>
 <e718d0d8-87e7-435f-9174-7b376bf6fa2f@kernel.org>
 <fd1a9f2f-3314-4aef-a183-9f6439b7db26@oss.qualcomm.com>
 <3cbbace5-eff9-470e-a530-36895d562556@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3cbbace5-eff9-470e-a530-36895d562556@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDE0OCBTYWx0ZWRfX2oQvKnzUuCK4
 T4jo4NY99Czu4l4C8FN0KgiarwSVSzEU2+6h6kHEy41icvOhVfnCyxbYeepB/D72Fd15kznEPJI
 6XqkUNqhFvyVuTLTBhitaSeerHZOoNz98pL4PuMWg/YID1pxXEQpFcJckdZtX+ELlEXc/HCUsan
 zmtTIRnxbMJLKycqFZmI+TE4U5IPpVH4uMlwAvgoecqUPXXW5WUhHFeN52k5kAlTy9D3LnN/n+C
 E9Aw4dwFGyX4wGns6g4Wkov77KcA7uKsMZ95XWo8KPR3P1oSdC8C6foMqvbTbeWsTkfwTDr0aRc
 xrtTkhuHFbnCY2lwNO7TD6l1q6HiB7FnRYYyLhv5KkdR/sQP9j1t+spQ5CwAuXJ4mDxndU4UvXg
 Fgixt+T182Xf1Xhcfh+mthat02nlj9h7J5q9XNQglpqlVr9EIZirOwQC7/UdjaDrOQBK+eV+
X-Proofpoint-ORIG-GUID: 82XDwyct5vSzdnd-017ZEnBLIjqChMC8
X-Proofpoint-GUID: 82XDwyct5vSzdnd-017ZEnBLIjqChMC8
X-Authority-Analysis: v=2.4 cv=IrMecK/g c=1 sm=1 tr=0 ts=68828482 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=PDmsC6A1k5bsBzTUqyEA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_04,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240148

On Thu, Jul 24, 2025 at 03:20:29PM +0200, Krzysztof Kozlowski wrote:
> On 24/07/2025 15:11, Konrad Dybcio wrote:
> > On 7/24/25 2:51 PM, Krzysztof Kozlowski wrote:
> >> On 24/07/2025 14:47, Konrad Dybcio wrote:
> >>> On 7/23/25 10:29 AM, 'Krzysztof Kozlowski' via kernel wrote:
> >>>> On Tue, Jul 22, 2025 at 08:19:20PM +0530, Wasim Nazir wrote:
> >>>>> SA8775P, QCS9100 and QCS9075 are all variants of the same die,
> >>>>> collectively referred to as lemans. Most notably, the last of them
> >>>>> has the SAIL (Safety Island) fused off, but remains identical
> >>>>> otherwise.
> >>>>>
> >>>>> In an effort to streamline the codebase, rename the SoC DTSI, moving
> >>>>> away from less meaningful numerical model identifiers.
> >>>>>
> >>>>> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> >>>>> ---
> >>>>>  arch/arm64/boot/dts/qcom/{sa8775p.dtsi => lemans.dtsi} | 0
> >>>>>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi             | 2 +-
> >>>>
> >>>> No, stop with this rename.
> >>>>
> >>>> There is no policy of renaming existing files.
> >>>
> >>> There's no policy against renaming existing files either.
> >>
> >> There is, because you break all the users. All the distros, bootloaders
> >> using this DTS, people's scripts.
> > 
> > Renames happen every now and then, when new variants are added or
> > discovered (-oled/lcd, -rev-xyz etc.) and they break things as well.
> 
> There is a reason to add new variant. Also it does not break existing
> users, so not a good example.

Sometimes this also causes a rename, so yes, it breaks the users. It not
frequent, but it's not something unseen.

> 
> > Same way as (non-uapi) headers move around and break compilation for
> > external projects as well.
> 
> Maybe they should not...
> 
> > 
> >>
> >>>
> >>>> It's ridicilous. Just
> >>>> because you introduced a new naming model for NEW SOC, does not mean you
> >>>> now going to rename all boards which you already upstreamed.
> >>>
> >>> This is a genuine improvement, trying to untangle the mess that you
> >>> expressed vast discontent about..
> >>>
> >>> There will be new boards based on this family of SoCs submitted either
> >>> way, so I really think it makes sense to solve it once and for all,
> >>> instead of bikeshedding over it again and again each time you get a new
> >>> dt-bindings change in your inbox.
> >>>
> >>> I understand you're unhappy about patch 6, but the others are
> >>> basically code janitoring.
> >>
> >> Renaming already accepted DTS is not improvement and not untangling
> >> anything. These names were discussed (for very long time) and agreed on.
> > 
> > We did not have clearance to use the real name of the silicon back then,
> > so this wasn't an option.
> > 
> >> What is the point of spending DT maintainers time to discuss the sa8775p
> >> earlier when year later you come and start reversing things (like in
> >> patch 6).
> > 
> > It's quite obviously a huge mess.. but we have a choice between sitting on
> > it and complaining, or moving on.
> > 
> > I don't really see the need for patch 6, but I think the filename changes
> > are truly required for sanity going forward.
> > We don't want to spawn meaningless .dts files NUM_SKUS * NUM_BOARDS times.
> 
> Renaming will not change that. You will have still that amount of boards.

It's still that amount of boards, but it's much easier to follow what is
going on with those boards. You might say that I'm biased, but I think
this is much better than all previous attempts.

> 
> > 
> > So far these are basically Qualcomm-internal boards, or at the very least
> > there was zero interest shown from people that weren't contracted to work
> > on them.
> 
> They committed them to upstream for a reason. This comes with
> obligations and responsibility, especially for big vendor like Qualcomm.
> Qualcomm does not want to commit? No problem, don't upstream...
> 
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

