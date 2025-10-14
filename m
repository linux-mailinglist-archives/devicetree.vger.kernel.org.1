Return-Path: <devicetree+bounces-226512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A4993BD9608
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:37:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 473075017CE
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:37:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D806313E0A;
	Tue, 14 Oct 2025 12:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ekj1lzXf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3042D4B5E
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760445430; cv=none; b=S5jGmMGDR3I1O18djGMzVuo8KacUhGkaaFrFgnNufIOWxRH5jaImCeuvfulG1lowXTErpZcR4xMA4521Fx4ks53AOy12t//IyCd9bRIAa4EELE/AR1MUDqp7mMIuxSBQu3SkLQ9JYdY58GXEgIdX07v7VVLvXNQ3X8hcvYr1T60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760445430; c=relaxed/simple;
	bh=2i/9DWpcFPS1pMn2FEUvaWf0SzvJmHWgtMuwoZMXL64=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AAF1m6EpvGPUUCicFdyClUtnpmjZ7Hc/0mwVbVh2TIMpTdE0nGCtMK+BMWa/bnlyVnPXhvf/jmIq8sv08WN3fWTiVw8EIuOEIbhArmcU6KFucbHzZr2aaRHsXiXF4E2yrhpDOOUIBeoIrBesMsJ3fcQ/ruyI4F9N+MG28UjAbvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ekj1lzXf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87Gf9018073
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:37:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zIxMrSYPKSOc36A7DVe+LtuzT/Ctad9aI8MUfRjtCvg=; b=Ekj1lzXfFgBk4YVL
	lNfuRCuaQineXFoBYsyaDZd03eozU/9Xll4e2xiRe7Kh/NlOljIPCunGd6x0FFRQ
	Rh1RfKTJK+Zlyr8/tKrwJnevetPTvne9nlnMcrrTyQ6OdKkoUmgSeDhODRtMpC+b
	KkkMvHxI/6+iOCeGP8B741fOsjknu0hW8INSEJkY1XMR2HLb/xLslKBl07ZdmBX8
	3r64MtqhvBTjhLYDgdq2YiUkXz/p07w43my18rjQfyrf+av/oywRxNkueYKzim04
	Mep5FNuTS0ziqYY2pASlLHtHMUGDQwH1BTNIZfW0g9Djrguz2s2fugCWLgGrt0na
	79uJdg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfes0fy9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:37:07 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b55283ff3fcso7522325a12.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:37:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760445426; x=1761050226;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zIxMrSYPKSOc36A7DVe+LtuzT/Ctad9aI8MUfRjtCvg=;
        b=DMmpjClipYgz2tmOJXWcLRZEmv05AOcSr3hAfr3ygNuhrW2lZ3Hr39AH6UdEMtU5z2
         vudlbSBffI00Vhhdzv3N0XZW/aqkQsgnP/HCFQXNjmcJaUUK0q3u1349fAYNc6di+xV+
         UYwgxt7X87WAkDxlUwKZkKJdhKyJXOJjTo39GVWpbk0eGDbjHNbW/uEdNKVxAgNr1Q8K
         QhgWhzdoGEtPwVM8P3WCpti23LZ/fRxmqAncl0ZUXbzrQeyEm9+T/DD5iVa9goGuBAmQ
         EEZgMX2LD42cnEAuNmSL7ejQw6Z7u2erALRA+xuDAMzBWbZ8yA9BqcjvvlLwWNCIoUld
         PRLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcoTL4LE7SziSz3gpX0l3R9OB9PFqDlK0MDjGPM+Rx5RkrUXGmkIdbC7yoJCbXkQMQhrloLpJWWQOJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwOH2KTIH2FDRQnyKdIdDjFrcCMcxGggeqFyya6fbEnfwT9YYzu
	oFk1WLMV4izMoUlLRBQHJ8HclPN+fg0cAH1+ZpKztVVYmkSFmIr2LJK1PiutnJ9ZAqhbwlgP0Di
	N6WdAKoIkpmR6g3iLZq7MIlR06cZnNBu3r9m4eLPWNi9Jg0bxBe8tXN0pkpv8VV0U
X-Gm-Gg: ASbGncvOs2+QqgEj5+OjLLy/fex5OoYJQUjjvKKST4MNEkWVnJub3LvgYzY77IIIX3X
	mPucmuHKXfjUAI/RkwUrlEfmfW5NhLXlzkd5TkGfmk4cy+1eFt3kXBoQTMyCXd/Jdgnb3LmyHS4
	u+ofBFqZ0HzPHSSXNquRFUVm/EFDTz6QcfXCo3F/0VB5YwCdruUcm+ILEjZXVRhrbqIrLJ+8eoG
	xAbDyqfTw9xj8Q6Pioj813Q+nEniyYCiCJlqtrAEsF3kPz6KZW7JgYyhtXDRpmTRASMCFb460zW
	W/CQUsprJ9QOC4GYpkGbD0zZD4vYhXaQAZpajGCI1G9+INeH5nsAJDgPbrdcn3vPCfewBpGSguN
	bhJwKx7m+fculvAiK/FGlqQEZ7g==
X-Received: by 2002:a05:6a20:9183:b0:32b:83af:11ff with SMTP id adf61e73a8af0-32da8139347mr32608556637.2.1760445425700;
        Tue, 14 Oct 2025 05:37:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFj9gLDhN3zLw56SIwWQu9Ntr/nll9EvL8/XTaZlSlmUqmVQq4OR90HEiYkP4sd+g4UWAci6w==
