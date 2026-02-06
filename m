Return-Path: <devicetree+bounces-263485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6H6CG1wxhmmcKQQAu9opvQ
	(envelope-from <devicetree+bounces-263485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:22:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 526DA101BBE
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:22:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B8B893007BA2
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 18:22:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A43F235F8D9;
	Fri,  6 Feb 2026 18:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AJk8IUdi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aymLVl5E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D37B34CFD3
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 18:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770402138; cv=none; b=qXYaUwujJ2TZmkP4frAJroqegyH1FnC1a2wgV7P/hYJHHJqW5romKsC2WEtxph0hjktZX97lkTYtHfZkhZ8ufjnRSKL0wQqOS6LntaVCoRscwVcejsf4nbcUsYyn01KCQo9TJe+XdERujuW2ddHJ2oINl6j+wDY4QIxm8lpnM8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770402138; c=relaxed/simple;
	bh=w+MU4OpKSj6+R+wust4X/C1pp4G5ROvO88ExNbzcPoA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mPlCbVscdu9Sj7U1mrQyMZAZ7mGHaHy4Hcz+cp9AZ/d7MrHzpznAxV3GiBi5UfLDhIeXkjxQw4KMJFf9rXRt31BSDOY7sCqXhRZFw4Phz3t3vCXTH12w1zf/2nyGCDf/Q+70sHGHmSB4vhE0W/3N3cqD8sa2/20vmBYJegNsCkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AJk8IUdi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aymLVl5E; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616CB8sL3012569
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 18:22:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sKEBJzEUDkkph8ZjJ9EuZAfm
	q7UtO5hh4I3QZu7vFtA=; b=AJk8IUdiKgZi1LnSNY78vV0DmFWzihB9Ox7l++BZ
	NDQDER0+JCSMYauc6mf///SsCiTbyXrUlvdr7gSsBAtTMhJ50Ohz+1NWwuW8obUE
	fnV2i+sDvShPSPhu4V6+by+0ZaoV6jmf5Hso9nc2gX5T0hTGwzol444I7ijRylYF
	NXz9KixT/hx4laNBPtk1kTMDvRGLUqt9Cwas9Mxqy9XCU9tIxCWln2Ix8LlCRuxx
	Xtb01Lnfn7JpNlIJiyfsdTvRxwP/146MKyXcnCJtxbc/5XA288oATu/mA/c8g0D2
	RqwroP1WUH+vYgLevmx4vo9LPN5NCOdlMB93Pj9OYIIOGA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c59ukjc7f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 18:22:17 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a13cd9a784so9311125ad.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 10:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770402136; x=1771006936; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sKEBJzEUDkkph8ZjJ9EuZAfmq7UtO5hh4I3QZu7vFtA=;
        b=aymLVl5Ex1/X/SNAfXBwdZARlXNQDvA3h8qBcUAwt0nDozMqriuhLXCXIQw5IF/5cn
         V3jxZYGji07SofPSujUkmGXo5wWrTvdYnWWlDSLJjzjUwx1+Bt4rfDm26nq2zdPplGBD
         V/uX7wJAv1mQPAt+sdWNp6ZUDQVrP10ehm/pSwJAmYsCHOjPfr5niJ+q90wmMSZn/m4f
         qlyusByHXDTRn9wUmKYJtDmz34S6ZpM4hX0REwMcuI7X98mdLxj/bnJh3gr+JHGYqjXD
         ZCRoLtadhjR2zRwK1yW6bo5mgo10W6abg1xKGAKt0uIFiv/B8lYZzkunv+HnEFhce13R
         kYxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770402136; x=1771006936;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sKEBJzEUDkkph8ZjJ9EuZAfmq7UtO5hh4I3QZu7vFtA=;
        b=IXBagzco9cyPkEf+lDsGtgxnhhiOU0MEigjVUeDD0/gxiHQhFHqJvQn9ZO/BBuCWjY
         pDvyEiS/6Q1sHUl/yqD+sLSV8r1zJ0lISUvlUgnJSvwr5X0XdKNA/v5EjC+MkXny/Bzw
         JoXE6KzwGddjdZFUrTscVPwpdb9gIFrdMIeuGpLIOTD5tlky9mgkUTa/KQjrcMcSGX17
         iat4jcANfoiZ5a/Q4fPVGsV7MfsmQnQNZI29iw9dgjjnjNGW8LcAEwBg7N5Aehidg2Sy
         Zb8BpNTIVaz38KqA8gjfnZlUSlNfxOXb3PF7B6mHgK+0proxZEiF/Jj95PCZLoIM6jUV
         iB6A==
X-Forwarded-Encrypted: i=1; AJvYcCWbEO53TWXyyQti3JNDb4Cyxpm8HHoHcYR3oanfXyfwPkPBvTlezy70TsQ7niwbLlPjGg96FDZfGP1K@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8ObyNVF2tgrPt8diTAgTZGbuLWmyXhNBK/l4VD58jbBi057EP
	euy4K9tAziHqMylaBwWXjoB3gD2EJDWxgFg1SD+uXFa4pzOxesDpFXjny0VSj8eiTO423RczM1y
	FUwQbIBplbi0IyIQFnYChT6xStX1DKcpAS3CCMI0BhCQCU1lC4PoCzOtl12Fk8mPu
X-Gm-Gg: AZuq6aIRim94NTlcXh8bw2FfRAx3yFJtbsC7KA7kJzhbePjctXEsmoTMS9B24Yw6u5T
	eHhz3SGkv2hX14gUVZcpe/79gzkIV8aFyRwjMD/D9jhaaWEt46PkuGjgksmgKgLH5Vx7NmuDdcX
	7KjRwlPAXDs68ZUUCEQiuuExIoekbE+pTRktvsBwN+MHnFG86Zhxg9MhtTOjvgBTvpiYFvt4hke
	4xlqGNWZE3YtGWR1lzIwlssNQIACaJpxSgABnRPQ8U1tA/+fsfJUOm49KaSXqba2RfSbTxEvPGU
	K7mjrrLBaNzd7u8soYMilMTkUwMk6b19ugdwrmD5WPPWDBGExl5qdztHe0A5W09frn9jsqCf4Kb
	jJBXLBW81h/t15MlgJMgstmxUc7Oj+SI6Xzqw
X-Received: by 2002:a17:902:ea0d:b0:2a9:4998:6636 with SMTP id d9443c01a7336-2a95167d7a5mr33381315ad.20.1770402136013;
        Fri, 06 Feb 2026 10:22:16 -0800 (PST)
X-Received: by 2002:a17:902:ea0d:b0:2a9:4998:6636 with SMTP id d9443c01a7336-2a95167d7a5mr33380835ad.20.1770402135250;
        Fri, 06 Feb 2026 10:22:15 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb526676sm2549157a12.12.2026.02.06.10.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:22:14 -0800 (PST)
Date: Fri, 6 Feb 2026 23:52:07 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom: ipq5424: add support to get
 watchdog bootstatus from IMEM
Message-ID: <20260206182207.3e5a2ui472lqzg7f@hu-mojha-hyd.qualcomm.com>
References: <20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com>
 <20260130-wdt_reset_reason-v6-5-417ab789cd97@oss.qualcomm.com>
 <5zqxloovexknbuhknbafc2trf66d6zwtvtkhjbchmbndxg2j6u@3giwqjkd2vl7>
 <20260202134402.ochfxv3lnju3dioa@hu-mojha-hyd.qualcomm.com>
 <f144e9bf-decd-42e8-b87d-d511552ab6e1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f144e9bf-decd-42e8-b87d-d511552ab6e1@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OM0qHCaB c=1 sm=1 tr=0 ts=69863159 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=NGMUD-Aakes30RC9LikA:9 a=CjuIK1q_8ugA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEzNSBTYWx0ZWRfX9gOo96++Hmgn
 BqrZu2gpLsZEcZisXzowIRp+0FTCEKsU8YegyUa5RQ9YPyNmMxMH8X6U6QMYWYNOnUn0x6St/Lm
 hjjhSbQrfI2kTP0jYpyLj1yQvAcJyca+ueGASve/wTwqcnkI/vX/YJ/TJhNcTO4cHD3HEOBPRtp
 U9bFN0u00a8LUB/pFXpfgbzgNhqyBwzp1jXsUUbQzgPonuK0NZ2rwihrA+Iqb34whKkJdIZqQO8
 SSnIL8Iis9mxb/oTZ6G3EcJZ0C8rgkGeqGp3pgy1qF0YgPISZSV9ikqc0qL/98wYwiM3zLjSqCq
 xtNjHVdgX0KJFO7l51ZYFA33zf0dbkWXndu7hOMLzZUrQ7dsorQD4IAW/dFWHaOPuDv9u0Xlab3
 o1WgOXBacuI1QMNGAxZFzZn3UBrLTLDwWrccTaLhp5Yf50PSfktXNAFsPpIS944J8+kTxGpyZUg
 Q48Y0bmiPeqGdTxrvQQ==
X-Proofpoint-ORIG-GUID: PK8PRPTzhtfduatmINMD99zBlmPKhCaQ
X-Proofpoint-GUID: PK8PRPTzhtfduatmINMD99zBlmPKhCaQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263485-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.978];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 526DA101BBE
X-Rspamd-Action: no action

