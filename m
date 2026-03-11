Return-Path: <devicetree+bounces-273788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LE9JMLJsGk8nAIAu9opvQ
	(envelope-from <devicetree+bounces-273788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:47:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E153525A7F7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:47:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 77BBF313F32B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12779279DA6;
	Wed, 11 Mar 2026 01:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eO271O+p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q5WL/SSQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73BB13FEE
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773193664; cv=none; b=a6CBwosp1bAXct0qs1xpq+Q5B2VaqHb4JimdDi13bouPZ8OcRst0S9YcvUldtEXj0XsiOd0Cnk93sIg7NWSnJ8UXSARFqhKPex5Hptbjc4hqHu2wx6tbuJmAxxtdmcPD79XR33LxUSRBwpqoUU2nxlMcikoQc+tP11T7KKJSnzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773193664; c=relaxed/simple;
	bh=zSUWUPAs46XLNNnK6CyzBI8zL6TuErcz0k+5R0BNoCo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zsqrb+wv+GhJaL8N8BdQZwtAJLKqISNXxJkdl7noKBu4GHXQJdUr0cIz9EqqEgYmCH5TvpmiNM15sYA5bK2AUi0DGVcHSARvQSKdNkCOtXWhWSWgAiw9QgFgS651QJvZEX+4Ur4ITc6kL44QsSMDl7NFaR5XuCFfKqB7idK/R0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eO271O+p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q5WL/SSQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B1ZcxG508675
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:47:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JIVT57SowEfFMepeOGCDAj6rTq4EE1pUwY2R9E/rurk=; b=eO271O+paj65f68Z
	27SypoFfCFLT22Z5HYQlcY9rln7Czy+MK7gTgqlF/0dxrafQVU3fnyy+uq5gpFFk
	f3OPgqp2Ze6y/OuyKfqamj4gVwwtrIbqvUI/scWfEz6PPVT34IKJumpw96vTeWv2
	6seCoskJOoeLhsI0YwNZhjj3c31qCX05nEY67QAYTD7s+R/XemUlfNz1C/gkGgHT
	ERuLB88hv39ttNQJ3vH1HniMp8n2R4W1dZXmCMk5nlgIAnm8/htzn4tleL+/a1L2
	QlTN47bei3KwAc0W5JIzDXyjCfqf8pXzJ72xRBDFLwkL4LtKssbrb5rXZKKdAPSq
	eij+Sw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctppahrhm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:47:41 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5091f12ed3bso160385101cf.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 18:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773193661; x=1773798461; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JIVT57SowEfFMepeOGCDAj6rTq4EE1pUwY2R9E/rurk=;
        b=Q5WL/SSQ5KXJdSIdW0ILYrNWDCKzoTkpZDo3nswJMvelMJTIy1GW2IMFdhP4khUQJ2
         nfvOftqG3ZMi4zQXwv91hhY3QoKkNCrNOU6Ndc9pXxWGB/7VKRbuEuCT4Nefc80u9vXo
         r7OT3tT6z03L+WPwz7LGkNcXK9/jH/hWtGUpqyJj3Ps7dmU4uLtz6F4VZOSaqDnsw/2G
         YLnNNHeG7h/fj7BbvobroRMd31gax7ahn/P7sF4NbjAQl0PwQvP3V4SGVqfzjJ+9Vv2E
         wUwfLcYO1frnXdv99c7I/hL2oE6u8SOp0xm/6AHnO6n+ZrqMXZJjA7b5MGz5SVq0BVyL
         YB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773193661; x=1773798461;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JIVT57SowEfFMepeOGCDAj6rTq4EE1pUwY2R9E/rurk=;
        b=Y8nqoypGLlUNE0cB/fZRE+leH0t10Ik9hM7+R5Iy5qqx2KtM9YJM504lHnPmAbASFn
         KZ17562C43mfNVI1R159KSG4lLY792XN6gO+Ml2FyPcklLhUArtYzIcGBB9IUXY3Mu8M
         LoccrVOatnhDz0UOviQFjSQMVLEdJkT13ZgSXnTNqeU/qmrn4sqOYwqtmbd5/2rC55vp
         zcrSwg5mhsvxncv5FnPV5ql3kEr7LAeEdUAa1oUG9j1vM/dEX2DN7IJuop1ZmK8qCNW4
         o3EW2oCUiHawnEFLgpqpGNfxil7sssFIoEXZ1bRl0yyRqVLvqLSniDVZQTnJMMI3ZWVy
         OT6w==
X-Forwarded-Encrypted: i=1; AJvYcCVR+jm76DYr1lzbE4OVyfq+NVZihe8Mq2Zva6CtoSk905GLNBbMElE8MNMhUzCnZKQMr12BAGsOqDv/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/Y8E+dMRa3abTQXMAPBRyLEHtv1rER+UsUvjID0039bx4CAnS
	3R+MemlQy5Ks0zLY4RiGsPP69nWLUjKFKmwBIlJLaHIpWYyBFAJlW4eL10r9mujpWC4tHTPls1Q
	xZYapGQKN9X4Nj0Zhlp4fLK4cBC2zotUmAXYnCFU0qow+NWOwfokAaoXQGkjX4V4G
X-Gm-Gg: ATEYQzxOCfWprTGyWQLLBLvcb7kNPfr37XZw85w2vFrGMhw7jRWdt5RR5Quemr8neiE
	TPYCbO0QpViA0esxdW4HuhuhBOfO0HtR63ve4t2wnZcXUPXjSgrbT8pM6bJu37+9C05O6XqkbbN
	yrxsqS1qR8PtctmqEs0czKZHdXEU//xuzaeFS43dQu396KGNsU/8D+XfYcg2YUy9nDfJClOXcCx
	iBj5aXdxUkZPO7miIAp4lLBICfJUrTHziTCaeH6wyCKFW+8hAcI8muSAGnszYLf9SgrjNoy4O8e
	qJM53yUvDhmNv6GBwz07e1WZ2+I8HkmK+Z0dqUKjyVDC6+CBmoe/VjgrEslj9jPC00SBtaYxvqu
	VE/na4kJYIayRAPKw1gdAmY6m2s6UhbhpNX6GXmhNjsdOKX8z+zBkPXrllmlYql17QNMClPYn+l
	eKJNzL2kJl2fLMrJ83Re/2qpmT0rRRCzVFBSM=
X-Received: by 2002:ac8:59c4:0:b0:509:23c5:fcec with SMTP id d75a77b69052e-5093a1f49b9mr11130611cf.68.1773193661140;
        Tue, 10 Mar 2026 18:47:41 -0700 (PDT)
X-Received: by 2002:ac8:59c4:0:b0:509:23c5:fcec with SMTP id d75a77b69052e-5093a1f49b9mr11130451cf.68.1773193660695;
        Tue, 10 Mar 2026 18:47:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15635786bsm132132e87.61.2026.03.10.18.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 18:47:38 -0700 (PDT)
Date: Wed, 11 Mar 2026 03:47:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 4/7] arm64: dts: qcom: Add back Xiaomi Redmi 5A
Message-ID: <txp3q5sesogonrbl3lrtntj2m4rkv25rab7tdehzic2rnzdyg5@lr74knjgxydr>
References: <20260310-riva-common-v2-0-3bfc23996857@mainlining.org>
 <20260310-riva-common-v2-4-3bfc23996857@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260310-riva-common-v2-4-3bfc23996857@mainlining.org>
