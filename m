Return-Path: <devicetree+bounces-229728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEFDBFB2EF
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:37:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1A2D64E20E6
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27C1728D8D9;
	Wed, 22 Oct 2025 09:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gh+EwBkl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9224B28DB49
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761125861; cv=none; b=GZH2NEKHonkrItU/7Wu1HN5J9e5cmMeGczfji/Vyvl+lS1eclukZ6GHUrV9xaJgfgiolI7tmsEHJ35XrLZ86qaDOCekBXuYNVzRCEqH5xKGgBKN0wysGHYHlvOPMVzHJYAh6y7ioUSo1hK6Q5qrY/bW7DlcpYIBdw87sMGfBie8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761125861; c=relaxed/simple;
	bh=+/MjwfbZvPam/0xlcWCDrWKB23vGSjkX/nOorqR0QbA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=twPrYTT0fMHBA3Nnc8sNTVw7XdIMC5FWWkJOmE7zQ+r/gT/ZUvp7nuuFcT5OX+wx7CzlsI00cY0lEdxRnGhpU6iqOTANA05E53fmp7HCN+KAjp36y74d0+wwou+iEEw6QZJxvq4jDKGtyzO+L3JXWTmTShsWitRemQsB5R9X1nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gh+EwBkl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M484pc029853
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:37:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wlAiuhzDMbNQ1Fw8Ews+PID2
	RPtvP6Wo25eJKEmIUEQ=; b=gh+EwBkl4qsCs7HhmSFWn28pRpHeG6IjmIFVe7rm
	To6R5wI2NT9fzE7S/jHLQZFn6jH62ldmrPmzbWK2Vt1pP/upE0bQn4AyKRZCOqGV
	1nFd2wW3MAFIAyiKrvyb1s34iHS3bm3txpP0G0eQ2JENL3PLrRaFuJ1GSOy18Lpw
	A8yhlzSvgJQWAoaipGgHHMaH3xTA85z9WYkUcErhkUhKhBBwjf0/62Wi77fgqPhM
	oONeSzmzrUJTq276d9/WU8bDZkP7MxOapRCXn5e/zapo33Z2ZUHdtosWE0e+z3Hy
	TKCRQ4csvlsYJsBUdolyAw/Tksf6hwF/aWzl9aRgFaL2Sg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge43e6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:37:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e8a802113bso26476071cf.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:37:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761125858; x=1761730658;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wlAiuhzDMbNQ1Fw8Ews+PID2RPtvP6Wo25eJKEmIUEQ=;
        b=Mxwt5Ni4Nq/hUIR/doCU5sC9CQZIharsvSu96v8n1E1dNFmuaDVZli1NDdqjyjBEmF
         8yN7NaXk93Y4Af6q1kRpTXlnsivdT84Aj1ulQFLP7iOJ1RS/6ds5SlyUeGw+GJMewN2l
         9t5zJ5mog40sGS7hZrnqzCkTc3+hnx1LmudYQzVD56tVLlAEeDjLHl8NI87yt2XRRD22
         NoZWepriS7rxlLzoR3PnZD/LE7K6qJkKjEIWNsZAwJhnf1RpUsN0Th72YTkL8FdNcnO5
         Sz33XMzbMATOy/99lHO2ZAK2TejADRs5Huj84Wio8Sbdryg79N03Y13uBKc/ftmXJ5Hp
         ViIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBZjKFwrtY5S/y7VAoGN2KxCbuLXBcb7Elzlhqs9dGPGWV0JLVxeAIC/ScV4JIB7IWyjn23UCH1BqT@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm4Mw2MIMp9gEprtdYnZBM62eRJiegvRMnbqIvMOA7Js8OEeSa
	cCAooP+Xzk19ato8s0OCjok/EVXx1wdHitXW7Bh0TZNaAjtdBeAjxeHT5CT9FlH5NkFUHBmBO2v
	JCRqXcncoyftC43QTAgJBZltL2VHa4RqTMGj9k5E50J1uhQMtc9QDdiSec2hKm0J0
X-Gm-Gg: ASbGnctBRrtVx4CNb9m+GipiDBORfddRSaz6mXK9xBnnAXmFp56OGgxf5KORgqwLweI
	uL7pxukRr2j90eYjS6muF//dC/z5wn8AYcNPo88vdH3MFHKgK7z4WnoVilQHHS7SJbH3erOLQ+9
	rcjfsvoDG9ujywcO1Vh5knN3i0cNSKc34/dUY4PGqZTgQsIxD1tFRDgkRewmMRcZc3rAIKc7tuv
	BibK6fftDhmAEZrb1K8zC4GdRoCMz0CT440O52LkOcT0A4Kg+LugSMNFxQVHTfYanOCPnDRCyQK
	heMJ54iHjrLSvDCdbBZxaL0z02429eBYLVaqs20SEcBSjk1gUwQF237bT/hjrsm1hr6shMY/9J8
	6dUTDKGWw3eplzFrkHZixMukLufVX5NZui3menQQ8gNLWRtHu+XfIvsg2JHhPrpMsQ29lcEpbpR
	QvKdkr6+ervq8=
X-Received: by 2002:a05:622a:138a:b0:4e7:2d83:59b7 with SMTP id d75a77b69052e-4e89d2b96efmr232633331cf.37.1761125857581;
        Wed, 22 Oct 2025 02:37:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE70UH8P0+7IUvRLiwSQa4wdN/h/jWfuzbCFIRtzRPc21GQfKi9T7kEbCCKp2X/mu4mW5+IJw==
