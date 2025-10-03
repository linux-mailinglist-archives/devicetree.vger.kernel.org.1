Return-Path: <devicetree+bounces-223595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B8ACEBB83DD
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 23:55:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5A3A64E4245
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 21:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8B12701C4;
	Fri,  3 Oct 2025 21:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hmPOTqhg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7EC26F46C
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 21:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759528515; cv=none; b=ssiNrAB2d5fuXjdPa+1VA1961bM0c5wyWA6VEZ1qoCUI4rGR35A0Vqh6YEqz3zJEUb0AEw/Mh6VkC8w32DNaQ00VAJ9fpodwMdYAgrljD7+pE/Kcr6D5lk88Coec+nvk8vJw5GXkiAsn+8QXEINzHv+VzEfAE7lvk91/iGcBODs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759528515; c=relaxed/simple;
	bh=41HHN/qGzJJn4ee86gwGXwwgMCmixPoE3qhczvV5OcU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FwcavcQ1RRpfO5iH0aB3MZUEqskQRNVDSXY5dKFItAb3VZIjCoJcyvWgTTS91K/JTqWcIV8ld6UOeU5iSerX4d1uhE7r8WA/ZJI4avTSykgTfnYOrSWQDi/GDbgbQ1bcwfZriBvsW67wtyVNI+kfWsOsrYQJiK47IkhZzcOZ/GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hmPOTqhg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593BBmHP021211
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 21:55:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WT3uPbcX9tBagOLqEVPeVmh7
	jBTPX0krG007D+krSn0=; b=hmPOTqhgNWa1dQLixXBrMJILuKpvcp7ChcpkHbbO
	ISbhAX7J/r6jqhWz4oQGepJ6GMcm5PswwKehMzGNczgqjWxohucSfWEGNKcTlNA+
	mkW67QOcSMotqhMhUnhsMbdHXm566u0kiBLr0XtDJXh+EAHI/JK/vzJ6KOn7oiRo
	PPCsDFnFE1tlQXjnUoDPxOq86i3ZhX0O5ZwsLCwm2G2Kd2tdQgqIsFWii6wIDkVB
	1I9AUoUvHpmL0PHUGK7Eb5Jw8MtXFi0jl4E8bg9JZo0NKeR/dCcmf2kGN/TSbqvR
	csHFRPg2ZfmbOkf+OtfN5RSiK2vn5/LrKO6AD437xd+nLA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49gyu1gc89-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 21:55:13 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e576157d54so35548091cf.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 14:55:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759528511; x=1760133311;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WT3uPbcX9tBagOLqEVPeVmh7jBTPX0krG007D+krSn0=;
        b=XEYDVupWjsWtvdpkvypRjDBmXsYpmfLqGKPdXUe/gy3Q9fGBNqc2niQvu59VrTN1TC
         DIsuVHzbwprc2sm5xcsiua5JXImipTq0sgejmS4o5mcienyYEOsATt9swWjYWV1o8nk+
         gdnZhG/FEmf8ELf16hYwbUAmd7i/QHbyiihz2bJ7uf6WzXIW5Z9fYx8ckDgnxy91UWuR
         e0CxpfEeMBYADVRyaOkviCyC8btQbPoajk2yKxPuSsaa5MBEH/KvuZvyK7hOR3BtWnji
         Eotbg0X22zCZ7NiQLGyixpR+tjde7mguSgbaFGc3zTIVXkgpPti945OlXlpiZVrD6gf4
         pQFw==
X-Forwarded-Encrypted: i=1; AJvYcCXZN6qX45+kh4qOmOzA+qtp1k43RhqW9z3l8MigqOcQ8G4DItd/VRz1WZN34y/Zg+GU24dKLw/dHFSS@vger.kernel.org
X-Gm-Message-State: AOJu0YyM3fQdSyZOJAQxogVKSJaQy5f4od7pRRnacvKg0naSicgEdZ0f
	PDUp2j3yKteE7lf8vaCWTdy7zHHoIE1EE0LqmZUKG2sYUBi9Cba5lOG497uUkS68sWeGz8nQBzG
	tXOTpHI0WV4kx6Mt43GWdVXTs9vJIyxY5wZqURkZmpQr2CeM/h73k97LzKV9ciOD8QgmHUijZ
