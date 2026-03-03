Return-Path: <devicetree+bounces-270529-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLkzE2/opmlWZgAAu9opvQ
	(envelope-from <devicetree+bounces-270529-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:55:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C234B1F0D57
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:55:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D11530847D8
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA40D31A062;
	Tue,  3 Mar 2026 13:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eXghRw4D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="csWLo+D+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6EF031ED83
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772545661; cv=none; b=EHpIK56uGFjAA50C2guHLHaz3mLKjfEg84jHlwnlvkHgw6N73YybHnjkBFdKPRGSRcHbDQexCEVk8yo16XUvLOshc/B4xNDUkWLnYtw9C6Atd0KiMJ+9Po6crpDlPZ8MdGdbFWGz+M+toDWamFCJlWasOe7yIlyi4EnDkPE4dr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772545661; c=relaxed/simple;
	bh=/aL4bw53YyG5SLFzWcIWYqokXFmcXf+OvAaQYkyn3ms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tKq/w8b5yoGkhLGe8JqKHqC3+c0FngtKLJMNvlxGGZeA8vE5fDhvuL9YtODjIojuLGJ/jMkn+sif3LpS01M5iiPDEmUhNz9qHK/oSOTvB/fVsQDao5HS+3MRcr+KBmKAFKeVP9j4tnb8qBWG4Iu4cOeYeQv/LIMSJ53q/mpIheI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eXghRw4D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=csWLo+D+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239n86o2630010
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 13:47:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=idB39/nW/QhmcKfOGj0Rxpu2
	b1UnI9mrQh1XvR9bGp8=; b=eXghRw4DzPDoGGV5ypOhZGjCv9ygZv2FFxbr3B/c
	KSaIPFeudF/6b7fmGYhuEIzvKWmJJWl2GLJnPG0+ga//Yhtib8DbxDKih2V3GNV7
	4+OJt3RDYlxmXFMKoBM39X/yZe4yWzBlR398QdEMRbduOT7N844NUjEd6zaRVw8e
	+yE6833LC9VzABZXLORmWNat/WMYN1lEBoZyrfZMwQSTTCB51SyQi8t3KZmOVQBg
	b5jOMcYXgKTdEZm8Il400SUoqK3eUt/diH5pHpTQLHaPgFewr1yJr+cd10kZxI9o
	tLd7Sz2nOUUYtH3AoNDDb1yzVzNueFJEtrl4rFBGeZBQ3A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnhx5b0e9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:47:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3ad1b81aso6645092185a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:47:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772545659; x=1773150459; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=idB39/nW/QhmcKfOGj0Rxpu2b1UnI9mrQh1XvR9bGp8=;
        b=csWLo+D+JFZSsKDl8weod/ztSNTqM0+9pExthXJor4dN2jK/edj1anT/Ys5ysdgNBU
         No8NZNvY8e5PWOy3rUeSU5boFc0Beg7bh9qJYDi5nev1M5T6+xe+cbBITbjTqdF9jjEL
         UKn1M5Ps+kx1MzRglSHXSmO3MfiuiSYGkOQjj9OWT7X5Ky8cRWjLDDR9/XXM1f/RNeSJ
         7XFiqJ/zQwWAVstmb7gDEpW/50fULnnx25gzd+NeSyxPfvb+S/nE/2biuOenPGXfBuVD
         vQw8XUP+57CTidgx4pD3mBuhT7Gi2dDYl1tSQGiF0NtPGeet5HpT2X/3NVke4y2OQJ82
         c2LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772545659; x=1773150459;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=idB39/nW/QhmcKfOGj0Rxpu2b1UnI9mrQh1XvR9bGp8=;
        b=dFjz7H6Yns6LF39glUoh9uW1aGa0KCdK/r9ESHqmEIndMyynuRXEMQN3d9iUQp07zu
         GWbe3oJaL4RafHG6sPDzPV5AOhAGTsz8rQESmfgnEugs4k2sH38FAD9/MXrePH6Dawdw
         DUnflZurVdZkSObJmBPWSjcX/g+EZ0wttxAXf4lmYOcdEVLyDda/4A/05K7X26Vis5SU
         p/te+JVmQARyVTuWgi+oAN02BY200owo09FtkqEjSH0F851BEEhKfo6ujUnB3U5Q5FxE
         yXxgbT2nuEme9SQDAh38gBHmXGZYgrzSaOtNQSVaxkWDgw2bd/k0aP1xeOYj3p/GCMAM
         CUgA==
X-Forwarded-Encrypted: i=1; AJvYcCXcFpcedX7Mjm3eeBXbxWL0kVYCJCd8SIdeXEcERXHNo3p4C0xI5oV9P1LFWFTFNMK4B87de/LMIwz2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+KSXg2vW7fThPLKi6MkWw2hbIaVHIeBjAY/2OMEHqFNBORIWk
	Au88E8CFgeJpy5r2+uBucAgaU2fQ0Pluf3u5r7gf7cFxrvRF/wlu/i6PPuFQoFtVK9UGDnq9URO
	6yguJD6moMvgrXEd/Vxv1Rvb1zLLIH7pt1ts7W6GR7MbvAc1+GQCUry39ZzqUeNdk
X-Gm-Gg: ATEYQzyWGHdgDmSDZekKPlBZqaqUk0vZTb8i4l/SSRufF3VQvXzgXKtnqikqp1zBp1O
	pNEUuXYLpLm5YvDYjgc2kgZt+qnenT97MYxk57tGS1uqkK8Yd2YlSTGWNv10sLeOuHhv7Pq3ek6
	jEgdS59VS/aPO1b3lQi++dBB3dNRMmvMK48OduIljeJF6V2u5xdDsUJmGQAt0zBKHxcBIIRMJS1
	ewi6kwj4aavCLv6z2826Ke2ImPJZAyXHYMj6bRJUtCt76GGO8LElD1UDkNOUZ6+dV/DRbZGWdpy
	tcx24keVvRDOuDpLIE4+cCzei62t7LWCYetK6eN0KRlheh2uSYoWJ/90Wylfx9VHFMRKFbPOyn8
	3qvcJ7eGGDW+Fu+rxLvbe6T9oDvxbarNmBxYX0d7JDWpmKt4Uqr7fqDoXaClkOWAhat23uuBTmf
	dZQojY+JOvPzowIe+I5e0y5o0tjgbE9vSFVcY=
X-Received: by 2002:a05:620a:d89:b0:8cb:b062:c2f1 with SMTP id af79cd13be357-8cbc8dee51emr1996041685a.29.1772545658945;
        Tue, 03 Mar 2026 05:47:38 -0800 (PST)
X-Received: by 2002:a05:620a:d89:b0:8cb:b062:c2f1 with SMTP id af79cd13be357-8cbc8dee51emr1996038085a.29.1772545658449;
        Tue, 03 Mar 2026 05:47:38 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a1235845a8sm578691e87.13.2026.03.03.05.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:47:37 -0800 (PST)
Date: Tue, 3 Mar 2026 15:47:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/8] dt-bindings: display/msm: dsi-phy-7nm: Add Eliza SoC
Message-ID: <i5hiqu26ljplmajinfmf6spccydtfwgw3ak3ey6fuzykvrnusm@izbedyarqdow>
References: <20260303-drm-display-eliza-v1-0-814121dbb2bf@oss.qualcomm.com>
 <20260303-drm-display-eliza-v1-2-814121dbb2bf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-drm-display-eliza-v1-2-814121dbb2bf@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEwOSBTYWx0ZWRfX9xeHdf8N7x15
 fFki13oQ52Xd8x6oFchUF2J13amf0HpwDNBzqAi9cPsjawG3AVjqtmhCO5oblw13YXdigh+qjAM
 Q7BJeWVujnkUmSLCNj0ONcs87AxItViG79XnZInmSPsOryyHhz9UJ9SWPqm3Qg8Ob5su21cw+Ez
 21dwzBs6us7+1cXuBu5pSA8NquYvBqZ9hrj5tj4i3UJRhpGJFuvPPdByp9Eg2a+jIjTNfeIoe+7
 xsc1RYWykhQZKS6oXroTVxVgZh0B0IlcXP6ay6fyppYNWAnyl3svPK78IOelX8wLkwYnYWMpAB9
 qmsJ+5pzd9M9lv7C+PBOXxA1vISxaTsZGCzD5nAxc6jDUot0Aanmd1GOVMdHMisLi21W+FPKZJk
 hl2Q6dq4pACRbxhhHWpP4OuYEXlBkRJ9ciHaepjQOjeN2icKOLUuXI5UMTt21a2TYWz9++Zhy05
 nVFnQ++61EjNA/lOQ2Q==
X-Authority-Analysis: v=2.4 cv=T9CBjvKQ c=1 sm=1 tr=0 ts=69a6e67b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=fTnWfZjI5X7wAvt4R4YA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 26oTnqK8njyNg7r3B7RcsBL-QGIT2GfY
X-Proofpoint-ORIG-GUID: 26oTnqK8njyNg7r3B7RcsBL-QGIT2GfY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030109
X-Rspamd-Queue-Id: C234B1F0D57
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
	TAGGED_FROM(0.00)[bounces-270529-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 02:07:52PM +0100, Krzysztof Kozlowski wrote:
> Add DSI PHY 4nm v5.2.4 for the Qualcomm Eliza SoC, fully compatible with
> SM8650.  Note that this DSI PHY, unlike the Eliza MDSS DSI, is not
> compatible with SM8750.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

