Return-Path: <devicetree+bounces-256991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 847E2D3B365
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:09:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1014430DED57
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46C7636CDE9;
	Mon, 19 Jan 2026 16:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lJ1LtAtW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DqigiaU3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7C73033FA
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 16:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768840885; cv=none; b=pxjlAvW5000eCg+WIZDEEMX8LVymzMZqk/fLv0CS/tRIYH7aDyntwq8aBAAwmseqkbsR/phMp/peF1n4wlZzzYy1h6I/n+u0lnTl79s2MLWmKD1j8pSS2YLNWxkD/FA6R4w7H3LcW8/d8L0d0GYAQ6RfIeBmlk7HWTHlKssaduo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768840885; c=relaxed/simple;
	bh=iFIvQQ+o+BplI5ILbep3PtNXh7zBhJq543tdOffM87U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PfGK0X01P8IXb0uSSzjpAvYuHScmVLizgutkIgB01+tYLgTNp0ZmBm2UQhFBs//l10J8vUQy0Wh/kliV8UtM0zSANKduhOqML3MhIB1X24/txTq+Wq+LCmWEiqOBXxFCRgOct5rsKrh1SXnWdkzagq8tdd5vAnkq7NH72gkng/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lJ1LtAtW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DqigiaU3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JDdQxE1347688
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 16:41:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qB/Wgz2q5Vldzov8odLrdrus
	iyg/Swaah8avNX7CcpU=; b=lJ1LtAtWxhXwUe8u2G+4nyDemdM9Wcnixn3IGhVV
	8IbllmabwoljQ7aYfmxL50DVqgR7Q5Jwhyt+ftTQSclOtgo2HIP8wW7hgCmfk9G4
	HvjQ/NOzDk6ym+arD2/6xXIbG1VCJDZrG16sjr/Rn2ttQCdEgp301k+bAwtmUFz2
	6SP2MftlDJ4jUDNKV5r5cEQdrYLOvNgtf3kkz6STK7yn3O23OFmOLW/LEG9MbxCD
	lgtCNDjrdgHnj0aFQoWObClivJQaJvdCNkIOM8Z26tnKr4RY5VzbkKRqL8QUQrNw
	d6Xnrol7XpuvdqkI00NXTUb6Q5qZvn33YCCzuKkATRvFFA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsnpdggb9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 16:41:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6b4058909so460553085a.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 08:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768840882; x=1769445682; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qB/Wgz2q5Vldzov8odLrdrusiyg/Swaah8avNX7CcpU=;
        b=DqigiaU3GH2Ha7CeZGwqreqXH62If0+6CMm3Gxb2ZbFXkn2fMhkjFF7r0BTbTJMjli
         hX55v4hF51wtI5YiKH/XJhJGvL8oH5Rga2hD+0FOFPML5nqxB+/dUb9VLD3ONBOQJQ0M
         VXp65QDlMUdB3IXYDyJwcgK+7hnl1ahgvNfBn4WU30yBw/jcDfWSXnCMjSNLSGNGN+l+
         wELg/5P5u9MjEm6K3aVklXES5oxe5VM+v8VFQFR3x1dfTNEWAvet5KsvHHnz4FJmcB6e
         JgInWTrWYeASgApdMSdzZwqXg3nki6LkxR2rYUNYSob47qp9mZmwggV1sRaAkNc8QcbE
         KIYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768840882; x=1769445682;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qB/Wgz2q5Vldzov8odLrdrusiyg/Swaah8avNX7CcpU=;
        b=Tk0C0X+Nc1QfBjkXnaileikF9ERTcs9kchO+NwbnGG481ZJZFvlGW7yUE+0IxHrXWW
         Hyv+IRudPJM+gZruYoPRTu8bZEERgmtUCC0M5RJ+BsdWy9v2fhRH553R5T1kIW1d9RgQ
         3iQuG8XjALuPKLkR6gjP+JIuOar/E2bdlGdTn1/0LRKKWrwbYJ99gvEKmV7tPcJdYLL9
         6818RBdsrWmUMbI00WH5taE6Qbir1/JDjBQVZLT/I8/ztoVBzmm4LGQ4QLsg5gTTS4ub
         5BEU9wdV0UTP+KMVCVLTjOskhvzC7rLo/ygp6TVAR4eeES3MvVFJS6pzN15e25+M0ouN
         mYcA==
