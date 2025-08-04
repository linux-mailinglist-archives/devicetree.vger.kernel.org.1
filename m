Return-Path: <devicetree+bounces-201638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B638B1A05D
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 13:15:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF973189C950
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 11:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FBBF79F2;
	Mon,  4 Aug 2025 11:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LDaAN4Is"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D482135A0
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 11:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754306127; cv=none; b=AbyYw5+WvnTk9elzOx2uM0t5hNaeAoaLuPJUmMeBGmy1XBg+yFiiVBdk7a3Is54Zx33hE2x3U83Gktx5IggrQu+2l/Q/B0vuAhAUuXJUcL17x3ZUj7Ty/Ss21EZgiDBZKFqR+HZ8I7TQ0W0eHkXniTq26F5gr5wsBn5nD3R3X10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754306127; c=relaxed/simple;
	bh=G7VJRvbSdgS+wzOGL901RqaflLzSRJ9pft/+txq/7lI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mAQ3JPlzwTEwf4pLfI0yeGfNqKFNQABDN/cKIq3ywgA3kTjs0AWiSEp72JdY5cBOrHpSQ2rsU0D9vCw9prKYR+5h/rDxJOU6GjPPJgUufFM3c/gm23OpAan2zDjnhGtSTnN4bXs6sriaP+/tnp6FYzKxSc+Rdhktt2tk9izPT30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LDaAN4Is; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5748xLpv007000
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 11:15:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=khqumXgaeHAqtOicptnDS0Wb
	FDwIn2bilvzuMqy8oI8=; b=LDaAN4Is/O4pK5Lt70OteEtPMqmDjYYXCRomm1Eq
	jAeq/HHrrREWIRNOvWmD+2kGBxHhYasKCtlgrOUd9JU8y4XhHfITeipz1f92ob+3
	4bSwK2Q3qrxPnLvaVeJdJWGoZyY32xbdBnjEhZ2qV8TRdb7kE/+LbZC3/Rmyld92
	F0KteQ/E1uKcB0FRqvrrWOqAuwoAOeleT3pcufeUvggvE60P+WSomnhuJRaBss88
	36azY6ZJt6OCsyjRTSxb8Ml6OfX/ZUEG25cKvZA9TP7+YFVSTT4lKMnldXh/cnf9
	g34H/+LI8V+5vWuapipKE0ub9DC0P3ry+8/m93JTHUc7aQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489buqmn31-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 11:15:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4aeb8b6acd1so62423461cf.2
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 04:15:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754306123; x=1754910923;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=khqumXgaeHAqtOicptnDS0WbFDwIn2bilvzuMqy8oI8=;
        b=mILLxxdbv9l4nJtmu68WQWMkKjJTQpZdwXSksSZkflHIAGFmMuUwtnXMPWpZiEqZ6P
         XlmbvbIusDKbSJwUBT+ThaDY+BGwKJ2kHQT9YBoNf1gG5FaAHycZ1e7TfCLaOKFSPNCq
         Xe8LWo9SMNWL6ZzX0Bv8WgsccFJEigoVyc5iqObQBqPQJ3EqzCeizJyBdu3ftZuMP1Sw
         JwELjDCmGHvdjBh/Tgl4WWR5t3KSCSF/0PNRF/g3/GkB/CUkKOC/f10ueqcum5QA8uFJ
         kNhoQgwsktXL1tbH3WpJ4nDgBn8oj69eK5iIRXbkpOdsk8BZRZCdWqsOwwte/VZSsZGC
         j/lw==
X-Forwarded-Encrypted: i=1; AJvYcCVDF1RLraC0oPt3je2UYoC/eNFwnoD2xA3xSLtyNodGXq4/JMmgvdmTgo2KFtKgVcSjCRZhPcwFNfKN@vger.kernel.org
X-Gm-Message-State: AOJu0YzM5Z48S46WA0LbxnDuPn47qt03NdsywR9x9O1FEUWHfVENZlxR
	pDbjzbz2T6jiBz2MSqGQMTkEeZ6iGm0rOgiQp4ddNIg7Z8Tzn0IncwLK8kCeImzndY8fxiE3G1I
	4XRV1hZ978bFmgDjJlfGF8d9KWJ5fTyumxuRVSnxv6MbzL2g+phCjU7hRDEL/xIG9
