Return-Path: <devicetree+bounces-268618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJ0DOKvun2kyfAQAu9opvQ
	(envelope-from <devicetree+bounces-268618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:56:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 450441A17FF
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:56:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 955A330A3CF9
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E9BA38E10C;
	Thu, 26 Feb 2026 06:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pJABNS8c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="es2LbDxp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1C738BF8A
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772088921; cv=none; b=imGivSo73XUrOK2vVZzbC+supf8R3+FxI9aAlbnKskrwWL3C+RbPMVvg4/fDRAdYfWLwwqaLtfJzoRrjok3OXzvZzaX6d/5pxg0Yku7uHBRfQpd8u1N40ULBFpYQZEAt4P/XxVHDDaNAzQyp1O6Jzb/3LXuzpovTniRd46Mxh7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772088921; c=relaxed/simple;
	bh=SGjLdZB/OIBk6s2u0CnQarJYLiD8qrcGHxIL2rG8Q78=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jQScRqPskgkVO+RPt5Z099A1kbxU4edYkhUBIMZFOt18AZbXnLyq4BLNLKT4++/2CkODraLwJHvyuFxcGHGCy4vq2LTxRwFKikhQg90Hu8RqFnUZrmtmE2z3AvUgAtvU/73E8xaOm/2RCAnaxhXzjQlRRqD/cBMcJmYn3EES6BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pJABNS8c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=es2LbDxp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4VHFi350885
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:55:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WZMy3HEaIGVZFlhw8LR5XDgJ
	mVmUwtmoD/hWO0tnibU=; b=pJABNS8cG04ZBWYbovIQvI6M+Bs5aSa2Refob88/
	Xv+4HrF3artKZhGfKS4HbRjkVFHvUSQN03lfeqfw7/oX7KhQ0VC7WbZ3xi7pmqj+
	eIE6Hm5IyEvZWBUKIBBLtZav4u0t00/vfPgkalFnq4qjfwOzKbJ3w3qsMeYP6aKQ
	+GM4+vZ2APSIhspGPBxEamC+fzwF7aZux6L3mwKytp+l5Go/CO8JC9ia+HT5bw9p
	1gU1ODxhJaNJ1c8t+vKMl/IZR88/lkKXQM51jDvHroC3sqY0YlgnQOpr5Wk6ahhi
	21tKwWWlLSzuIFyBXVDiK8vtTM9Q0Y6z4SDU1OckoBy1gA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj54pa54w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:55:17 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3562370038dso394057a91.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 22:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772088916; x=1772693716; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WZMy3HEaIGVZFlhw8LR5XDgJmVmUwtmoD/hWO0tnibU=;
        b=es2LbDxpsb+EbJLKSDmRkaPcYTow5XRZR7MrfsAmWVg7watZaEbo68/IOClas7ExCL
         m0kAEahAgsAxrhiEFFVZFkgc/EqfYTrsfPDcaaHnM7YAr8XDlKvfoavOwN3CesfmB3Re
         dxbxknYGZnrwt7v7B/uzpaMQtP/awkKwZlrMRFq7wG/sdC3M2poVW6PMhOfEHiA7WqcM
         peoU2ztR3PAMe+qgH0ZcTvo1LH0bH9or7WEsvf4B6yqSCJ/ApkfVaHiDGxZj0MlUK7Pk
         PbyZOSLhK2uK8P5PepvF4EVysrIDN2K0J3t9kG99eYLi8QLfLq/LD+fck5vBC2P0KPKH
         4CbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772088916; x=1772693716;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WZMy3HEaIGVZFlhw8LR5XDgJmVmUwtmoD/hWO0tnibU=;
        b=wk0bgQMmAd7mTS2/bhUXro7RstclLcx5JtUPNCB1jbb3eDTXx7JQyppGUG4HslUAng
         OKGqrLgKUa3whPkF1iyasx0T4E3S5Dxj9NFcfHH4mu/nZfOl+19QESgK9QacM4TY0Q4K
         EnH4VqTVyrfr/5hhudBZbmSb4uwGQUtv7Mcozw7PquCdYv9HLKYek+dQX6/0s8P01zlX
         pKibXJyB/Y9qsoma1G7VOVCoq7QqTfp69DJDEFvswXSdBp6sNhBHlBnUIkcbA7/r98UK
         eW6mHNoU9hNoXHm9XHbRIDKWJ93SqXs59HTmYS+fCzLkW7IFby5OP1I7EU8r3aaTSoBe
         4QXQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8twD0HP2DPPZyG6qf3N5cRYy+rYoi+rouQxrIhxm/v9/Dvuwl33988bYsG11zgRPyPMu8TIjUlbh/@vger.kernel.org
X-Gm-Message-State: AOJu0YwaTBrFp8jBAg5wa/S8XpRWaMHXh3Ko2mdWzAfdprH7PCMXuJIk
	t0Mr8cq4tjd7QCFes3E90ARfUhMb6filAZoiPsYkE1AetNR2E3HgqCd+iz1dRpE7RSdzNY8pABp
	0ZAQeSinhFZ4/eDrBBp7r2Axv8MA6XB9Z99WW0o2UMHuloQURZQNJ8tT4uggnBLbW
X-Gm-Gg: ATEYQzws4/phc1yGyML/wG00iUPGn18tLOxscYCsasd2DYsGiZCmUx5iiIdMFZiErwX
	M2zViztoB0lRsRJVSvQS+xWfn6jRZt0ahUOHtri3f3yJBqgxdxmRYm3wPKJjqcezQ0mf3PnMl24
	/6+c/U5t2jYqsBqSDSFI0EDzkqqcDdO5VSwKOZIWFIWlC8xjeYcUdsEBq0qJp7DIw97SxrMefr/
	RjbHpac2PYbiiryTY38lgva7jMF1koiTaZFWbcA+BZ0MCufVzsfux3Z89wbG0/U+YdmwB6hzS25
	L+z+2TDBcT63+n251FjWHeNozCa+RsdegnuBHEAf15aOnX6jTT6MV1k2cjXkYG+5CJyWTSpgdru
	ZDXto4dNKqMZF15lZybuDJ4Wm+KCi1uZdl+Am1SB01cENMyozC6CABz+nMHo=
X-Received: by 2002:a17:90b:38cf:b0:33b:bed8:891c with SMTP id 98e67ed59e1d1-3593db8972amr1533451a91.23.1772088916529;
        Wed, 25 Feb 2026 22:55:16 -0800 (PST)
X-Received: by 2002:a17:90b:38cf:b0:33b:bed8:891c with SMTP id 98e67ed59e1d1-3593db8972amr1533422a91.23.1772088916052;
        Wed, 25 Feb 2026 22:55:16 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3593dcad63esm1422237a91.2.2026.02.25.22.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 22:55:15 -0800 (PST)
Date: Thu, 26 Feb 2026 12:25:09 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH v6 3/4] ufs: host: Add ICE clock scaling during UFS clock
 changes
