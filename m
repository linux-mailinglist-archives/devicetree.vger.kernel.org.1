Return-Path: <devicetree+bounces-189750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5C0AE95A5
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 08:08:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2D8F165773
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 06:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8331F22578C;
	Thu, 26 Jun 2025 06:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ctxmq2RL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AF621FF44
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 06:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750918106; cv=none; b=QbdYLOFNA4yceu9O7OhkYKFo6SoP1j1mCNmgpRFfb9ZRXo9WJUXTYNKmxfs7W7e7UIdwK1qWFQiL6EwxVKyyA1vvLWt6RskHhqwkpN5xlIxq3aiBNxuZ33Sm32sxMtrotqjJEgGnBx38FJ4ZIBp3sQ9OklEmFa4YGxZ5SfXt3rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750918106; c=relaxed/simple;
	bh=hQt7Bb+9AHZnoLo9cKQWepwSiZXlnwjoIITYMD6kz1o=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kLI1H1eKrM8saa6Vn5ZesPOyyH9kX9mvHME+q07Zs3C7tf+hHryKLHxQycDd7k9pFmmsPrr84DQsMTe7rdi8Df+4yck3RY4oGhHQLo6vfQ/R/fkJ+Et5SvdeIoUpJ/JX05WRNMuOMMCQk6iTn0cyyvldbMxh9YjwJEdkdsJNZ5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ctxmq2RL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q0Dr1O008400
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 06:08:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JgSSowuZf4akXznD5e5++XsT
	7x22KvtmyyRb459j924=; b=Ctxmq2RLgZ6RxWpMA06IHd8X0JAGu/tBkkA0dPUU
	qrPcAsIM3REiCkumKTxejL6N4onSYH+KAdiRNlz2iSR3twby8ocsisgEgmvp3rcj
	E9WXyKXVEKDKzRhU05K2Bye9A7KnPVpfKylg1YRvuiWf/aEEDxiq/gY8cv5athIB
	HdREA1Xn/pt9yE97iVbiwHJuXaMnkGcC5tfYrs4rh2ELEtwrAqs8YpuM6SOHro+p
	1KA2nLFCZwDpZYVllCJnbiodpQ8JkCCntG3kyRKdpbX1nJIj6nPASfz7K10zRFKi
	kYTaM8BsRE3Uz/c37BkOEFpJrOAQ8J8it/dd9h/G/Y93tA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbhqrkm5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 06:08:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c955be751aso87664085a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 23:08:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750918103; x=1751522903;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JgSSowuZf4akXznD5e5++XsT7x22KvtmyyRb459j924=;
        b=fSr0x7qATbZ8rNXlMMAXhdRw2VyzYcxcA5fJxdRqqM2QLa8ajUm2dMAy9iueLkBILl
         y+wbH9/EYwzxQ20Eb02sQegjB7+AwoQFiRHNP9JCEhyiA4UFCsPfJkXZP1wlhmp6C7xr
         0K0c09uAj/gON538D0zJqx26zbDPbLpv9KY4FMaOp70Uf9npd2HglRH7B9t9hmEOjKxv
         RCojNWIg6L8UWVIvv0FH/Ms8hARCXmy71xjLV6Li6NOp9XnzFaQkjc2W9j6mQJQnEXZp
         VhnyJeO5vEno1NByBkB186C1AXztcSqDoLISb9MWJiNrmbu0mPG3YaX1eKh1auNjjs2g
         zQhg==
X-Forwarded-Encrypted: i=1; AJvYcCWaAvOWGTUEjA1OrvI1P18lagcjsW7ZMFBi7LEaE6Mk8EK7+9Bgs1QfaYLgcBucU5Q3uD64cJFcLvC5@vger.kernel.org
X-Gm-Message-State: AOJu0YzTVpulb5WFnSB6aFtamdS20wmlzFcBU4SSzlWjgC1UrzakJXkt
	3Zr+3SkLTXfa/1W8OqjzBrpmEqu4D3y2xz22M4uaHxWenskkCfUPCiFLIp6xTJaBV9wOJrVCKuf
	JqP4snwABlTGvUdfWoJ+a1bmVJMChbpTTJYUaYlPDscm7jxbPWqtH1nDsgYTk57l6
X-Gm-Gg: ASbGncsAtHlL7A3wc/us/pWMpzq3IJPGo/e8GDZW5RglfYEImZQPICXO7sLJWfs6oKm
	9k6e1yo29kXD5wiecktDv1Kra5nYHdFeI/Ro2G6EKEkDmFrd5s8HBt0mm53QtPC0PJw4Gpv9ZDd
	4d8MvyEa4Q1FDl7yO33bLAgl2NujMWXZobP7myErhoYCA+z9bC90NTtfWbyeQBcneM5zf+t1X0R
	lVe0KvOcoovHpA1ZGM2DuG7rfylPIYdyrNlC2BA2cveg50Ogei7VW8MggHJUowW8YxKxzi7C7N2
	21xpu7j1M723ymGV19azOKNrwYN0EK+QSkglh0QiQzgHQnbVs2adO8Ik6A==
