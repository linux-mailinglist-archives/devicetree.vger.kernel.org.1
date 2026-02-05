Return-Path: <devicetree+bounces-263055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNuqEQKvhGk14QMAu9opvQ
	(envelope-from <devicetree+bounces-263055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:53:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C8BF447F
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 60A443019FEB
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 14:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA5B241C307;
	Thu,  5 Feb 2026 14:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j48/J2jw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gwf5M0Fu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DDC3A7835
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 14:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770303228; cv=none; b=WEXI6X2cGSx1dM4a65f1B9aLHYDDab5abQGscetEZiop8ZEnH18JnLgq0q/HBt0/iFTYtPRczkqDdAxeQzv0xnltec1aayeRnV42QIJBcT+C5r/m1twH8SGfeN21KkRShRvxezr6RWgPgNCddwUorLZtTjuV4Ud/oIsS5fgpdMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770303228; c=relaxed/simple;
	bh=ZwTws5Wp3s/3u+wvh0h7sn7pKfDk+8i3+HfkFTjhvSs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TJru2t7R2E+dI2QWTx1w5wd68/AGA85GGFmWp6Y9p2DvqsbMnwHwXKppTqaOUdVfxwuWmGumVz8EpXL/3F/PxCpI95faWSBmE7MyXxzMwQ8U1OLaLH1Qs8BkNHa1DTvA/p5wx1UOpXVXeUGqyt4aODnR0YMKz5P70Qw/syxiPFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j48/J2jw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gwf5M0Fu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615EOMIB4126357
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 14:53:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3zdqUJw9qtQU1loPiEvujh90
	oDIRx6jke/+KDijdHPk=; b=j48/J2jwaL8GuMAL7XIaV/2wrifuuuZlbBV2O7Dk
	4Q95eKsO3sRpl5R0Kr+e6Nkzi+QrPIrW9dw0QQvkIyjusSTkvFw251lf3WN34PRv
	YhoNJJAw5o/Fcz/8BOQdvVVj8RC/duuQLAINukC88Ve+mHlu4C1ETenxW117jp3W
	vQyrXHIpkBGvkEbUzxwoYLpPK3DTI9LSWUqU/7r60yWTqeAoaArgIDiS3NQZBteM
	BtdG2VHynHWRnA/HygnyOgg5Lam0oUy/EV9ans8tVkJXVqvizSjH84n0TUo/KkTv
	W6raBkfxCJ442Od+YjsAtMZoVfhIjZcL9Njlgik+I34fUg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4vxhr2n5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 14:53:47 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52f89b415so271722785a.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 06:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770303227; x=1770908027; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3zdqUJw9qtQU1loPiEvujh90oDIRx6jke/+KDijdHPk=;
        b=gwf5M0FuaUL45z+g/DewD6DVidqqS4NRUX72eymR9J+TR2OTCNNZp714nUn7j6JzZB
         UXF3fhh+p+CIsOJCVjspsucNhbGwvdsXd7Hanh/iP5TyJQcPVIzTJHt5wOB1ZRy5WGzG
         2yFZlvxCI073AhYbkG4rLtGd4tyl+J9YP+fXFkR4ClKXMQ4TwSyQTkBojJ1BpHThQk0e
         +4+N5USTkQozPlK4gCz4gPW8hxoawS2Wnoee0+fSsr6aaIptrHoixr6ZiIuKJJsJPY4O
         2pgLg4CDeqJu/2fsYw+nUbFRrOFRwn7g7VWhPVjU4c4xArCgPrBjLhswqD+rVkKbRqQW
         ocMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770303227; x=1770908027;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3zdqUJw9qtQU1loPiEvujh90oDIRx6jke/+KDijdHPk=;
        b=n1/wbemyViU32TyfZMWzARBpCwfTcrIdfmsgS+JI+YebX1T9o4xLuv2h69tQQH81uC
         4Rnhv2POd2JwKeQfBbnu6E5fcBqRxWkQsaOsryavkC30uJahgoopiOwFxjlJ7nu6A/EB
         2rA6DjfB7Zc3x37Ah2tZPW9iVyGS+LMFXLX3FgZ9vzQtDhGtffzKSlXWEi/5BGSKNhXy
         dwH5N5sOtvI5plTu0+SRSEtexGNJDOS1eu9GpcfmGynyY+ohud7jdeO65oG9xPRr8NSe
         b9LIlIKHl/Md4VL3AB0nLl2syH5vzo+eAbMXOwwTNs5cK5gOIk18rDaU7yJyf7MSPwU8
         QWIg==
X-Forwarded-Encrypted: i=1; AJvYcCV+Tauq2srR74Qe3HFX8wcvdZY0o4VPJaj0KELg2QhV7SmyGHiTNxuDwWyw5W3F4WlO7bnwGi2PygdH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1AhS6Qd/mZ0wXqt5PkL2xT518Orqf+j0QC05hy9VvLANfpvKm
	Ja0UFXe9zc6NTareFwIuxhTC8ThJbbX+rABwB36c2uQq6MMXJyCnqvafe0NdEbH/jfZOKNfuOxA
	YPFwRepeqMk+Zgb6SWZHPDEos7V1lxhMg2QM5rsewgBkZmsuhL+tZchXfQgp3kXLy
X-Gm-Gg: AZuq6aIsWwEvGYvH6F8uhXwCvBJfu7juC+uwT0m1em2U5bGix8Xau+vheeA2fIABQew
	Q1cMsMFM+qi1jf1AAqQ34hNbxQ8UXoQmrHf5p1oJc8/VBWRaQXSUFfkazLgIPM9S2G4igMTYxO6
	lTkBrO1DuMbaZ9OOenLmyQ5ZRSerJ0KXZAYFmcD/u0oyrXpftYBE0urdeaR74+OAVhs8rW8RZhx
	tZ+Dp5bjvqhLOiwHdBs5kMWd+tWnx9SpVdqrry+0J9RJ9iPlAHLFZRnF0nzDcEUiYkDa+0eMaIV
	Ognk0R0bV1ZMC822JKGwDef2qy7EKsBrL2Y/igg39T6uj9hlqeYE/1wjf5wODiT9eEmvePkTYP1
	rQDV5A+v4UWy2kD1QdD9zdFp14dd1dqvfKoMB03SxXDTbOlTeTpJEKaj0t9K3PQ+sPv3TUfqhs2
	QCS+qPiYjCNA2myftii/N87dw=
X-Received: by 2002:a05:620a:17a9:b0:8c6:b14e:655d with SMTP id af79cd13be357-8ca2fa75386mr869027285a.74.1770303226692;
        Thu, 05 Feb 2026 06:53:46 -0800 (PST)
X-Received: by 2002:a05:620a:17a9:b0:8c6:b14e:655d with SMTP id af79cd13be357-8ca2fa75386mr869022885a.74.1770303226121;
        Thu, 05 Feb 2026 06:53:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e3881b1a1sm1467745e87.61.2026.02.05.06.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 06:53:45 -0800 (PST)
Date: Thu, 5 Feb 2026 16:53:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
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
        iommu@lists.linux.dev,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Subject: Re: [PATCH 2/7] of: factor out of_map_id() code
Message-ID: <zz7n3x7e7dsqgfw7qgppeaqnb3uz3i5bzd3tybzbv6q7zmdcgk@pojvxhui7q4v>
References: <20260126-kaanapali-iris-v1-0-e2646246bfc1@oss.qualcomm.com>
 <20260126-kaanapali-iris-v1-2-e2646246bfc1@oss.qualcomm.com>
 <47fbba15-6375-40fc-bd2c-8ebf2788837e@linaro.org>
 <7d1b5897-8f17-4213-b893-d99d96afef94@oss.qualcomm.com>
 <j6euiso3pcg7nvewscsfjkqyfl55ajxxybf2pib3622uontj2y@aqj4satyf7b7>
 <4835d0b0-06c2-42d1-aa33-34daa0e7a8e7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4835d0b0-06c2-42d1-aa33-34daa0e7a8e7@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=GLoF0+NK c=1 sm=1 tr=0 ts=6984aefb cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=8BOpGF2gbpNt03PPG4cA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 7lc4iSkmmJDlv4wJXQH4E4BrGKHJ27A9
X-Proofpoint-ORIG-GUID: 7lc4iSkmmJDlv4wJXQH4E4BrGKHJ27A9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDExMiBTYWx0ZWRfXztzLU4C4JDlF
 TPW+93vDk2X+c+e3ZWzW7uFB81/r9LSnBKGWRLDt54UkluE5Zhh7YYwfS6m/Iqcew87dFHkrhta
 HBmd8JTRf0dZtmjOxLcq/U+V0vOWwf0s4ZeTECD2+TRwYDGfN7Iw0b9eMh7wJQvvyVATd/iE2uW
 zu02pW8Q3TN+aiXYpLQ9W2/KY81dxnSuTuji9DxWssjFnCze/VFX+Vx3ueHDE1ddGhBn3ePTsoL
 LQao7iinkNfsJgEC6iXOLBmr8jeEFg9ytx9mVasaMlg7pGhAneES6Z+8eBDNr8Qiq8NoGd9L8tn
 I05A+IoSbNCewgoTy+M/3PMxanv4rhW+gAQNVgMbYoB+16sVWxBrYj3fe6KxcieDGwHrmF9NiE4
 clk0gMiAKLUm1dVMrO10O/4wOLxwaVmW+yY29vA/hebtsXVv6nJfq3rdd4sju03HLwIuIwanq4N
 /tXvz+3Bgr0WYQYoWuA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_03,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 impostorscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050112
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263055-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 03C8BF447F
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 01:39:54PM +0530, Vijayanand Jitta wrote:
> 
> 
> On 2/4/2026 6:41 AM, Dmitry Baryshkov wrote:
> > On Tue, Feb 03, 2026 at 03:43:58PM +0530, Vijayanand Jitta wrote:
> >>
> >>
> >> On 2/2/2026 8:22 PM, Bryan O'Donoghue wrote:
> >>> On 26/01/2026 12:25, Vikash Garodia wrote:
> >>>> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
> >>>
> >>> This commit message is confusing and inaccurate.
> >>>
> >>> First up, you're not factoring _out_ of_map_id() - factor out of_map_id() means to remove of_map_id() - you are refactoring of_map_id().
> >>>
> >>> Your patch title should be something like "refactor of_map_id() to prepare for mapping of multiple IDs to a single device"
> >>>
> >>
> >> Sure, will update the commit.
> >>
> >>>> Linux interprets multiple mappings for the same input ID as a set of
> >>>> equivalent choices to pick one. There exists usecases where these set
> >>>> must be maintained in parallel, ex: on ARM, a dynamically created child
> >>>> device(s) is referencing multiple input id's in parent iommu-map.
> >>>>
> >>>> Factor out the code where multiple mappings needs to be maintained in
> >>>> parallel can be achieved through callback from this factored out code.
> >>>
> >>> Which callback ? There is no ->function(pointer, here...); ?!
> >>>
> >>> Just make some plain and straightforward statements about what you are doing and why. There's no need to resort to dissertation-speak.
> >>>
> >>
> >> The callback in introduced in patch 2 of this series. will update the commit descripition as suggested.
> > 
> > I think, the callback was NAKed already.
> > 
> > 
> 
> I'll remove the callback and update change such that all entries of iommu-map are always scanned.
> This would handle the video usecase ( i.e; same input id's mapping to different SIDs ) and in other
> cases it would result in few additional scans in iommu-map compared to existing implementation (where
> it just returns after first input id match) , does this look fine ?

This probably means that we can also drop of_map_args.

-- 
With best wishes
Dmitry

