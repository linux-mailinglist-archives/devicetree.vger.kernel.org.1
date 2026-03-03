Return-Path: <devicetree+bounces-270784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MsUOGVgp2lvhAAAu9opvQ
	(envelope-from <devicetree+bounces-270784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 23:27:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FB61F7F93
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 23:27:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 32AE83033E4F
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 22:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E59B423A8B;
	Tue,  3 Mar 2026 22:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ngFWalpq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jECtv112"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89CB3C277A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 22:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772576852; cv=none; b=nBvnnvDgNp4PPVvfe72gOWAMSch7r8QJqCQ2SZxp+4rswLB7/E8RcgAPPJGFqOu1YQIx4xqlgCryoDNoDsasuzS9N1qonKtA5E02Dk330PL5EZOsaas5x2KnuxXojOsWjQhi3WxzIXRvpXDkIwf2uZ+AeZVi0WKbXP6yaToaUwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772576852; c=relaxed/simple;
	bh=kUiCMni+mSdLNaS6+bi0vffQF5/T2BCKuXPlaqtnkqA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MXvqcL507FedpmtBuXi1xfBQhHbUrAKHhHuBKF2jGC72GOFXUIUzb50C4qwee4+U9kncuIN+1BeaUA5vzAQmDJMKJxuNon4lzK2luz5Tb+1rrjaqz6Gl+9Z2ac9RUOiMq0HQ/VvYmnFtRD0alqaMKm7V5BbJk0+bpG/thI/5LSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ngFWalpq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jECtv112; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623KsaWw592680
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 22:27:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4bi3Gp9rCUijoG+XiXSdtsQm
	sC243pZHx3H6hSlT6Fc=; b=ngFWalpqxSqsS2O+cgHy4sQEJZGw4Fi/0d0BMu0Y
	cl9Ou5OC/9fkTkhvZVVBHH+LWrK6IEpgjLBZ2JawUHh6ORX00lmz3xbXnWkZaSAN
	pWMIFbhBHCrj3Rd0kikypUn++uKeawwED0b2ZNExX6TEpImWS3JJpG+OxVbBpSaK
	3PA9iiKTzswecDjbtFucrx9eVYGqIHXCLwLnNbfAawbebq+A+mQKnPsEFCPyGvBG
	AG/4Jge8vZJOV51k05Rq+Wk6XFg8cUsYG/xAjc2NiddPN5gVmKe45jeEh3M7VV1t
	EjMq3gg3qNQAtAS5Krt0ZDm4nEch7QJELLcKBYUX2m+mUw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp73h88ra-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 22:27:30 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-506b4005ab7so669845111cf.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 14:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772576849; x=1773181649; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4bi3Gp9rCUijoG+XiXSdtsQmsC243pZHx3H6hSlT6Fc=;
        b=jECtv112ikpvVc0LMdPgu+UVGnK2S0lBRdTWijlzVH6A5VknnrjyJeiQtFYJ8bzOfN
         /WD5BAoPv9drqxYFk5lwWgfSWtPle6gx27984UZTmCKgkwdQFiABx2aV9/FgFlpu8Wgb
         c6qVXUPPoQc3XGPUE2kaGuXhONlbayJeHn4X6mzF4OiU2PhEYiCb0/WoDbQVpjfnrOl2
         lrr0HQb7rtfBh0OoxU0Fww2avxXNjg37KzithVYhjqqfKv8fWWM2xZn9ZTDiw0QkQYsa
         ID9MqDPBB3vlBwqbJSs7st9a20PAjyvCv8iggSIkv8Xd7IwYxA94czwXpIb9nB9R9cYy
         DK/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772576849; x=1773181649;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4bi3Gp9rCUijoG+XiXSdtsQmsC243pZHx3H6hSlT6Fc=;
        b=lcj+2ibPz/c/qKPnIjwDM0UbyxewMWxU01ZRNDMn4CkELbxIeyz1VtZDxYnXb0wvzv
         KgI+WSlOKPgV9myCop41UDte1kc1yaAtswoZIyDk1Gb0EXXMY4A7GgRFnwgg3U98xEpv
         vlEekqgAja8EYv9rctYtqLnOYQ2Qp4IiDV07hOj2ld9eqwHLRKOunbUlUYPqJRUmfXDW
         nofQSa6VKp8nw0xOOeXnmZLojEPLJZs1X5hGfFnDQ5wNKa54FE1kNSsAPawXU2CMHJHi
         wfAENtdPd9Lho9yfqcR+15x4RqCeFgqOMsZ2ZukyeN/CrVngw9ih52IEddQKMZwltFEL
         PCXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHrlf6aYpLz2ZiAg0JoHVrznR1mM1xMDC0w2AZF5RqaE0YM+S1LkdMuhQcbKko2yTG0VSXw812tl6a@vger.kernel.org
X-Gm-Message-State: AOJu0YxcqDlSCTxxc4bOfMQ6DCXrqJdgF/FzJoFN0Vft6BjSQhVLJLgp
	2WMMJidjZI6x1cHMjs39Q+kr58wEfUCv/oPbnt7ES38Z/D5TWmi25OT3Z+qFT1NC/ThJEn82Q6b
	C1OXlTW5TcXh9kgZVAIAcRlO0LTyB8wGgy+6J1HFkjWGP9gkjvs3jYUGSiE3ralsY
X-Gm-Gg: ATEYQzznSfqAs3f0788rOGNjuhzhqmMf154fRd3amRHFVGp+twBhvPuPLUe1kIS7dJc
	eVEre4CFhU+SoxcTC5i3aP6KX4sF9dQNCLNIgL83sZOnpXcERoyRxgevsPw8wOsJwlxQKM1P3kE
	fg22pGclxIhRloKnHXN4UY56xnxulsWMrMn5XmK8nwIN4jflib4qrPOnELoz2pu8No+/VEkfzU6
	Qv70unCGAqsC9BYi7H9e0QimPn/T5Hzu5Bz5zmA4w2MxzwJPA/Gxt+n1SQlhQkqfjw06hdS/h8P
	mp9R1h96erX/bGC/Ko0uP05wpyEafXDQiUymuPqiFR6RdlN8n7my9cirJ0233MyhAWLuxe8EyQf
	5QB/C2PfaVac2PBTp8LOKCGjXWetDMIFHJqeNco/sSYJAFtCceltOk0KIV6kcyB0lH437w1EqFA
	AL1BWis0NHHMXoVzGTfB/lzDXDULokwNl4Drg=
X-Received: by 2002:a05:620a:1a1f:b0:8ca:305b:749b with SMTP id af79cd13be357-8cbc8f3626bmr2244610885a.60.1772576849163;
        Tue, 03 Mar 2026 14:27:29 -0800 (PST)
X-Received: by 2002:a05:620a:1a1f:b0:8ca:305b:749b with SMTP id af79cd13be357-8cbc8f3626bmr2244606585a.60.1772576848655;
        Tue, 03 Mar 2026 14:27:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12357d2f5sm869131e87.39.2026.03.03.14.27.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 14:27:27 -0800 (PST)
Date: Wed, 4 Mar 2026 00:27:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v2 5/7] media: iris: add helper to select context bank
 device
