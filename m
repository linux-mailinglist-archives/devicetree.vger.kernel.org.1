Return-Path: <devicetree+bounces-227931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CECBE61C1
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 04:36:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 799F35E0638
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 02:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD4CD245012;
	Fri, 17 Oct 2025 02:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cy/oem3V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA4723A564
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760668559; cv=none; b=Ppk0n5AyJli8UZGlI7cYb+EVhJuBk7yoxezzyxs+Ota/wYFTV7x9hl+lg6CMKwUBlvnhfo1HdzHDsR/vn3dx8XHH++QvOEu/PTEVrFa/xiDVkbb0qSTkdf1aFGmx48DwergczmzJrbIMN19MKGwkwhHFG1yWcg6HU3Pr7nFrMEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760668559; c=relaxed/simple;
	bh=PoY93QrFluiRf482zySA19jKnEH/DBPNuZphN1G6VcA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GxCAebq8v6CUig1jJYKmak1F46u3ek+WT1USU5Qlw+TkMYC0js8mZNYEvU2Cpsu6BRqYCs8FG/Bm+yXZoU0VIIItRqwSdcEmD54zZBCP+OCHjiO0UidHyDKDs55/viJC6WH0rdiOjfRmPC/6H/m6UbrZaj3fE4ok7IDknX3M/jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cy/oem3V; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GKLRju016175
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:35:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pnta0ElwtxRwPXhkcckaPVCu
	qE+PUgPrCXZcvvyV8VU=; b=cy/oem3VT/N+gkNmaxhKasRfMmHNHtM0/B1QS2l0
	zzK3JBNlR/jZ62z3fp6IKF4UseUftnd12jwgPv7qCGN8HEAk3S/5aG0o+YgXBP6D
	YwPaelPkXozleWIVid3Me5eAOJrBDEzXDup8XeCKzRpEfh1mPzkrbgS4fZ06GEMZ
	G17dHHS5wQWr3DjJdxx+1JLCmbxEChutOfNm/dTZ6JOKCV1fIMrWHSu22uLcqLOW
	28l5lwJ8otRaWZb4ecCrvCw+PEIPuiiVGHOGUl/WENIJTqKXjrdquFjhr2NvARQz
	+si+dT+RzFLwLNDCfotFREn2ziHSukT9eV1dwKHSzZoDEA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfm5tqr1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:35:56 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33826e101ecso2794400a91.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 19:35:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760668556; x=1761273356;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pnta0ElwtxRwPXhkcckaPVCuqE+PUgPrCXZcvvyV8VU=;
        b=tzVHARsttkKeZ7lpeJfki4sgoUpuMb1u/Mo0Qko2QGayna1NaPT6h5Vl1dReLsksYL
         VEbQYsv/A79kQiMD8MAikQ+mXrihZfL3QaV/3rCtyoKiH8RlK+HfVS8eeFTPn3FSIYZe
         sJ/6hxYfzCOWy1Tn0MIIdptUy+oqLZqYrixMTYOyfDvebkX27Ve+xAkLTCKDSdWco5YN
         2VaUXbUxunUfmoWgUUpj76c2h7O+pOQyS/U+wJ37YWgtBbPXr5/9LyLnV8VdE8QXS+TN
         KBTWTDntUZWTctSNzOIv+Ei9ekmL56xTfIH0SWbxY7D/M/MybkU0KPBZf5U8/QH5IZoF
         2Y9A==
X-Forwarded-Encrypted: i=1; AJvYcCV0JuN7xfpexCTdyAjv8BZBZzSctTGsKTE+J/XcTpFdjhZIIgwsgLDzekUsttKOI4nNs2zK6p2xtPjW@vger.kernel.org
X-Gm-Message-State: AOJu0YxGsGM4P3fnw6CFndfTYb6mK+oUQEa3XjgInNVSFIenMnp0t2Wd
	1jBAfPNloEm+U7jY2xQxnEx+2PV7auGdL2xZ6kd3nYtOQkE+C+IBQ0Ry22cd9qswU6hbFHFvqJt
	FrKehGCGCj1UZTUhLKt6834tWcSOJMSfe+35+ilqbrQVI5h1725RTUW+atvm8G7a4
