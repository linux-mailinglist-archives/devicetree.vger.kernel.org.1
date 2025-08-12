Return-Path: <devicetree+bounces-203715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48555B22520
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 13:00:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 508CD62188A
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 11:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39F191F0995;
	Tue, 12 Aug 2025 11:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XqQ5FNNm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B325B2ECD29
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 11:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754996424; cv=none; b=oUCeQSENPyOdgMvfXknC0zSClH/AS83HZqj99hmc3kmu+3/Q3d6ljLZQ7wD87BJFcXdMCMCwJdi9/uR4rl8bZpLYC/6Q0DwBLQrNPSlH0jLvyZPhiuQ4OB2/Lp+kIsZvOWUSaaE+xCrjCUWt260Pu14QmPBem7UiTG63Q0gvx4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754996424; c=relaxed/simple;
	bh=877/LB5hEo/Tk9VjW20Rf7ElmChEz02j8+kgdbdRLfY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TOXekJt1v99oi7wW4ywK0Kb6lHXmAV92wCmz9txzeToOrXUguUbfp0KhRxd+cYxBUpLlwgdYTCXCCgjjti5yFAKNftTsCo/qkSxk69r95yQuBREECNFqaO70MtzkRhp3J/t6GYW/NCMG21jkHphb4F+UtTlAoo/CBRX+S/U6/hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XqQ5FNNm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57CAvgji032253
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 11:00:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sYKDUmKgY/cIJ0QE0wtE6aKD
	wx9772ZZbTFluaBLWww=; b=XqQ5FNNm79lXCGW/dPVpAB6D+LmJrWVxIt1U7E/w
	aVUPj3yAo4UP3Hcq3mT0ZJMVA8fRvTxBI55A4Kb5wIOJAvAK5bEHWvHvs/3CMUhf
	oBT99kZguGZSVfPH6j3ozAgr8SrcNK7zB11f8pk61h2kXArlmi5HYdrHHKNShZka
	ThzEuEwuq2nafEGxfrv5Tw7hHvH8RRfb297BsWnoNfnkyE8TeZAHbdKvB3s1RETM
	3AlLzrZ5uA1KTO9C7L1S8wAjRlY1xqvUbkAZVXkL5kAsrYBuuesYIve8acEH95w4
	rXQ/q+resU+MtiY5w7oUZqgJ9ru5g/IlbbF4Rg9qXXxQRA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fm3vjqee-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 11:00:21 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b076528c4aso58570721cf.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 04:00:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754996410; x=1755601210;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sYKDUmKgY/cIJ0QE0wtE6aKDwx9772ZZbTFluaBLWww=;
        b=B+384l+BBa/W/gUbLA7Qycxxw6d92UY2fpsMFVvRAUnYRfa9jeumORyAY/qyaF34EF
         KheJwUaMHk6VfhaHSVFhAtcslewa/ftaz0CDgdp8D2gC4I+EwT1sL6DhYwHiJ5og4grO
         yxkQd4KKpoUz8tuWipsTGvrWzHnyHDc4eSU2qS/UPbR8IQQsnPbW1WYXm2PsQ7SbMngR
         lX/TQ8CD0xOVCHHcdjmdr3f9hBM1T1GYBs3lSfUvLnxDMbjeDepTupPeM3+Mz3AIs4iK
         WQYM6comzh8FfYardSKw8rQU98CavKdDesXPZ21snvKQkkrHqp4w1OQiS8IMQQFCiNEj
         9N0A==
X-Forwarded-Encrypted: i=1; AJvYcCVEZawWXEibZIVvjzM7bnwtFDmcrRPdB2G0j1lYOFdvwlh+ykXBQ1RESh+IE9vdsxmPc4KXktFor0g4@vger.kernel.org
X-Gm-Message-State: AOJu0YyfbpXoBMBvmnP2MHNJCiHPQgwbkKNyI0UGOwjl4u+U5yQ6+2sj
	65GYR4LwvGsYzlY46pBDUt+4V6MuoIbWNDXr0vNWy3ci2ReRV5ShAUjGTD06kPFkeHCq4OMDTrD
	sGd/RzLlE0xd1WvOTAP0vmhojlV1zLMVwsf0OwrnH6Oy+yWniWcJMXc/lz0HqP9e+
X-Gm-Gg: ASbGnct/3laWZSTf4sl4MTfq+4EUrCeb6IxMU3tN0WK9G0cfvDkRLQAJ8PBQNg95hyZ
	G7mGR94JT0g/OIKjsSFDuuuhUdzATz7b2phrRPyyGV3EMR/SnYYO/VJZfgHkKMoqAjqN8294efX
	RTYsJ41rye2oE7gzp2jReTBiB07pzGgCB+U4WgFmjW9fmKJ1JPC65KvoU0owMrAAg0EeYYAIayh
	qeCremyo1ymlMr1qXVJyNvFeAvTgd0gbxWwQ9fKA5oKRSlp1DstQK+QLFEvi/3uz7x3qOvgdvyM
	frFZhKiW9/1on68FLTqQZD8D55+tnh0l8T97BPRoENqng/hi4KJ9Qdca1e9uSMGkY4jpa1HlPFA
	L1Zdmm+1x2+ErxYo87zcRIx9BcvOoV/9h6xloI7X5tTXuTHaDIKLm