X-Received: by 2002:a05:622a:138a:b0:4e7:2d83:59b7 with SMTP id d75a77b69052e-4e89d2b96efmr232632981cf.37.1761125857114;
        Wed, 22 Oct 2025 02:37:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592ed7e6168sm702834e87.51.2025.10.22.02.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 02:37:36 -0700 (PDT)
Date: Wed, 22 Oct 2025 12:37:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
Subject: Re: [PATCH v2 1/8] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Message-ID: <mtlwpa3m46qwrfjcpa7wapjjnllxopoip4mpnomw2ngteb6btf@2z4hrjr74bts>
References: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
 <20251017-knp_video-v2-1-f568ce1a4be3@oss.qualcomm.com>
 <c9d8f76a-513f-4a09-bba4-cb8f0df1d2fe@kernel.org>
 <034bf6f4-0a49-4973-8536-28526b3409d1@oss.qualcomm.com>
 <d19b1279-3031-43b9-ac73-7e5f990802ed@kernel.org>
 <e1bfadd4-2d53-1953-beef-1350594c5010@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e1bfadd4-2d53-1953-beef-1350594c5010@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX7I+iZRmvHmdh
 X+UGTPTjMC8eXvE8Z6mhpEMc+2TywrQBUKxtKSSgARpntNkA6B0QDo9xbA6gInvRhXMcfi2lM2l
 Qr3cIKr+7QFY0tiXdOVcl/GNpjjfPCPxYdeIpoOCPoUepWGULgt72uuOeB5t62eOr6LkgpVv0bS
 gaQYLj6aAyV8fVo+jNZop41m+qZCLAEHu/kS83QVFokeI+2/cTMJXwrjTaKKAm0VJJ8U+BER/+b
 ASxDXU1dxQzLAvUBqIJyuox5uQBucdKXFW5tRechDNMQfSrgtkkTtLfOtcvzzUF780FshS3N9k8
 rSD2fzFqgnLaJrPM8muOG6LFZ0U8wjPMc4WLB2oll/GitLAAFEiTxunX/nW2oxuvqs1llOs0AB/
 r6IC3DW4sejZpIlGCIzOL+l8//d5jg==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f8a5e2 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=vTb42-yg0zSnFd-snlMA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 1UT4SiNHpDcjzWAddjMgRQHEBSZUO8P2
X-Proofpoint-ORIG-GUID: 1UT4SiNHpDcjzWAddjMgRQHEBSZUO8P2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On Wed, Oct 22, 2025 at 02:37:59AM +0530, Vikash Garodia wrote:
> 
> On 10/22/2025 12:45 AM, Krzysztof Kozlowski wrote:
> > On 21/10/2025 20:55, Vikash Garodia wrote:
> >>
> >> On 10/18/2025 9:28 PM, Krzysztof Kozlowski wrote:
> >>> On 17/10/2025 16:16, Vikash Garodia wrote:
> >>>> +  clock-names:
> >>>> +    items:
> >>>> +      - const: iface
> >>>> +      - const: core
> >>>> +      - const: vcodec0_core
> >>>> +      - const: iface1
> >>>> +      - const: core_freerun
> >>>> +      - const: vcodec0_core_freerun
> >>>> +      - const: vcodec_bse
> >>>> +      - const: vcodec_vpp0
> >>>> +      - const: vcodec_vpp1
> >>>> +      - const: vcodec_apv
> >>>> +
> >>>> +  dma-coherent: true
> >>>> +
> >>>> +  firmware-name:
> >>>> +    maxItems: 1
> >>>> +
> >>>> +  interconnects:
> >>>> +    maxItems: 2
> >>>> +
> >>>> +  interconnect-names:
> >>>> +    items:
> >>>> +      - const: cpu-cfg
> >>>> +      - const: video-mem
> >>>> +
> >>>> +  interrupts:
> >>>> +    maxItems: 1
> >>>> +
> >>>> +  iommus:
> >>>> +    minItems: 3
> >>>> +    maxItems: 8
> >>>
> >>> I don't understand why this is flexible. Make it fixed size and anyway -
> >>> list the items.
> >>
> >> kaanapali vpu generates 8 different stream-ids. Now, boards running kernel in
> >> EL2 mode can list all of them, while boards running in EL1 can have only non
> >> secure stream IDs. Min have the list of stream ids which can be enabled for all
> >> type of boards, while max is for boards which can list all in HLOS given kernel
> >> is in EL2 mode.
> >>
> >> Below crash would be seen if boards running kernel in EL1 mode lists the secure
> >> ones.
> > 
> > 
> > That has to be explained somewhere, e.g. comment, 
> 
> Sure, will add a description for iommus property explaining the same.
> 
> and still we need then
> > EL2 DTS in the kernel. I did not see such so far, but maybe I missed it
> > - can you link it?
> > 
> 
> EL2 DTS for kaanapali is not yet posted to handle secure SIDs. While it is in
> development, describing the secure stream-ids would ensure to cover all the
> hardware generated IDs.

EL2 is a slightly different topic, it most likely requires additional
changes, etc. I'd suggest focusing on a normal usecase first and getting
the EL2 sorted out separately.

-- 
With best wishes
Dmitry

