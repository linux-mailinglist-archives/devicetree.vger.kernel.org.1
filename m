Return-Path: <devicetree+bounces-273822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5UQmFYDwsGmvowIAu9opvQ
	(envelope-from <devicetree+bounces-273822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:33:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 904C725BFA0
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:33:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F54C30675BD
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 04:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB096271468;
	Wed, 11 Mar 2026 04:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YsWMf8Y/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jqes2yhX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B815126F3B
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773203580; cv=none; b=b6B1d27mTyXVQkzoAtoiRgtZRjlMOYJQhNcn4hdoKYPyNEhrN5l3cPnWM85Oi6xBJliuOoHoNOZVW4enrfBAmUzRPPV9pGNsuKLq+QvW7aicdfHVzJ5U54UKUH0ZqxQXJ7w/xs4Ue7Rr3F+oBf3GvyyJFbAS0Tg3LeHK9rdwoog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773203580; c=relaxed/simple;
	bh=XQW2wISe65L1ehtjoQUbPB5JKhJHGzy+qx5EEJZedIo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TJ4Bzj22rz5eSXlW88QAjZtLPiDkvhfagFDofYJ+Q0vV+KWKT/TVHulI3OSXI16dYiNyZun4/2pEaOJfxjQQd9QfSD525amR6x0JUwHpHOCUWRpZqk2jgnEfjBXWQAavcO9V+aa12y8AXRo1lmlvL8EG13xyoMtaf/J5PhDTgkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YsWMf8Y/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jqes2yhX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B2vu4f1574238
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:32:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2T1cPfBf/zkJpijxSgq66MMx
	Sw8L+4X4CczkHlYlAOU=; b=YsWMf8Y/hh9ZeUqgqbU4oY915MWqH0qp4FDOihRj
	cLJlGUeNah/0eXll2PDuc2cnuvO03+JD7mn+8njGABzGbaBQDrVCm+w6IGpWU7NS
	GFjC80uxmqxbi0Ceyrfa28bEYaBTLp/yphuf2iPy6lE3Jgz4FufWnwyCgXM8exYR
	jSYmdGPRdvH0D13MpNw3MkeX38hFSh1VOXi3mQPNmDiPUFOSOGQlJbOy4n9P/Cto
	MFB9cWHxwofcYbxtkrVtFo6OFr1F/T7JHroKZiHVXNgw1fNKzgxbI/5XvmiZhe1j
	PzdbVDQ7PLR3NpPBoLimKPsEy/TL5YzVztfUEhSYbgtwPg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqgk9wwb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:32:58 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-60132c655bfso6894848137.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 21:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773203578; x=1773808378; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2T1cPfBf/zkJpijxSgq66MMxSw8L+4X4CczkHlYlAOU=;
        b=jqes2yhXkqQ5pXg511hsnZAkfsj0nRvC+rBXwfBgzF8x03K5eL4E7mpd6EIbbphqcu
         FTmjTBea9hObUXWgRW1uzJWBufxcCCTswnDBoLKQwMKleZmkZO1zEiGatBXvKsRVwcUP
         DrKHBnEbwiUL3n8uSUDebikCeYQwbS4OEidrSNU4C769DCugVejAeKvPHDaMiL25Me6D
         ruw0OQQQxFO4wD6usvBkc8aYKvvt36wFuT+aWghWnM4wBGJNqejTudgr5N4EK+7g0I+P
         6W3DFg3tYX+POtR8vkyRup8FqilnzqrancCgYPOx4dsABtwqMep6Tc3OdAbnLizQWrQ6
         Z6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773203578; x=1773808378;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2T1cPfBf/zkJpijxSgq66MMxSw8L+4X4CczkHlYlAOU=;
        b=M0X+eQ+EH+nveeQ0zu2wPg/KoKeZNQY7mKk/Hd0nl+hptkdG2DaIGkF3ZT6GZrjx4r
         5ub9Yr6QryL/6UkBn6Y/w7f7b8Ym9gFNxuu0xuOzKBfyRa/jU3Oj23zQh4R04yns0j//
         3VgoXTQ8x8O8nzumCxYpYUYCACORNjw5p/djRhOO2gt9PG7WReQ2Sb8JBlJSHtA9BcBD
         jcVFIbHilUAudtCX6aWgK+7217BFSKOmU06Z+L3PwKejFSRLfak2EkIvWbmIfcSL+QEw
         ejNfVaHDCj00W+Zo9TEo6XBZl6+/l92soQ+dQhalneqiwdlvciljs3/2jlssWz41B15z
         u2XQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwiRtuideefIjVwyjoEIqbFtMq4V944AqHaeJRkpQDqEoDhXMx4d+RfJbLncSTElg6ScjRGYNaGSTn@vger.kernel.org
X-Gm-Message-State: AOJu0YwXZQlnVAktDxTk97wLdjISM5JWO9uZLIvrlgmFwK7/yIj/4Ylo
	U2MnIcyuq8ZYcOm2l2mqqpK5lK/qkfkoknhYMSC8Z/7fOBG0PFNDFI7Rw6okPr6XWbuwSzVkSTT
	OgdVHTU8cAh1bk63s46Am+CT+81yeVw+g23W6ndNm5Ofx+a3QA24ajfY8obp0UmOs
X-Gm-Gg: ATEYQzzBJ3UzwDtduM24SXM8sTouNdmYue2GOHlfW7LH2H39AzYiJTYo+5VvX8Ga1Qd
	E7WJgvKxqQJLQC4b+vvUNIG6CkuAbpHnVajRTTZcUrC1DaksdIrQeVIBmlMxVPK8H/LljX9U3kq
	ZyRsv/60adHCTNyVjHO7sQFsNkDrpcJJaJC6q7cdE2FYTDQF9Xa23WLWE29PcGHkpA10VVjWhBI
	gVkJs2gjcsMMGjsdQ6GbI7dls2I5Q2E67KfzQUdUsbg+InlvOC8FaRHzmB9KKbDfR0o/CX7FW2l
	9AgN4dx35r1B8WsnOKcG/w989mc5qUJ+DvD19pVbw3yKJ+dYbyHssxu5sc67jI2bQKqf/JdW/Bu
	wKu73BbfFW4ZleW3vcROVTZC47MgE129Z7PbHHPSPGv+djUqiezkQMHqK+ShlnG9tn0XtqZFsvc
	huTloukqPMskrxuYDnI2tOGt2VlsUdupRGBvM=
X-Received: by 2002:a05:6102:5123:b0:600:1547:967c with SMTP id ada2fe7eead31-6003a52c237mr2604008137.16.1773203577851;
        Tue, 10 Mar 2026 21:32:57 -0700 (PDT)
X-Received: by 2002:a05:6102:5123:b0:600:1547:967c with SMTP id ada2fe7eead31-6003a52c237mr2603998137.16.1773203577436;
        Tue, 10 Mar 2026 21:32:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67d83f9dsm1841551fa.10.2026.03.10.21.32.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 21:32:54 -0700 (PDT)
Date: Wed, 11 Mar 2026 06:32:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hangtian Zhu <hangtian.zhu@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine:
 disable wcn6750 and wpss
Message-ID: <ogn3a6chd2s6ys5voxktnzyldoqfmytadsavvaku5ym22yisyk@uvpf7ax6wwno>
References: <20260311023219.2284643-1-hangtian.zhu@oss.qualcomm.com>
 <zutya6ebksaqkpjen4qb62kit4lgannbfbvvfie3bpzbf5cgfi@v5xbzjuf3tyy>
 <581ddbf3-e79d-4a25-956f-7045c09a22bb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <581ddbf3-e79d-4a25-956f-7045c09a22bb@oss.qualcomm.com>
X-Proofpoint-GUID: KynenmlfH8YnqOboylJnxOfLQs03P_TM
X-Proofpoint-ORIG-GUID: KynenmlfH8YnqOboylJnxOfLQs03P_TM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDAzNiBTYWx0ZWRfX0HfOMCEnWfJ6
 AaBpOivE5zq/oukkJNFFVFJV5CobtXit9UbhyJ7VEhMv9Ur8TWMzFj1mWOL4DLolL9duXIwcz9N
 KyokZrljxAolU+4hkcBeopndDbGYGXDXWayBI7djKngDMB3ldExV3ENGp/7NaAtrEiA43F8uABi
 IMf/6ptuUnkDDHi4bCKNOjAKSt9/PG/jv5TzXOyCmXI4XI/qbFjKAyKY8/ork+6ooXEIySx6UYs
 s7BsYLeVRaWXQNrWpnggTy5PpFAcu/2KwlS7uFhuUkz3jw4RhxPGrfMU42Z2FTcOttlWDf9OzxI
 xrhvJFYqPXHy9P8IXkLSF83s3NbIrZphycoKPivxUnujcK2IMen/+lziN/PRQXC6Zl3U5Nw6PsX
 i6TubyCaDU6/NW2srDsJ9Qo1WOatKFjr9JXHRvgDEy3qsYcJiKnvWMQ5Sjx3uYgRaHxsURkkSQf
 Jkw0K6gccGg4tTIhRUg==
X-Authority-Analysis: v=2.4 cv=M4JA6iws c=1 sm=1 tr=0 ts=69b0f07a cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=e8xkPcqcNpPB3ZEPGwMA:9 a=CjuIK1q_8ugA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110036
X-Rspamd-Queue-Id: 904C725BFA0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273822-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 11:14:55AM +0800, Hangtian Zhu wrote:
> 
> 
> On 3/11/2026 10:40, Dmitry Baryshkov wrote:
> > On Wed, Mar 11, 2026 at 10:32:19AM +0800, Hangtian Zhu wrote:
> >> From: Hangtian Zhu <hangtian@oss.qualcomm.com>
> >>
> >> Disable wcn6750 and wpss on industrial mezzanine. On rb3gen2 industrial
> > 
> > RB3 Gen2, WCN6750, WPSS, etc.
> Done, udpated.
> > 
> >> mezzanine platform, pcie0 lines are moved from wcn6750 to qps615 pcie
> >> bridge. Hence disable wpss and wcn6750 nodes for industrial mezzanine
> >> platform.
> > 
> > Are they rerouted on the mezzanine or should the user toggle a DIP
> > switch somewhere?
> It's routed signals inside of SOM, no DIP switch changes needed.

How?

> > 
> >>
> >> Depends-on: [PATCH v4 1/2] arm64: dts: qcom:
> >> qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch node for PCIe0
> >> Depends-on: [PATCH v4 2/2] arm64: dts: qcom:
> >> qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node
> >> for PCIe1
> > 
> > ENOSUCH tag, please learn to use b4 or git-send-email to define
> > dependencies.
> Updated with lore link.

Nice, but the tag is still not documented and isn't used as such. Please
use standarard ways to declare dependencies (I pointed them).

> > 
> >>
> >> Signed-off-by: Hangtian Zhu <hangtian@oss.qualcomm.com>
> >> ---
> >>  .../dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso    | 8 ++++++++
> >>  1 file changed, 8 insertions(+)
> >>
> > 
> 

-- 
With best wishes
Dmitry

