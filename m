Return-Path: <devicetree+bounces-262909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENggFXRghGng2gMAu9opvQ
	(envelope-from <devicetree+bounces-262909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:18:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E897F0809
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:18:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0CF503037D4B
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4815E3921EC;
	Thu,  5 Feb 2026 09:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xlkf4FSS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c+JXlYB6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AB538F256
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 09:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770282100; cv=none; b=jGVKqNqMxhnfr5kNFwwJfmvN0PpvCgjV9/YwJCCt6kgK82xciga48SnXFEpjFdy2cJ5daOBqXN1+Y7vrkJtzO4pR3VR145+odyPUc0E/ZKPaIVZlg/2HE8LIDlEwBdIqQjnxLh5YJuJa4AsoepjX6NeBP+WQNoLFhjCSVNIBXEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770282100; c=relaxed/simple;
	bh=g2wjkJEgz/g6SIf9QvA0N+NvyCCKOaLitV1QGuL+oFc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J6fTaDUpJLF/1bU1a0ysuHkTzPWe9yn7gRIFWnKB3CIlJAKtOWqoR3M2MbT9Ab9FhfiigtLe9tzhiUKBINq/j5HxLZqErvLBlih6YI0Gw0s+LK+VtdvEck/rARMxC+VRardIVryEiJAAE16uPUM6t/W1aszIvcGm3xETHXfdVnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xlkf4FSS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c+JXlYB6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61555pZj3047838
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 09:01:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t9y7PgfB5wRtkXBOHECwNJw+blEG+UxMtm5/nesRQyI=; b=Xlkf4FSSTzuWK9RQ
	WIMgbldN0CL7x7o8yUyXRBL2hYLbyT+nzZeD54taTRkwc/ZzwjToSavfP39pubQ6
	xNa9eLX/o9wbAVtGINDFxDVk+EeacednCUhtqY/Wx4zCOoAtsN8d4/CdiXBTIn+I
	RV3BIkVbWNEZcbRVQRgf61LxIdFqQPBqq5QCS5fgW+niFZ2cUrBsJRCzTVxXs7Fc
	IvuA5Ktn450ZheZioPfHrE0lnCnZyijfJ8eGRzRQz56LOBO1W0koZacmvebajtbz
	lcCwt62BbwNVGEsiMvUiX4/pJ5S1jf8qjVsO8KntnCerlbO2eQCAqPvR6UB1E75V
	W3KUVA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4mrtgnx6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:01:38 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a863be8508so10972855ad.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 01:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770282098; x=1770886898; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t9y7PgfB5wRtkXBOHECwNJw+blEG+UxMtm5/nesRQyI=;
        b=c+JXlYB6NXevdJSVQ4t/BQM6wZxzy+LMnu7fl9pX8ELl6ekx6w0W7rbxIHuxunR90D
         1/e1VYaKsqiJHPrKINqh54QO/kvU2NILJ/8T8KuRf7mE62+VrNYjPGxh3qgklbbn2p9M
         ZsL1fkMZWkG7si42PePVgAzUJiN2kqlXDLhe/+0T16EvvqctaQJOvuWtPCC4+UFkCvGl
         sfT1N+S90Yn/daV96aTH5arl3nHGq20pWnWDc2X9DiGehQcaixTpW0ZDzRR/4mm7CDtg
         dSQ5pPpXtvgDTxIa33hqfbyIl3C9EZ2LuT7C+/zhj6ZtwjBVpxFgTYwsjHn2446xqGV8
         vSlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770282098; x=1770886898;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t9y7PgfB5wRtkXBOHECwNJw+blEG+UxMtm5/nesRQyI=;
        b=Ym9oHT93ws9MooGkP/TFRnZDN117O5Rt/cJ6fKrs8PbX8QUJQImRbvjZswkah6OndI
         llZufkPksirG4RN5Yu/8o6WI7u41WjCkEd27hXbapgsJIo8D5hNjkoVtzbf+/730w33V
         OUDju+wCUrkTULzq7GsRbWbGDj2OlOpSki2BAXFKajGG75ZkkwGjc6ewsiYzGEoePgdR
         pLESYmEfeMsoP2iP3jbWkjGqcEOL42ortXqm7P9+XmtXKrETYyr36YexXaGzTR86Ggrp
         m5qe5LZwp4IH081DF0e2GhU0IEhJGnMOTHxc+JhxjXGrXUVFyxL8I22Ndk/4G/GtXoGC
         1xcA==
X-Forwarded-Encrypted: i=1; AJvYcCVkR1jUHyDdQ0Js31pUbZUOvwQDJnk/Z52zm09upxw3JZxltiMSTY39gHVDdz30guoM+bUjjZr52z6r@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+561CHAVwZLyDksNsVT3rOdTo1z1z7e5bRkQvqVsU1WhsqihB
	gUzX9FNa+bOp8qFFBC/Zu+0eHEPiJNT5lEqY2kajam8Lp7PdXUf2zs6bVurHXM72l9uxZTytq4Z
	EBPgqFjpv4PyEHusmwvLi3BgOcwvDJ9Tsc7pPt4D+7jnE03qd61pMgJeLmQrZZ5wk7ZxjJHN6
X-Gm-Gg: AZuq6aL+YPgRmSqNlbg2OoYM14EEZv3d42sMvF1JFby/uczRVYKr+ah7xToIJA+UJq1
	lz+yvkz39R5hWyNFMBIovjK2JdsQJd6btT8GcjHCakqDIx4BETgmVoZdPWZsRCL9Qch12woP6OU
	ZhYvUVR5xs/HG+37jMSU7n0UDIGu/N56Of/LdFwt2VoevmhMPIhkNdH3mT0VC+G4mwhvD+JtlXe
	p2/NJ6/NdUNCiuWo52tz/oMmr6wxX7JH97LuNuFnIZbQ+V9A3zW/Wm6ZNKJ+2RNkFBHzLbSH3y1
	DlW+jJ718XrKizU1x4hiXC3Rklg0DHyeIcgFj2zH+mj45kXKNh4MiZYRnFauXcnqBHjZhMqQuGJ
	1wXf8Q+wgfkgUh8EM6yg7knscGWk6guHh/w==
X-Received: by 2002:a17:903:191:b0:2a7:8bf3:5677 with SMTP id d9443c01a7336-2a9341371b8mr58416545ad.59.1770282097709;
        Thu, 05 Feb 2026 01:01:37 -0800 (PST)
X-Received: by 2002:a17:903:191:b0:2a7:8bf3:5677 with SMTP id d9443c01a7336-2a9341371b8mr58416075ad.59.1770282097101;
        Thu, 05 Feb 2026 01:01:37 -0800 (PST)
Received: from work.lan ([2409:4091:a0f4:6806:f71:e44b:ad09:c977])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a93397c472sm45412385ad.89.2026.02.05.01.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 01:01:36 -0800 (PST)
Date: Thu, 5 Feb 2026 14:31:31 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: robh@kernel.org, saravanak@kernel.org, andersson@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, qiang.yu@oss.qualcomm.com
Subject: Re: [PATCH] of: property: Create devlink between PCI Host bridge and
 Root Port suppliers
Message-ID: <lnzmgsdjckbf6u5hxfqm4kzlmcg2cqvszcg7otmkqxaj3yzdfq@vu232xx5kts3>
References: <20260205070640.10653-1-manivannan.sadhasivam@oss.qualcomm.com>
 <bfba9d62-2741-47b8-8325-2d932c20c9e7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bfba9d62-2741-47b8-8325-2d932c20c9e7@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2NSBTYWx0ZWRfX0bZijAVPqtaW
 h6HykZvIenbt/XEhjh6SqVlFjeCRx1RsStCIokW2kMZdCNe7CfHdPV7HhAAu5ciurwjgTxAU+Qe
 K6tByt7IWLVe8Dyb7J9Fbs2PCW/omGPfAcxAOc2iBgvL9w9vIwYkHl3PmOcjAFRak6BD8tJzgcS
 YLvPXE92TE4/CNLz2/nkWWpbIxRkrfg76aQ3lJdww+VBcyYcGoHw0QCW4eCrIBanJzCt929VMUh
 2MObgnaweg20bHJJmjs7NeHGIe3Ce7u0YYv9MBytdSb8HrYXUC2jooQVrKcMaoKjRspTrI1xmUO
 rHWfxvYkDdc29chGfg8blE0JOxyD6dpnX4wwID+XIE8tGSnCvmjqWxW+U1Bu9MhXoXq8ayffIWS
 EC61vu+lJXOsKD4YVYvmGTWtv8Qobz0grFl8d8ubhhD+2tzAzcM5ovuJIUb4y0SOIPPJgyZwv+2
 1yNrCWKgzou+S3GhbnQ==
X-Proofpoint-ORIG-GUID: eJj07w3ZW5PsYYsd7nmikzfgtpHpgsCG
X-Authority-Analysis: v=2.4 cv=UoBu9uwB c=1 sm=1 tr=0 ts=69845c72 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=QMLHC9eROS6L5-qU9K8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: eJj07w3ZW5PsYYsd7nmikzfgtpHpgsCG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050065
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262909-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manivannan.sadhasivam@oss.qualcomm.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5E897F0809
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 09:50:20AM +0100, Konrad Dybcio wrote:
> On 2/5/26 8:06 AM, Manivannan Sadhasivam wrote:
> > In the recent times, devicetree started to represent the PCI Host bridge
> > supplies like PHY in the Root Port nodes as seen in commit 38fcbfbd4207
> > ("dt-bindings: PCI: qcom: Move PHY & reset GPIO to Root Port node"). But
> > the Host bridge drivers still need to control these supplies as a part of
> > their controller initialization/deinitialization sequence.
> > 
> > So the Host bridge drivers end up parsing the Root Port supplies in their
> > probe() and controlled them. A downside to this approach is that the
> > devlink dependency between the suppliers and Host bridge is completely
> > broken. Due to this, the driver core probes the Host bridge drivers even if
> > the suppliers are not ready, causing probe deferrals and setup teardowns in
> > probe().
> > 
> > These probe deferrals sometime happen over 1000 times (as reported in Qcom
> > Glymur platform) leading to a waste of CPU resources and increase in boot
> > time. So to fix these unnecessary deferrals, create devlink between the
> > Host bridge and Root Port suppliers in of_fwnode_add_links(). This will
> > allow the driver core to probe the Host bridge drivers only when all Root
> > Port suppliers are available.
> > 
> > Reported-by: Bjorn Andersson <andersson@kernel.org>
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> This is not 'required' in bindings and device_type="pci" doesn't uniquely
> identify root complexes (as can be seen below).. but I suppose this is the
> best delimiter we've got
> 

Yeah. There is no way to uniquely identify the Host bridges in DT. So I had to
settle for this.

Maybe I can check for 'device_type', but that will create devlink between switch
port supplies and Root Ports.

> Perhaps it could be made 'required'?
> 

Nah. Linux will generate domain numbers on its own. Also, this is a Linux
specific property, so we cannot make it mandatory in dtschema.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