X-Received: by 2002:ac8:5a41:0:b0:4b0:9dd8:724e with SMTP id d75a77b69052e-4b0aed424f7mr182025001cf.20.1754996409899;
        Tue, 12 Aug 2025 04:00:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEK+PS2Km6eFiBdg8brjdDEzx18v2Lf6FOZGJ4lOZ/y8LWgI14SjtnyDV1G/jfYIdki6K5MAw==
X-Received: by 2002:ac8:5a41:0:b0:4b0:9dd8:724e with SMTP id d75a77b69052e-4b0aed424f7mr182024401cf.20.1754996409157;
        Tue, 12 Aug 2025 04:00:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8949e698sm4863138e87.72.2025.08.12.04.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 04:00:08 -0700 (PDT)
Date: Tue, 12 Aug 2025 14:00:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2] arm64: dts: qcom: sm8750-mtp: Add WiFi and
 Bluetooth
Message-ID: <ibitgekdjsktpvr6zmouuhgzcbfjfeuv4l4zsl6vszv4hauug5@one6zo6gdykb>
References: <20250811131055.154233-2-krzysztof.kozlowski@linaro.org>
 <l6u4y3suv3dpylexbiiznhcuyanlc4ouizhzj2cchblaf6o4wg@fe4laxrioaj5>
 <481985cb-fa84-4b09-9b95-948ee70b557a@linaro.org>
 <k7mw7rj7cno3con2t57nps23y7evd3da6gahyl5gnrxss7e3s4@qncnuekxr7lb>
 <f7704cc1-95b4-4860-86ea-96ec18f61c8a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f7704cc1-95b4-4860-86ea-96ec18f61c8a@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDEwNyBTYWx0ZWRfX5Di/amTneLVn
 Ch+aW11K+ZcqCbJEB2bNKjHmpMCo5zxWLaWe5iomAftggSDb2FVnLxqkUeeYTdMpz5ge+FGZ+Si
 A1qmcar60fhDiElcVx4QrhFc64N6utG2iS/RdSuv0Orjxuov0MGyUQyw09sqZvuty/3j3fh8G9g
 /wuQHHc/6YMGH772YplWqoxyqqLHgLw4UHPpVDjH0T9mRFX8mbGUr3E/G9Ya4Hd8jvAQwI7yG1B
 rFd6skRToGAxYGX+3H7jHQHKkhFwm2HqFIu4SgIYy6gs4O3ICtM/KoVm62Cc9t649P4wnjQvM3d
 4lrt6OUGFcjjedmG0FFXrkOTPYGcPExDNIB7IGRc3xvLlbTBd32iuicvatXpJTiJFso9KGmaCLr
 zXrJVEj/
X-Proofpoint-GUID: GzPDTQj01dD0xWejlPlGdg2P8gyuCvrq
X-Authority-Analysis: v=2.4 cv=A+1sP7WG c=1 sm=1 tr=0 ts=689b1ec5 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=lbISek1RY3kVFRfJcvkA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: GzPDTQj01dD0xWejlPlGdg2P8gyuCvrq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_06,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110107

On Mon, Aug 11, 2025 at 04:40:09PM +0200, Krzysztof Kozlowski wrote:
> On 11/08/2025 16:33, Dmitry Baryshkov wrote:
> > On Mon, Aug 11, 2025 at 04:25:47PM +0200, Krzysztof Kozlowski wrote:
> >> On 11/08/2025 16:22, Dmitry Baryshkov wrote:
> >>> On Mon, Aug 11, 2025 at 03:10:56PM +0200, Krzysztof Kozlowski wrote:
> >>>> MTP8750 rev 2.0 (power grid v8) boards come as two different variants
> >>>> with different WiFi chips: WCN7850 and WCN786x.  WCN7850 is already
> >>>> supported by the kernel, but WCN786x is not.  Both of the board variants
> >>>> are considered newest revisions and the difference is only in MCN
> >>>> numbers and internal codenames.
> >>>
> >>> Are they soldered on board, installed via add-on cards or installed via
> >>> M.2 slot?
> >>
> >> This is MTP, so same answer as other MTPs - these are replaceable parts,
> >> just like you can replace display or modem.
> >>
> >>>
> >>> Are they going to be somewhat compatible (e.g. on the BT side?)
> >>
> >> No clue, you need to ask Qualcomm people - it's their hardware.
> > 
> > And you (hopefully) have access to the docs.
> 
> 
> No, fought with that for 1 year, got some basic docs only. It is very
> difficult to get any access to these docs. I assume you mean the MTP board.
> 
> If you mean Bluetooth or WiFi - I have 0 access there.

I mean WiFi / BT. Then you can ask Jeff or a corresponding BT maintainer
to provide necessary details. You make it sound as if you are not a part
of the system. You are. You can talk to necessary people within
Qualcomm.

-- 
With best wishes
Dmitry