Message-ID: <aZ/uTUa4TgBsCPs4@hu-arakshit-hyd.qualcomm.com>
References: <20260219-enable-ufs-ice-clock-scaling-v6-0-0c5245117d45@oss.qualcomm.com>
 <20260219-enable-ufs-ice-clock-scaling-v6-3-0c5245117d45@oss.qualcomm.com>
 <f984c9a0-9ce2-49f9-927b-e69c26f69176@kernel.org>
 <aZ7x7gG0OZEQSKVy@hu-arakshit-hyd.qualcomm.com>
 <784d5711-3f3a-48af-ab1b-9a8834249445@kernel.org>
 <aZ/kqmGF5EJDE76W@hu-arakshit-hyd.qualcomm.com>
 <e714f615-1f55-4f13-a1d3-51dff71c4c7f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e714f615-1f55-4f13-a1d3-51dff71c4c7f@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA2MCBTYWx0ZWRfX8WYGKdQ1872f
 1GqHFRDXwe6sPHrFp75vxFrsMF2IUneapSsk6Kpnk1KwrlIZt6enchIMhkS+5phG4W82uBI8V0x
 yxg8MGlFYvZk/jUGxsR9pcfP8Jg6f3PpIWE76ZZ1E7FqsrwKHsPGbTbjYGUWJMZ/wxAeQ9OrN3n
 +tRwlAD0IBOlMCz1DeXoHTuBmkOhOpSeYdJ89AXa63NZRjJPU7VlU4fkwY5wmKZH/CTw4AWQJcl
 8ZbcbcRicj9D2qPBIPFeonqGVVgM5CEWXFr34Lu145xHqnoRAFce2jl8KeRTY/aJPbYaElKDDK/
 lLxJ7RYMdwXNJPY1ArmbwXUmziJPRxckVNj/OBfb/JCWZOvRnedUIEZkPyeLvzfFxX8WwNow3Bx
 nHpUJVGNF3uAkrlBF1uochFESTLVexWxy7hqsrv6E/c3ZUqxkvlJTEKllZ9iQ9c0NwcbZgFzrB9
 SWSI/IXo24Mwd52txbw==
