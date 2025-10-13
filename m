Return-Path: <devicetree+bounces-225987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCC6BD2B5A
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:05:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D740189CB58
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749292FE07E;
	Mon, 13 Oct 2025 11:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jjWcB611"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06BA2E1EE0
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 11:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760353457; cv=none; b=GaUM8ow6aAQbzIXxxgi16EAY4j9LLTyRJ+NUwyVJZoNfwWrA2Ngy60kglpilxDngY/K8Xs86waZsaoiJcyGh90UNZBHH77XJ13h+QIMQplAADkikA2vhJLheYAGLi6RIOnxgflSIGYpG9V67Q8JROn0uBcc67C44+HdYyb7IqVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760353457; c=relaxed/simple;
	bh=SWBAvJi2D0MqGJVFXXAaHIbaWLbIC73DHDHPTcrHLiw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ct6i2J/KXICO0SNcgUT49Vhu/DgaNEeYqzdEFN9P6io0pobJFI0kcXlY5Avgg80XZQH6WKNML2Vh7f3I4iIbmOqkyfOzwcaKgVi+XjVSBwnrLQYA+vfRThd13U4sV96J8jW/YbMjLyJMWYCDaCXAJBElkPvYinlfx5WnLJqUt7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jjWcB611; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAq5Jf010423
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 11:04:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UUByz6/ivW5Da406tto/3vInbgS6zTKWdraxGga2q/Q=; b=jjWcB611/KQfv4Lh
	Aqnba8/6A8OJmCjyT4pI6rlHq+M5kZazczgqak3Cqnmd7rCs68e445wxzNe4K7FL
	vLdbJQJl3yKQn4tjqvzw1AYxe9P36C4qAC/3T/QcIJSYkIf3uAGt97XP74UeCtco
	wwJrfm3yoBmr3/567rOSvOt7IkvdJeJl+ms+6soeODL0qHDoSUqtAvNlP8miw4XP
	03ECvcjpVKs6aM8lQ5q5UuyggP+LM1mazUJ5VhfQzJdf8W7r8CcA+oZZ1KCmcjsz
	osfgrslt9SgcGL2oWdWkhb0eqRJogmEtL7Y9F6Ne+r6VEu7NUEnAD0AXcMhcZa9T
	9WLGWw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0bv95d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 11:04:15 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b55443b4114so6092297a12.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 04:04:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760353454; x=1760958254;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UUByz6/ivW5Da406tto/3vInbgS6zTKWdraxGga2q/Q=;
        b=Pmy6CMvnctVsklGFvazZYn91AAiUfSYxT00diC5dUEeGlZYtPL5ZtN7NB4rZO5Wf7Z
         I22OMkF1+H5+8NrUw0y5ZYbACEwn3ss031ceoOEbBmEPQ/ljVTt1ZYBSTeSJlRAKMbHm
         39YJLgb6I7ivhIReYLvGNpWkx8puIl+I1mmKpy9R2GcEQL+LfPRBrYRFv/FRZYzONFNa
         dFoxerOUzw+92q3dfG9y/+itx3O1jnokr7rjnxM8C7ajweto0mBkJEi0/mLbNgNz9DAa
         ICtuTmMw35dopShvbA9codXQynd7ZE25G4IbCtEG2g4FKlGftFvM3Q0CS7nvKR5hKl9I
         P3EQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRhiHoWMXZCbLWHIHRYkB9PCtcRVqV4SkjWhJz99croWwX6usHEmDRYyRSE2lrDjvNKAARVOcl4rdZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwLiXkwVRig3lMloZ87K3X2LN+k42bjCELWl7NHQcGy9An8gK1I
	InqgwQRHF6PjeVhNKt9d7VLJCpuvUVwjInLiGRP2YO3npydC7UyZnf/miHTl0H/7Q6C2yJBCXAt
	H+72A3epYg5zue+0soApuTiqWmC8Fsg4t3K7rV1mew47FGO0/873hD0FmMNI58BVX
X-Gm-Gg: ASbGncu25dSp4bKABEg9pag/ruwIqVgnH4IrxPOm4h3NiOXqtAM5tZyrIcJ0IX6Pik+
	bnlV8dS9CgXGMB14VqaPv9CQCFRIys9Fy6Qcmj9Pmg9vJCmT2XFvpSqZMee2UvK6XMxYaXclNuT
	PEKEMgWdIaQU78HIkW1Q9sylcyC6yS9kLvEDme4aRhsXq7t6MV+S73QHMsFiSiFdeaHZoqcBlkp
	dT1nkpfvSbfLnQhk9ca81txVBpDiLt+kknn2Tl489d0ttGcsZLEUhlKnz/8xwqAPMkgFi2jhw9W
	wNCWFN5rOXoeDGsi0z9743cFOzpJX1yHf+VfkGSzAplQ42+rBhY93vZ1Ed0BGveTU/zP4urVgjy
	ULe2kuXwepTU2OjDpHnB7/xHsWw==
