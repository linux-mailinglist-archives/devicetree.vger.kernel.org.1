Return-Path: <devicetree+bounces-256183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FEBD336B8
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:14:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BB02E30127AB
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A4D136212F;
	Fri, 16 Jan 2026 16:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="admLiQRs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I6jPYBP3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0A9342526
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768580076; cv=none; b=fLv/+8NdX/ledv3TZyoH10Y/CRLCZV7t0srK/blrDgIWEq5s6nxxLNW915iYlcPoes7Z10LROfBCfAmPNiK9RAcNBr4aGPMh08i8VWNn08Vct6YZnP9f/KinBpNGYjST3YhUfqjEUZBQ1lmQ1G1dCcXS1FbVFogEPhSo/dHu0ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768580076; c=relaxed/simple;
	bh=0NeomZUVhHWI4pM85zDjcobRkdL9ncGwBHnR0fS34NE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LOk57fUo20BermRk+P/W9NuQgjvjg12TFzRYEDuxg/0G/tZ7tS9F0AACpptp31z9a7+1rYZNgXG3JtxD+lVOG77Etla/W2gmiNf46/QaBTzbBBb/eVjnj1PG7MUrwRTsjojnDyrc5yMdiP2bZHb/ZkMcAf8RtbUoOxgGa00fVaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=admLiQRs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I6jPYBP3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8ggWA3892945
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:14:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iO9mMgKv5vMJGUuLtgYpU0c8
	RogSqX4J8gWx7OGRMYk=; b=admLiQRsx4aHF3yyqFH8t8EFFxsrj7tfWMDegv/k
	cabrcY8oNgpk0AyNMO3OaFiplZqQizz+ZRX5damsP6Kz7OGi2OORQs7+km2B8l/7
	3I96mRubYBQA3oaXzHj4B0rOXmRbznNwydYCrYG16fCQpwvEnKebW3OH8iKzmTiU
	w/5RsaGieqOERfFtjsU524rWu9C5P0GqV77am1seynhEss7vPNVaxo3151Wf3ESg
	z2zicA+tEYu/iB/QSk8Q2CrOfo72BMRcw3Oe3yT217Elw+82lk0hTTZma4zNicAK
	5WvT9Pzu3bM7cbrxWg0zBZVeSW9lKYNJjGL3ebRo1C2q3w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq9b0at9y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:14:34 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88fcbe2e351so82539656d6.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768580073; x=1769184873; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iO9mMgKv5vMJGUuLtgYpU0c8RogSqX4J8gWx7OGRMYk=;
        b=I6jPYBP3CiJz507dCbgre4ubJonCMHtKz5LCunlp4cSkBGCvq+5m4oXSHdXLlwD3kF
         pyH036B2qD8TDCvQTIwH2GnUPKKEvtCTPkLOy+hi4C+sYfxyQlbxzh8O71Axxz8QwTWJ
         +X2kt+hFtGjeIl7oBb9EFpKuX/u359ua+kQOh2MugWn/52pR4e+e+3uu//cTAEWfA+8a
         t+rEsnJJVxJYiupWrx8IMM6W9KVNOeUWLgGFLB/J4r6YDAkh1BrRSS+x4Ij8c8/l1vZ1
         Kex+BlXLFZnLt1oNDbdExwS8UOghVGxHeI8OSoSZvMWwxTVjNh++M5wzIvTO9qvhl8K+
         VH9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768580073; x=1769184873;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iO9mMgKv5vMJGUuLtgYpU0c8RogSqX4J8gWx7OGRMYk=;
        b=K3Sovnj9XzgRG9tUGucMlypnKZ8mQek6ftf36n8jHVX8c/GdcUbtaqQsffEUA2MfdQ
         KXnqsSKx26J2PGOkOBkNYrrwpTqcZFh8JzTXLtyYIfGjaiva+UFN1TRSKV9dbd1osy6x
         ihTHLMNHIHC/ADELwjWm9kRLNl0bJE8vRn3RxYnjxbd2e0MciNi8Ms+kYplsmZkxDWdR
         8koRwSps4u5ifTGtPs0+UvQeDj6YaAnLvA2ZX8fYCzoZnqTz9fPeg4znzElDyTZFlHmD
         XdN9orPAjUz4WGbPBZeby/53W5na5Xy25Gf/XPZSDcYneRrATJ37lT8DV+2IdZaS7isP
         6cBw==
