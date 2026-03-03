Return-Path: <devicetree+bounces-270533-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AHwEtPopmnjZgAAu9opvQ
	(envelope-from <devicetree+bounces-270533-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:57:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0ECA1F0DCC
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:57:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B6136308225C
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7A035B657;
	Tue,  3 Mar 2026 13:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lar2b+rO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bgm81S3t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4BF336C0CB
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772545804; cv=none; b=eDmjJ/6yGMUhrSwPv/r9t8KB8qqcDVXBEx8hDh0QaCw9eYExhq3pkfLQu9Szz+23D/YNOAlI3tTpxUxxxf3safH2a+vl67se7MnhSn7NCtuicHtDEPI+uTBWdGDTQP50z+lXCmTtEooM5wb+djVK+kABWN3OFECezid09uwccy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772545804; c=relaxed/simple;
	bh=0+gNmJrMMzjoTKM4eLSjGmmTwKKy5SDoQ79KncSU0lY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PnYmeBbctWf4y35n9Y0kEvlGszjbOdti28qzMPkGrcumC+i8jgZF+v//DOGXboCu+hri1im44/mr31/y1mlBAuWLQcRqwSthNrhLklH9yzk5WwAQNVgfyKeUpJpFLVKKxpOgU9IuLmEQGwilvPtS65+BgO0P8NyAE1Sb0jPbhko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lar2b+rO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bgm81S3t; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mq6Y2307642
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 13:49:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bKUr9vhN8IQ09P3DPCycLzc+
	1JH6GLLivTjRNxF1Uys=; b=lar2b+rOP5gcJ/uq8ArBlEzSzIRnZZfL7fwmwMji
	nV4zKlBycQE6WA4+McApxYdC1bQP48QLjA79m680ghz5w58ltluEvhIHM5mHSQSQ
	+BTrL3wJYkYW4kaPVuj/7D+ELSLdkbu2lrdsCdW2ZzWwwG5RoyMPZj5noqdrcLuF
	qhX8zdaMSsH8unIA2KIXJncgERT5zxxwnpHmbUqGG/4aBW6q0tPj9ZoSpsiGK5XI
	mgKxyABFDcW/tUMuFMkQoWMDciez16I3BKfAY3JHLhe5ZXvqYWjGNtzb6rWhLxse
	o1bvNNp89mh3haGy+G40wvwI3h3RAyJ7FmhBqHepyy5S1A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnvtu8ssb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:49:57 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c71304beb4so410431185a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772545797; x=1773150597; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bKUr9vhN8IQ09P3DPCycLzc+1JH6GLLivTjRNxF1Uys=;
        b=bgm81S3t4Cv0p7RTemAfkxMo+Ppnncktmt6lkGuwCTbKGaoQtpvYiKJIQ0E3eITQuV
         w/RS7hQVsScmU3I/9yO5o9KOzz9fqX+zvZ/hU9qEUxbwU+12WQv8H3VW7lgbzXZF+RXc
         2TReAOEOlsa3n6RVXABAg6AuKPB9b+8Y2DKnO7bmYZPurddDJgH6KuS1DYErnmWmQphD
         o+iRHCDcDAS8w+oEIppded+X73cJxNkVD8U0lZDR93YOZCfilP4Ec4ckB1T0M/z7q9+M
         98l5UBtB3Vug/KICxOlAPOiJP6SwWucX/6Iz9T2IJ93dfN8X2gxOf8K29KJJc+pXip0K
         dcbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772545797; x=1773150597;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bKUr9vhN8IQ09P3DPCycLzc+1JH6GLLivTjRNxF1Uys=;
        b=HcsHbbhHSNvYejRwSDIERYhN7BoaXXHyc/4cF2g1ZnXTDv7aMojH73PhlJWUEKpne6
         UnPsGlzgzNBll4C5rBr71GggM/qqDcUKVvoxEwOvyy02WMwZoKGzKEM4rxWKnI08SGou
         vciyL4UzyGPK0ShevSM1YeHoikDafWVEXpErqseH7FdEmhFUkJ79Qpk+wGEXWE2KfuAR
         +bFvTQ18cO35eMmdPZjyK4uCRRY/cGjPu4fShIl8u60Ec3cqhj+umw0r5eVKzerDCNCQ
         EV/sbNpFjByxq/IdRNbgIl4IHE1BOLIlV2p6ngapuh6hnLWG3wn88hNoc+TzBunIV2U1
         rRLw==
X-Forwarded-Encrypted: i=1; AJvYcCXHm2WYjp8jspQWhV8wWwZvjHxHT1KRLHpdR1C+oeBYg/RH7aiPwkYAtR0Grd6UqznPFPcqRQ2jsbAJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxopw4iDCFq+HNc2UKqV9ZBKHUdx4COL8pTexkLDaG7FA6ncNIo
	nbz/2Ei54c8zIT21g8ppfT7tXHI6bW0GRrOPgjrfXUWPrf6b3Rgya2hrKZ/VRSbjkIQT+MW1sIZ
	ceo8V+XD18+cr+NB3OCLfBzROE+oabWEWsoFcc2YB+zxzvwahQiMzUmLX2Gm1yANu
X-Gm-Gg: ATEYQzznWe+u7955oZNMmPNJARdqc8P/jlxzLYFZh/GxaYNTzt/N/ahRwvGEUIxpspU
	4Kv9RuGWA3w2ECb0o6MBzB7xK7Mt9ReM6e/gcy5tTsk26SurYi/yB9oEeEI08QG6toUrKI4YJNE
	oRW6b5Ck8PVlkfkyN7wEy4/hhLJ3Mh1vQSpcUkp7sDzKefCu/mnJQguoQtKmynkVSo2H2WgG6qy
	6sDlH7ImGmHk68RCGnCjRYuhh09Qs0H7zIt5738Jx67LdCcF5z7/YkDSuLlqP0WWu1KdfPdizke
	jURPpXZ1fLprk8psVGMqYO7uGtDa3cdlm/i4ZuaHfMfeYvn6u0g9RFWiiHKaR6RLDZwO7XiRdlu
	oAYJNbnx96QJkPolt5NphCWKafQ+fSjv1vQhToNUt5b/8152VqTtIxPMiqlcmX31yaMS20zF7J1
	dsa01Z6jwuO4FV2LQ5th8gUd9ErRu/5KcefYY=
X-Received: by 2002:a05:620a:3703:b0:8ca:7b14:16d4 with SMTP id af79cd13be357-8cbc8e2d0a6mr1980983185a.63.1772545796778;
        Tue, 03 Mar 2026 05:49:56 -0800 (PST)
X-Received: by 2002:a05:620a:3703:b0:8ca:7b14:16d4 with SMTP id af79cd13be357-8cbc8e2d0a6mr1980979285a.63.1772545796244;
        Tue, 03 Mar 2026 05:49:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12358402asm577665e87.15.2026.03.03.05.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:49:55 -0800 (PST)
Date: Tue, 3 Mar 2026 15:49:53 +0200
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
Subject: Re: [PATCH 5/8] dt-bindings: display/msm: qcom,eliza-mdss: Add Eliza
 SoC
Message-ID: <acy42ex3fcf2owpi7fbu33h5evd35wcprdtlr2ipqoavcacsl6@xmf3jd45kbdy>
References: <20260303-drm-display-eliza-v1-0-814121dbb2bf@oss.qualcomm.com>
 <20260303-drm-display-eliza-v1-5-814121dbb2bf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-drm-display-eliza-v1-5-814121dbb2bf@oss.qualcomm.com>
X-Proofpoint-GUID: zV9r6XPbLIE3w0pPwQLLpTYwPrjUZDUk
X-Proofpoint-ORIG-GUID: zV9r6XPbLIE3w0pPwQLLpTYwPrjUZDUk
X-Authority-Analysis: v=2.4 cv=A75h/qWG c=1 sm=1 tr=0 ts=69a6e705 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=1rrVjcLOA_pWW_QP3wIA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEwOSBTYWx0ZWRfX5e4ZK7lg4B2P
 GWh75pPWuzzSL8ZmeBrJV77jTXINirike0laUbtx3GZBnnswY4IYbc5i+9tEBubbGuVb4Lpz+DX
 w6DW+5xVlOnhZ6OYw7yn5hekseCDVYG+pg35WlT0dLhbvVsOm05RnbnOAymqZiNSevt2FgiHqCi
 6T0W2CPqOsXmCuMOVPmZqJuj/P1eWqZ9w3ZQdplyuL0F5Xs8NLQJSzzWJnlfHFBgwDghJhyQpAw
 9L+/fMiCQhLLHqTwBnW7/JLfecSA3GbeZV6iVbEUeDKy9n1cnfJAFzilQJM9oRrASNCo9VbjB8L
 lMVLNZ80Q2MKaPrX2dOM9eJWQ58WdD3WoJcKCwUOCXiYLomfrDxdQFL/iHovsmAeLQd90WEXWjc
 z9zkcA3hEkyAiMaWxES4/jDxPpadxIhBLEK+Acsb1q5Km26692hJAk8d1nR5PDCOZrLzVAC5QEr
 oi5WVGlXSh7khcJJovw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030109
X-Rspamd-Queue-Id: E0ECA1F0DCC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270533-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 02:07:55PM +0100, Krzysztof Kozlowski wrote:
> Add MDSS/MDP display subsystem for Qualcomm Eliza SoC, being overall a
> minor revision change against SM8750, but coming with few different
> components, like different DSI PHY and added HDMI.
> 
> The binding does not include HDMI description yet.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../bindings/display/msm/qcom,eliza-mdss.yaml      | 496 +++++++++++++++++++++
>  1 file changed, 496 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

