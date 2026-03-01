Return-Path: <devicetree+bounces-269738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENoNJo5npGlcfgUAu9opvQ
	(envelope-from <devicetree+bounces-269738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 17:21:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EFB1D0987
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 17:21:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD7C3301904F
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 16:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13CB83254A3;
	Sun,  1 Mar 2026 16:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jtsr/JAs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AlulHe6C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0455B2773D3
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 16:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772381888; cv=none; b=oY0f8zxpJ3DxkPfNETuZ1cLbRSRva2jGBDROoWI/Z0RJwdntyQp6UEWmNTnWMo9NCvKwDN5IiKKnih4ERs2QvAKoQo7THGywvsAxZnRD7Zq5ygailk08sQDCsiRL9BLerwIP8myOVu/vQWwdO2OKQKVQocb5FWuFIrplLzuMyig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772381888; c=relaxed/simple;
	bh=2BkZy6OPIturbl41ax25L1O6eiPq7BVflJbgK9qABZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p2Go8H/q37UfqMTNbBurTXZinfv9W/lx+gxD5Sy1Cyn2KlCQTdf/JrLFxhcJaF5OfnVS/0cEQ86NV7rDyQZygHm56DEg5eDABOzXAVEUEbr7gnkBb1zGYzkRIFIOup/m9R1SpGfkmyaf6AHwwyljHiYf9FQfAjMCx8/Zgpuh8pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jtsr/JAs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AlulHe6C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 621DLX4n1308121
	for <devicetree@vger.kernel.org>; Sun, 1 Mar 2026 16:18:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=F5QfJCxHka7DJDYnQYwLZ0aF
	rY/E/QitDZUCV/3u/ig=; b=Jtsr/JAsxuxd3NVVbg6koEB/mqYAtD4W+q1LDMbU
	kgdrGus+Q535f/D63YRah3EUX1o/sE7/0rb/Ao219SgB3loCuEXLnXENF8S4g71Q
	FJIAkyAGeCmKhW9zCX87eM8sfPEJCJKMRs06YyQuJ2XYUu4goa5CZ5qhsFngMZD3
	bLRp+zl15OtT3my/EFWA8TacezRoatOqj+agcExBBTIexff01RKHd97V205+ZfS8
	HKy4qEkKkxfjbj+qZE87JnFYIHKDUm7ljT/g1BfQUxemnQXz5H+m01UGWnT2LCex
	t4wao2zHIUt7FSIdndW2rAI1x21CaYLEMreChnch4N43LA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgq2yu1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 16:18:05 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb37db8b79so2933538885a.3
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 08:18:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772381884; x=1772986684; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F5QfJCxHka7DJDYnQYwLZ0aFrY/E/QitDZUCV/3u/ig=;
        b=AlulHe6CmxuYU0sxhx752d7r7+OWAoB3NWJm2C/s661AipRvNPWL+FHddFBxRmlXf+
         sK55GFAWLdoB4x2CUYlbD46BHc6k2i2rUwdOtBZ3rw6TQJkHbBiSQNcBjMm/u9o4r4bv
         41rYHDLMjR3t/UYO+0OgYTOWwr6kOgJ0qBvyNzxBNBZfpAp7UMBw6C/LRvtlzD9eL9/g
         qfbP2ZbozLfpy84Pcwi5ZBtyFynZC1bR0rduRVGOoPbBc+9ik4+Q3GHzPEYVkmT5nYzi
         Al6rMukOwNDUzvcTtaRaSp4763Js2cQlpHt5ei7FJ8Xmzs4zFbvNRtCsoq3Z7+ejwa8c
         u6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772381884; x=1772986684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F5QfJCxHka7DJDYnQYwLZ0aFrY/E/QitDZUCV/3u/ig=;
        b=b1pq6kB0+VJJJ+N4ikxSKTBQgoqCVl3Z85KoJa2Ro7j/X6WqVwBr0gXgDJyZcXEjgM
         LrLjgNbJoP0gparjWdX4frxmK+CvytwTals8DqLuXxLpdKNG3JMPETOdq4PkdZCL6Nms
         sKSJkdfD/Hwx3j80HiPuudf8uKlahNc9cwBJdorZ7AEqs+c+hBdIG6Sh528SisBD6gM3
         Kti6Ir20XF55cy3PAQKgEVwWsLDORCYITHrnXtwv7mviB5KZDhvWEscbmKEmhrIrm/MY
         R6RXW3LKcgikGis6WT74h++/JBFVq342iHb8r9gqJwqxNlgWuLq7VHh4MINe2h7AhPsZ
         +4fQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4/Xtp6K14nFhBNya575i4zUf5r+plBdnLlfMunFO/QTKximqEMwKNxTJhtFiOUTzLWsRP1pY2cRMI@vger.kernel.org
X-Gm-Message-State: AOJu0YwyJTTphgx69ergKQk2qn3f0+IlHyaSgdbqq3L9Pjn+mo8KYXWc
	gcvE3BMiiQOJ6tsILlBHCQn/tnj/P5e5TPUsXcbqjqVYqYdqFiu3ztyMTQ4T1O38ZBjvgOeqrOc
	cCiwLqsG/D0RkZ5IXCUxu3Pifwq3z6QO2f8Q3PzlBwZmzCOKEN7pdgEkmGhK98UMj
X-Gm-Gg: ATEYQzyotX23iJyr9bpAx14cm6CVGpmVsJunnQNWAl6r2KLuop9dG/Q7Oio1ogfDA/l
	s7XVTPeyg1YtSxAZx3ZkwQkwp0IOg1FqCkRV4BfMS1bHVP4iDeLpTSBrC4UKFtP3+hyZKEurTRA
	SBsc0ym9Ud0oMf5BPuRsdBvOA2Dh0rQAQ8njQP5GCe7cKA1ndhMf8T8rmF34kTuFl4CwFc4PNPI
	FCYpt2rF1PU1oMQO+TUVj74BBd6Lw3s4u6H4arHCXaBfsnWvIL/aeKOgK9reHI133m2ODIRtDox
	wJZjtz2GKCbeyKYFi8m5NSY/HYHWpDC3lAZacLhLYRkukBghujFaeoEhYZ4CXDeCBJLOk0bgCSD
	J8XvXVHQVbEgPRRIDsMkd5ebnuntCUKSRhKfZ1hL3+4VKnvKXxSZOOBQw3l2G5AEuk4rtcCmTkj
	8/LYViLUOql/EHFv5Ae1K2kio9lx/GRaBM8lg=
X-Received: by 2002:a05:620a:190a:b0:8b0:f04c:9f0f with SMTP id af79cd13be357-8cbc8e176e6mr1177099185a.63.1772381884166;
        Sun, 01 Mar 2026 08:18:04 -0800 (PST)
X-Received: by 2002:a05:620a:190a:b0:8b0:f04c:9f0f with SMTP id af79cd13be357-8cbc8e176e6mr1177096285a.63.1772381883685;
        Sun, 01 Mar 2026 08:18:03 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bd5a5bsm1103957e87.38.2026.03.01.08.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 08:18:02 -0800 (PST)
Date: Sun, 1 Mar 2026 18:18:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: display/msm/gpu: Drop redundant
 reg-names in one if:then:
Message-ID: <xilwtm23vanzhpnq7s2ij7uviceoxq7g5pp3o5m2uebruhywzz@vjw6w6dxyctb>
References: <20260301142033.88851-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260301142033.88851-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-GUID: rLuLWEQQhJ9vZhVLg94Wqu5QNm6Dtwje
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDE0OCBTYWx0ZWRfX/0sBcid54HUu
 L+llgW5riyauIEYAGaQ2N3+HWFiR/5ltqgT6dyt5eFeaHy08+JGQta8CLW/dd+fr0ycdVFLUXaG
 5T2uQ5K84s4/0auVRrC/pgp0iGjh94ALdUvpLsQvGO2w/LAPMdgOFqfXzTSBqERlg08zBIemGpJ
 P0iBr5ZtzGw3UXkKqxkqFFprkFFvj28jZi03XdbxKNa/u37vHx5xU0FiyXKNZo3O+F8QWuaiygs
 iTZoPXhO9c+ea4N0C7gWq2qmz5rDrl8SHWpTnNJ+CqSn12rNmqYtfFA8hWjnQjwFcrBKMslHFG8
 1XUbIx6ReNpe+mPGEE83F9ZM/VEL3/NZe0WkS2PitNFMz2QJLijTtoKaPOLfjXU4chYrZxHN8rW
 OQmu0IxK4YswX1OGZ2UtyU5fG2KSflXCGXszk+r69N8CyGMhnPdLM4zTnxlDP+A/xvf9WUeaiXi
 aVK7bcV2bXWNuf/Nb8w==
X-Authority-Analysis: v=2.4 cv=bdRmkePB c=1 sm=1 tr=0 ts=69a466bd cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=ijTtCazmwCW-ujkA-zMA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: rLuLWEQQhJ9vZhVLg94Wqu5QNm6Dtwje
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603010148
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269738-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,poorly.run,kernel.org,linux.dev,gmail.com,somainline.org,ffwll.ch,linux.intel.com,suse.de,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E4EFB1D0987
X-Rspamd-Action: no action

On Sun, Mar 01, 2026 at 03:20:34PM +0100, Krzysztof Kozlowski wrote:
> Top-level reg-names defines already proper order for "reg-names" with
> minItems: 1, so no need to repeat it again in one of "if:then:" cases.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

