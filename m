Return-Path: <devicetree+bounces-264944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOETDt+UjWmI4wAAu9opvQ
	(envelope-from <devicetree+bounces-264944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:52:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6C212B924
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:52:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21EC2304C05E
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AADC02BE647;
	Thu, 12 Feb 2026 08:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AnDwNuJ/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aLCFX+1X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845BF24466B
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770886297; cv=none; b=YMJGHr/YoSd4bwJk6yTaGZCjM8+we1mBs3DZ9kXkSHs2QB4ArD75zs43olLmEXcCYJMxrjX/e3NxHD49l7Mnzathn86YQOHJEivPr6un//2rLQLXgISyk7RLPkNXob02dRlC9rVWolH6HmepC2/j0nI23C4iF4wbJ1vJc4MIShw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770886297; c=relaxed/simple;
	bh=XE6TpHh/T7ne0t5BpRvkUIHT6EpqjBnrWgQsvurFYB0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bqc/ibG9+OIQLS/XyDSC8vrEB91/G5bBlC3hUto7triErvyEGNqDw4YS6Oy7/RCjP01Dy+Hm9p/ldYjg0MEcbPe98GquT8u/HMwnCJy2UOCuxDtzF4i/1R4tm5P9QC2WRKTvHBYy9MCUE6UMY+hgN6XhjHcyYs1Z/OUP3sXymV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AnDwNuJ/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aLCFX+1X; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3RpQe3615924
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:51:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H2lDuVV6NS6Z7BmlriJs7dLuO1aUiohzAfUrMrJLlmk=; b=AnDwNuJ/DSeBOVIG
	BLBqJpteiRZoY2hcrHBFJH7O2O0hLQ/mxaL18qsU5cJ4fuQQNYP7LkdbEZbQc9mF
	J64v+F35LpOs+z1ZZOrPLL3sBQsnewRr2R5hsYoYHtFYTYHuYFAfojnvLG3jnLbW
	XEyRmR9wht7cN0T981N+K7rE/Ex2a5+xFGW/Y8U4A5cX7YiQJVtHvHk/7G3ae4rb
	wM3H8Ls6pdroy+ehkGqwllqrcQblB4vxzSPixZM0ZCS9mGOjzJ4s41KPjLCPZKhq
	c+dwKOXtLr2bi1uktnYlwcKZRz89dHjGrNLAiZVC8PWck6+IFj3tDKhgK/RYGMI5
	SUOQRg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8ydn252t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:51:29 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aae3810558so61978795ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 00:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770886289; x=1771491089; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H2lDuVV6NS6Z7BmlriJs7dLuO1aUiohzAfUrMrJLlmk=;
        b=aLCFX+1XHcY/uh5tZsPRfK4IMauOY2nDZHEYti3vb7czpks6NthxWmCxwqyTncRss9
         A3ehy9sZ+nHudtVRrhMhcjymKg0WRr8iiDtyXbPcQvU2enh2AFXtR36b7jMJX0qyqJKI
         BEOSMIVKztOvn2vzIy9r5DqyoMxeTzY6owqNyIa2wNa/m6XIFZur+U2zQ6JYeLEp1X6n
         X8aXy6XzHfwVj9x/xK32/vd9PnEkmB7hy1B8u34ACxjRaFZBbLI8Mu8v36d6Nr3QsnGI
         iRLtZROYM9mi/3aILZUnc5S7tdclOQbLJrZSWXz/aCdnb7PISjfSN16G6rXZg7pVfGsv
         +c0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770886289; x=1771491089;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H2lDuVV6NS6Z7BmlriJs7dLuO1aUiohzAfUrMrJLlmk=;
        b=ALmcUSHSjSSkTgKHUM1RpeuwfZHmADpPnDiFHMAmhhAqc5wMy8PPfboj7WNGh7YLV9
         o2rKCNz46Z20YGm2WYoI4NMrpuJ9pYY7YJS9jLZI8uvbdKmP9oj9scP3WrmubV0tT2gU
         7RMu5zyFG5vTu1s93G1nKV1uHKs8CnpWu6V+IbnuPKm1Meg+629lC5JgWLspBUCe8ld/
         eTOt2CMaYDWQxmafNrYij2SDWakP/EWH9qOZgO5tuCNuGVkjZ9TlBSfK9AtSyolTcdTV
         7dWJw0Ti1LsysC+eEls+BQ6/aYhYiavgm/Dy35IOgBvcvb2+gGVa9qpj1RtZPZNJmjtP
         jBQg==
X-Forwarded-Encrypted: i=1; AJvYcCWW7zSpUt62Q3UdQL7EHTFrAgBA1tluVkxdNrndaPUf3hWYgZnCAORuvd7GbAeyl/AdNQytBszUg319@vger.kernel.org
X-Gm-Message-State: AOJu0Yw62LpcvY9ObHMOqH90edIRl1gZ+XiArSfdZeEN82CLwvrV+PLg
	hrPgafCOq5ILi1yMgWRyY7c+gsQXwvgF/U7EXBlFYpHUbip14+NIpvLanUOdnMOtEqckfrCRzoH
	068r56uiFxu/veTYtWRnfPwyjvfTeGeuXBBrqdUfqitz0MPR4mqIPnRkicdG+IwyU64suDGQE
X-Gm-Gg: AZuq6aKkh+lA8tGtBadqrPJbyAIN6FMUxKpNWAZgXHCxO7k2G2d9Y3d4TVtX3tU/vCj
	ioVeg8VJ3kg2699dIr8BBvce5E0fGjspncsKb9LajtF5itKloTlKYOHS8J6zc6KMlzWpXUre+av
	viJFNXxgpcZepX0wt1QxURwJTQKi6+6ETIIIsXyGN+Haj1QYudfdqOjsZydAsKyobQbY3xuuXj1
	WQ5QqKNClPlA0SJJ3nbWMGcH6NCnja/+6NKEeFtEXUVI905VrqhGqMaumnjVabnv6llgMO3iLLO
	BlC56zYZxq81dlOSZNdDWoHahyvtow8SSMKw1T9O5BybgjCBXzNIEXgKMU/RTAKyul1b7Oq1v99
	90nugpVwvFS3+Ou5oTV1oD6X+Hqo48ebY4FXbPSEm41Gk3DkHAuk=
X-Received: by 2002:a17:903:2c50:b0:2a9:62f1:3fbb with SMTP id d9443c01a7336-2ab39c426ebmr19170555ad.37.1770886288757;
        Thu, 12 Feb 2026 00:51:28 -0800 (PST)
X-Received: by 2002:a17:903:2c50:b0:2a9:62f1:3fbb with SMTP id d9443c01a7336-2ab39c426ebmr19170345ad.37.1770886288300;
        Thu, 12 Feb 2026 00:51:28 -0800 (PST)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2986ebd4sm46805465ad.24.2026.02.12.00.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 00:51:27 -0800 (PST)
Date: Thu, 12 Feb 2026 14:21:21 +0530
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
To: Saikiran B <bjsaikiran@gmail.com>
Cc: Mark Brown <broonie@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>, lgirdwood@gmail.com,
        andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzk+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: regulator: qcom,rpmh: Allow
 regulator-off-on-delay-us
Message-ID: <20260212085121.65bxxp7xfvny6v2z@hu-kamalw-hyd.qualcomm.com>
References: <20260127190211.14312-1-bjsaikiran@gmail.com>
 <20260127190211.14312-2-bjsaikiran@gmail.com>
 <20260129174829.GA1324020-robh@kernel.org>
 <355213ef-106c-4383-88e7-9b40f5b1c1ef@sirena.org.uk>
 <fa760b2f-4b8c-46d5-90b9-2ad9e69ebf04@oss.qualcomm.com>
 <20260203162005.ui7sl4t5m32jwas6@hu-kamalw-hyd.qualcomm.com>
 <7da1e3e3-18d7-45f8-9168-481ce8e4493c@sirena.org.uk>
 <20260206161952.ctmzghln5tkqzvn6@hu-kamalw-hyd.qualcomm.com>
 <CAAFDt1uiWq-adPtXiD+i1swavK_GS+SB__+46NN5jtwOopz9Lw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAAFDt1uiWq-adPtXiD+i1swavK_GS+SB__+46NN5jtwOopz9Lw@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=NLHYOk6g c=1 sm=1 tr=0 ts=698d9491 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=hqVRMzIdmVMcWLLNMpMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: UfFMN8TSI-aQhl2yKhIncx2SDtl1jgWj
X-Proofpoint-ORIG-GUID: UfFMN8TSI-aQhl2yKhIncx2SDtl1jgWj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA2NCBTYWx0ZWRfX0KLearjTdDA6
 gnHkux+YnlyRMm8qqpgldWpqo9nU73MiDxU5IRPLEtGYmQUqEwcTWguxgDtkjRrbz+Fe+xjzefA
 VyujsqxfsY/CW+KtaL6QC5moWWLFmJhuqdSvQVxJyIxKHs4fC5w3rGOndK8sMoqQPRZV+pBmUS7
 Y4+DXRNDi0DsjLevoqrjqOdKHFXgzfHC5fZ0M7hcVqzBYUmlSUFKxYmderNaNaC45Pv7MJ/Vzl6
 741V1n4/cyrFIBdLZYTYPS0MECrN8L76+ilx8YOK1bg24c0zTTrKkpVJjU9BvOOsSYg2YLEaUrO
 gkkzO7X4P6J6ikz/hHQTTfeWEmX35VQgXglVEB/I67T49qGdlWim8cq1iUkq3Wz3yf59uGkX/sc
 GtUFGRKQsRrW/bpYfL0Odu4BDpVhDF63XSfUZMEHCAp4bNKcs4wlMMI+MPLbYfA/b503Vzv72bP
 KMtIherZ8pPv3PXUSfA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_02,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hu-kamalw-hyd.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:url,qualcomm.com:email];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-264944-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.wadhwa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8B6C212B924
