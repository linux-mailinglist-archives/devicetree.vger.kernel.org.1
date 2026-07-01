Return-Path: <devicetree+bounces-318076-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DnnNJeZcRGpItgoAu9opvQ
	(envelope-from <devicetree+bounces-318076-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 02:18:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0760F6E8DFB
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 02:18:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Q+MhbGJn;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=N8h2a8+H;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318076-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318076-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0167D30E4409
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 00:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92E7018FDBD;
	Wed,  1 Jul 2026 00:13:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A581135A53
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 00:13:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782864809; cv=none; b=I4w07ugC/ZHwmGT1QYWloDY1bmJDuZRuzUp5mTl955trxY9K7p/VKj/4HDo3tI0fKLeq23nrb3ABfZoBU5pXJSrRJlz2JQhccpxEEt/bjXbh30jzr2NLrLzs/zD5XGJkXXyFsalkPvhEuNeWhDBkUdpm/UBIq5USOhjWNyITrg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782864809; c=relaxed/simple;
	bh=/6JpH4OnBEls1RVHSF2z4kj2IGNxhSa8ynIqGaPPeZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N5xIsLpHKOrNI2j6EGRk0c7wB3JmJNJN4Hpq0pCF/qm3y2g4Q1UpwpjZCjwbr8cSmNT6j8J2qaJAk7itu6OVZkkQf0lf6DZIlT500AXVjIxKWNP3iRCuGfRHqV0xWa3iko54eBRNNykSp0xajcL5vNe/nR5yCvq9QB3wF5fEOoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q+MhbGJn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N8h2a8+H; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UNLusG3481687
	for <devicetree@vger.kernel.org>; Wed, 1 Jul 2026 00:13:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y7mFQZmDrGWQuNZVY8aofu8Ojl0UrmCsx15yRNqvhfE=; b=Q+MhbGJnFYZCIazY
	xI2ixCwr126dfJa6olkmOtc8rS1Qc11Ddz4IDneyTfPrHS35ITExg5eWEEWlCth4
	iveHxJBpNvF1k8G3r6K2rAmyGpjn0iBzN7Kt55D1Bun6D+oMlXZNVMv0JTZ0vnre
	Cg3I1yQRULE6M0iycS1NWtrJ1lsQsMoTW4XnsRmnP/pykcMyPeREm0oeFWd+rVa5
	1YWuJfGMEyZN8Fo5+gTiTN21sYej5tSQYsOcB8P0iDgbdxG7B0YgaWm/k7zX2HXO
	9u3eNPtbsvjVgIFbFWSGdONHFq2K4+0QNuG9HDklac2Yan0rpYfkEfvVLYLij0Z6
	QWfGGw==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4avpurwx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 00:13:26 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5bdaa7039d7so29732e0c.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 17:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782864806; x=1783469606; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=y7mFQZmDrGWQuNZVY8aofu8Ojl0UrmCsx15yRNqvhfE=;
        b=N8h2a8+Hp3jgWAsIDfzCxEkMJ6OMOjAMc35mfVsKWRIipRr5o0U7hF8YIz0q2yO36w
         y5AJXNAp8ub8sKK+5Wg2VBi0Q1EI25Expej9lF/52NflZJxIdnpui+iUYMs631FR1rfK
         6aJOtvXhT0Wk68lOTitwpTgwkZBTbYUlD65geEvJnmK8GyqpTSsxtCRy4QCRXVDf15he
         kteosDpBITPRB0YtcNsJ4BJUIPx7lbpEwL+7G1xYeQdHmwEsReybt1qT65QD2XpaRonD
         /gsWdFYk8SZQmZwW5ZgM1YlGiNCv5VjQWAT/mPQgMwhmnUgNr1GTyYeLBrv0DynAjLwI
         UBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782864806; x=1783469606;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=y7mFQZmDrGWQuNZVY8aofu8Ojl0UrmCsx15yRNqvhfE=;
        b=K3dJl6kHUkJRji+fsvTEx/F2lcZxyuz/vFWWx0Rq4mBmfw8lCL62Mzp5rdnJQA7apD
         KldkTJy94Vnx7yltI9kUS7qgYucPxUxUyLMlcnyofKohKl/Y6mtTkx/rAf4BXKAO5TCG
         alnj7g6/EwRXA084WVG0rs5xcZYGctijn/JBQ9j0z9pBjRiqohirWkEzNdXVu3PS3VAt
         Ea/u0jw2hv6ODluSG1dMvI4nSbxwqNM8jfEJttyM8ZZ+1lF672K6WUtRrJC/jBdYDVGG
         xKScOy2uD6ZvAfqgem28N2HvwwXiQYu7ke7LfCUdh12qsSyj0ZgjRxyIaL1XawXkRRto
         3FdQ==
X-Forwarded-Encrypted: i=1; AHgh+RpGFQOWA9e3i9EBVQiSh2pEXBHWKWFnuQ7H8CprZg+m4kVlcT3AfoALkdE8GrvuUBJeOJG6RUdEUYME@vger.kernel.org
X-Gm-Message-State: AOJu0YygBtUjfgLN9F37nJidKjNtE34RiEit6r1VCqUN5iUO919f3zcJ
	MIOzboHN/tPVSUK03FfQPk4ZI0adLQSA86jQNpfGm7bfRkXvm0oukKGPHPjBgeeGW9q38uClDby
	4mI3JiAu1vaKsiYdITGwodOF6P3a1diep1fwn2OA3k0B8ZOvBzE8C3SeK6BMxonXO
X-Gm-Gg: AfdE7cmtOPWsU6IWe9f6TtymVF5mfxiBTBtfXHGqbm2vOekiwTgz7u/Ez85x9iX1RdB
	ILUy0IfKgZ0FSuwQQkRqHEMHGFK9eu4cJ10Zv3d2cTFmSzVSEePmVwpRh70xfoLbzAeIrOVkk2C
	KqKPjdgiyEQ/mpGLZNFI19tqI/qXT2tkm2+1cPJyBJK1q7+z3xWYxSCoPKe8xQ595o/3GSmW4gT
	AfoDV2lkohnRxPLLcbDZJ7wkbae23VXzKjy8beU7J96q8PWHDwHZQeShf4yFT9o6mtoQ8Zf51cf
	PQva46kNVdtGLBVa+zXjUbFqSv6eGxDRCMbgng8Uw/WHZSdFj/6fDonehXtSa6AVhteb4uN7Mii
	Zt79KzJ463PaG+lWckVlsci/pnHZQu4tOS82v6v8ZDycY9LKNdrTyOyLOYVN62UVxtleElpgZsq
	Zs6XoqtVdYyYdqiP3h9GIe4utq
X-Received: by 2002:a05:6122:8008:b0:5bd:c32e:b6de with SMTP id 71dfb90a1353d-5bdc32eb70bmr1729394e0c.14.1782864806121;
        Tue, 30 Jun 2026 17:13:26 -0700 (PDT)
X-Received: by 2002:a05:6122:8008:b0:5bd:c32e:b6de with SMTP id 71dfb90a1353d-5bdc32eb70bmr1729384e0c.14.1782864805674;
        Tue, 30 Jun 2026 17:13:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aebe4a8a1asm892174e87.68.2026.06.30.17.13.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 17:13:24 -0700 (PDT)
Date: Wed, 1 Jul 2026 03:13:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Atanas Filipov <atanas.filipov@oss.qualcomm.com>
Cc: linux-media@vger.kernel.org, mchehab@kernel.org, robh@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        andersson@kernel.org, quic_vgarodia@quicinc.com,
        quic_jesszhan@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/4] media: qcom: jpeg: Add Qualcomm JPEG V4L2 encoder
