Return-Path: <devicetree+bounces-271341-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULEOE0n7qGnVzwAAu9opvQ
	(envelope-from <devicetree+bounces-271341-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:40:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CA820AA03
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:40:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D54B8301C92A
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 03:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC5EA27E1C5;
	Thu,  5 Mar 2026 03:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tv6KIY4J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FPsx070w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6064926E142
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 03:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772682041; cv=none; b=kqlzxkWzzByasC+brBbdl+sRZDLAPMqp3kKnd5ZXvb611yb/Tnp6N9DEzgPb/3bw23IHKqv2B7uU/uXNK8OvlQM4vMJ8M7n9jt4/39w2gfIhrDMTLf9/m4Pg+SVcza3Eo7WeIBBaj11abCcZAHT8gEPpC/QGanidT26aX56OPz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772682041; c=relaxed/simple;
	bh=nDoC+qnqVRCZsKqhxdGrKL20obiUbD4qrET7VBrVKK8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cSLVFmcng8UkLodg8D3lnlyO5sFiuGLWZYz0qxFwxFRYgleRw0HJ+LdPMFgMzgNot0boVNUGItbJoaDmyIqL97PmN6qKrYX9/C1hIf2X35YhTQTkKMTchc3lLbWYJJMxa1c0rDGcFKP2PDgnGJH98/WKEgmwwZuc5B+PyRgxoUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tv6KIY4J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FPsx070w; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6251BkFp628707
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 03:40:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BCkvYcM+Qnh0dWitG7lZ1F9Y
	4kuK+yrC8gFfslC4rbo=; b=Tv6KIY4JUfp2Qx25CJV1DXyqroVd11nXyEX74ZfK
	uds3p3QsLpIKEWE3f6hdpQS0tesbPKyEKWLk0eCM+nVrNWoyZ/JoMja+6TKwMLYR
	RERt1Ph0uTIE/VJhgMTj1UVI25tMfVAuTX6bbeeAYMsKzoiqvrCqRAvS75xC/whg
	Qc9US4ciu1duBAmY3CBorZ8R8DWIsguLvXk4T2ZHqKwesifwA0yujzqv+bpg8LnL
	TpKT5GjCWsk85lBykjQF+e8nPI9LjaXMJoaUMlHjErOAB7y6KFykdFCANLT8N8XS
	8Wf5+W1wNQovbDV2O8rLBzzByCIpA+CPu7FvoW1TwqsyjA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0m1mdh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 03:40:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3b0d938dso5197310385a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 19:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772682032; x=1773286832; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BCkvYcM+Qnh0dWitG7lZ1F9Y4kuK+yrC8gFfslC4rbo=;
        b=FPsx070wCl62TAxMbqLKCaljqHiH/tTsL/evYjLnThDmvVyhh3PoDkv/z21gbQyPBc
         4mv/KIvZo7wan7K9MQfEGO5E2wnHGLkIrGnXcjqOdKqMJKeFvKX8cFHNPpzboFyDuMOz
         ZEhtN2yzoqrvhfvEiSRzmXoPiyQwpvKrXvPlYlfqxIvOX7hrEAm3OTNpIifjs2nYiK/F
         KhibSqq+5CSBGR3tpJWcOVWPlrJRFeUfEwhYE7F7QCEIa2Ldk675fma7ZxZbVRNo0Lab
         D17SbhAi5shBqBnzgJ3qBMBtwZWdTqdHeb0YPESDnPTwkKIthQS057o6Fr9G4QX/Uu9a
         l2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772682032; x=1773286832;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BCkvYcM+Qnh0dWitG7lZ1F9Y4kuK+yrC8gFfslC4rbo=;
        b=GvnMu1xd9KgjhGMetlZw8NquObkzcA9ohHuw1RpGDG5iTKj+Utg1C61Uux+QE+DOq6
         gyXhkPjj1yk8fnZm1alrZAkwP2/jBJDujxN/m/NT7xg6JDQ+sIgH5RmJ9IqZnPCPaEgK
         gRGWej0TocPDLIrdPjpKN8/Om58mMApZY2VdOlhQGg3z38/QsJSzENoF3u0uVnwvEiyF
         7CgaMrvCNEopRyKBbrvY8bbEdbB156eUn2AzdpMuaKlPE/J/2i+Xrl0rvn0AWEYI8axu
         rCuU2629/NSUhhO3Wg3vVM+pxbd+6nHLeSa9MSx96wkmvwfGBnU5Ht+rkvILy5PEEk+8
         miyw==
X-Forwarded-Encrypted: i=1; AJvYcCU4FmClMm6Ii4+Br8QecDADmE4bLDX+1iLvlMkiB2E8wZ3ggEf8Og0Umh8aslI/jUxPMALC3sjkulIy@vger.kernel.org
X-Gm-Message-State: AOJu0YwUE3vGb1GY/BLHS16hgJTSy9NSRzYWY8/a4Jk8IFFSt5V0ACzo
	i4/8fl8lpttHYwuWLcxh+hoKVZxryxRfP8jJ3W0LyDMhhZHhBNjyn5h3vQ7M8do0nc14NFqLaSF
	CjaoDbqW6s/4VbG9yrl58cniMMwb4otEsX5ngsQnQLp6+k2qRInL+f9ozZdyuKoPb
X-Gm-Gg: ATEYQzzoJcUquD0jyKRI2aR6vwxFCFy09RJorFSYaW3tQy14B9/6pL5gw24f5SeSLjy
	VQc9tImaBLclOxa9dkKVctlTnYxXk2DPd95tXeOPmK4mab20RWHXXibEl46hp8M/pbZNlVuKl5p
	ut47giXKTl12cKuZx0RaqOEpiTI0fIkMJ1uTB/vYnMgjSNWp2IkMdeXGIIbCGhPtMG0NjL/2iwk
	/xXoe4ZlYjNig8NL9fD90F9NaITHJh9bxpKuKuwqhbHu0AZnf9dt66rXJUQpldMOCLXy7g1kG2V
	rb/PXXrwUGD7a2HMueq6zmEI09g/jmIUKXn0e9RwuhYKjpmYco0oBeFOVeN3+uNQydFZcStTd2f
	05egdzvnuwD9MsZfZP3LoFgBe8QhKyv2O04O2DGOXK+srrvLKU9lhhmV4SI3cfBX+MowolFVOs+
	GUfAAflB26Qj/K7po/HX+x/+yA1At+FF3wpX4=
X-Received: by 2002:a05:620a:370a:b0:8cb:baea:89c4 with SMTP id af79cd13be357-8cd5aef2c3bmr592399185a.24.1772682031613;
        Wed, 04 Mar 2026 19:40:31 -0800 (PST)
X-Received: by 2002:a05:620a:370a:b0:8cb:baea:89c4 with SMTP id af79cd13be357-8cd5aef2c3bmr592397785a.24.1772682031145;
        Wed, 04 Mar 2026 19:40:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a1337e3a51sm85153e87.56.2026.03.04.19.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 19:40:30 -0800 (PST)
Date: Thu, 5 Mar 2026 05:40:28 +0200
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
Message-ID: <2coz4rmx2w3iz4f6pp5d26pzwvu246cavauiiiq6bclndczxya@r4cio7nwknwt>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-5-850043ac3933@oss.qualcomm.com>
 <bi3i37ho3ppzlgdx264ohxpcem3nwumjelzckf4x5uzdj5rt7a@2y2jrilmfimj>
 <1dc86b00-9a18-482c-94b1-96692c1dd530@oss.qualcomm.com>
 <jgygscmwovezkytizhh54cmmu5etgv23bgopfqrql3qj7zlhxh@adxo2b7izlrc>
 <22b3e2e9-b855-487e-868f-e72fcbbb22cd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <22b3e2e9-b855-487e-868f-e72fcbbb22cd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=e6wLiKp/ c=1 sm=1 tr=0 ts=69a8fb30 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=gatHO16CKhhCwir7Zf4A:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: jlk7rFldtnVaRRqQFbRECbk5aiEG-CxG
X-Proofpoint-GUID: jlk7rFldtnVaRRqQFbRECbk5aiEG-CxG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDAyNiBTYWx0ZWRfX1w5cNHThFB54
 6cFblcB+ZpkcR7PoOC2PzcmNMv/g9YzwafSSJLhLL+Cr6tQXBou9Cs3JkkGpzkCPzhsyQ1UOjia
 axsDIzS5159lMuQc3/5pcOUkuSc/cs0eCmaF+iuBixFx6qGTKU2zK6b8xZebtU8OSITNcNwGq7v
 GqX9/BZkguOkYALQXypbls/Ls9CDQ92jE3AS0mh/aueCI4WQBzEgAb/ZUA0UYj981TmJqZYn4Yz
 Ge8iLnjooCfnVNP6tQPKWQdRsvHdkTaXeXxLET8WQ0VRzP34k+aJfUI4DdcU0qFj6hNzBwSJmB5
 HKC0O2Opj45RMXxiUOaCSUNyiBLUzDpqfMJ3MsUpwjHFrYABs70nvRYb6ovwAwsf0L4eKFn0a75
 NG2iQt46CbrsqntrfS4zZZhhjRfR8f5zr78L3IeeL8hhDvkxJC4nLgoRcw22w0owyCUWc1LmidM
 xgIs14Fb16JCoL5vftQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050026
X-Rspamd-Queue-Id: 03CA820AA03
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271341-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 08:59:24PM +0530, Vikash Garodia wrote:
> 
> On 3/4/2026 3:57 AM, Dmitry Baryshkov wrote:
> > On Wed, Mar 04, 2026 at 12:46:27AM +0530, Vikash Garodia wrote:
> > > 
> > > 
> > > On 2/28/2026 1:57 AM, Dmitry Baryshkov wrote:
> > > > On Fri, Feb 27, 2026 at 07:41:21PM +0530, Vikash Garodia wrote:
> > > > > Depending on the buffer type (input, output, internal and interface
> > > > > queues), associated context bank is selected, if available. Fallback to
> > > > > parent device for backward compatibility.
> > > > > 
> > > > > Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> > > > > Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> > > > > Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> > > > > ---
> > > > >    drivers/media/platform/qcom/iris/iris_buffer.c    |  7 +--
> > > > >    drivers/media/platform/qcom/iris/iris_buffer.h    |  2 +
> > > > >    drivers/media/platform/qcom/iris/iris_hfi_queue.c | 16 +++---
> > > > >    drivers/media/platform/qcom/iris/iris_resources.c | 60 +++++++++++++++++++++++
> > > > >    drivers/media/platform/qcom/iris/iris_resources.h |  2 +
> > > > >    drivers/media/platform/qcom/iris/iris_vidc.c      |  4 +-
> > > > >    6 files changed, 79 insertions(+), 12 deletions(-)
> > > > > 
> > > > > @@ -177,3 +178,62 @@ int iris_create_child_device_and_map(struct iris_core *core, struct iris_context
> > > > >    	return 0;
> > > > >    }
> > > > > +
> > > > > +static enum iris_buffer_region iris_get_region(struct iris_inst *inst,
> > > > > +					       enum iris_buffer_type buffer_type)
> > > > > +{
> > > > > +	switch (buffer_type) {
> > > > > +	case BUF_INPUT:
> > > > > +		if (inst && inst->domain == ENCODER)
> > > > 
> > > > Can inst be NULL here?
> > > 
> > > during queues init/deinit, instances are not created.
> > 
> > Is this function being called during queues init?
> 
> yes, via iris_get_cb_dev()

I think this is a part of overcomplication. queue init uses
BUF_HFI_QUEUE, which always maps to NON_PIXEL. If you remove all
indirection and device lists, you can access necessary device directly.
BUF_HFI_QUEUE looks like an extra entity created just to get the device.

> 
> > 
> > > 
> > > > 
> > > > > +}
> > > > > +
> > > > > +struct device *iris_get_cb_dev(struct iris_core *core, struct iris_inst *inst,
> > > > > +			       enum iris_buffer_type buffer_type)
> > > > > +{
> > > > > +	enum iris_buffer_region region;
> > > > > +	struct device *dev = NULL;
> > > > > +	int i;
> > > > > +
> > > > > +	region = iris_get_region(inst, buffer_type);
> > > > > +
> > > > > +	for (i = 0; i < core->iris_platform_data->cb_data_size; i++) {
> > > > > +		if (core->iris_platform_data->cb_data[i].region & region) {
> > > > > +			dev = core->iris_platform_data->cb_data[i].dev;
> > > > > +			break;
> > > > > +		}
> > > > 
> > > > You really seem to overcomplicate things. Replace array search with the
> > > > indexed array access. Much easier and much better.
> > > > 
> > > > enum iris_buffer_region {
> > > > 	IRIS_PIXEL_REGION,
> > > > 	IRIS_BITSTREAM_REGION,
> > > > 	IRIS_NON_PIXEL_REGION,
> > > > 	// add more when necessary
> > > > 	IRIS_NUM_REGIONS,
> > > > };
> > > > 
> > > > struct iris_core {
> > > > 	struct iris_cb_device cb_devices[IRIS_NUM_REGIONS];
> > > > };
> > > > 
> > > > region = iris_get_region(inst, buffer_type);
> > > > dev = core->cb_devices[region];
> > > 
> > > all the regions may/may not be present in all SOC
> > 
> > You can check for dev != NULL afterwards.
> 
> with one CB to multiple region mapping, this logic would not work.

I'm not sure I follow. We always need only one CB device and we can
always access it (or check that it's NULL).

-- 
With best wishes
Dmitry

