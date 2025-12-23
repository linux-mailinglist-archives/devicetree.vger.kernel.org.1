Return-Path: <devicetree+bounces-248995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F17CD84D4
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 07:57:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 88025300FE0F
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 06:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAAD53016F4;
	Tue, 23 Dec 2025 06:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ozAyN51G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GnBvhl0n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3832EDD57
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766473050; cv=none; b=r7lZOCfgMXmfn96QnPe3/KZflqJkcOJ82Uy7ImUkVAAY4AZj+HVRQoILkasj1PXGEAFxku4ogYNhOlPM4cS0G2nr1DQ9qNwAOCJa2jwqKUgAsI97Z1nigDsGRlKLj+lZATxerGiUQ6v2dh160CQIP2YePhmxzbFeB9sIt6U8KOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766473050; c=relaxed/simple;
	bh=KThyX4nPO3vwi0+H838Sf01Df1D1wwlwyQZCv66F//M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d7gMZnUQJnDne1THpeSnz5ui24spps0BS3jZkI6NTbA07BvY2gkDIvImTAablNtRdGuSfJq8lKnib2vL/cR3nM/m4qFOoQAha+MGXqIwoVdn7TJ35b+/0ISvx0eLCSrKEAZE056Lap1g2CWTcPt2Ojo/SfWNy0dZtVShRuIOqMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ozAyN51G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GnBvhl0n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN18HWv2747324
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:57:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=H/WmUMHRKkdLejIUbo40s3wA
	GGdStqkFQIeDkcgbqKc=; b=ozAyN51G6ApnVB/sNRtoPgGGHkR+U5BZr7rGKCQJ
	yn/2gbGPvVEeeb99wAaEc33wwUEH67dCwEicY5AGRuIZTsMjtcz93fP8pPMNmRAO
	Y9M1rHtjqqcmvnXVxXiWc3+9OdIJ5qZm0SzHSVbkQw3y0BJbNJFIqcAe/0B2q0Fy
	rdbI4QIdCVSl9zxfvxhQRdt7a4oqgfWxgc7UQdC4ppDa6mO0ayVdYSlCEKRzhie0
	vHw4ZXkXIgqTwb/H8qUsH5lyYota4FcK52/WYikFetvNhl/sYWpJ8lw3VhXhjqj3
	rYPq0CR0i49TMuWjZH+gYzUg/GKo1OCbXpSDkfb/YY1Uhg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7h5cs147-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:57:28 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b9c91b814cso8747499b3a.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 22:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766473048; x=1767077848; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H/WmUMHRKkdLejIUbo40s3wAGGdStqkFQIeDkcgbqKc=;
        b=GnBvhl0n48ViT0mhi6CcZnQGgSXGh/aYYQMsrlo3DlAOKmnTvzlBhT2yuVECx/WVox
         fQ3uUx2OfmAwQ2lDLSQab9/1j4slF8mdnIpNC7kvuizRTvqpmXMSF/RZ6lyEW3enGJUR
         cNMABDvspsh8ADsil2WgXBcbpnMciQax1AYu1A1vAkR4lFq4jQMWd8kdDZodv5/Vwl7X
         GJTmE7qeNUgHvcee+OQCOrERjxI4wF+vv644wDUBhQDX7DTzvvpBOM5kpuvSClrDaN6T
         3PeyRFPba1gC+fiWeZCyQRb26u8+0tU4bauexV+/S5PB4Zx9yMLWuYulCJiQK4OqAMeq
         eW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766473048; x=1767077848;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H/WmUMHRKkdLejIUbo40s3wAGGdStqkFQIeDkcgbqKc=;
        b=CChbuO3ZT4w09vl/VIvPE3ronXCSNPAg7G6XeGV2JTsSgXXBalh32Aw/Gdj6XGqSKy
         0QKwq6qA3qTmluTmO+Oc1RYYdsZ2tYGKRrTFLU4MIAveBXTu8ESMiYjo2oxCEbVmUZgN
         r+YbAcLebgulvt8RNLDqajziF6nD12ktdHTOjfkj+hS72svt4Dl49G29U9Wb1xZ0R87n
         JEJhBWsfwo6UFVsz65pONpArc6eYasUEl76MVJU/OrKmhTO02O6QEhlXmnjpYDkSaddd
         tJlA3tLubqIeacz7c8LP6vebf/D1VD1QV8e4J5Rd84B3RcNuY3Cu3samT9ude65m29H9
         hnTw==
X-Forwarded-Encrypted: i=1; AJvYcCUukLANEzQ9bn4a760YDHf58qBQaQnkPThvwfBHo2VCcHGbuvXX/xoUxeofzX0mQV0woyjVUCjwUB80@vger.kernel.org
X-Gm-Message-State: AOJu0YwWQkH2ZCAdQLReOX1HMJ9hrj1gsvreNvI4qLiRuFac/eo2ZYzh
	0qLk8nHHPYr8P6h+hM+xoloj1uJvavuwMw29G08Kd6qO6VtDrHD9+FXTgoHrxVzXqojVZFSdD+p
	icU1o5K9ja6UkCuO9qf42yyAhEDAqPW2abMJbOumirEy0VXCZhh8e8Q1084vdxKto