Message-ID: <n5aze3r5qomhuxzmrhiwc3pvlwieske4dlzg644virdrez7xr6@laewnnf7eqbn>
References: <20260629121750.3469292-1-atanas.filipov@oss.qualcomm.com>
 <20260629121750.3469292-5-atanas.filipov@oss.qualcomm.com>
 <ts6esusuua2khweva6iyfel2yowislwwx6zb2fl2azcefownie@cg7jegn334fj>
 <2a7cd484-ee0f-40bd-bba7-3faa86bb8247@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2a7cd484-ee0f-40bd-bba7-3faa86bb8247@oss.qualcomm.com>
X-Proofpoint-GUID: PM9JWVT4umVXEvdLlIusNjY_XAPzacDg
X-Authority-Analysis: v=2.4 cv=KqJ9H2WN c=1 sm=1 tr=0 ts=6a445ba6 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=WexuhrTg79PgycqOckwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDAwMSBTYWx0ZWRfX4409v+0eWOSA
 9TELKfXOHcsgTE58bHWit1h7vlUWYVzHpaB3prpe/DooZ5c+5GrgP1CB4C+n9Z30It0+bwi/Yr0
 PD5rNRw8B5XdHJ0Ku9SpHx1hPZgKsIiZLaszOnCscyl7pZAXDF00fDmmUDfIGKhcLHguGDxQBbP
 8njDszd7WSxB7Hni/LRBYjqgi0L62nh+fDb6jQF45yUvqO/3pVj9+u8ouO7P4pBxk5PBJ4E8qQ+
 aFiukwFx63CaLbWGd7+tWWZqsTqQ9p+uvRberIjTMus9ryAcN3pWZJ+IfyArV9+1E15OJT9XoAI
 4PtTGwjZwfYuU+mk8eJffAHJpetABWlZzARh5pc+Pi2NvIxVyW6gMCu/HxkZNwR/PsCY8mwMOxY
 W51935Q4BazsnNI9F41/nUahn8pniifJwWVfQ3mm6hZAmOmXJgo1gsu8VU6fUElkDx1h1jObOF3
 RVeb8fJX6VXtH22aF0A==