Message-ID: <jgygscmwovezkytizhh54cmmu5etgv23bgopfqrql3qj7zlhxh@adxo2b7izlrc>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-5-850043ac3933@oss.qualcomm.com>
 <bi3i37ho3ppzlgdx264ohxpcem3nwumjelzckf4x5uzdj5rt7a@2y2jrilmfimj>
 <1dc86b00-9a18-482c-94b1-96692c1dd530@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1dc86b00-9a18-482c-94b1-96692c1dd530@oss.qualcomm.com>
X-Proofpoint-GUID: v86p8rTM5hB0uXnNmrF4fMbLwoc1khvW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE4NSBTYWx0ZWRfXxXsJZa3oOqSJ
 qv8YxZYAOff8K4DOoARJR4j0Eu21rsy7EHt5vQEQtHuYV+BVHnM04Fb2wbKYOqvKqOlBScvwU1t
 a97bKuBbPEq1Dkr62YfkyzstGxFonuSrDpKZLzd/pJvYXks+e6bnKb6lxW1oxXdLYfIspkfXnBP
 GBtXhT/3tAPqVsMRgUzy899/pThVfdUHvUqClfhwu6OH1i3VUxpbJQaAZ7nYWADLUd7KmQlQhgZ
 6ghePzODSBCxf/0t4K1Mwn3P7xxrCdhpSoybaSSv8xzRnrz9X40L/pwYeGzw8oj0faqqYxYfwBl
 OUSjOImXMwqGIf1GVj3+vnvNZWHNbbu0WE/c728npY+P7iD2Bs7cnS2fyqDlrYyeHCJI9XFkcl4
 5dszCqUVcTspL8l9S048NqIrZz8yi6eb63T2Jtc+Iy+Cf1tx1edhgKZQuLbUwWTXkhjT6ohXlmb
 v0z0Pv8vFXHIrZicFaA==
