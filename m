Return-Path: <devicetree+bounces-276844-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGr7ITqouWkhLwIAu9opvQ
	(envelope-from <devicetree+bounces-276844-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:15:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9FF2B169B
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:15:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 99DED300A640
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22B683F8818;
	Tue, 17 Mar 2026 19:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UoPr81ov";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XIEOM1Kw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9FE3F8813
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773774900; cv=none; b=ooDyW93tHTi29hVvPvcqHvbl/WnFSBVRmjwGDSGq51UXRXRQATFNR9CqE8QSywQ4tbw0fZ2NLBbxgkh0xipHdFjLFVTmpK/j3iUCCnPOIK2F0H2JPdxUFeb0GIkwtC0a6/lnhOcVIebVZYrkhPgg8cEnMYL9c8vaaM/GlqPOWOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773774900; c=relaxed/simple;
	bh=O0GbmyNHI8hlFPn6EqP7ekN8af0Tom1OLfEh8XTAQfk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fu57PaBhpg/1kznqIpWkr+iazIvVCTRBrwNR9Tu/lOTVxnguhioGoO1F45f8iFcgQ42DAM6L0qbjzjghgJc9b0G/9Vfabp2z1l/JxD4fsQk7FPmhycBDZFesdHKe1tfy/mB3mmz31XOeVpZp04VEsmhAf6gZD4xYFLOVlm3UYwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UoPr81ov; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XIEOM1Kw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HIJm7Z1261076
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:14:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bNOPxGj1B629A2kXBCZFXpIE
	6RUa9mVOlSveDz+QzEg=; b=UoPr81ovRoDkAFTWzo7563wZ4oonnyI3+es9Ug2j
	ZCVX5sHVYlEvt8bmTE8fpaaGukpHHOG03NhnOyxQwMEhWwe0YrfZinhwa61uDx9T
	/7nhSLyWh5cBejF3eyuzIIJsRnuWyYX3NkGIVce9q+plXikxh1uzAICLg0QBb37W
	6ah4T5/mLYeZjHT7uQhvX3H+tDUWxay2LhnHKi9YGa/cHpLTRyzQoFDQzfLWxt3U
	WiZroIlUmQH+5eLD0LOtmchbDK87xGnJWQdc0ZzHKJhtk58On24cc2+eR22yoMn3
	plomP5Zee/FYswztxjUbmCyA8NTb0OkVAXvfBinBjo0xwQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy5g8hwb3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:14:58 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb706313beso151273485a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773774897; x=1774379697; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bNOPxGj1B629A2kXBCZFXpIE6RUa9mVOlSveDz+QzEg=;
        b=XIEOM1KwbNTGYJwh4KdYgj0PMQ6uBymXE8DXL2s8YxPuqgV1elNwR60l0HXQwCQ54x
         TaFA8TlsWTH09eCvYUqL9G1OHYyiexDaIT+U2dKmUojCI0ClsqHc6TL2wKOTGq0FqssL
         Z4aXMFdohYUWMBAANiBj18IHc2+jvGx06bxOUtQof9VTURcw0aCat4w4nS3El8lyQEXX
         4uufuf+MbT+ya1a2uMneTBZOc4neCmJCPrHNxwWFtHNnON50P+WbEVH1gH+OeLtncf11
         UougG6+ZPn1Nzid1yVFj8P8ADyFuPeTphCAf6UVVzrId1jZ6YIZMnrJOevbEPrUilWkf
         UJFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773774897; x=1774379697;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bNOPxGj1B629A2kXBCZFXpIE6RUa9mVOlSveDz+QzEg=;
        b=DFxCiCgxxoUrY3EY0YmnLv+Hr+ftfR+dKXMiJBBGYm3jHs1qbdDRajKc5+SX2EDCYm
         wYW2Ll6sBYyhzarASzirTEMahGo1m7a5LCIgPNAu56hwSccVn3ae+q+5DU+nRjhZ4PKo
         pynOL4QEgV0tzvxO1jbP7k5AWoMOycsJB1wQP+4QcqrxcYJUAQmWhmhdgi4GFmMkVX7Z
         8GANpNbtikZQOSHqd39zyJAvVReCbS3y1E/KIv9v4O2lwp0lYM/lgGy5I6vH+gPsRzIx
         /Z/lS+K/lgioD5etwHXoum6u9dRhAoECJFHyRSDaGOD2C4f+v7jzzpI5nKxTJqTSxNqw
         qTJw==
X-Forwarded-Encrypted: i=1; AJvYcCUmAJrpTvuauZc4r4fYdCImF5lP/TL8xIbitL23qaVPJUhWo10DUTYsyMxDgIbVGP116j1k49Syq93Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yyelx+ebnAQL9f8hrRl230AZzcAyXwLEvM9iei7fSpTfZ0w2kFK
	2ZcAoIU4ATYyr1xbHdLc5t7tMvri2Gj+MgqYrG3Ak1n95Gm+rywk91XIo4zjGGpFSOYuyxYbxic
	uMoN5uftTuxrEC1uEfC3qn9QzKlPUCR3/WlhEdR/uan+MyI6bGJV8mNwP9UXgOrP8
X-Gm-Gg: ATEYQzzQfNOQFzQvlL1H3IpGU5Rr1FcThbt+JOWFYnWG0LYVgXbwnyHDhaeBVQyOK2y
	whvOuA6zmtwOj9C6/uuiLbwSGJK5Agnfv6Bgpx2AqxU2AuD7oVaSwVvzVM9/fu4BQT3Md62qyP/
	GwpmD6nR2Z30l5OOfdBiL+hdc/8dTKTnSwJvnzRISr4TEXW+H/12vLKU/EDUsqYCUQnC9iv4hdk
	Rrkp93MLG7JUVG3ZFJ077T51BvVyaIFEpZ1SODmTQoIc7eTmTgfXw2nHjS2DFFJwGhq3EowpylD
	moy5IXWFXXLcAlDVYldst0ra/RdNJ707NdlS0BESATTPLMZhN4q7AxpiwzoY9O2ybgm3wO76AiC
	CoM7FBq43rsGkXVzQ02ymN/rupDYJqXY8CA==
X-Received: by 2002:a05:620a:4708:b0:8cd:b2d8:ec7 with SMTP id af79cd13be357-8cfad268fb8mr109784085a.23.1773774897064;
        Tue, 17 Mar 2026 12:14:57 -0700 (PDT)
X-Received: by 2002:a05:620a:4708:b0:8cd:b2d8:ec7 with SMTP id af79cd13be357-8cfad268fb8mr109777185a.23.1773774896370;
        Tue, 17 Mar 2026 12:14:56 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5189964esm1281455f8f.29.2026.03.17.12.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 12:14:55 -0700 (PDT)
Date: Tue, 17 Mar 2026 21:14:53 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Fix OPP tables for all
 DisplayPort controllers
Message-ID: <viub5zy2ni7hzutaxxsrc3yxjevemomxrnsxhv75o2higjlh5n@2mf6bowxrqkn>
References: <20260309-hamoa-fix-dp3-opp-table-v1-1-1a8141d71f9f@oss.qualcomm.com>
 <2f4e4cc7-2600-482e-88d9-d4b20d328a72@oss.qualcomm.com>
 <drcot4oxpea5lnpa5htrrl2n6tcc4ocxmb5vsho3ocouvajwlo@6ueabivtjy4h>
 <ed3fdccf-d8b5-4f57-871c-8a9cb8676606@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ed3fdccf-d8b5-4f57-871c-8a9cb8676606@oss.qualcomm.com>
X-Proofpoint-GUID: leXEsGZlo9hgio8AqgIdRK52jh5uPwrs
X-Authority-Analysis: v=2.4 cv=EeTFgfmC c=1 sm=1 tr=0 ts=69b9a832 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=hLSxji5Pbl0OwNBPb8oA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: leXEsGZlo9hgio8AqgIdRK52jh5uPwrs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE2OSBTYWx0ZWRfXxG0+Xp0qGW1P
 a5qwIPeL7fmNVPOMRIu+DWn9Crn+1EXYP3UBUNGN2kN/2mUo5xfQ6HGoKFurQTJR0BfhAAO4j7Q
 rCki54Ng4UW7JKGm0iz7xc/nHN++hW8uspNp9WB+yd0s0SFMWUD3RvzUQBshBaReWu6T7jFyy/b
 0KRHC8YQ/+uUyX202ZprziDaDtTX7puubxtZ9euEUFQHLIMRtOHKLRLzjQyW0O+GCwd4lhnkXSD
 RQa5Ue4/2sTytJLGS8/dJqPEWA3L4tU4y7W3Sn0wIU1c+F7CXMH5HR9QOLuwzbzC1two46zrxqH
 2StlYSQBsya/O5In656OZPjmKAB8NGHOW8VD5Cr9fV52IivCZ3GzRT2mNT/WZGIFotwaBLhLGWj
 bKBlUxUXbx4r0jyABHYUFhJf64nRMaeqr3wBC7N76G3mBw89GMBimnbKMWdszC7+xxyJRw9KgKh
 ZBGcwY3SZJ2k6W4PgLQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_04,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170169
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276844-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8E9FF2B169B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-17 16:06:48, Konrad Dybcio wrote:
> On 3/13/26 6:39 PM, Dmitry Baryshkov wrote:
> > On Tue, Mar 10, 2026 at 11:36:26AM +0100, Konrad Dybcio wrote:
> >> On 3/9/26 3:44 PM, Abel Vesa wrote:
> >>> According to internal documentation, the corners specific for each rate
> >>> from the DP link clock are:
> >>>  - LOWSVS_D1 -> 19.2 MHz
> >>>  - LOWSVS    -> 270 MHz
> >>>  - SVS       -> 540 MHz (594 MHz in case of DP3)
> >>
> >> This discrepancy sounds a little odd.. can we get some confirmation
> >> that it's intended and not an internal copypasta? (+Jagadeesh, Taniya)
> >> FWIW DP3 is not USB4- or MST-capable so it may as well be
> > 
> > DP3 link_clock is sourced from the eDP PHY. I assume there might some 
> > 
> >>
> >>>  - SVS_L1    -> 594 MHz
> >>>  - NOM       -> 810 MHz
> >>>  - NOM_L1    -> 810 MHz
> >>>  - TURBO     -> 810 MHz
> >>>
> >>> So fix all tables for each of the four controllers according to the
> >>> documentation.
> >>
> >> It sounds like a good move to instead keep only a single table for
> >> DP012 and a separate one for DP3 if it's really different
> 
> Please do this and resend

Will do.