X-Received: by 2002:a05:620a:178d:b0:7d4:3bc6:1df4 with SMTP id af79cd13be357-7d43bc61e4amr309277085a.16.1750918102946;
        Wed, 25 Jun 2025 23:08:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/nANbsNfBPYKM6JWc6VRoFZoFTj2niADtQPcOroE/JQv3VpyDDjmmolr+6Zi96Ucr4lEHUw==
X-Received: by 2002:a05:620a:178d:b0:7d4:3bc6:1df4 with SMTP id af79cd13be357-7d43bc61e4amr309273185a.16.1750918102498;
        Wed, 25 Jun 2025 23:08:22 -0700 (PDT)
Received: from trex (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453822c6b9fsm39477585e9.0.2025.06.25.23.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 23:08:21 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 26 Jun 2025 08:08:20 +0200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/5] media: dt-bindings: venus: Add qcm2290 dt schema
Message-ID: <aFzj1LxEbxa3rHhD@trex>
References: <20250623105107.3461661-1-jorge.ramirez@oss.qualcomm.com>
 <20250623105107.3461661-2-jorge.ramirez@oss.qualcomm.com>
 <cbd6b7e3-850a-4bde-a1f9-393c291c1ee3@kernel.org>
 <aFlHlxO/V3MMARVK@trex>
 <73aa4738-6730-44fd-bb26-451ef49d588f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <73aa4738-6730-44fd-bb26-451ef49d588f@kernel.org>
X-Proofpoint-ORIG-GUID: 0kujydnDzn0-WEsSj5ptCYZHFLzDNcEm
X-Authority-Analysis: v=2.4 cv=Id+HWXqa c=1 sm=1 tr=0 ts=685ce3d7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=LfWDrbMk3Fy7126_j0sA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 0kujydnDzn0-WEsSj5ptCYZHFLzDNcEm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDA0OCBTYWx0ZWRfX5/O/G1ixgXxa
 U4WeSapN5wsr8ql5pd9e/uM3dK/9zP7ZW6kxVmhJc0jrtzjrjUcy9Kgc86jZyUG5y0FGefhUSwl
 4L0ZbGgSKGwKWv0QmSmaoqyk1kbXEJehgyaPdgnSciLUVfOUZuUlO2pyefPOL7uKjGW43DwQct9
 pr2IiRnmwMZbyFEQ9hbgRenOn1danmYvJZbqdVnwHNe9buEDWbmTsnf8DjQDU1jYqdwkVVuVdn+
 pRL5ZMkXas+mpzx07wvXH6dft1wrLdRM03eRCo7rvwF6YUi+bEUq/cU52bga5h3Bb4whoTS4Yl+
 MpfBOQRZkgS2/qr6byfFSFSNUqj4Pq0G5NgC1GEdJuY5CGiALPzniudIuxLcj2f6QEnCjjX9HRn
 r7ugI1aLQU6ip2/X38CF1TuI/1uz4XuDVLcVK3yzGCkOML5/OuTePWiR1eo8fzPoehK0+5LB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_03,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 mlxlogscore=862 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260048

On 24/06/25 08:03:46, Krzysztof Kozlowski wrote:
> On 23/06/2025 14:24, Jorge Ramirez wrote:
> > On 23/06/25 13:49:21, Krzysztof Kozlowski wrote:
> >> On 23/06/2025 12:51, Jorge Ramirez-Ortiz wrote:
> >>> Add a schema for the venus video encoder/decoder on the qcm2290.
> >>>
> >>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> >>> ---
> >> Don't send multiple versions per day and allow other to actually perform
> >> review of your patchset instead of sending for every little thing.
> > 
> > No. this is not what this was about - I already explained to you the
> > call I chose to make. You can disagree but you should not misrepresent
> > it. 
> 
> 
> No, you did not explain me anything. You sent v4 with only one little
> change:
> "Changes since v3:
> - Fixed schema commit subject."

um, I dont want to delve in this (only because the conversation takes
longer than actual changes but just to close the loop), I did acknowledge
that you had trouble receiving my patches - since they were threaded -
and that I would be respining on the same day in case others were having
the same issue.

> 
> The same day, also skipping review.

yep. will repost later today and thanks for the persistance (dont think
I dont value it!).