X-Rspamd-Action: no action

On Sun, Feb 08, 2026 at 06:37:24PM +0530, Saikiran B wrote:
> On Fri, Feb 6, 2026 at 9:50 PM Kamal Wadhwa
> <kamal.wadhwa@oss.qualcomm.com> wrote:
> >
> > On Tue, Feb 03, 2026 at 04:30:27PM +0000, Mark Brown wrote:
> > > On Tue, Feb 03, 2026 at 09:50:05PM +0530, Kamal Wadhwa wrote:
> > >
> > > > But I'm wondering if this is really a 'slow discharge' issue, because if the
> 
> Hi Kamal,
> 
> Thanks for checking the internal register defaults.
> 
> I can confirm it is definitely related to the power-cycling state. While I
> haven't probed the pads, I validated this with two software tests:
> 
> 1. The Always On Test: I modified the driver to keep the regulators
>    permanently enabled (never turning off). In this state, the camera works
>    100% of the time, even with rapid open/close cycles. This proves the
>    crash is triggered specifically by the power-down event.
> 
> 2. The Timing Threshold: Through iterative testing, I found that reopening
>    the camera fails consistently if the off-time is <2.0s, but succeeds if
>    the off-time is >2.3s. This 2.3s window matches the calculated RC time
>    constant for a passive discharge on these rails.
> 
> If the Strong Pull Down were effectively active, the rails should drain in
> milliseconds. The fact that it requires 2.3s suggests that on this unit,
> the PD is either effectively disabled or too weak for the bulk capacitance
> present.
> 
> As I mentioned to Mark, I have withdrawn this specific delay patch to
> investigate if I can manually enforce Active Discharge (via direct RPMh
> commands) to solve this at the source. But now, your note that these settings
> might be locked is concerning.

I discussed about your concerns, and it seems that we have some boot side DT config 
that can be configured to enable/disable the strong PD ( its not available
from HLOS though)

you can refer to Doc for same here:-
https://docs.qualcomm.com/doc/80-70023-4/topic/tools.html?product=895724676033554725&facet=Boot&version=1.7

forum to ask questions about it:-
https://mysupport.qualcomm.com/supportforums/s/

> 
> Regards,
> Saikiran