X-Gm-Gg: ASbGncv6emtL94yGBndCXiXb2Zb2ixgG3IkFDHoNdUzA0FA77haV2s3jVucIlajNtod
	NXCg+hpeqoYe6mp62l/sgIvDaI/+Em1mxPaMdTueU9EI5DKwjiUDuHTeezD6mDuqr6GWEa7PgNO
	9+44b1EInrm465ldQP+kUFYNeXX37lyQ+C4xvwGYwZzrkGL3kx5W3lnX/PAoKNXv95ELmbuz1Hw
	jmYnvljTHLx9hrPzT97T9pdQwDDefYmtnmuPdUuKvh5HWrp3r3bEnqh+KdEGewKSD7827/P9DU4
	2H6I4IxfwUo58kkw1bJDCvZnrQeJOwsL+YI7hPKPRgwoTf/ARSC9hf6qceeFiSQb9qQxwIdmgrs
	GuDgRJ/nYLpM2Id9hiF5/JIenw22eJlsKW/n0txpLDruMSw==
X-Received: by 2002:a17:90b:3b4f:b0:314:2cd2:595d with SMTP id 98e67ed59e1d1-33bc9bb57a5mr2474407a91.8.1760668555621;
        Thu, 16 Oct 2025 19:35:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWaqgs8yi7UTt2AbGY82T7BUeI2rUPDLBynvD9H35dUeDbKXFf60ihFhe6zjxdPRmQf21ffQ==
X-Received: by 2002:a17:90b:3b4f:b0:314:2cd2:595d with SMTP id 98e67ed59e1d1-33bc9bb57a5mr2474387a91.8.1760668555176;
        Thu, 16 Oct 2025 19:35:55 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33bd7b3da78sm946297a91.19.2025.10.16.19.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 19:35:54 -0700 (PDT)
Date: Thu, 16 Oct 2025 19:35:52 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v2 6/6] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
Message-ID: <aPGriPZ3u54RCpVx@hu-qianyu-lv.qualcomm.com>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
 <20251015-kaanapali-pcie-upstream-v2-6-84fa7ea638a1@oss.qualcomm.com>
 <k7xjihanbqelhm6pytrugv73pc6bmspn75vy5a2thcqnxkzwhd@bsyp2nqkl5rf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <k7xjihanbqelhm6pytrugv73pc6bmspn75vy5a2thcqnxkzwhd@bsyp2nqkl5rf>
X-Proofpoint-GUID: vo71E8XkwSD4kOLrgJ13HGOW6D7DXcGe
X-Proofpoint-ORIG-GUID: vo71E8XkwSD4kOLrgJ13HGOW6D7DXcGe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMCBTYWx0ZWRfX3NxWb+nJMBzR
 /ZHcR2D0R3PiG7UR5IJgt4BQvm3K5rKROsK6E4kwtMJK7gwHygshXSFl52b7Uco54j4X6VzDvxX
 R0JMsusB8e4jv1xFh5lgeVkIIFaWBZPtlswrU1SxSy8sMmuMKyQT7WXdQycngaHB6fFQXBN71WN
 yC1wBNt1Qp+RVD3RLEAr3wls3ELzidDC1U1t6ECxS4GL7tMrfam30aSZp5Izc4aDu7KRakKBCzE
 cjgJlEOBnCT25iHt5K+dum+h212RZ3FkuHh0A1D4cGtL9/qQHA+FCVLYb/N18RPbZH9rkVzv8x3
 GwB3RZTADKwKANFa42zsoU3nOB03JCf1O02xs8VBqlygHg4/HQbpeoziLGmqwa56MOduNyjbvCh
 VQqYrs+UsiyRIeLzExcSXUbSFO1XYA==
X-Authority-Analysis: v=2.4 cv=V71wEOni c=1 sm=1 tr=0 ts=68f1ab8c cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=SE4x-66S8WGdbeowD1cA:9 a=CjuIK1q_8ugA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110020

On Thu, Oct 16, 2025 at 03:05:15AM +0300, Dmitry Baryshkov wrote:
> On Wed, Oct 15, 2025 at 03:27:36AM -0700, Qiang Yu wrote:
> > Add QMP PCIe PHY support for the Kaanapali platform.
> > 
> > Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Who is the actual author of the patch? Do you miss the Co-developed-by
> tag?
>

I wrote this patch but Jingyi help submit v1.

- Qiang Yu
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
> >  1 file changed, 194 insertions(+)
> > 
> 
> -- 
> With best wishes
> Dmitry

