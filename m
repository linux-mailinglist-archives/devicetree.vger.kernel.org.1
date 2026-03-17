Return-Path: <devicetree+bounces-276744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPmqAP1wuWm8EgIAu9opvQ
	(envelope-from <devicetree+bounces-276744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:19:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 513492ACDD7
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:19:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 564663026A61
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56593EAC8F;
	Tue, 17 Mar 2026 15:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bkyePkpD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bIeP/h3K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE45128DB54
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773760759; cv=none; b=g/ZsFASmXcMgPmDfHFVNG87PN2hyC81RTM7ocs64TzU2X2ZfnNNtCDbltujDMWKIh7lFMQ9zKDMEaKmeZ9WP2dZHU5gPXFTchPgSVXBaluuXrqsmEoZm21qRKMV4PTYlABepfr3jsxxCUGk/F+MWNYamDj16xogP8UibPR/qp4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773760759; c=relaxed/simple;
	bh=ekOYh+oD1LzaEfo7kIb7moaX8C4Am7vnNruZN9qf7mU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oRLP9gjVERO6UDVFm8SHGndCEGD9j2Po4IDm5MUkpohmt1RaeUUU6RQvSeae1ee7nG2iKxSJh4JOmgZ9Ux17mt/YgaYoRq+ppkwnpP9qxbcDiTD82Q2bBkngTBAPdjWOd2NdtIqbCf04WnIvtUz5yxrxLd+Eyti7YHWoQD6OEJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bkyePkpD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bIeP/h3K; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HA3Jua2072254
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:19:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BWXj7T4wDw/b5twPTd2WmgoUQYkMAG8/8IF1ZsIHLuE=; b=bkyePkpDxiwlhJCc
	Nf/okQ3nD/zm3vvtzkb1b6vDw0k088Nya+RKoMg1a7XKqHkxHAESJdMwkumvM8+R
	j+RHn6/NbwOIYiwOYdMyIPW+8uSMHlvK7iyvI/0VgYxe9gWhtBoTJf+rxHkJlh6i
	mKdG/Iv+00VBo/ps2ttgTUMMNob9yaU7wq0tNjcJBozoHUJE/W9N3g9jNWco9+VZ
	3LvFaXqKjSWUfcgr/Xi+UClZf2lQ/4bmJA5RRPC9q3cT0oGLV9sb4aHbzr2YsIGn
	HoQiZxNufI4K1CuGRxIxELbZI4EoKsxLsVTj+FmG4tmSr50MGQ2da6oZ2+mNqP5/
	S4sBcA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy4v6s483-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:19:17 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c70ecaef21eso2716736a12.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773760757; x=1774365557; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BWXj7T4wDw/b5twPTd2WmgoUQYkMAG8/8IF1ZsIHLuE=;
        b=bIeP/h3K5vNH7/Foe9puYsfmX6sDWvyE6AAUpudCgSW0lhBQ4G/TfEw2oGgvRgg9qO
         vD8vhIORoGg/B8tSaWFZoNX7nrp4bIawhm7nplZBSU9pFbhUDqCOmkMezafDYGXkWaoB
         pKC/4/3O3OoAZoCmICO90H0jo1PsDQHJiln4BYzsaOvr/unKE1LRDeDgSYXuyU+UXydL
         4M7MjdLJfMlyFzOq8S9HLoyGjQNxclVc+If7bSUeVckyCsKYowgbH6iA6Khd3ttnJccz
         y4bnlZe1LUTHugqAkvQ25h8wBsoLzZqNeHYf2iI/r2A9RB19CVlxkcZxRDViqFGz5Kqo
         2C4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773760757; x=1774365557;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BWXj7T4wDw/b5twPTd2WmgoUQYkMAG8/8IF1ZsIHLuE=;
        b=KDUPBqB1VSMIxEUIGNZOu5BH7RZbY0HJIW0gsQRgUv7A/9dmYNNrqqsy18oGpxkS9D
         V7SVOvfHBM1q61a9Ha7TnRxCgnQgrIzyIIJ5BmOYkILZlSgqeYxAk3P2TuUDEUGKnD/H
         3RIf1p4qNMtHFgsMei/OYI0E9BA2gZ30CAUbkRQNWOMTnakQEify0caBW9XL3OWNHiJj
         o/K19XBuCax9L3DCrrIvwFwOnU9Koz5DIqAig7G5DVJoN12XKs3BTOUhQI4+dVnEYX4k
         oVV4airaOEHOPc5EMFTWSzqMv0wxS8t0E0IAgUQ0Myg4/WMM49rDfOgt9qpv2qVqLEFV
         s9PA==
X-Forwarded-Encrypted: i=1; AJvYcCX24jwvghLONkJcnwtyxIeTayITMhL8xvKhdyIyis5vtiosvhMvGzU3g+6Jv0U8NPHEAHe08AacrWAs@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/Zr7lV5ujMkfjelL+B3QDnClVPjUtFc/RevGfKi4qq5IMcxfm
	j/HHUKTSx2YQb19XxyUxit7TatswBGohmPyZlH3s309HGxFMFguyIrGweUqN8MLxJceUPE/KXqn
	AOMU3cUrWG1niTlwZh6v+CpZKy++uU8JOCyY3UG/+yfqmE3r/TW4yb4WvbA21j3A+
X-Gm-Gg: ATEYQzxDQu/Hm13KiPRy5CsXjb1C+tYh6qGcVbm7bB4lhj84CaCXgfoNDFPsGTev3IF
	snYsC4Tw8wB3pMctuZtYbyxdLQtn7DLs8F+7Pig+1iEl6SUGJ/By/doneNI6FID8mG/xmfAfi6j
	x9rHTrcXzdoUO3NjaCI50gqv7ZFTji5mGUjKO+Zgg3rajCHxNvJJLL14/2urTtZZ5PbcpzmiZx3
	H/2TVEpB9ld0S/cUcYP/P7boOZ/2Lb7JK24BuimSdqM7ZfWChbOL/2freuwqqQBW6+g6tQkldze
	MSuu7ByTNU4VEJpaUd1zHe4ssybA8SzLvEqSA0ZBXJfagG4OnrJrfpgE3VUHgyKTRpTC6ybYxrq
	LOEkBs0ZlScYL/ApANuuJWRIlZOnpxCml0yc6oQqDqPpzPTiRBT1GdibYOFG6d+2tSMatAw1vng
	kiPqXkvVd3nHZcyqmI8pucuPNuDHg+j8VUQgL6dZhO2A==
X-Received: by 2002:a17:903:4b43:b0:2ae:6220:1539 with SMTP id d9443c01a7336-2aecaaf6b20mr132981265ad.6.1773760757271;
        Tue, 17 Mar 2026 08:19:17 -0700 (PDT)
X-Received: by 2002:a17:903:4b43:b0:2ae:6220:1539 with SMTP id d9443c01a7336-2aecaaf6b20mr132980895ad.6.1773760756725;
        Tue, 17 Mar 2026 08:19:16 -0700 (PDT)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b062b8d3c7sm37503895ad.5.2026.03.17.08.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 08:19:16 -0700 (PDT)
Date: Tue, 17 Mar 2026 20:49:10 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com
Subject: Re: [PATCH 2/2] arm64: defconfig: Enable Lontium LT8713sx driver
Message-ID: <ablw7hS8OyvlQ/IF@hu-vishsain-blr.qualcomm.com>
References: <20260317-lt8713sx_dt_for_next-v1-0-8195fa931ff1@oss.qualcomm.com>
 <20260317-lt8713sx_dt_for_next-v1-2-8195fa931ff1@oss.qualcomm.com>
 <56829589-1c56-4c96-a9de-505058467867@kernel.org>
 <ablZcxUIJDrrs9Vb@hu-vishsain-blr.qualcomm.com>
 <ba22ae2a-06d4-41c3-920a-f1fd589a2111@kernel.org>
 <ablj7R79VjE5Kb2s@hu-vishsain-blr.qualcomm.com>
 <260c3c17-0d90-4253-84b2-5d53ae4ca975@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <260c3c17-0d90-4253-84b2-5d53ae4ca975@kernel.org>
X-Proofpoint-ORIG-GUID: AuqKOAec1VTaC_dEpwTAb4oSpd30TGTA
X-Authority-Analysis: v=2.4 cv=Aa683nXG c=1 sm=1 tr=0 ts=69b970f6 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=NnatKhEaoW9bbCzLYh4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: AuqKOAec1VTaC_dEpwTAb4oSpd30TGTA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEzNCBTYWx0ZWRfX4R245ALrcwSW
 ypXakMQpafWxBYuKsgbrR24LlNP7tNN/wl90F6H/LTeJSmsnRH0PhE3/eyw26PFDmBvgBG+Ocfs
 4WJ6fsJoVBuFp7VxYYh46nWeueAhzWDKi9lZZLcHY6U3KAH9WebLK07muSOwg+BRcbM0ErYJqEe
 qtkv8OQ1sn2FEbw51nbxa0uPXYgXDcRsAS4fVNvrs1IAdi1VseO/lMvo01VbzjZqngcngRIbRTo
 JZplLppK0oHUcx6wGQi/oOxo4gyBKGte1FqRZbPC2eDisNXoEDKeRa249c9539OVX9KtSqYsOsq
 1iD4/yC24dMY1A6nFNKQLyVXYUSwGolu7yuIZe3PAEyGHRY6gZ0SDxViiX33aDu8Zeg0kg4aDcz
 vIrxeHSQxAts8nN1U6kFGyF0wS24HaJgqC5u0ZemK8muTSKoUFv7+GbhUjxbIDpyGVhQccerLEX
 PMZb8EVgMSpwVtrrL5g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_02,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170134
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,hu-vishsain-blr.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276744-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 513492ACDD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 03:40:54PM +0100, Krzysztof Kozlowski wrote:
> On 17/03/2026 15:23, Vishnu Saini wrote:
> > On Tue, Mar 17, 2026 at 02:49:56PM +0100, Krzysztof Kozlowski wrote:
> >> On 17/03/2026 14:38, Vishnu Saini wrote:
> >>> On Tue, Mar 17, 2026 at 12:44:05PM +0100, Krzysztof Kozlowski wrote:
> >>>> On 17/03/2026 07:03, Vishnu Saini wrote:
> >>>>> Lontium LT8713sx DP bridge hub can be found on a Qualcomm
> >>>>> Monaco EVK board for converting 1 DP to 3 DP outputs.
> >>>>>
> >>>>> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> >>>>> ---
> >>>>>  arch/arm64/configs/defconfig | 1 +
> >>>>>  1 file changed, 1 insertion(+)
> >>>>>
> >>>>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> >>>>> index 1d967a81b82a..c8f89c87672b 100644
> >>>>> --- a/arch/arm64/configs/defconfig
> >>>>> +++ b/arch/arm64/configs/defconfig
> >>>>> @@ -1002,6 +1002,7 @@ CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
> >>>>>  CONFIG_DRM_DISPLAY_CONNECTOR=m
> >>>>>  CONFIG_DRM_FSL_LDB=m
> >>>>>  CONFIG_DRM_ITE_IT6263=m
> >>>>> +CONFIG_DRM_LONTIUM_LT8713SX=m
> >>>>
> >>>> Wrongly placed, at least at next I am checking now. Look at Kconfig or
> >>>> just run savedefconfig.
> >>>
> >>> Cross checked this few rescent changes were added configs in same file.
> >>> verified added config is present in generated .config file and lt8713sx driver is compiled with it.
> >>> Let me know if need to add this config is another file or at different place.
> >>
> >> So did you run `make savedefconfig`? If you do not understand review
> >> then at least follow what I asked for...
> > Yes, 'make savedefconfig' executed as below, sorry i did not mention about this earlier.
> > make savedefconfig
> 
> And? What is the point of savedefconfig?
This generate a minimal defconfig containing only non‑default options.
A defconfig file is generated in my root dir, CONFIG_DRM_LONTIUM_LT8713SX is part of this generated defconfig.
shall i update arch/arm64/configs/defconfig with generated defconfig and verify ?
> Best regards,
> Krzysztof