X-Gm-Gg: ASbGnct4mGjjn8hf1lMn2ZiBLJFrCmBWZk0DKumPwMeddiADsHIgVMDktPq2fyyOvOF
	ZM8kjfjaPWoJMXtwJtt3BwOMsJAwM1UoIcuWZ3uXYOh3KbmOcaSMsLsKvcJAWRfn+ZrFRavTTu5
	N0hoS5yWPU7qchZtpCtYw8VFm8Bbmk9Tn5GbdB9fzkOMqoy3Y/yRJJh3sY/9O+VmGJ3fJc80BMr
	vo0FCdHIT9ZFM+aDzRlYc2OczuIAFEUGK4x3WL4jB7CroIptHvC17q5WiuoRtnZPwjPFbWxcE24
	Oobyw4PM38gfoBmva/WNQ+JroiOGM1eEhZ7SRBaYtUFwX9n51tVc+LqOCRboWUwCgcUdJlfAFLZ
	pvZmZUAEPoMKBsGxnqEsLYrIsPAMxvNJ5P2ma0CmCkr/zIhVYnMXRbJZAug==
X-Received: by 2002:ac8:5f49:0:b0:4de:73b2:afc7 with SMTP id d75a77b69052e-4e576a50cc7mr55876211cf.31.1759528510941;
        Fri, 03 Oct 2025 14:55:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDhqAUHWqgc3GWJMbiaRjW8xbw3rm19fuPkKV681ZbMoiAFDWogDl4M0uVMEWO9gO38ZJtKg==
X-Received: by 2002:ac8:5f49:0:b0:4de:73b2:afc7 with SMTP id d75a77b69052e-4e576a50cc7mr55876051cf.31.1759528510423;
        Fri, 03 Oct 2025 14:55:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d6fesm2186913e87.73.2025.10.03.14.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 14:55:08 -0700 (PDT)
Date: Sat, 4 Oct 2025 00:55:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH v3 10/11] arm64: dts: qcom: sdm845-lg-judyln: Add lab/ibb
Message-ID: <sarhhzxs77gthpap3vsxidvut2bihtmtyjecjbo7dgvglwfd6s@yt2w4on4f5zw>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-10-b14cf9e9a928@postmarketos.org>
 <38c70e06-f7bf-4ca6-8fe9-2a4012017cff@oss.qualcomm.com>
 <64a732cdc3fe9381e2f716be9e965fbc905c1416@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <64a732cdc3fe9381e2f716be9e965fbc905c1416@postmarketos.org>
X-Authority-Analysis: v=2.4 cv=RfGdyltv c=1 sm=1 tr=0 ts=68e04641 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=NEAV23lmAAAA:8 a=z2rhz3lDxe_xYuXa6uwA:9
 a=lqcHg5cX4UMA:10 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: yfj65IkUkVDLhxhSaX2kjCx_syf7Xeky
X-Proofpoint-GUID: yfj65IkUkVDLhxhSaX2kjCx_syf7Xeky
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAxMDA1OCBTYWx0ZWRfX1z+no8oECH2U
 5BemUWV2RIbKisGWCfDVOKEcwCOitpRe33HPnTf+vP3lou/dnJBeSVVhjmylISSbpBwPkfg6uvT
 phlaSrBY2NGqlQvJJD4a7nShm0gQjebpv08r9gjC8/wfsahn2Kh8MUFmnRTmjqU7aO0NeEFwAyq
 PLRyV3vcf8uH/lY7cOjtN0nktinNvY7DRYNnee2Ja+B4vOJptS6ArudvET8XeBVd+tjRe8izL9h
 PAZuiyw+f9Sc79hKNPxZlDRxeMdkQmyb2+iphrhpllXWMl5D5E0FYcERtP23LsFR5q/CC4PFtWh
 P7dY9ifYJByT97skXgr8lyxqhDkgAKcV27+ppe1UG5m5ahhVa4vgV/o2BE2UDdgCbRaVyN9e/V7
 uHoJ6b2zcQ88q9CojH7YANy6A59Qyg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510010058

On Thu, Oct 02, 2025 at 04:55:44AM +0000, Paul Sajna wrote:
> October 1, 2025 at 9:09 AM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com mailto:konrad.dybcio@oss.qualcomm.com?to=%22Konrad%20Dybcio%22%20%3Ckonrad.dybcio%40oss.qualcomm.com%3E > wrote:
> 
> 
> > 
> > On 9/29/25 7:05 AM, Paul Sajna wrote:
> > 
> > > 
> > This patch will allow any values between 4.6 V and 6.0 V to
> > be set on your phone, with the kernel defaulting to 4.6 V at
> > boot and staying there until (if?) any driver requests that to
> > change.
> > 
> > Your panel probably expects a *very* specific pair of voltages
> > and any deviation may cause unpredictable consequences, including
> > magic smoke if you happen to go over a certain limit.
> > 
> > You should most likely hardcode that specific expected voltage here
> 
> These are the values used in downstream android dts 
> https://github.com/LineageOS/android_kernel_lge_sdm845/blob/efa8458f79dffeb380d43b38b9403407f87d9f05/arch/arm64/boot/dts/qcom/pmi8998.dtsi#L484-L485

Downstream frequently further constraints the regulators. Could you
please check the boards's dts file and the drivers (SDE)?

-- 
With best wishes
Dmitry