X-Forwarded-Encrypted: i=1; AJvYcCVaNxPPUqSFeVW1a6UnmdbtSt9V6So1K76T1mdbZRHsexKPSQrhuypCrp3dyP4lyeTHcH0rucYg35Gh@vger.kernel.org
X-Gm-Message-State: AOJu0YwEh3jzhcCz+sd7nAbCx8J+Jt51RLmTXnRhdGdcNUO4n+0tP+uM
	Yb6zNDfUpiXksgQ0UGgVy/V8vzt2XbfiiVSZEb2zbAtbccBZ6MaH9qDkaTK/Q5TLd0skGjECgit
	L4YXvH2qmqfAlJ3KhcTiVnUga+0kRpewpOPYzOSyo+2PBzwvvIaIAfNiM0xjgQqxa
X-Gm-Gg: AY/fxX7m3B4RVOCbkSp6cgJ6LgzbAwSazuh2VaC3ytrQ/OODWH/fCesoLgOv5xSpJ0r
	U9lD61+d4+8/FPiHp385JhZRo69U8TWrBHlIh7qGmmW6j4scgpbUz8ekgjGLlkvXFxn19SXkEtq
	vPRyQo5pMgPqSpOYZCAzNkRDDeEUtwAYAonL3fo4JSugtrNE1TSFjZKW42b9YoZUrvEkg1HX+Mb
	DxfV86sL6JH+E/gfl4TOZo77mJaV5JtOVVmDalxGxaTKUtFuX0wupkYi7uTbnYFTiI0dyb7P4CE
	Xaup5dKY9dZLHkXrycN2OwyO1aG9VlndzeEEG9lVbDsJ0XK1T+Wid4XnAXQ+wL9pUDSJMSvjusX
	Eyy2MC23UHXqXq2FcUYe0/AHfd+PiOqap22qZCTPIE0nbia21yU/+iXzBSgQXMCAek/wLVSpiXl
	wk1E6/JdqOdqyrFt+zFg5bBx4=
X-Received: by 2002:a05:620a:448e:b0:8c5:2e5a:5c80 with SMTP id af79cd13be357-8c6a678990emr1562435685a.65.1768840882055;
        Mon, 19 Jan 2026 08:41:22 -0800 (PST)
X-Received: by 2002:a05:620a:448e:b0:8c5:2e5a:5c80 with SMTP id af79cd13be357-8c6a678990emr1562432985a.65.1768840881577;
        Mon, 19 Jan 2026 08:41:21 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39c051sm3438900e87.79.2026.01.19.08.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 08:41:20 -0800 (PST)
Date: Mon, 19 Jan 2026 18:41:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: nathbappai@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Enable debug
 UART
Message-ID: <c6w5w3bxqng3f67bvxl4g5ihsgulglhi7wl6maq63snoscmvjp@2sv3yv3w5fkh>
References: <20260119-xiaomi-ginkgo-features-v1-0-3c8fae984bda@gmail.com>
 <20260119-xiaomi-ginkgo-features-v1-5-3c8fae984bda@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119-xiaomi-ginkgo-features-v1-5-3c8fae984bda@gmail.com>
X-Authority-Analysis: v=2.4 cv=NtncssdJ c=1 sm=1 tr=0 ts=696e5eb2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=xHxH5GpVV14gQb3VaR8A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: tROmYt-oWP6N3B0rVryrw2x2Z4VU9Zvy
X-Proofpoint-ORIG-GUID: tROmYt-oWP6N3B0rVryrw2x2Z4VU9Zvy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDEzOSBTYWx0ZWRfXxjaRx8bqyTts
 MSmDUMjKz39cWOl4zPmfvCnav/UBxrbPddd4Wx/+7PXWWpZjdFfR2EsNRp6B6RruOrSD+57Xuqr
 nX85Q6oMTw2MKPRRID7Z6D9a3e7sPP6M8xm8fEmC2K3bnxUYDK+a8tIdO9ybVagUEFKTG6u6D3D
 5NYlge1o02J2jT31Om7pRBsmyOZNo6sC/keMb4+WHq0QDkzO+Kz7z8Dv3B27QWDYMYtePKo3j2S
 VewZ3aZlA9XrabLH6N0GQsVzTwoZhs3rVcdg4DWhWcdECC8mchE6s21Kr94L4Havg4fnr1w+x12
 Qe59Akw/Jn/8e6RSlGXKtGIcLOWvbH+AHvG+hxNWN/EE8gRXJU3elxFAKauhiSRamKbU5wL8PWB
 ZafhqwWyNSIKIpQd0lHQH9eJBfzDLJCpIPAoN5f9yVi90t5WXIJSG/aX+54B+oL7AuFL/qS94oV
 x8/4KwD42/c3lnq1eFA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_04,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190139

On Mon, Jan 19, 2026 at 03:13:07PM +0000, Biswapriyo Nath via B4 Relay wrote:
> From: Biswapriyo Nath <nathbappai@gmail.com>
> 
> Enable the debug uart node in xiaomi ginkgo exposed as test points.
> 
> Signed-off-by: Biswapriyo Nath <nathbappai@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo-common.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