X-Received: by 2002:a05:6a20:9183:b0:32b:83af:11ff with SMTP id adf61e73a8af0-32da8139347mr32608529637.2.1760445425209;
        Tue, 14 Oct 2025 05:37:05 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bc12a8asm14946105b3a.34.2025.10.14.05.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 05:37:04 -0700 (PDT)
Date: Tue, 14 Oct 2025 18:06:58 +0530
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 17/24] arm64: dts: qcom: glymur-crd: Avoid RTC probe
 failure
Message-ID: <20251014123658.sobt6ab6gnbafyme@hu-kamalw-hyd.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-17-24b601bbecc0@oss.qualcomm.com>
 <CAJKOXPdi0+c_FqinVA0gzoyqG6FVFp0jq5WSLsWWKiT12VVs3Q@mail.gmail.com>
 <CADhhZXaB310hVo_w8_CoJLQ3j9dy1eeTwbmk0q=vUV2ga1PAYA@mail.gmail.com>
 <8f81289d-7672-42e6-b841-6514607cdb38@oss.qualcomm.com>
 <20251013110407.dqpjdrdaw4gzpcy4@hu-kamalw-hyd.qualcomm.com>
 <49004d3e-7914-48ee-8705-ee86d1944166@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <49004d3e-7914-48ee-8705-ee86d1944166@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=R64O2NRX c=1 sm=1 tr=0 ts=68ee43f3 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=dw0t6H4-AAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gWmXDqEIHeUc13t17I8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=wVJa4CU9-Z26yuRAZDil:22
X-Proofpoint-GUID: Q49eqHzwoz_l9Fewb4uthSqmnKLkh1Z1
X-Proofpoint-ORIG-GUID: Q49eqHzwoz_l9Fewb4uthSqmnKLkh1Z1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXw/eS0YQeMTZE
 DkIVlfM9qfe1ZqKagC/EXfBk2PB2VBsEXfHI1ToY7wojTs7d9nOFJWExvypwawyDhnRR4/G96TL
 DNsIdzih9Q/tOjI2q2SIpRSszMMNUnNr9xnu8zYf9qkHRahK6VXM/uOws1V1MZl6k/+TtrBpH/U
 vLAsqNaHJJsQe22VgC5yBdBZjwgu10DYpPRB1hBxQ68iDhkwalfAYj5yJTYR4cuYAxkRTIo43uI
 hcKDquwiKbViTn4JaLg8/iRPocBQwqjJRNZeOU60XTz4lVgiWuR8WJppb/IG85LiWorAuqqLZ7t
 vrbPpIBILb3aKNHPYbXFlfo23iDnqtNk/LcRaCpQAQmysvtDNO7UzA+IslwbrpJCSM7cAXvN1dg
 k2U8c3DhvmwO+A+9xLyC/MrRwU6lXA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

Hi Konrad, 

On Tue, Oct 14, 2025 at 12:23:23PM +0200, Konrad Dybcio wrote:
> On 10/13/25 1:04 PM, Kamal Wadhwa wrote:
> > On Mon, Oct 06, 2025 at 04:28:59PM +0200, Konrad Dybcio wrote:
> >> On 10/1/25 2:23 PM, Kamal Wadhwa wrote:
> >>> Hi Krzysztof,
> >>>
> >>> On Thu, Sep 25, 2025 at 1:41 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>>>
> >>>> On Thu, 25 Sept 2025 at 15:34, Pankaj Patil
> >>>> <pankaj.patil@oss.qualcomm.com> wrote:
> >>>>>
> >>>>> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> >>>>>
> >>>>> On Glymur boards, the RTC alarm interrupts are routed to SOCCP
> >>>>> subsystems and are not available to APPS. This can cause the
> >>>>> RTC probe failure as the RTC IRQ registration will fail in
> >>>>> probe.
> >>>>>
> >>>>> Fix this issue by adding `no-alarm` property in the RTC DT
> >>>>> node. This will skip the RTC alarm irq registration and
> >>>>> the RTC probe will return success.
> >>>>
> >>>>
> >>>> This is ridiculous. You just added glymur CRD and you claim now that
> >>>> it's broken and you need to fix it. So just fix that commit!
> >>>
> >>> I'm afraid, but this is an actual limitation we have for Glymur
> >>> (compared to Kaanapali).
> >>> The RTC is part of the pmk8850.dtsi that is common between Kaanapali and
> >>> Glymur. On Glymur (unlike Kaanapali) the APPS processor does *not* have the RTC
> >>> IRQ permission for the RTC peripheral.
> >>
> >> This is interesting.. is that a physical limitation, or some sort of
> >> a software security policy?
> > 
> > This is mostly a limitation for all compute targets(like Glymur). On compute
> > targets we need to support ACPI TAD feature[1] this feature uses the RTC alarm.
> > In a nutshell, this feature implements 2 times - AC ( adaptor power) and
> > DC (battery power) timers, and based on active power source(AC or DC?) at the
> > time of timer expiry device will either go for a full bootup or stay in power
> > down.
> > 
> > This feature is implemented on a different subsystem (SoCCP subsystem), and
> > since the SPMI `IRQ` permissions can only be assigned to only one subsystem,
> > so we can't use the alarms on APPS. This is why we use no-alarms DT to register
> > RTC device without alarm-irq support.
> > 
> > [1] TAD specification - https://uefi.org/sites/default/files/resources/ACPI_5.pdf
> > section 9.18
> 
> Hm, is there maybe some sort of an interface to talk to the SoCCP
> and set the RTC as we wish, from the OS?

Yes, the developement is almost done and we have done some testing as well, but
that kernel driver needs some more cleanup and testing before posting to
upstream. This will be added in future.

> 
> Konrad

Regards,
Kamal