X-Proofpoint-GUID: gkffrg3t3hNYF27mtbDvJSAo68GVIBNR
X-Authority-Analysis: v=2.4 cv=I5Bohdgg c=1 sm=1 tr=0 ts=699fee55 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=fAithCOwtWN0jAmX4kIA:9 a=CjuIK1q_8ugA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: gkffrg3t3hNYF27mtbDvJSAo68GVIBNR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260060
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268618-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hu-arakshit-hyd.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 450441A17FF
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 07:40:04AM +0100, Krzysztof Kozlowski wrote:
> On 26/02/2026 07:14, Abhinaba Rakshit wrote:
> > On Wed, Feb 25, 2026 at 03:12:18PM +0100, Krzysztof Kozlowski wrote:
> >> On 25/02/2026 13:58, Abhinaba Rakshit wrote:
> >>> On Wed, Feb 25, 2026 at 10:00:12AM +0100, Krzysztof Kozlowski wrote:
> >>>> On 19/02/2026 10:39, Abhinaba Rakshit wrote:
> >>>>> Implement ICE (Inline Crypto Engine) clock scaling in sync with
> >>>>> UFS controller clock scaling. This ensures that the ICE operates at
> >>>>> an appropriate frequency when the UFS clocks are scaled up or down,
> >>>>> improving performance and maintaining stability for crypto operations.
> >>>>>
> >>>>> Incase of OPP scaling is not supported by ICE, ensure to not prevent
> >>>>> devfreq for UFS, as ICE OPP-table is optional.
> >>>>>
> >>>>> Acked-by: Manivannan Sadhasivam <mani@kernel.org>
> >>>>> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> >>>>> ---
> >>>>>  drivers/ufs/host/ufs-qcom.c | 21 ++++++++++++++++++++-
> >>>>
> >>>>
> >>>> SCSI/UFS is not respecting subsystem boundaries, thus you must not
> >>>> combine multiple subsystem when targeting UFS.
> >>>>
> >>>> Please split your patches.
> >>>
> >>> Sorry, if I fail to understand the context here.
> >>> This patch-series is already split into 4 patches based on the subsystem.
> >>
> >> s/patches/patchset/
> >> Please split the patchset to not combine independent patches targeting
> >> different subsystem into one patchset.
> > 
> > In this series, the UFS subsystem patch depends on the new ICE clock-scaling
> > API introduced in the crypto/ICE patch. Without that ICE change, the UFS
> > driver cannot call the scaling helper, so the UFS subsystem patch cannot
> > be applied *independently*.
> 
> What? Where is this explained in the cover letter? Where is merging
> dependencies/order mentioned?

Get it.
Will ensure to add the details on patch dependencies and merge order
in the next patchset.

Abhinaba Rakshit

