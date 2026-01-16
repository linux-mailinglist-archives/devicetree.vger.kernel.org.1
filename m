Return-Path: <devicetree+bounces-256184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83874D336D0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:16:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BACFA303ADC0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 897D13446CA;
	Fri, 16 Jan 2026 16:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KMFBYS7Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J+G9WuRa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9E22EA156
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768580150; cv=none; b=pEIvy/fCUcjyqejsaOTNGy+XSKVvs8dB49lBea+fqBQb0Zo9MPS1uXdznPnM2IeNaXY6F/EC+Ncn5l0HaEkzAOj1oATPebsguavp9ySFygOZBU6cQAU0bZFaAChLlu+kX88FPYgbCGU/Q8U8gMt8iKdcq1PKb5w0ikbx/9eOeoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768580150; c=relaxed/simple;
	bh=xlmF2TedRlLX4pOlUC3j9NDW4clhMYuKzO5fDLT7nz0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J3vKZK9U1oyuasBplpI798dQxTxcwdKygYlmP63RHP0DSDhOqEuVWx84dZQNhkJe7D4HAKBTgRrr6v5ZnLb1iydyTdsBPie0NVsa/9QoZF4NhYJOQmaKbgzeAY+Bmpm35N8iOVGfjgAIf4sLZAPLKZp+vGp7OR0nAwlfQ+mJcw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KMFBYS7Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J+G9WuRa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GGBoMK3892932
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:15:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZC3BgfWbRTghJiseDzpBiuOP
	0ljpxEF3ruRFm5DAwZw=; b=KMFBYS7Zm60h8n9YpoY9mm0TjKpVnxcgKgpXCqCT
	FsYxrl9QTvodKOS8RWWytXV6yfKNUnjf6V4KBfe9fiqPLJrd/FxfW32HtZzkBI3/
	TAXWPG0Kxw+bl76zNrfrFg7Wt8r80gOrZnD2F9uEShIbyRQ8BcJRwgIwnYbV7Xn+
	EzkGiLgV8cTTo4czGK4dvMJuzWOLioiT18VVpqrNU3UN60Un92Kfc+L+jjCqCOIV
	iWu74QDHGoQkO2nGB+BiWG/ddMTN8QIU94GFd4a1h03w/pSurF4StTYfIRs1U3KG
	qfXrd+lmWIH+KzKE2a9STtJAzkGdD+HYIccKKY8t0Uy2dw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq9b0atdd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:15:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bc4493d315so617690985a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768580147; x=1769184947; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZC3BgfWbRTghJiseDzpBiuOP0ljpxEF3ruRFm5DAwZw=;
        b=J+G9WuRaGzzjXEhyETqa1aBQC6ZQdcig6IfrUzaDmQ57cU8AZnzneHqiFZdzhnZ7rc
         A1ZpRfij8QlUSpj9MMXsZjZbiXIKfUypxZykAZx7jUtY7rMRTOugRKC7BazRnzAtYzZn
         Y9Ob3VtqX57cev2vJM9R+UMB6SfAt8nHyhZ4eHUASAggv+f8W16HQWeEKoNC5sEbMJnZ
         fauXsy+mo+vqLEoihbzRQwshnatFCpT6h40a1wumRUVm6eWsTKVXHqM4rK7h8zbvtLGw
         bZYOLEUS9PSQXltosb4zACoSri9fTrNy1CH4wlT8MFq+9M+iTXUKynN69ZSUD+X8/aga
         WkJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768580147; x=1769184947;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZC3BgfWbRTghJiseDzpBiuOP0ljpxEF3ruRFm5DAwZw=;
        b=OqCVxOzSmvoYUNof7l/hR1KPzXPc/OWhKn9iKgVL6ZCahGTSKMFN8K6rLSLzpSRoec
         jodZSsKvl0Jo1o2qjr6YQ5EcZzioXy/EKKUeFNUh8AwFMRkWKcYia6T7N3fkHJ4BDUSC
         Vfx3W+/AlomCiE45yJShiTGjsGgRKdDPnSzPtXrLNyPynvTJ2jwcSsjb2fecg5sEnilu
         V7L/JbLqXEZE7mnhJXup74byL4DVBBc3XRC2whDKKjsQrlOFSY2r7h/HdK6b+IWYV9XE
         I3vbxpEpzxxN7xRJMgmCwc0fAxNrHcl0DfGPb1Ad4+QFl9wFoYaUbN3/kSvHw/Crrs0N
         z0ww==
