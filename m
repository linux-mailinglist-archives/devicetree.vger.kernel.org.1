Return-Path: <devicetree+bounces-260377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAzhIYz+eWm71QEAu9opvQ
	(envelope-from <devicetree+bounces-260377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:18:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92435A1174
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 286113001F96
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C895C2C11FD;
	Wed, 28 Jan 2026 12:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ByAtbf11";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Petb1dll"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5518E19E97F
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769602694; cv=none; b=OWypSLw1qaUQpmqvEL7s1201wtSJ6HXHqJSrp/6A5kqoVgmHSRg6D0ty7dIqvGZZp6Tegl7b0llm2ygEc4EBM7jZ/fOXhUHmkHSbjvvcwjgaZySXMrWYI4au8hhSWywyWINpHOo8AQC57ysbcgnNLMmXZgHCdxM4uo9WDVgvEy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769602694; c=relaxed/simple;
	bh=AaVglWVJL0wCi22mK9ysc4Mx+3zSGdirHKztaRIVF3A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kUh/0U4I3+IWxdQSsOk4iYH1Ej+viZ7ZGpKiOhOa/GHfq7EkXkMPALD4CkgFhzCuLvCIukbRoiZ/OH4IwRuGdSGm6ga5jQwQE5GE41D1uwtd33uORmaIa+k4KqrFpANCALQMxK9c55zvFCp0wm4oEM9gsszD4CFYis5pvjJRHDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ByAtbf11; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Petb1dll; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92Gwl3387606
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:18:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jloTsA6jPXrD8sfjSXsugH7YDyzRY5u8YRtsWPa8GmE=; b=ByAtbf11ljFW8zCD
	fPLY4kaHWw+tG2BhI2wUNCGvqgr40mGChtWcLHMMnWXFhSqiD+7AwkyFRwVAgxes
	eaLtr8EryZO28xXg2bW12q6M6bFjNrfhbZ2ULOly9eJe85erDpSPksWhZAS17WOO
	2Ayki3Jz09rbiuhcG1NgJeVm0TAt/Bv4U+AEH5pmp/Ufx+R4pOKhhtNpn5ziYdbr
	JzhhRG3JAhukMOwSnJoru8BlwbaXItoR6d/AIhIuKI5DOFRDIkVgqFDREnSG59tK
	pTa0z0ItnMz7WntVH1OlujB9l89WCEtW5Ydrrgl7Xw5yYcTrJmGYr+ACKT00BBW5
	uvJOqA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1dfuf4m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:18:12 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a79164b686so74051825ad.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769602691; x=1770207491; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jloTsA6jPXrD8sfjSXsugH7YDyzRY5u8YRtsWPa8GmE=;
        b=Petb1dllqba9g8qb218fvBma38fNxfBlAIoUxo7jPkP1mvqNgAUg1j7QmALccIulp2
         pC97pq/d0n2Hyf/ggJhwKoCKUoFIKSFhgk+Hf+Z6ZecsEiIW16xpILbuaaPXgI1EVhMU
         invs/YDyaODtj5+zpsfOznKGt73qLhbGOgbVg4qVH435GaBFrrBS87NROqtX75Im5+L1
         zAqYh0G29WxRHchPAbTwCAYoFRqA0gxNzIE/Le7xbyqATTQQYLBSeKntkJ7W3D8cCOjs
         0WcYU4pEM3+MBA8iutZnm7gARaIr8Wn24USC9G4MIK22IkS+bwi3IF0l0uyHEVC2NrM8
         UzhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769602691; x=1770207491;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jloTsA6jPXrD8sfjSXsugH7YDyzRY5u8YRtsWPa8GmE=;
        b=D2XtNLRdNZ/nCPI0ZCmA2pDC1nAK1myGABc0FQ6+xqBDIlVwVDgximRiAxPBQDK+2y
         zGRKqRigITxcnnN4Z41kwxQZNEYRcewu59WSO3wcPYCgN8ctlJ/pDrKROFgmt8g6C3jR
         YFqu5UCa425IGsDNYLBLtjZYHhz2svBhteONOjwRdK5BJzaD70hKZHeCQPUUaVEAsFmU
         9a01YlpsZcozR9qIUjZQpw4uZabfwCjniMW7eBegh9KdAEbdGPGE2gPfzZz1Uyk/fD+4
         q28gF/J4OrMzVcqJCeNt14uc64CFMOPIYaJsOFkYcPC09tmFcjTdON5UdYPC2YGUInBb
         Ndjg==
X-Forwarded-Encrypted: i=1; AJvYcCUZ5XdlGJy41sWe/q/GNjqwtjyZaujmewmQd4wnara5w0Azqwu+V68PsH3mvLsGV6McNS+0t7y11gk3@vger.kernel.org
X-Gm-Message-State: AOJu0YyPiJO1UAbAwo/p/pAvkkUxKEt4cyE/K9NKkys+AT9Tbj5mcGCc
	R+5YJpPUpUH5kHFUMiRD84Nzjn+IAYtvVflSHTJ45Jgiv97cq9a5J7lwYXX/KrhjgTFpMO3OcN8
	ujLHw+GOhXZbvJFDm5ioKp/ny8M65Hyhl6wSAtSmxu0iAmvbcxXe+kJCbZQ4+IQ8T
X-Gm-Gg: AZuq6aIvIIijO3j/CKUJcyRaWOU5e3eKz/uIPQsvRRTHupE3tRUZzDQSxje3xW3uZej
	TfuTEybdFhcJB2sSgb3YhoUGLf5QAHRW29T8Y3cBlVs/Btv5OIchFL6Ao+9AfdOwTGJ4QtaccCh
	CtHyyX3dhx/utxZtTVka4eXjn11EOEc16YcWBzBpmaDpj/n6gXdpMIK631oH3w97i7Jah3tO0Dk
	R9s8/tHMAxto5QLWPkRgkMqk0+FFrFE0HXWRNaGutcjdk6Bhbhl9nQy8zR4rFFasgXgYgmKge4t
	e8ZaFOU+cXyFKTJE/l3GzDSoDf9YefRJWlSISLqyGjk7lbyOeRvEECJuINJb2X0/EjZ+HXwCHzm
	ab2QZ2GBNiaUN3xvhIzES8oJLFaTkdNLkdtU3TT3RIe8=
X-Received: by 2002:a17:903:1a0d:b0:2a1:10f7:9717 with SMTP id d9443c01a7336-2a870de9b93mr53221425ad.58.1769602691058;
        Wed, 28 Jan 2026 04:18:11 -0800 (PST)
X-Received: by 2002:a17:903:1a0d:b0:2a1:10f7:9717 with SMTP id d9443c01a7336-2a870de9b93mr53221115ad.58.1769602690433;
        Wed, 28 Jan 2026 04:18:10 -0800 (PST)
Received: from [192.168.0.171] ([49.205.248.59])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4130c0sm22351975ad.22.2026.01.28.04.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 04:18:09 -0800 (PST)
Message-ID: <94e5ce4a-9d35-4868-8eda-b471ecac3662@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 17:48:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] media: qcom: flip the switch between Venus and
 Iris drivers
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
References: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
 <83198eae-088e-41d0-ac5f-2346e422a25d@oss.qualcomm.com>
 <m5nsdjbogulmegaavp2twkgf7y7gujm26da6glkbirgxefxxyz@3ac3xzbt3hwj>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <m5nsdjbogulmegaavp2twkgf7y7gujm26da6glkbirgxefxxyz@3ac3xzbt3hwj>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEwMSBTYWx0ZWRfXxFrEURUCXRyq
 qYzSJ1FQF/TGFhEaz3WBirnB4p+aOsX+PEQBG+nF4f8/21v1QpC0yn0kYlOa+i9ApMsdLMUaovL
 qY0E7FL6utYLe0jDzhN8X0UdMSFlEDUcruF5107C3TfyvysZl9ZzvLak5dhKrWctG5+gV1Ewxw3
 6ILz8vZyAWTvNriq5am1RmDw/k1XO3QRGAnrziuUI1ZXg5P0dha+tDefw+7VcvgPHqkMNZ/KzdF
 3sewvB078f3Rw/qSZiw84OL/rssDwUQ55Wuvf3pSj6fVL9BEYxVVMPZJnHJeBuLNuqckyAFAYUJ
 JEXyf6RqecAMEVMlEGZiZImfVLMzneOxTJvPZYv8kIaMcnOr7U8GHmySSj6a7H1Qss1iln7yRfP
 E6YaqTYKSDN8cGNim9TGM/ow6rkS0O7JyQkl/iCuMpTHE4Yk0c0t/2P+C+7/uQGjtd4piGcLYOs
 VRwXIPaLXcTVPi1etgA==
