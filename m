Return-Path: <devicetree+bounces-267690-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIN8IEYTnWkGMwQAu9opvQ
	(envelope-from <devicetree+bounces-267690-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:56:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D56821812C9
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:56:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DB423083029
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F52726ED3D;
	Tue, 24 Feb 2026 02:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z3/hFRxh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A/IvyJk/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7765D2248A0
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771901647; cv=none; b=rKq/5y0IBbUUm9ASIDXi623R50B8Ne9adKfIs0SS/Ujr5LpYClFTZMuFG4MBexnApv9mo2SP+qwwpGHq1Q0QpmObHr8EVEUadzM2NDe5sCZfKZ3p3+TLCK6C5y9cU8XqfoBHqUX1QFlD5cJ6vkKOrHx/7F4d4eSvrXCwek55OgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771901647; c=relaxed/simple;
	bh=XYxvyMaL8GZCCMMU/D9Mtr8NAMRYSnNNjE8hwYBHyV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gkGwJFm0nsrlAwCMCGtNQLxsR7KN0Mb+QBP/SsmZZmH/74up/p7niVm/CCYLSQJPFIlLe5mjuslBG94W7PEjI4kr1AW7b7FBAIYmNRI82hxVEqmjYARKDxRgWFjhNVmAr0/Fakdq2XMNCpUTKdAahCCvLQPJTfvKZ5BTvi7vHIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z3/hFRxh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A/IvyJk/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O2loEW498745
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:54:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eDZvLuw9oPwNUlQYme33k2yd
	yibhcg2uAfYhuda/TJ4=; b=Z3/hFRxhF9+CFRWkIPyiGFBBwVB5gShDvb8a+u6i
	0piBpSzaqFGP29/xAAL+Api2sYNPlqSLt8fOmYNjDSu62u7WJfajqJdcHa8TxHFV
	kvJW+m6cFVYSM+2ASrcEMZxsnT450KwSrjcfAK6lHZJ7aCqsN8gGKT1K7Z6Hqy7x
	sql+82c5/n12GusgSyYLB4vWSrqyowWuShYg1LLdnqCmQuLAoq5wOdUBUjCZGqJb
	Cxd6cf3i/Ye2NB0+TCXwwYSyg5AFRrcVHJscAceVO2A1Z4M/QR14VMrgAzsfVRc9
	lkSmWETbwqe/hQjYSaZiQOUw8dImVHJsh9mNyaF8qOl61w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtv9sh41-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:54:05 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c711251ac5so4003638285a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771901645; x=1772506445; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eDZvLuw9oPwNUlQYme33k2ydyibhcg2uAfYhuda/TJ4=;
        b=A/IvyJk/WgjhhqvfwWS/76hL85o+Fj9rKNqysmreCji4TjC+oZR5Y2+PwUrrKdzviS
         AJfFF4TfVxVfPb2jfvx+ROb+RQ0paxREOtHffl5rTz5opC0s3d4LjypNvUbC6h26k9J0
         JJ1TVG5nDbeHg0ghV3zBTRd4YPLTAsJBncgNd481Hk4j7mqhXEoH1JvgVKEtHVxcqIfS
         culjyQ+NPV+ChEtnuvGQGNg099syATBMHEIo4yhMxKVic6IOTuOjeuu08Mxr7lH8qSSb
         7rjAOOPiespWo7ryWmDvkY6IH0Ffu5aYaeYYon0fOlst+wqcK6QjCFPSMcYDN9bsAZsT
         YDpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771901645; x=1772506445;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eDZvLuw9oPwNUlQYme33k2ydyibhcg2uAfYhuda/TJ4=;
        b=gV7yTyIm5hR0Mt8DF6ztvoXeLSRU9vlbhV+vFqOumUkrYo9hRCecFsqjwgevRpbNPS
         dknEpFf5h4XUjP6QK1d/FPV8YQ+Tu+9kJoYcESvEr7XT7MvpmT1V30sClGG5EdIPRUvQ
         cXdE0J+ile8g/pr1fc52y/Ja8LE/TMek1obT8ul03JegSPZEFvfJnHjyzVZv1KKJ5gHF
         nKYOBupt+1RDoSJGovLDSpgKJKJlYcXyuamsOMys5LRC0LYcRlRIH0Qh+zT1mIRjkeTG
         r+QyJCdj37GnVqnck00zvN9SF7H2V+F8x6/6b3Mv01woGOOzxfrALVPoL3YctDy4PzRa
         ontA==
X-Forwarded-Encrypted: i=1; AJvYcCUaqzfsUoNFb8oP8Au5mLfr7Kxyzr2z1eD0MEXnZLAy6VBlTTPSIuHZBPD2B0TYs3rGZk/PQW5V3DhV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6HvcM4Uey1bRdossIWo3eZAHFWsQoq9tsiCLdlxlqkGzgz3rf
	2r1uF81qUz21TVX4Z5ObexjnmsCGNW3OclGANZOvZziGdJ+TgkXyweTIqzRieaq5psdPWcQSeTq
	MbZLzHVg5F2AFmjsoUXCdmakJtEVc364h4wR1OshfRZSafn/iCusW7gM79Y4wjFrK
X-Gm-Gg: AZuq6aKfhQSXdfHI3UUEnrjx3iLRzKldPqdZ8NsV5reDOMv01MWYA3BTi8+bXvlCpt8
	86sqcNAo9wIKOEdLJ3E1faZm3oW9SvFU1u93psdi91u8DWD0BaUCTjOw63qntx6BD57xKopgApz
	ZxpYCO20qxRFenwmShwUfUje9eCkx3TogdvJdwxL3zkXL7CNsi9vwdCOEvNHfRh+j02MtGB6BP5
	uGQ2c0DTO48kc0Pe9JlFAKi5y2ZYpI4QNrU29xy8D37AtYyQSrvTauFle7iy/NESAw1bmx1gUzr
	GQu0bdmv/U8zCKvWJxyxqDvWHxKrfSA3jz/kDyCayANkS1BmnanOP/MemPc8cHRQ2McWqf+m+te
	TVcCNhWO034nbTptQpR79U/O5c5WkBq67sDpnnc8gBSWkzK5wSVo9nFCDOpx7lVeQJbyPDRbWWF
	qzCU17aqTMeLIaBJggycXFMAC2V58RMkGGbUA=
X-Received: by 2002:a05:620a:19a5:b0:8cb:5393:20f8 with SMTP id af79cd13be357-8cb8c9cdb1fmr1299569485a.2.1771901644890;
        Mon, 23 Feb 2026 18:54:04 -0800 (PST)
X-Received: by 2002:a05:620a:19a5:b0:8cb:5393:20f8 with SMTP id af79cd13be357-8cb8c9cdb1fmr1299568285a.2.1771901644490;
        Mon, 23 Feb 2026 18:54:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7878d3dsm19737511fa.3.2026.02.23.18.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 18:54:02 -0800 (PST)
Date: Tue, 24 Feb 2026 04:53:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: qcom: qrb5165-rb5: Drop redundant
 non-controllable supplies
Message-ID: <n6u2zoyfqwhptsxmnhg5jarb5xeqlqfoktqkza5ctidkecmydu@3mil4chprvnt>
References: <20260223-qcom-dts-supplies-v1-0-f90ac885b3fd@oss.qualcomm.com>
 <20260223-qcom-dts-supplies-v1-5-f90ac885b3fd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-qcom-dts-supplies-v1-5-f90ac885b3fd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Vaf6/Vp9 c=1 sm=1 tr=0 ts=699d12cd cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=YQIQ00YL77e8QyTPvtEA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDAyNCBTYWx0ZWRfX09GoINPK7y6t
 fIl579YprSEXnUL+eyywthdgWXLhPHKZNa6MskteeTBEOmk/poQULl7C6BYVkplUBx5J1KdX6qq
 QlBQqz2rsAAOE1K6/tLWJa3DDPEOey7F8vV6jSp+RbZI+aXerpXQQe4MyfTIr8623tUpnQvNDg5
 U/l6fsqIe4HRT9i8w1IRD/6qd0SziwWARXuuHVfrLxQNM+HEkgKgIhNB1EQxQZi3bYogEOxGVVt
 1h3E0YFPAux2arHBOEyNrJWdVEKhd4zV6pR3vm9mgPvhcVmg0/5h33IHm+RN6uLYa/Ytmr+O9i0
 AAkBN2e/Jvz+UPnlCk8IuSEWaibTy0Z7gC7uS3mE5k6SbwbG5qkTucMrqnD4+Gx8Cpu2mb/WdFs
 ysCUFr5Kr12y63vE34rG5ou3OMxoIekgVYTzKqYxud34LWGntZqePX8niL6UchU/YPWRjr7XfIq
 17Dl2VfE5Kg2AgvJ3KQ==
X-Proofpoint-ORIG-GUID: 9QXzFVgpeBuC-eIymSm0euXTBxScGhJH
X-Proofpoint-GUID: 9QXzFVgpeBuC-eIymSm0euXTBxScGhJH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240024
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267690-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D56821812C9
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 03:54:21PM +0100, Krzysztof Kozlowski wrote:
> Drop completely redundant non-controllable chain of "regulator-fixed"
> supplies, which serve no purpose except growing DTS and kernel boot
> time.  They represent no added value and because of being completely
> transparent for any users of DTS (except the bloat), they should not be
> represented in DTS, just like we do not represent every transistor
> there.
> 
> For the few regulators being actively used and supplied by removed
> dummies, change the supply to match the actual final source without
> these dummy intermediaries.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 39 ++------------------------------
>  1 file changed, 2 insertions(+), 37 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