X-Gm-Gg: ASbGncsSPp3T7QEj6wJRhVm9tLWGJpYZ9gHz8SYi2Vju1Nipttw1dmNggy2qoxNcydT
	A37H3Ho9aQ4GED/MHMV4sJt37wjNRF6SXfGcg48Ow2dHjD0BsB9JSqAhPSSGuI2D6Fpy52GuDa7
	/pVXACwaNh/rHItAtdheehp+Adn38xjvIGnZn6tiC9t6BGv40fEt1cWZJBzwI7ZCMjS+9vEOOCw
	O1w0JuCK+8MOfQ1/jEP41p8tNyHepvI4DoE4US7/U9+g3nj4C/0JaM8ZFGYqwrJr/kjhtxajLvA
	shxaNk1ttDPAQhoV9ASvhdJAYHGkWPGAOl0cNv5Xhd2cCuc6TgR2BAYboHB/ZazSwrQodg==
X-Received: by 2002:a05:622a:91:b0:4b0:799c:14a8 with SMTP id d75a77b69052e-4b0799c15f4mr9055551cf.48.1754306123119;
        Mon, 04 Aug 2025 04:15:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqIXmJ2D9AVE3K0rmg2b6xzkn4wYQT4O3dPGfpm20inAFLC64DHI0V56Q6QLRVEJIOBskO7w==
X-Received: by 2002:a05:622a:91:b0:4b0:799c:14a8 with SMTP id d75a77b69052e-4b0799c15f4mr9054801cf.48.1754306122368;
        Mon, 04 Aug 2025 04:15:22 -0700 (PDT)
Received: from trex (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8e009e465sm5634589f8f.43.2025.08.04.04.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 04:15:21 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Mon, 4 Aug 2025 13:15:20 +0200
To: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, krzk+dt@kernel.org, konradybcio@kernel.org,
        mchehab@kernel.org, andersson@kernel.org, conor+dt@kernel.org,
        amit.kucheria@oss.qualcomm.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 3/7] media: venus: Add support for AR50_LITE video core
Message-ID: <aJCWSAfxBzLYqlQL@trex>
References: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
 <20250715204749.2189875-4-jorge.ramirez@oss.qualcomm.com>
 <4734edd5-8224-4caa-8844-c38dabc6b6c0@linaro.org>
 <aHij+NHG5xbM1paO@trex>
 <8ac6f365-205a-4140-98b1-847f54ce08af@linaro.org>
 <aHjtgHT2Nxmm5nEf@trex>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aHjtgHT2Nxmm5nEf@trex>
X-Proofpoint-GUID: riBT1eGASvpQcRJxyOuKywXbowB03n7_
X-Authority-Analysis: v=2.4 cv=VZT3PEp9 c=1 sm=1 tr=0 ts=6890964d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=kj9zAlcOel0A:10 a=2OwXVqhp2XgA:10 a=p0WdMEafAAAA:8 a=SliKETZjkfTHB_9U9w0A:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDA2MSBTYWx0ZWRfX80Zb9K8Sqaq9
 O/MYo+wZhEvvjfi1UExCsZjYwYWSaP0xxpP/XTtPqspNaAi34Voccb5+tCJmNHNjW50E3/tlTcj
 D09rvCBIA1bNDq6uLTDMCkghXZAbKiA6BZWUqBK7eb65fc33aEqS9IvIN/vdVBi9aQQ52yIBlfC
 rTl9gb0SOBhJXTHbgA/V3mVZMN9e2054UBNu+lLCeZ1XVcVYOas2gZqxmdMZn+LKZ+XTkwBwz0l
 TEZPO0X8ZdMF4/ai9/idCeZL7QkHzWJdfOQ4E3zCtctUWBb47akYFmg1Abbwgxey2vnQCaURo+h
 OwYK7g+/Jh3Fmy2Jfjz1TLCtsR4vgAoslUH5Wn4rfBS+cGrRj+JRsPE4H8PqCW86y4Jnekyy+F7
 MKmUQw7S8iWaLltJ0o5ROzmqhgX8tQRQXCgRLuO/cyug3/59rfeMVbd1+EsaFMQY6fw0anBY
X-Proofpoint-ORIG-GUID: riBT1eGASvpQcRJxyOuKywXbowB03n7_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_04,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999 malwarescore=0 bulkscore=0 phishscore=0
 spamscore=0 mlxscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508040061

