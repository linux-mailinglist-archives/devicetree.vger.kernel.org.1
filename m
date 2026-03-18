Return-Path: <devicetree+bounces-277304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHXsNWG6umk4bQIAu9opvQ
	(envelope-from <devicetree+bounces-277304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:44:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 863832BD70B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:44:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B534307EDC0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 584863DBD68;
	Wed, 18 Mar 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pOv4QMBB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EysLshdp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C6F3DC4C7
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773844832; cv=none; b=NaOZb/uJuQiJEnwJwt2/adiyw7wDyJYjMO7unsCSWzMC/6y2mdgcshvAucjUKR6BpxtR8CwR8GcYilwVPQNP1M5V113Nkkx0tOBikY8czztqEU7Hq/URvF92V1yTYYiKJBBSXXB65zYttUoxBkgnePy0eFPNfPalcnnytTWC4O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773844832; c=relaxed/simple;
	bh=xG1i/RpFtWOlLZLZ8mzK08pn8j8Jl58PXnEW/Ii+7Lg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KWbzOY4rj4BEPzbIaunRMPB9yTKiC+fsE8GNybV9PcNiq1u2R9yAIRCLW3Zn1pjhicBqa0/CI/EZ05EmszIOklOmoaZGLcSd6ihiQhhytCWzOqD2rBvDy35LFejcJjBZ5riP47wGdTodtbBtwA5BTRnTbvSblBZE8arUVq8A4Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pOv4QMBB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EysLshdp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ICAxKF2878136
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:40:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s2/iXDaWlcUGc9VTFZFfuG04XHynD0RSbFWnWzKw//A=; b=pOv4QMBBhN4XX6vC
	MtYrX4DGH5wHyEGkF1syMhizF+CiStMRQBKpg6oabVuDQQ33iIJG12RqJHrzUR27
	vxi+j2SEIcRZmV2atmxdU9EaeGI442ZN5FdGxStd3u+Ga33PSJ6wORCunznRFEki
	lUA6d97mj9gsTjzFawYEqcHrQZTihraUe4TLuY/QmalD4eY2uxRRZZUirP7rkevL
	/udx5EDr4nTtDs5PlkXpqXxHGDe3Lr/zWrkltXfpoUt1hhekJYKHvyOn6suCmfP5
	fdA+Yp6B/CtItKH5CPrMHBCvWG5KSenroBbYgK1HZPwj5CbstVQM0e5M9kPwENGw
	1GrXiQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr1wy0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:40:26 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-509070bda13so53285721cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773844825; x=1774449625; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s2/iXDaWlcUGc9VTFZFfuG04XHynD0RSbFWnWzKw//A=;
        b=EysLshdpNBQtvzG2rvA0ZFLu7oJVuDrHBlOS+3wifvoslMHnh6Ce5IaQVUZff7aBoH
         Blss/Ec3N1IXcrR7/ctFJD2jvsLBex8eTaH935mStsTnSd+1D0rq8JBPDMG7lQA/AOId
         9qlEMJB9Dw4SI8k83rwur/2YAdVthyuH30stP2Xx4F7FboAjxcPn4IFZvtI+tKUzLngU
         1gbnFp/9kGwSp26VdNzLUDNo0SlSpmtgSHMCF8cNWDmGmQxGYgGe5BTsFA2IqucPOQZC
         nBTn1r9cLsNEFrh+YNY5zH3cjnujE7x1TIyQ7BDIEfRseHifTnOn5KZ5ABHPgH1IIyZC
         akqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773844825; x=1774449625;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s2/iXDaWlcUGc9VTFZFfuG04XHynD0RSbFWnWzKw//A=;
        b=JquzWRtQAdc5VfUijs8jNEPkZ99pigaTtE3HluaHmquEugwLtvXE+D3/nBOoeE7DIU
         Qp3/iYLsR26dXQRdLq+OqBs2uJplQWV9hvAOkYkUNKePx1aetD08sdJMKpPhzH3YrYfQ
         dVcYrCdFICj+9B990n+QN93Hue7kxSchHt8M/MvO8p+MZ9jeO5oP9tTuZNOXQu8Q3ONr
         tUhmAYa/4HLdRNO1COYE4C4AA8e1C4uqx+B0KiLmy0oXMZeRpCJjEqQvj33tv4NDxprJ
         iOycKRd+odY/VhiIw/syhg+QW8KHCLOZcx3Uy+Sd33Ym+jM/uWUVywwpkliho/4jQ5VJ
         U05w==
X-Forwarded-Encrypted: i=1; AJvYcCVKfjSpnabBjqiuKYWr7idWf2YF2iD6MxJEMl5zFUChZRj0aFoffG4ujdWnD/jqh1wbnGF2qiNBcodC@vger.kernel.org
X-Gm-Message-State: AOJu0YyL7sdoPGLcNyl8YC7d6uYLo3NF8iMrn8fBA+8eTH3JDMqA4u5B
	LXxQ/HCFa/oUd7WOmpqY6sDKw6ijNxlv0knufgZF/wKdT89aw8BdmHajJ/rwcStYIGgMC9yBGXI
	7WzsTmMTH30JXOIIPZy0RNQMSEAYV3RbMOXz4eSh4ubjuJhHIVRni8CztgTvI0GoS
X-Gm-Gg: ATEYQzxi8hmn2j8EaFqaYIomRfNzjPR8mv7LwhNpVMVX5zil+iXrcoZAfhWZ9HXqeFI
	kK3mkC5vZ5v2ldwlH8nnq5SZXWDW82sCW74ksXs0h4mphKucWqKNQFL9iKoB4s+QNP8sgJ5YdJN
	hUDNuYnLe9gb6Fs3xnRcZG0TGwCGbOtA5FEdHFw24GXdNTLCZyRO6kowiwiFcNSv3Qw8eGtIN3Z
	Sqg23srGO8a5O4JieWL+2pW0H5jWOrokXCSygOrfODFVvqGxG4tT6xeqKnX1h9dqznqsQ4cVJnT
	oreEjZesYjuGgakHxI3S+0DKeJToNaMISRXR2e5o7Qqe/3Xbc57mvxkHydoyq42s0EiqIbhtSeY
	YLKwU8Tt/h8y9nrlOkygtC/NLyHeF7J9v7bTcKPQ6GXM+73LQcSTw0lZLdnssb9tzUw5UxXbzwx
	AM3GU/dtfc8kzMybOsJkkcSxDty+As+ZWXbbM=
X-Received: by 2002:ac8:5994:0:b0:4ff:a8c1:b00e with SMTP id d75a77b69052e-50997ff8ce4mr93528471cf.2.1773844825127;
        Wed, 18 Mar 2026 07:40:25 -0700 (PDT)
X-Received: by 2002:ac8:5994:0:b0:4ff:a8c1:b00e with SMTP id d75a77b69052e-50997ff8ce4mr93526731cf.2.1773844823181;
        Wed, 18 Mar 2026 07:40:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c7b2d0sm586387e87.72.2026.03.18.07.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 07:40:22 -0700 (PDT)
Date: Wed, 18 Mar 2026 16:40:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Alexander Koskovich <akoskovich@pm.me>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sm8250-asus-obiwan: Add ASUS
 ROG Phone 3
Message-ID: <doixykij5gfpyrkrcumlwdnlu75fxpjvqp44izgtfbuxyhj44e@bb7kp4d2ikfc>
References: <20260310-sm8250-asus-obiwan-v3-0-9ed8f0e71e19@pm.me>
 <20260310-sm8250-asus-obiwan-v3-2-9ed8f0e71e19@pm.me>
 <daa464f2-2052-4eb2-98bc-926ba174ecb8@oss.qualcomm.com>
 <nNinWyYOTp_1MjE-6JI6S4NPPxfZHvnIZLblp0x4t71DVOXn0ScH--kpAs-wHBQVUpgSvIZmOKRMmUVNzs8Vcm8PG3_4hFIW1jVx1RES2sg=@pm.me>
 <4ed72391-fcd2-4ad7-94da-45fe13012953@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4ed72391-fcd2-4ad7-94da-45fe13012953@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69bab95a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8
 a=cm27Pg_UAAAA:8 a=EUspDBNiAAAA:8 a=VdpNLKRrc3EepwXJwi0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: zXKDITTO_6I6q2s5fF_hooSOAC85mTUN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEyNSBTYWx0ZWRfX5Up3O6b8HBi5
 Pm7BoerY4u0gsriPFacL5LMq2V3QRBUXNqMc1gKtR76WNLkLsIZiu/TjmmciYMFaZEqAck/2Gz5
 wyZaCf+zQY9uV+/W6Gfs4XHChVsoHnMeFIV0AJBhl0qrydp5M+W7bjmRHGA0ignnmdNz5+CvjJ8
 v7SAmeRoaT0VilQ0cFXUhKifShmRXr/YN3wkxL74leQb6OUbxmJV6SkgIfAClRwuNAv2CDI+5mG
 M9sIiplaZqiYGKam3WlJDIiw6g0OwXm5hSQZYjYNSG9vfbvKyV4ze/nmZCFCq8F9hAkFF3N6z5A
 /7e3RjFUmb94yONihqHsUgrLT4QCb9Ty+YFYPYQs80nOje0uT5jNZ4UEZ0zbB+NxXq02i1vnDWR
 WO9oL1cIGdopk9GQib/KNjQokMo3OMr6gKnNtGupBLrGHK7Tvsco51HpBzUaYwLrEOoOqUfkILn
 VD3zS1ILfLvKN7xjCAQ==
X-Proofpoint-GUID: zXKDITTO_6I6q2s5fF_hooSOAC85mTUN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180125
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277304-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,oss.qualcomm.com:dkim,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 863832BD70B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 12:29:37PM +0100, Konrad Dybcio wrote:
> On 3/18/26 12:14 PM, Alexander Koskovich wrote:
> > On Wednesday, March 18th, 2026 at 6:28 AM, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
> > 
> >>> +	/*
> >>> +	 * There are also ER & EVB boards, but those have meaningful hardware
> >>> +	 * differences that make them not compatible with this devicetree.
> >>> +	 */
> >>> +	qcom,board-id = <31 0>, /* ER2 */
> >>> +			<40 0>, /* PR */
> >>> +			<41 0>, /* PR2 */
> >>> +			<50 0>; /* MP */
> >>
> >> I would guesstimate MP is Mass Production and everything before that is
> >> engineering samples.. perhaps that doesn't hurt - maybe some curious Asus
> >> engineer swings by one day!
> > 
> > Actually the unit I have is 'PR', it's one I got from ASUS when they were still
> > sending out phones to developers. I guess the units they shipped out were preprod.
> 
> Oh, nice!
> 
> Maybe 'public relations'..
> 
> 
> >>> +		source-pdos = <PDO_FIXED(5000, 900,
> >>> +					 PDO_FIXED_DUAL_ROLE |
> >>> +					 PDO_FIXED_USB_COMM |
> >>> +					 PDO_FIXED_DATA_SWAP)>;
> >>> +
> >>> +		sink-pdos = <PDO_FIXED(5000, 3000,
> >>> +				       PDO_FIXED_DUAL_ROLE |
> >>> +				       PDO_FIXED_USB_COMM |
> >>> +				       PDO_FIXED_DATA_SWAP)
> >>> +			     PDO_FIXED(9000, 3000, 0)
> >>> +			     PDO_FIXED(12000, 2250, 0)>;
> >>
> >> Both ports have the same PDOs - will this kaboom if you plug in two chargers?
> > 
> > Good catch, from what I can see there is zero hardware isolation. Downstream
> > prevents dual sink by only allowing one port to negotiate sink at a time (seems
> > to always prefer usb_1 if both are plugged in, guessing because its used for
> > the dock), but there is no upstream mechanism to handle this as far as I know
> > (not sure if this could even be done cleanly as it'd require cooperation
> > between pm8150b_typec and rt1715).
> 
> Could you please remind me how the two were connected? Maybe we can work
> something out. Sounds like it would make sense for the two to have *some*
> sort of relationship described
> 
> > 
> > Will just drop the sink PDOs from usb_2 and have it be only source to avoid
> > this issue.
> 
> SG as a workaround
> >>> +&usb_2 {
> >>> +	pinctrl-0 = <&rt1715_mux_en>, <&usb2_mux_en>;
> >>> +	pinctrl-names = "default";
> >>> +
> >>> +	/*
> >>> +	 * Disable USB3 clock requirement as the bottom port only supports USB2.
> >>> +	 * The USB3 lanes are routed through the pogo connector on this board for
> >>> +	 * use with accessories, so will need to revisit this when we start to add
> >>> +	 * support for those.
> >>> +	 */
> >>> +	qcom,select-utmi-as-pipe-clk;
> >>
> >> So, is that right?
> >>
> >>                                   ┌───────┐
> >>                                   │ POGO  │
> >>                                   └──┬──┬─┘
> >>                    superspeed        │  │
> >>        ┌─────────────────────────────┘  │
> >>        │                                │
> >> ┌──────┼─┐      highspeed               │
> >> │ DWC3_2 ┼─────────────────────┐   ┌────┴──┐
> >> └────────┘                     └───┤  MUX  ┼───────PM8150_GPIO9
> >>                  ┌─────────┐       └──┬────┘
> >>                  │ GPIO170 │          │
> >>                  └─────────┘          │
> >>                       │               │
> >> ┌────────┐ RXTX   ┌───┴──┐        ┌───┴──┐
> >> │ UART   ┼────────│ MUX  ┼────────┤USB-C2│
> >> └────────┘        └──┬───┘        └──────┘
> >>                      │
> >>                      ▼
> >>                     GND
> > 
> > I misspoke in v3, UART is not controlled via a mux it's just a gate. Was
> > looking at the board previously and it seemed it either went to test points on
> > the board, or USB. But the enable GPIO controls both. Have it renamed in v4
> > staging atm.
> > 
> > But yeah that is accurate otherwise wrt the USB 2 mux.
> 
> Okay.. I don't know whether we have infra to handle it today (+Dmitry?)
> but generally we'd need something like

No, we don't. We have generic muxes under bindings/mux.

> 
> usb-mux {
> 	select-gpios = <&tlmm foo bar>;
> 	// sense it via some notification?
> 
> 	ports {
> 		// conn to usb_2_hs
> 		// conn to type-c
> 		// conn to pogo pin connector
> 	};
> };
> 
> rt1715 {
> 	connector {
> 		// mux conn
> 	}
> }
> 
> pogo-pins-connector {
> 	// mux conn	
> }

I tried designing it as something following mux-controller, but it
doesn't seem to fit. So yeah... This might be the best way to implement
it. But something as simple as this might also work:

mux: mux-controller {
	compatible = "gpio-mux";
};

rt1715-connector {
	mux = <&mux 0>;
	ports {
		// hs
	};
};

pogo-connector {
	mux = <&mux 1>;
	ports {
		// hs
	};
};

dwc3 {
	ports {
		port@0 {
			// endpoint@0 to rt1715
			// endpoint@1 to pogo
		};
	};
};

Or even:


mux: mux-controller {
	compatible = "gpio-mux";
};

rt1715-connector {
	ports {
		// hs
	};
};

pogo-connector {
	ports {
		// hs
	};
};

dwc3 {
	ports {
		port@0 {
			mux = <&mux>;
			// endpoint@0 to rt1715
			// endpoint@1 to pogo
		};
	};
};

> 
> there was a similar attempt (I bumped it up.. maybe it'll be merged soon)
> at describing a pogo pin connector, so part of that may come in useful:
> 
> https://lore.kernel.org/all/20250225223038.879614-2-swboyd@chromium.org/
> 
> but in any case, that's a song of the future..
> 
> Konrad

-- 
With best wishes
Dmitry

