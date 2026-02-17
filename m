Return-Path: <devicetree+bounces-266247-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLFLMPe0lGlbGgIAu9opvQ
	(envelope-from <devicetree+bounces-266247-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:35:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EED14F32B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:35:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55C203009B16
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95B93372B57;
	Tue, 17 Feb 2026 18:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YxmEvdoc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vhv4K44a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9F8371048
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353326; cv=none; b=KUrtTIvT0FUvZgd+kwl1O7RUAEclxczgdb5mv0LDK15RVCgGQhmwT5tJHa4FYFGhYtEIC5/rfRIa4jQ/Z6R4Duyb323d+FwphbvrwYF1NQN1qxdCTteKp3ghgVAHQS2k5al+M0MWrZnndUxEY9utPSmSCtZY0TGkGGf/9xt681A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353326; c=relaxed/simple;
	bh=b96nWBBrMiohzTfpcBlNYGZvPJVElNYZ63gNBTfy7bk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VAqgzJmQY6xF/4MXHktA3ovBQ/dUUerck8shGr48CmOtI7SfCWt48k31ejTk5vUwCD6UrQlc3UOTrIjzRyRNx1gZMN0JjL1ViPsucdNBrrqyvEgHoaEXrPUoWPVauxZLcW7R4eUfnDDutnEdilIaMLTdtSnBzT1Co8GNl7bHYQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YxmEvdoc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vhv4K44a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HGOMLV048727
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:35:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fQ/ZdKhW7VMsbWZT49yCtlud
	XnrHTU2bpqIC7iOTAvE=; b=YxmEvdoce52rIZmFAt+u/PkswMfKPZDQz4XOmsov
	Z6dXVz8KrVivqWQvX374/Os+2ENn0DF2kivvKF5x19YXtZkAB6v3B7/4KwPR710k
	m463OORpEjN4DS0MsJ2kk1pQwMbyf+FpcBVOACPaTNLualQ4Fz/WwGi6v2iJt2ED
	v6mOjbY81TmxnZKZaQoIqn60Hv/oPmkNK3iIxahubsF7uJ1sT6tsJZnoJyY8GfdH
	5K6h4shHtECCOAkBxcftFsIj8/pRdVeLY7UvUnX6UnnBiM91GZCPR4wdLacvLmTH
	rAwpo/wVgruFZQW7gFmDJt85w6hHjTxI6Vh6j2FlQvpSCQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6d83hrb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:35:24 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-896f8dde688so368995756d6.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771353324; x=1771958124; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fQ/ZdKhW7VMsbWZT49yCtludXnrHTU2bpqIC7iOTAvE=;
        b=Vhv4K44aqGkR/cBU0v1xqCcaoLG+OZjnk5yHUDGQaLut+uhuL9aDgVtsy8SrGbsBF0
         zRsktqThhdbDX+KYjflJmMFPMjqLzJzqBXBOH0EZqhJMoZVDKvf6t5UQPq5675w3AZvJ
         r43Bth1EvaigdaL87RtCXGSbVmFYBJWoRly+Qyk2OTF4QN4GrL5tsfQe47sUv8slihPq
         MLmAJXhnaxdHmTWVjgvv0ogjmGc8Ob7XomF1poo7UMh9xt2uDxXo/yogVFKBljfL4aVl
         k8VYgef9yFvRwd/jW/hrAOmgmeDBMAjlDNtvsdGShJwwUSXcl/YohRvSyblo9gCr0rmr
         cr8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353324; x=1771958124;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fQ/ZdKhW7VMsbWZT49yCtludXnrHTU2bpqIC7iOTAvE=;
        b=B5aznG4xuEImMWhcjy5vMgFN0efgxFUqopFpToJhZhgT+Z+3UZ7CGSf7d0Bo54Nb0Q
         pBfu+VetmOs6vkMJSzD3l2Z565eh7uFus5QzIUzoNUQdKQ3kMlQYYn55LwVWhvkTDUMy
         3rWFu4LqmL/zSuEYu0FhaU4Rdd8XPpvpjOsLaf18zDeHUm6HGQmhAXf/xDPF3i3dkaYX
         9Uy8aanzgC0mRRwiMlVQpqIZqbDhkLTljqbmmcPCPc4TdSnIz0jLcCZLJoGfZgNitBgi
         jUQ/AMQnctwTofMb8S8ovBuVtw+Y4ihq6L5bB3KXNjLOXFsn8Y5IKGj+qaWy/oIINCje
         hO7g==
X-Forwarded-Encrypted: i=1; AJvYcCXFwtejj85K8E2Lw6vrbjgwnCVtv+DCWtIe/WN56HMGINHGYlw56n5NnethOew6YH+bZzCSNWC/km61@vger.kernel.org
X-Gm-Message-State: AOJu0YwIDRTsihQsdKKuDxteK8rNz41gh81erU8WCFrYy5JIBcD+S4ru
	dJFXf2Pdq+6YzcW4NfMzP02sX0Ka6yXCanj0QdJwz4zbWo0fH8zJzUV3wlsYryK+QoByUUFtEBV
	vmIvHqaf0aAt6zzJ5jZ7tr8Yx/o1gY2Fwgf4zoqNOyCOPuRfirbC5OQfXxZKW/VQ9
X-Gm-Gg: AZuq6aJMBF22xvw4Ihja9qHUzMtJ7f2GfDJn+m4UITPuXPfwyP/JgxA3tUJH6oPkJXP
	ChsoR8a3H22J45mUpo+N9pZQPkgKHGdWkR1oEs7e7Jy3CvSdGt1EqDB/x1gcwy/CJ6xjcarQuFr
	OoJ01wgrX4xYe1nAVanM9Xj+PUpwpM6cvkOWWkOfeDbgbxr/s6A+M/MrwlbkXBga9Y2oxCZZVas
	0qbXieNt/hlx+NGtPCFWiA9X95ijJdnskq1p7uM1KAeWGuO87buZ/gWlgKMxOyHFqYRCN0fv3TS
	YC8jlxd0eQo7Zs2HfKktbwBYghREOv7Binu7e7TERo7AnH8pBho53zTQSxM20MrTNe7bQ+onCdx
	0OI4dstTCeUKHP2Vsath1IurX3Yle/cY/EErfpADbc2NeblEGpjyfAjjw7pCZ7friWdrREA4AJQ
	iXusNOATm2uPYMPApKv7MTKFh841bKJxFdGH0=
X-Received: by 2002:a05:620a:460e:b0:8cb:31d8:43a1 with SMTP id af79cd13be357-8cb42253ed2mr1810084985a.11.1771353323467;
        Tue, 17 Feb 2026 10:35:23 -0800 (PST)
X-Received: by 2002:a05:620a:460e:b0:8cb:31d8:43a1 with SMTP id af79cd13be357-8cb42253ed2mr1810078785a.11.1771353322928;
        Tue, 17 Feb 2026 10:35:22 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38706928d9esm39925311fa.42.2026.02.17.10.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:35:22 -0800 (PST)
Date: Tue, 17 Feb 2026 20:35:20 +0200
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
Subject: Re: [PATCH 1/7] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Message-ID: <xysdxwyb7nbynbanrn6j7ojgqnnb3ho5yljdiqm22vamlpaax5@ovy3xw7gtckx>
References: <20260126-kaanapali-iris-v1-0-e2646246bfc1@oss.qualcomm.com>
 <20260126-kaanapali-iris-v1-1-e2646246bfc1@oss.qualcomm.com>
 <r642meaclfme7thmb6spkna6xiuhbjuqw6x32jndjqhwqjtbbr@qkcziz3cyxb6>
 <b5ac0ab7-2540-4691-99b8-18d67ac63717@oss.qualcomm.com>
 <dhcsnc6y2r2bcjlc54ebo2hakc4tufub6f4oluqq6etjzdlas2@ggwzwoz24kjc>
 <5170c5df-e22e-46c0-9713-3c4e7bbdbf63@oss.qualcomm.com>
 <logrdwafmqpfjoxyk7aqs3ahb2qhgqrtcxjkvtclxopkxqvrbh@q5zq46wxyrsq>
 <ff6c4a6e-9478-46fe-b17c-5b4221f04b52@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff6c4a6e-9478-46fe-b17c-5b4221f04b52@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bqVBxUai c=1 sm=1 tr=0 ts=6994b4ec cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=NEAV23lmAAAA:8
 a=EUspDBNiAAAA:8 a=a0tnjT4OmPkcAwT1YvIA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDE1MSBTYWx0ZWRfX1FHn0XFea9+o
 k7zFMiy5WS8+3NRqf5RaBLIiTe8opoIWandBWNpsSjMqLvhSDc2AdEobx6QcB2ntVEZcYKGGkKF
 +mE2qQSz/ANA6nicfzD4rk4E1xw7iUdvQS6+otIFKAx9IunybCOOBh1H+NTr2S0AJOlLaCW2ZK3
 IM0bb0WbH9kxMAS5VlvYs2AuvzJ6soInFeTUKIZe/K6A3sCekbuLkdjyYDxSTazDV7tmv17jsmQ
 gXDBNy6kQc11mXt4WaqPMZ1m8u/xOStaa1GYVaG78kJs3FnQqHze/R37ZAr5Opu8RcS5qYzIqD7
 5EAuaaSgJn8G8giDJhQAuq5F/6Z+zJxC7mnBxKx9be3aY4SLhyJMFMbsPqgkZE5ZtQ1feAiw08j
 wUfyktWBgXm7zvxgWKB3mVffdVLsrOHji63hgKAJLN2pGouEbZmGhxWsG5Ng1ezwZBzSOEkxnw3
 KWZx7mhG30p7hVLRaUg==
X-Proofpoint-GUID: yySJWGUE_DzuporqqYtylrarHfXVliM9
X-Proofpoint-ORIG-GUID: yySJWGUE_DzuporqqYtylrarHfXVliM9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_03,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602170151
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266247-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 24EED14F32B
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 11:39:53PM +0530, Vikash Garodia wrote:
> 
> On 2/17/2026 9:45 PM, Dmitry Baryshkov wrote:
> > On Tue, Feb 17, 2026 at 09:04:52PM +0530, Vikash Garodia wrote:
> > > 
> > > On 2/17/2026 8:06 PM, Dmitry Baryshkov wrote:
> > > > On Tue, Feb 17, 2026 at 07:13:39PM +0530, Vikash Garodia wrote:
> > > > > 
> > > > > On 1/27/2026 8:39 PM, Dmitry Baryshkov wrote:
> > > > > > On Mon, Jan 26, 2026 at 05:55:44PM +0530, Vikash Garodia wrote:
> > > > > > > Kaanapali SOC brings in the new generation of video IP i.e iris4. When
> > > > > > > compared to previous generation, iris3x, it has,
> > > > > > > - separate power domains for stream and pixel processing hardware blocks
> > > > > > >      (bse and vpp).
> > > > > > > - additional power domain for apv codec.
> > > > > > > - power domains for individual pipes (VPPx).
> > > > > > > - different clocks and reset lines.
> > > > > > > 
> > > > > > > iommu-map include all the different stream-ids which can be possibly
> > > > > > > generated by vpu4 hardware.
> > > > > > 
> > > > > > It's not how it can be defined.
> > > > > 
> > > > > Do you mean to elaborate the different entries within iommu-map or to
> > > > > elaborate the different stream ids and how they are grouped into different
> > > > > functions ?
> > > > 
> > > > The comment was sent three weeks ago.
> > > 
> > > yeah, if you could still recollect, you can comment.
> > 
> > I think it was more about 'stream IDs for pixel, secure, no-pixel,
> > firmware, buffers, non-buffers and direct insight into the VPU memory'
> > (pure example, as you can guess).
> > 
> > > 
> > > > 
> > > > > 
> > > > > > 
> > > > > > > 
> > > > > > > Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> > > > > > > ---
> > > > > > >     .../bindings/media/qcom,kaanapali-iris.yaml        | 234 +++++++++++++++++++++
> > > > > > >     1 file changed, 234 insertions(+)
> > > > > > > 
> > > > > > > +
> > > > > > > +  iommu-map: true
> > > > > > 
> > > > > > This is totally underspecifified.
> > > > > 
> > > > > oneof would be a better approach describing the possible stream-ids.
> > > > 
> > > > oneOf of what? It is items with the definition of each item.
> > > 
> > > something like below,
> > > 
> > > properties:
> > >    iommu-map:
> > >      description: |
> > >        List of IOMMU stream IDs corresponding to hardware function IDs.
> > >        The number of entries depends on the SoC variant.
> > 
> > Do we again have a story of variable number of entries for the single
> > Kaanapali platform?
> 
> its for firmware stream-ID, which can be managed by kernel or Gunyah.
> Handling for it now would ensure we do not have to change the binding later
> when there is a need.

In my humble opionion the firmware stream-ID should be there, but let
the driver detect whether to use it or not.

Another approach might be:

iommu-map:
  items:
    - foo
    - bar
    - baz
    - ....
    - firmware
  # firmware might be handled by the TZ / hyp
  minItems: 8


> 
> > 
> > >      type: array
> > >      oneOf:
> > >        - minItems: 8
> > >          maxItems: 8
> > >          items:
> > >            type: integer
> > >            description: IOMMU stream IDs
> > > 
> > >        - minItems: 9
> > >          maxItems: 9
> > >          items:
> > >            type: integer
> > >            description: IOMMU stream IDs
> > > > 
> > > > > 
> > > > > > 
> > > > > > > +
> > > > > > > +  memory-region:
> > > > > > > +    maxItems: 1
> > > > > > > +
> > > > > > 
> > > > > > > +
> > > > > > > +        iommu-map = <0x100 &apps_smmu 0x1940 0x0 0x1>,
> > > > > > > +                    <0x100 &apps_smmu 0x1a20 0x0 0x1>,
> > > > > > > +                    <0x100 &apps_smmu 0x1944 0x0 0x1>,
> > > > > > > +                    <0x101 &apps_smmu 0x1943 0x0 0x1>,
> > > > > > > +                    <0x200 &apps_smmu 0x1941 0x0 0x1>,
> > > > > > > +                    <0x200 &apps_smmu 0x1a21 0x0 0x1>,
> > > > > > > +                    <0x201 &apps_smmu 0x1945 0x0 0x1>,
> > > > > > > +                    <0x202 &apps_smmu 0x1946 0x0 0x1>,
> > > > > > > +                    <0x300 &apps_smmu 0x1a22 0x0 0x1>;
> > > > > > 
> > > > > > #define the functions in the ABI, provide them in the bindings.
> > > > > 
> > > > > Ack. will introduce a new header at [1] and define these functions
> > > > > 
> > > > > [1] https://github.com/torvalds/linux/tree/master/include/dt-bindings/media
> > > > > 
> > > > > Regards,
> > > > > Vikash
> > > > > 
> > > > > > 
> > > > > > > +
> > > > > > 
> > > > > 
> > > > 
> > > 
> > 
> 

-- 
With best wishes
Dmitry