On 17/07/25 14:33:04, Jorge Ramirez wrote:
> On 17/07/25 10:29:44, Bryan O'Donoghue wrote:
> > On 17/07/2025 08:19, Jorge Ramirez wrote:
> > > > > --- a/drivers/media/platform/qcom/venus/helpers.c
> > > > > +++ b/drivers/media/platform/qcom/venus/helpers.c
> > > > > @@ -230,6 +230,24 @@ int venus_helper_alloc_dpb_bufs(struct venus_inst *inst)
> > > > >    }
> > > > >    EXPORT_SYMBOL_GPL(venus_helper_alloc_dpb_bufs);
> > > > > +void venus_helper_prepare_eos_data(struct venus_inst *inst,
> > > > > +				   struct hfi_frame_data *data)
> > > > > +{
> > > > > +	struct venus_core *core = inst->core;
> > > > > +
> > > > > +	data->buffer_type = HFI_BUFFER_INPUT;
> > > > > +	data->flags = HFI_BUFFERFLAG_EOS;
> > > > > +
> > > > > +	if (IS_V6(core) && is_fw_rev_or_older(core, 1, 0, 87))
> > > > > +		return;
> > > > > +
> > > > > +	if (IS_V4(core) && is_lite(core) && is_fw_rev_or_older(core, 6, 0, 53))
> > > > > +		data->alloc_len = 1;
> > > > > +
> > > > > +	data->device_addr = 0xdeadb000;
> > > > > +}
> > > > > +EXPORT_SYMBOL_GPL(venus_helper_prepare_eos_data);
> > > > This function doesn't appear to have alot to do with AR50_LITE as it
> > > > pertains to IS_V6() and IS_V4().
> > > > 
> > > > This I think should be a separate patch with its own commit log to describe
> > > > the quite complex logic of version numbers going on here.
> > > Let me give it some background:
> > > 
> > > According to the HFI specification, EOS (End-of-Stream) buffers must
> > > have 'valid' addresses. While the firmware currently appears to make no
> > > use of the EOS buffer contents, allocating and mapping them would have
> > > been a better driver choice IMO. Hoever this one has better performance
> > > which is probably the reason why it has stayed.
> > > 
> > > The firmware then does perform operations involving the buffer's size
> > > and length fields, and enforces boundary checks accordingly. On the
> > > AR50_LITE platform, an earlier firmware version lacked a check on
> > > alloc_len, leading to a division-by-zero scenario.
> > > 
> > > This has been addressed, and we plan to release firmware version 6.0.54,
> > > which includes the necessary boundary check for alloc_len.
> > > 
> > > I should probaly replace IS_V4(core) && is_lite(core) with
> > > IS_AR50_LITE() instead of trying to give it the appearence of a design
> > > feature.
> > > 
> > > seems the sensible thing to do, right?
> > 
> > I'll stipulate to all of that.
> > 
> > I know I'm being pedantic but, the title and subject of this patch is
> > "AR50_LITE" does stuff.
> > 
> > As traveler from a mirror-universe - I would read the commit log here, look
> > at this function and be none the wiser what was going on.
> 
> right this is because I think you saw through my inconsistency.
> 
> The truth is I should have written the function as below; and I think
> now there is a case for it being in this patch since it is addressing a
> firmware issue on the firmware release supporting this core which the
> patch is adding the functionality for.
> 
> void venus_helper_prepare_eos_data(struct venus_inst *inst,
> 				   struct hfi_frame_data *data)
> {
> 	struct venus_core *core = inst->core;
> 
> 	data->buffer_type = HFI_BUFFER_INPUT;
> 	data->flags = HFI_BUFFERFLAG_EOS;
> 
> 	if (IS_V6(core) && is_fw_rev_or_older(core, 1, 0, 87))
> 		return;
> 
> 	if (IS_AR50_LITE(core) && is_fw_rev_or_older(core, 6, 0, 53))
> 		data->alloc_len = 1;
> 
> 	data->device_addr = 0xdeadb000;
> }
> EXPORT_SYMBOL_GPL(venus_helper_prepare_eos_data);
> 
> what do you think? this is really just adding a the AR50_LITE line to
> the existing implementation.
> 
> > 
> > The EOS check is a fundamental HFI capability which is why I again reiterate
> > it deserves its own commit log with the above explanation - word-for-word
> > would be fine from my POV, to explain what is going on.
> >
> 
> umm not sure yet but if the above does not make you change your mind
> I'll do it.
> 
> > Long live the Empire!
> 
> :)
> 
> > 
> > ---
> > bod

will drop this - not needed since the decoder will not work except with
the incoming 6.0.55 release (see below)

https://gitlab.com/kernel-firmware/linux-firmware/-/merge_requests/630

This firmware - on top of supporting the encoding functionality- removes
the need for the dummy length.