X-Gm-Gg: AY/fxX5lNn8JauuwRWZ39BE6Nz5fZSoGucKUA8r0ufGmL/lTvLe3PlZdFaww0mzQWBg
	721RY5NF6oIRUZMDQbQd2GhhDQx8dR8HJKlp1xFMa88lGe+4KmTnTWVDf8gOy1jKPkVQOofoNb/
	xMRsxGq34YleEdFPNDN4wAiRZVEHgO/dvA1/CWsug0kaduZv/dtAOXtNqBSwH6CEq4UqA3NSGbY
	1PqRPzKop2yLGgnFHUs4yGyDjk3+g6a/x4uea8X0Al/NTiELkx9ev/1w3MUTo6klsRLOnHHYLgP
	R72T1W+mZP2w1wljsu3F/Rwq7Y+8NiANsNks5LMMEmJ7cMT6X6ToqCsDLPgf4d57xdlpWfK+gTu
	wa4JWjt3RWEtlaTgIA1lYPgtFZ5OleOQdsUfTFNO9elTvj14=
X-Received: by 2002:a05:6a00:ab0d:b0:7e8:450c:6195 with SMTP id d2e1a72fcca58-7ff66479a6bmr11612244b3a.44.1766473047976;
        Mon, 22 Dec 2025 22:57:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHn/x+Z9F53fOihdDv/H36Uh2d/ccZWFW9KwHQ0K68aisaKryWeicwNiu26pfoymzYspMkVSg==
X-Received: by 2002:a05:6a00:ab0d:b0:7e8:450c:6195 with SMTP id d2e1a72fcca58-7ff66479a6bmr11612230b3a.44.1766473047557;
        Mon, 22 Dec 2025 22:57:27 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7af2b537sm12487623b3a.20.2025.12.22.22.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 22:57:27 -0800 (PST)
Date: Tue, 23 Dec 2025 12:27:22 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: monaco: add QCrypto node
Message-ID: <aUo9Uh2CxRvxxE2d@hu-arakshit-hyd.qualcomm.com>
References: <20251222-enable-qualcomm-crypto-engine-for-monaco-v1-1-06741d6ea66a@oss.qualcomm.com>
 <sbfaknkaha6hb7wl5vceyswkdz4ptsay3aw3evwcgjtfpto7am@v5ezpvy2xuj6>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <sbfaknkaha6hb7wl5vceyswkdz4ptsay3aw3evwcgjtfpto7am@v5ezpvy2xuj6>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDA1NyBTYWx0ZWRfXybXtdsXqiHLy
 HVjanuoue3ZdtLtMHaF3OU/7tt/+aERE6mQimwChzWEqDdnBI3O963KCN+DQN6CKqtnj4u6DefE
 0EG/KJfQy/KSh/zw80n4uotS5sE+VnXMWf04F8tR3nmQhCsfZFq7SsqPokjSFaGncsk2B/SQUbj
 oXlUMrhkd/8cXcFYxG+FZW84Wz2L5Y1VYTQa8FNkFc1y7KPhHob5mUJ2ovkkd1pjMmvAp9tzu99
 FokaU9q7FZP7tjRSxxYsDf0epZNS0d8Ohg/7taGmbYQirslQM+Zl7q1aoJkjMTXYf5gqg7O6Y8Q
 X3+INCA3o4NJLyKXt2bJq58/N/1KERNH/IibLBFSvwqmmWARJw/dNO9ZnL3XcT/ppJbqbRh+Nz7
 +6mx/ICK/W4pAlJKxGcM+YenMJa07sC9GLH0Fy0Z3ePmWG2BjEUQafSshxLXbWUWxCjlRsUC6d+
 zcRfnTVWNmOKN7EOXIQ==
X-Proofpoint-ORIG-GUID: SroWxyBu18CqbbBmrLa8S3FufPodhO_o
X-Authority-Analysis: v=2.4 cv=LeUxKzfi c=1 sm=1 tr=0 ts=694a3d58 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=N-RZRtAeA9jCEb56goQA:9
 a=CjuIK1q_8ugA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: SroWxyBu18CqbbBmrLa8S3FufPodhO_o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230057

On Mon, Dec 22, 2025 at 11:29:06AM +0200, Dmitry Baryshkov wrote:
> On Mon, Dec 22, 2025 at 01:00:19PM +0530, Abhinaba Rakshit wrote:
> > Add Qualcomm Crypto Engine device node for Monaco platform.
> > Bindings and Crypto DMA nodes for the same platform is already
> > present in the tree.
> > 
> > QCE and Crypto DMA nodes patch was applied as part of the
> > commit a86d84409947 ("arm64: dts: qcom: qcs8300: add QCrypto nodes"),
> > however was reverted due to compatible string being miss-matched
> > against schema.
> > 
> > Resubmitting the enablement of QCE device node for monaco platform
> > with compatible-string being aligned with qcom-qce schema.
> 
> This part will not make any sense in the commit message, once the
> patch gets applied.
> 
> Please put it under the three dashes at the end of the commit message,
> after the SoB (or into the b4's cover letter, it will also be properly
> included here). Or, better, rephrase it in a way that makes sense for
> the applied patch.

Sure, will move this description to b4's cover-letter and update in patchset v2.

> 
> > 
> > Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/monaco.dtsi | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> 
> With the commit message fixed:
> 
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 

Thank you

Abhinaba Rakshit