On Wed, Feb 04, 2026 at 01:39:43PM +0100, Konrad Dybcio wrote:
> On 2/2/26 2:44 PM, Mukesh Ojha wrote:
> > On Sat, Jan 31, 2026 at 10:18:29AM +0200, Dmitry Baryshkov wrote:
> >> On Fri, Jan 30, 2026 at 04:14:34PM +0530, Kathiravan Thirumoorthy wrote:
> >>> Add the "sram" property to the watchdog device node to enable
> >>> retrieval of the system restart reason from IMEM, populated by XBL.
> >>> Parse this information in the watchdog driver and update the bootstatus
> >>> sysFS if the restart was triggered by a watchdog timeout.
> >>>
> >>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> >>> ---
> >>> Changes in v6:
> >>> 	- Update the 'sram' property to point to the SRAM region
> >>> Changes in v5:
> >>> 	- Rename the property 'qcom,imem' to 'sram'
> >>> Changes in v4:
> >>> 	- New patch
> >>> ---
> >>>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 5 +++++
> >>>  1 file changed, 5 insertions(+)
> >>>
> >>
> >> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > 
> > 
> > I have a few more cookies (stored in a fixed IMEM location supported
> > downstream) that I want to add, and they are available on all Qualcomm
> > mobile SoCs. Should it be added under SMEM now?
> 
> FWIW currently they won't be probed (if you wanted to give them a compatible
> string and bind a driver based on that), since drivers/misc/sram.c lacks an
> of_platform_populate(), but that's trivial to change
> 
> I think getting agreement on dt-bindings may be the tougher part..
> 
> Are the cookies you want to use attached to any other part of the hardware
> (e.g. in case of pil-info it's directly connected to the rprocs), or are
> they general debug information?

It is attached to Minidump collection storage type selection like USB or UFS/eMMC.
When we change dload mode (in SCM driver) to mini and change this IMEM to UFS
then the Minidump will be stored in UFS.

It has to be SCM driver which should host this but it does not need to
be driver or device creation.

> 
> Konrad

-- 
-Mukesh Ojha