X-Received: by 2002:a05:6a20:7493:b0:30f:7840:2c96 with SMTP id adf61e73a8af0-32da83e5e98mr26287577637.47.1760353454155;
        Mon, 13 Oct 2025 04:04:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZiZcSt1PGriBGFLYxNl5Xp6hul09XHGVCqQgeApmYd9Cueow0loo9WVM/1/6qO8WG8xN2ig==
X-Received: by 2002:a05:6a20:7493:b0:30f:7840:2c96 with SMTP id adf61e73a8af0-32da83e5e98mr26287533637.47.1760353453662;
        Mon, 13 Oct 2025 04:04:13 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d6aca6asm11273096b3a.70.2025.10.13.04.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 04:04:13 -0700 (PDT)
Date: Mon, 13 Oct 2025 16:34:07 +0530
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
Message-ID: <20251013110407.dqpjdrdaw4gzpcy4@hu-kamalw-hyd.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-17-24b601bbecc0@oss.qualcomm.com>
 <CAJKOXPdi0+c_FqinVA0gzoyqG6FVFp0jq5WSLsWWKiT12VVs3Q@mail.gmail.com>
 <CADhhZXaB310hVo_w8_CoJLQ3j9dy1eeTwbmk0q=vUV2ga1PAYA@mail.gmail.com>
 <8f81289d-7672-42e6-b841-6514607cdb38@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8f81289d-7672-42e6-b841-6514607cdb38@oss.qualcomm.com>
X-Proofpoint-GUID: 0Gm3LunRUiseqLULb9nKZ6n-7WRGCnwv
X-Proofpoint-ORIG-GUID: 0Gm3LunRUiseqLULb9nKZ6n-7WRGCnwv
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ecdcaf cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=dw0t6H4-AAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=V5SgIjnke-DwxSx20K0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=wVJa4CU9-Z26yuRAZDil:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX+83s/Qdes2h9
 iiWV7hSrkRuqxoHOPJtRgBg8vpZAgdua+JrH4aa7rnqRFo7coEgwR//ftET9gE4zzoIg2sfY+1/
 OD4Fp8OACDn+67osUqbBld0el23aL2slWJyIiEdTnNorerYK3MmpJJeg1r666MRRFqMx5SK3M9i
 CtzITeNHlpEPIo17sppfcu5xTFG6gJre9gxyGoNQci8am3mSeP5HNOum22w1W/FqZaOXqMDlV3q
 Ad5D9dGuSjGjoDevf1ZZaY7fRTsbmc2toXjpevRpht/hk2Z68FsQ+joU0aMxg9jjG4kjZSvQrDl
 ump/H7vEt6zj4MFxPScxldddSP7V4MZtCHsI0uYMTTly57Gql5xTq2YBYCyXKMpqxS4GTpXtMQu
 nlgNvbTCooJoIqX+nwcQULCmH/pLOw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On Mon, Oct 06, 2025 at 04:28:59PM +0200, Konrad Dybcio wrote:
> On 10/1/25 2:23 PM, Kamal Wadhwa wrote:
> > Hi Krzysztof,
> > 
> > On Thu, Sep 25, 2025 at 1:41 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>
> >> On Thu, 25 Sept 2025 at 15:34, Pankaj Patil
> >> <pankaj.patil@oss.qualcomm.com> wrote:
> >>>
> >>> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> >>>
> >>> On Glymur boards, the RTC alarm interrupts are routed to SOCCP
> >>> subsystems and are not available to APPS. This can cause the
> >>> RTC probe failure as the RTC IRQ registration will fail in
> >>> probe.
> >>>
> >>> Fix this issue by adding `no-alarm` property in the RTC DT
> >>> node. This will skip the RTC alarm irq registration and
> >>> the RTC probe will return success.
> >>
> >>
> >> This is ridiculous. You just added glymur CRD and you claim now that
> >> it's broken and you need to fix it. So just fix that commit!
> > 
> > I'm afraid, but this is an actual limitation we have for Glymur
> > (compared to Kaanapali).
> > The RTC is part of the pmk8850.dtsi that is common between Kaanapali and
> > Glymur. On Glymur (unlike Kaanapali) the APPS processor does *not* have the RTC
> > IRQ permission for the RTC peripheral.
> 
> This is interesting.. is that a physical limitation, or some sort of
> a software security policy?

This is mostly a limitation for all compute targets(like Glymur). On compute
targets we need to support ACPI TAD feature[1] this feature uses the RTC alarm.
In a nutshell, this feature implements 2 times - AC ( adaptor power) and
DC (battery power) timers, and based on active power source(AC or DC?) at the
time of timer expiry device will either go for a full bootup or stay in power
down.

This feature is implemented on a different subsystem (SoCCP subsystem), and
since the SPMI `IRQ` permissions can only be assigned to only one subsystem,
so we can't use the alarms on APPS. This is why we use no-alarms DT to register
RTC device without alarm-irq support.

[1] TAD specification - https://uefi.org/sites/default/files/resources/ACPI_5.pdf
section 9.18

Regards,
Kamal