X-Proofpoint-GUID: 1ZbYJpn_9Xoo9pX7aI6N2qDw9E3h-IY0
X-Proofpoint-ORIG-GUID: 1ZbYJpn_9Xoo9pX7aI6N2qDw9E3h-IY0
X-Authority-Analysis: v=2.4 cv=YeuwJgRf c=1 sm=1 tr=0 ts=6979fe84 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=4hJEjaH6g9CgPEswoao2AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=3paou6EoLLgSJ8QuwzYA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-260377-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,out-h265.md:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,out-h264.md:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 92435A1174
X-Rspamd-Action: no action


On 1/27/2026 5:35 PM, Dmitry Baryshkov wrote:
> On Tue, Jan 27, 2026 at 12:43:36PM +0100, Konrad Dybcio wrote:
>> On 1/26/26 3:09 AM, Dmitry Baryshkov wrote:
>>> As the Venus and Iris drivers are close to the "feature parity" for the
>>> common platforms (SC7280, SM8250), in order to get more attention to
>>> squashing bugs from the Iris driver, flip the switch and default to the
>>> Iris driver if both are enabled. The Iris driver has several
>>> regressions, but hopefully they can be fixed through the development
>>> cycle by the respective team. Also it is better to fail the test than
>>> crash the device (which Venus driver does a lot).
>>>
>>> Note: then intention is to land this in 6.21, which might let us to
>>> drop those platforms from the Venus driver in 6.22+.
>>>
>>> Testing methodology: fluster test-suite, single-threaded mode, SM8250
>>> device (RB5).
>>>
>>> $ ./fluster.py r -j 1 -d  GStreamer-H.264-V4L2-Gst1.0 -s -so out-h264.md -ts JVT-AVC_V1
>>> $ ./fluster.py r -j 1 -d  GStreamer-H.265-V4L2-Gst1.0 -s -so out-h265.md -ts JCT-VC-HEVC_V1
>>> $ ./fluster.py r -j 1 -d  GStreamer-VP9-V4L2-Gst1.0 -s -so out-vp9.md
>>>
>>> For H.264:
>>>
>>> Only the main set was used on both platforms
>>>
>>> On Venus pass 126/135
>>> On Iris  pass 78/135
>>
>> This sounds a little bad..
> 
> I'd let Vikash comment here, we were promised feature parity for Venus /
> Iris drivers before accepting the latter one.
> 
> The list of tests passing for Venus, but failing for Iris:
> 
>> |BA3_SVA_C|✔️|