X-Proofpoint-GUID: QaaovFeIraJyxRw5zjgD5BwK8oSQb4fm
X-Authority-Analysis: v=2.4 cv=D7BK6/Rj c=1 sm=1 tr=0 ts=69b0c9bd cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=OuZLqq7tAAAA:8
 a=BQt7vz7TcYvtT9m_v9wA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=dawVfQjAaf238kedN5IG:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDAxNCBTYWx0ZWRfX83o3vHONGMBI
 EFCGUHtAOJV6HYIfxA5Gr9RK24UymfDxXWRNiWwRxzA9ZmVRqrXPyHAM8R9PoTNFZQzr1rYLxcu
 LO35RfMDnrmBWoa0J01pbQbez4lp6vHmy0tQIuFq3FlqlPFZdoAVt2p7VbTARApwPs8n3AA+/Ps
 GhEe/iDdHu7DVNSon1NajBTnrzf2oMc9HKY9zSu1PeaJcYNsMKSS/IpmHyyKUM7w9DyHBP6XLgB
 4s175GMGxzzqUjMdqIN7to5UE8VCqXW5cWkbKWZzhyt1uyqNhXjA2wkPYV+/4c5TMqGlqF0D2Kq
 6R15F2tjp9lDKktir/pyEH+F85f9goA3r3Zv7h75pXgY5+zL5aomeXqe8zctocVy4Pg7qrKY41z
 lyUuJSbGS+H21NZRpx9QbGdblpkbDQ7ehJUwSwCYRp0pwX1pZJslHRMiq2gyMftKYN7mMPXFN8e
 zE29Pe3ufCWo5kyGhmw==
X-Proofpoint-ORIG-GUID: QaaovFeIraJyxRw5zjgD5BwK8oSQb4fm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110014
X-Rspamd-Queue-Id: E153525A7F7
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-273788-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 06:21:34PM +0100, Barnabás Czémán wrote:
> Add devicetree for Redmi 5A based on msm8917-xiaomi-wingtech.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                |  1 +
>  arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts | 56 ++++++++++++++++++++++++
>  2 files changed, 57 insertions(+)

Please squash this into the second patch.

> 

-- 
With best wishes
Dmitry