X-Proofpoint-ORIG-GUID: PM9JWVT4umVXEvdLlIusNjY_XAPzacDg
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDAwMSBTYWx0ZWRfX5+aEsibXzVXR
 87ikdr70KEpEEnSRmePnO1GsCbhUyy5QTgGCK4KQZojohSklC+Ak9WCMDsuvajx21+DuP0CWEwH
 2fd5dk9lE8NbUicwiCbztGX9WVp95dM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_06,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 phishscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010001
X-Rspamd-Action: no action
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318076-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:atanas.filipov@oss.qualcomm.com,m:linux-media@vger.kernel.org,m:mchehab@kernel.org,m:robh@kernel.org,m:krzysztof.kozlowski+dt@linaro.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:quic_vgarodia@quicinc.com,m:quic_jesszhan@quicinc.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzysztof.kozlowski@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0760F6E8DFB

On Tue, Jun 30, 2026 at 05:14:14PM +0300, Atanas Filipov wrote:
> On 6/30/2026 4:06 PM, Dmitry Baryshkov wrote:
> > On Mon, Jun 29, 2026 at 03:17:50PM +0300, Atanas Filipov wrote:
> > > Add a Qualcomm JPEG encoder driver implemented on top of the
> > > V4L2 mem2mem framework.
> > > 
> > > The driver wires vb2 queue handling, format negotiation, JPEG header
> > > handling, interrupt-driven job completion, and runtime PM/clock/ICC
> > > integration for the standalone JPEG encode hardware block.
> > > 
> > > This series targets SM8250 (Kona) platforms.
> > > 
> > > The jpeg-encoder node is described as a child node of the CAMSS block
> > > and is probed automatically via of_platform_populate() in camss_probe().
> > > 
> > > Signed-off-by: Atanas Filipov <atanas.filipov@oss.qualcomm.com>

[...]

> > 
> > > + */
> > > +enum qcom_soc_perf_level {
> > > +	QCOM_SOC_PERF_LOWSVS = 0,
> > > +	QCOM_SOC_PERF_SVS,
> > > +	QCOM_SOC_PERF_SVS_L1,
> > > +	QCOM_SOC_PERF_NOMINAL
> > > +};
> > > +
> > > +/* hardware register field mask identifiers */
> > > +enum qcom_jpeg_mask_id {
> > 
> > Why do you need to keep all of them abstracted? Just use the registers
> > as is, assuming that the registers don't change a lot between platforms.
> > 
> 
> Hi Dmitry,
> 
> Regarding the register abstraction — I'd like to make a case for keeping it.
> 
> The Qualcomm JPEG hardware exists in multiple versions across different
> SoCs. I don't have access to all of them, but Qualcomm tends to reuse and
> recombine IP blocks across platforms, and assuming register-level uniformity
> seems premature.
> 
> Adding a new platform only requires a new ops/mask table — existing ones
> remain untouched. Would you be open to keeping this abstraction as-is?

No. This is like putting the cart in front of the horse. You are
creating an abstraction, while you are not even sure if it is required
or not. Moreover, the difference between different hardware generations
is typically bigger than just registers+offsets. Adding support for
other versions of the core would likely require one to extend the
functions to write different data. So, just having the registers in the
huge table would make little sense.

So, no. Drop these tables, use registers and masks (where required)
directly.


-- 
With best wishes
Dmitry