This need to be checked. Similar failure was seen in SM8550 due to 
unssuported profile V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED.

> < |cabac_mot_fld0_full|✔️|
> < |cabac_mot_mbaff0_full|✔️|
> < |cabac_mot_picaff0_full|✔️|
> < |CAFI1_SVA_C|✔️|
> < |CAMA1_Sony_C|✔️|
> < |cama1_vtc_c|✔️|
> < |cama2_vtc_b|✔️|
> < |cama3_vtc_b|✔️|
> < |CAMACI3_Sony_C|✔️|
> < |CAMASL3_Sony_B|✔️|
> < |CAMP_MOT_MBAFF_L30|✔️|
> < |CAMP_MOT_MBAFF_L31|✔️|
> < |CANLMA2_Sony_C|✔️|
> < |CANLMA3_Sony_C|✔️|
> < |cavlc_mot_fld0_full_B|✔️|
> < |cavlc_mot_mbaff0_full_B|✔️|
> < |cavlc_mot_picaff0_full_B|✔️|
> < |CVCANLMA2_Sony_C|✔️|
> < |CVFI1_Sony_D|✔️|
> < |CVFI1_SVA_C|✔️|
> < |CVFI2_Sony_H|✔️|
> < |CVFI2_SVA_C|✔️|
> < |CVMA1_Sony_D|✔️|
> < |CVMAPAQP3_Sony_E|✔️|
> < |CVMAQP2_Sony_G|✔️|
> < |CVMAQP3_Sony_D|✔️|
> < |CVMP_MOT_FLD_L30_B|✔️|
> < |CVMP_MOT_FRM_L31_B|✔️|
> < |CVNLFI1_Sony_C|✔️|
> < |CVNLFI2_Sony_H|✔️|
> < |FI1_Sony_E|✔️|
> < |MR9_BT_B|✔️|
> < |Sharp_MP_Field_1_B|✔️|
> < |Sharp_MP_Field_2_B|✔️|
> < |Sharp_MP_Field_3_B|✔️|
> < |Sharp_MP_PAFF_1r2|✔️|
> < |Sharp_MP_PAFF_2r|✔️|

Above tests are related to interlace support. As of now, interlace 
support is not there in iris driver, as it is gradually evolving w.r.t 
enabling available hardware codecs.

> 
> 
>>
>> [...]
>>
>>> For Venus several tests crash the firmware or crash the device,
>>> so test-suite was executed with extra:
>>
>> But this sounds way way worse
>>
>> [...]
>>
>>> For H.265:
>>>
>>> Only the main set was used on both platforms
>>>
>>> On Venus pass 135/147
>>> On Iris  pass 133/147
>>
>> [...]
>>
>>> For VP9 codec:
>>>
>>> On Venus pass 174/311
>>> On Iris  pass 232/311
>>
>> These two give me hope..
>>
>> Ultimately, I think it's the right thing to do, if only to prevent the
>> crashes you've described..
> 
> Yep.
> 

Regards,
Vikash