X-Forwarded-Encrypted: i=1; AJvYcCWWDgC1FMYxJuSaYKD0o8ilMzhvqTRyq3dkQA/vMOTr25/N+ZqSnjKKAw2WjGHkHqODkBX8u/MOE/tb@vger.kernel.org
X-Gm-Message-State: AOJu0YzVxw5W2eOGgcadSXY1mywJGyFkoSYfmj/gc8jPlpIMUUVdeNi9
	KdvHsSu/k69kyVQxHKHGkH6KLWK5twOex3QRphfuLQuw2NmsraO+BU7O5NM5hBFQ90o5v99vPeN
	8vWuo+0jz15RnRJsz/j4WNa4AdfUYEWnR4XwLgx5B7/O/SOu/EfYRCEwpnug19LRL
X-Gm-Gg: AY/fxX4iHjo86zULhqsGE/auQBFYFDJLaOYysMPzcgGO2JVguDE9ldunaqJ2MP5gLjp
	C5sSPYNbj9XBVHFCewp0hgiCnNP/zANU60TIRYpkMdLpTzQ+vz3nyM1Q6oDliMxviiHShO/sGK3
	QHAuDSCrVgp+VuZPvHactHqZcaBsiETqs7v72fN62/jLO0gU1cf02g6gT1D+w4C324BJjdp2npp
	JzZ2GqfxYity0UE33y/hsgjUSsMjm5LwbSK0nOjwDtrqLvQ70BlH4RZE76BgctcwJ+H3DDDoqj/
	hSUnFLXChmPAU24ejjS+S/LKOtY8xkLYdjUCh9E3T6ml13b92H8xlObldIPpDgQDpeGByjzA49Q
	HLBSTAVYV71uPueBQkIBXa9KNFza2/SF50GpSypQ+zfjVBQoIX+tFe9/vBQyDjCGqdn4LZ30bPE
	0vN5PKIlkhxmRK5bcNXmWufw8=
X-Received: by 2002:a05:620a:4446:b0:89d:b480:309f with SMTP id af79cd13be357-8c589b85a2amr875228685a.7.1768580073544;
        Fri, 16 Jan 2026 08:14:33 -0800 (PST)
X-Received: by 2002:a05:620a:4446:b0:89d:b480:309f with SMTP id af79cd13be357-8c589b85a2amr875224285a.7.1768580073004;
        Fri, 16 Jan 2026 08:14:33 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384fb9ab8sm8728621fa.48.2026.01.16.08.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 08:14:32 -0800 (PST)
Date: Fri, 16 Jan 2026 18:14:30 +0200
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
Subject: Re: [PATCH 3/5] arm64: dts: qcom: milos: Add WCN6750 WiFi node
Message-ID: <oj4saexuuty333jjuov3chm4qmrdv7dljykrw3d64qoeclbmj3@vsurv4bkad46>
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
 <20260116-milos-fp6-bt-wifi-v1-3-27b4fbb77e9c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116-milos-fp6-bt-wifi-v1-3-27b4fbb77e9c@fairphone.com>
X-Proofpoint-GUID: A2va2BJNfO_SurYp91a7yIPId4I-jMdX
X-Proofpoint-ORIG-GUID: A2va2BJNfO_SurYp91a7yIPId4I-jMdX
X-Authority-Analysis: v=2.4 cv=TcmbdBQh c=1 sm=1 tr=0 ts=696a63ea cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=nnh3LCdgXL55amKsc48A:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDExNyBTYWx0ZWRfXwPI80uYuvjHu
 2M2uxB0T/SuSo/Kc3EXP6AQwo3g/U5r+TYrw9fTQojURreID6DaUUnySzLhlbI5WaRDdTjlxz6m
 C2vcmr6QiB9vT4PFHe5Uyl8jMKcFKd9UyLqHzO27TivNx2xuaZRjYvuNaKAiMmuBTze2c5BPJ2a
 ZzVMqH7CtXxY/ibrN1rwGUdksfjxSfG2IwNvdo9JlidykO0VV8HC+OmnOvNG+GNf9s4YZL1yzzN
 8B5Z67o6s+BU+mApF6DBXEeEpZ4OMySG3P+Z+U4laMztqUtet/gbowzR5rX+RikHgofLPHBDZyF
 F0zBkEmL7pkbygNS9DOaOSqiqFh6l4IW8b0bS4u8Slz6tYD5TNuriAgr8oa9ADYYHKnI5K0SpsC
 7Es3hZPWJBKKAS8TgXzJOAoNjJes84NOVqyD9aU2uLkbBYdzf/fbQKbxZahCzYbjDxI1rRcWBCx
 TLM1d3bAKGXXMURAcuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160117

On Fri, Jan 16, 2026 at 03:50:49PM +0100, Luca Weiss wrote:
> Add a node for the WCN6750 WiFi found with the Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos.dtsi | 46 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