X-Proofpoint-ORIG-GUID: v86p8rTM5hB0uXnNmrF4fMbLwoc1khvW
X-Authority-Analysis: v=2.4 cv=BpWQAIX5 c=1 sm=1 tr=0 ts=69a76052 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=I8bSfGjBC853jA9yTMYA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030185
X-Rspamd-Queue-Id: E2FB61F7F93
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270784-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 12:46:27AM +0530, Vikash Garodia wrote:
> 
> 
> On 2/28/2026 1:57 AM, Dmitry Baryshkov wrote:
> > On Fri, Feb 27, 2026 at 07:41:21PM +0530, Vikash Garodia wrote:
> > > Depending on the buffer type (input, output, internal and interface
> > > queues), associated context bank is selected, if available. Fallback to
> > > parent device for backward compatibility.
> > > 
> > > Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> > > Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> > > Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> > > ---
> > >   drivers/media/platform/qcom/iris/iris_buffer.c    |  7 +--
> > >   drivers/media/platform/qcom/iris/iris_buffer.h    |  2 +
> > >   drivers/media/platform/qcom/iris/iris_hfi_queue.c | 16 +++---
> > >   drivers/media/platform/qcom/iris/iris_resources.c | 60 +++++++++++++++++++++++
> > >   drivers/media/platform/qcom/iris/iris_resources.h |  2 +
> > >   drivers/media/platform/qcom/iris/iris_vidc.c      |  4 +-
> > >   6 files changed, 79 insertions(+), 12 deletions(-)
> > > 
> > > @@ -177,3 +178,62 @@ int iris_create_child_device_and_map(struct iris_core *core, struct iris_context
> > >   	return 0;
> > >   }
> > > +
> > > +static enum iris_buffer_region iris_get_region(struct iris_inst *inst,
> > > +					       enum iris_buffer_type buffer_type)
> > > +{
> > > +	switch (buffer_type) {
> > > +	case BUF_INPUT:
> > > +		if (inst && inst->domain == ENCODER)
> > 
> > Can inst be NULL here?
> 
> during queues init/deinit, instances are not created.

Is this function being called during queues init?

> 
> > 
> > > +			return IRIS_PIXEL_REGION;
> > > +		else if (inst && inst->domain == DECODER)
> > > +			return IRIS_BITSTREAM_REGION;
> > 
> > Are there any other possibilities than encoder and decoder?
> 
> will simplify it as
> 
> if (inst) {
>     if (inst->domain == ENCODER)
>         return IRIS_PIXEL_REGION;
>     else
>         return IRIS_BITSTREAM_REGION;
> }
> > 
> > > +		break;
> > > +	case BUF_OUTPUT:
> > > +		if (inst && inst->domain == ENCODER)
> > > +			return IRIS_BITSTREAM_REGION;
> > > +		else if (inst && inst->domain == DECODER)
> > > +			return IRIS_PIXEL_REGION;
> > > +		break;
> > > +	case BUF_BIN:
> > > +		return IRIS_BITSTREAM_REGION;
> > > +	case BUF_DPB:
> > > +	case BUF_PARTIAL:
> > > +	case BUF_SCRATCH_2:
> > > +	case BUF_VPSS:
> > > +		return IRIS_PIXEL_REGION;
> > > +	case BUF_ARP:
> > > +	case BUF_COMV:
> > > +	case BUF_HFI_QUEUE:
> > > +	case BUF_LINE:
> > > +	case BUF_NON_COMV:
> > > +	case BUF_PERSIST:
> > > +		return IRIS_NON_PIXEL_REGION;
> > > +	default:
> > > +		return 0;
> > 
> > dev_err(dev, "unsupported buffer type %x\n", buffer_type)
> > return -EINVAL;
> 
> these are bit fields, returning -EINVAL would still match some bits and can
> make the logic as true. 0 can be defined as IRIS_UNKNOWN_REGION

Yes, sounds good.

> 
> > 
> > > +	}
> > > +
> > > +	return 0;
> > 
> > Drop
> > 
> 
> Ack
> 
> > > +}
> > > +
> > > +struct device *iris_get_cb_dev(struct iris_core *core, struct iris_inst *inst,
> > > +			       enum iris_buffer_type buffer_type)
> > > +{
> > > +	enum iris_buffer_region region;
> > > +	struct device *dev = NULL;
> > > +	int i;
> > > +
> > > +	region = iris_get_region(inst, buffer_type);
> > > +
> > > +	for (i = 0; i < core->iris_platform_data->cb_data_size; i++) {
> > > +		if (core->iris_platform_data->cb_data[i].region & region) {
> > > +			dev = core->iris_platform_data->cb_data[i].dev;
> > > +			break;
> > > +		}
> > 
> > You really seem to overcomplicate things. Replace array search with the
> > indexed array access. Much easier and much better.
> > 
> > enum iris_buffer_region {
> > 	IRIS_PIXEL_REGION,
> > 	IRIS_BITSTREAM_REGION,
> > 	IRIS_NON_PIXEL_REGION,
> > 	// add more when necessary
> > 	IRIS_NUM_REGIONS,
> > };
> > 
> > struct iris_core {
> > 	struct iris_cb_device cb_devices[IRIS_NUM_REGIONS];
> > };
> > 
> > region = iris_get_region(inst, buffer_type);
> > dev = core->cb_devices[region];
> 
> all the regions may/may not be present in all SOC

You can check for dev != NULL afterwards.


-- 
With best wishes
Dmitry