X-Forwarded-Encrypted: i=1; AJvYcCVJv6gt/mgfPy/W4tFxK+4F0ZTABh41vpFh7sgzbi9OqdHShny21ODVCr1G/RbHg6Q37ROEWg/aOVGL@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn2wuRXRoLs+vserltEEAcpmXKbqByn4aoxA1Tirxb2E7IRqUy
	KZxuJH3clsMRbEhYR9yMZ/OfsB3OYyd6fXZh91x1qfySYKlerpPtPm6N9SsGHeFGu/d5FntK0xm
	5La6tR/2tEbs9XXs7i+foNnY+k720FcLCQhW+3FQ6GmSAcmEZgfWr3+0wjm/PKKZ3
X-Gm-Gg: AY/fxX7eanH2aRSmYaNxxyWRrOCeD1Qy/vnOVzjq1rkGfd6Nplu7zXTL4tUkac6cooL
	JNOZaNah/T0/sC1589M8d+w4Coe/PoSCIzTMeWMBQekhXcyDUv/yS+U2qNRJsal8yGCuFvMtGse
	OGzqNfyLerQZwQkLyzGMMa/hO5li0fwR9o/dAE3qc72vPvU76X0wnYmffnWx3fYZ/PBIleY048p
	Ijr6BbweHod1Lee5DYWG5hCbAFT2H5o8TL6tsFSovMos6JW09t4vF8m32kldjnFhRq8GvxIGcSN
	FkFfmmgUUQn8Nt0Ykgtyww7Ik2YLvT5rAY4JBWlsZmm7HjOBqVhgM/2SzVezLP4MJlQZgtwe8g4
	XLc/AYRRUvymYKvqqpeuSI/OgnHzQr3xne03VoncWUXkrLNVKnIgewpyu0IPsshgJLhSaQaMa0V
	KV9VkDTy7PFBl/Pbyg4qVUFEc=
X-Received: by 2002:a05:620a:4729:b0:8b3:16c:1a79 with SMTP id af79cd13be357-8c6a693a95emr438684385a.53.1768580145939;
        Fri, 16 Jan 2026 08:15:45 -0800 (PST)
X-Received: by 2002:a05:620a:4729:b0:8b3:16c:1a79 with SMTP id af79cd13be357-8c6a693a95emr438660985a.53.1768580143933;
        Fri, 16 Jan 2026 08:15:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf351fcbsm908675e87.35.2026.01.16.08.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 08:15:43 -0800 (PST)
Date: Fri, 16 Jan 2026 18:15:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Koskovich <AKoskovich@pm.me>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: milos-fairphone-fp6: Enable
 Bluetooth
Message-ID: <nk6tdbjn7hpuxfypxgcfuzkbngwj6fsyzjjshfhwt2fmxy25l3@47k7b24jroy7>
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
 <20260116-milos-fp6-bt-wifi-v1-4-27b4fbb77e9c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116-milos-fp6-bt-wifi-v1-4-27b4fbb77e9c@fairphone.com>
X-Proofpoint-GUID: g2e2N6GJfOb99basrEAETOjNN0Jrw_G5
X-Proofpoint-ORIG-GUID: g2e2N6GJfOb99basrEAETOjNN0Jrw_G5
X-Authority-Analysis: v=2.4 cv=TcmbdBQh c=1 sm=1 tr=0 ts=696a6434 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=NEyQqhXCQXLKNWlO9YcA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDExNyBTYWx0ZWRfX4zkKJerI+hiK
 6Ox7wfigpgQQFS/mTL5ojzQx6RBIIOt4tMkgFyl/tRlky0DKlECdRkvANn+H1lfIC12JQ9s6YcR
 WugaROoXylGoRoibwlBNsBwhciRZ1/l9zXnSQ1IVun6xbafOKiKelTZSyOM+s0soO+Bi4GyzBwD
 fyOT5XlvWlv6S2erRb/eKhuupLn5LbYwnLH9IrTCVizHJldnx6z2d6EZFFaR4RJ42lzIGqkiMrL
 k7FW06NzT+nCcxXi74bxdZHMgreUOan+GLXGUwYrzE0E/QhgTkNtDF87ZyyCoXsIa+mTHmDYVES
 4tgqGRLA3j+Q9JrA8ibdAHbaKZgjQ82IvJ1EjAkd+sX8tX3WyA+IfvkfpfG2PqZeTkXbWF5gEJG
 CSeePHBHem58NK+X3RIIsIkKOwxMXbTnzKBiRF1z3bYlqYcWozH0fgKU2XDw+dCQRyrFnn1Sz2w
 impbg1pmBoG6pA/jELw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160117

On Fri, Jan 16, 2026 at 03:50:50PM +0100, Luca Weiss wrote:
> Add the nodes to describe the WCN6755 chip with its PMU and Bluetooth
> parts.
> 
> Thanks to Alexander Koskovich for helping with the bringup, adding
> 'clocks' to the PMU node to make Bluetooth work.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 174 +++++++++++++++++++++++
>  1 file changed, 174 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

