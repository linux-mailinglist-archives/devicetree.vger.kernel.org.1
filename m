Return-Path: <devicetree+bounces-270547-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKRBJWnspmmQaAAAu9opvQ
	(envelope-from <devicetree+bounces-270547-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:12:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CE11F12A3
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:12:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D572D30067BC
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29F4039E6D4;
	Tue,  3 Mar 2026 14:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GQKy2X29";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jz6Dm/hE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F275D39448A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772547072; cv=none; b=oD1HqJ0EKlyE9xkcrKvwnWodgW50czU1bwxboltWnIUAEdtm4QCnNlkdclNHLFmK0+u/1UqVj7gl1oQlPxDjM/rfXcWRjhBbNloYjrAp8AO8C4yHgZF0d8XRIxSSm8jeSWDscoSBQOXooaznyqwTGUYNXDRfxF2aUoWUjvB+/s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772547072; c=relaxed/simple;
	bh=48lJE2F6tsHsWsuujDCzT+k2NlQrEk2k1Mu/EFcK5gQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tqMWW05ZiCqmbtF0J/MeOJYjH8840gL1Tmp435qvXMAkgT1U82uNberaUI45Qm/lVS7YvQ2aLELecuMFR5cqgjjEezwu501qkw1EWqyMuEMslAGQZvGqrkHBydcaxMXfx7pF72QbS6ABxncsbCeyfIdZue63Ot85+XS9/WhnjQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GQKy2X29; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jz6Dm/hE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mdr02307383
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 14:11:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EqLIOXPjjHT0v3jLmjFH4RwB
	q1pmp+cieEt3IvpmSaY=; b=GQKy2X29FtuoJafQLP/6CovjyoJe3eV9sTRgxkTP
	7S1hsC89vMn2mR1WHrPPcsjUtn/VkATrlOHrE9+yCUSPkAVipRtWQtIWD0/o4hAQ
	44pD/7Sn/5CdR2wZjJb07SoWZWO3ZIdGIYb8eLS2xANNj+v5LczC0JJ3KuVwE80F
	y4M+4TfFWElWrs0vs63x+RRtMAXtPA7SoaoCnBIM4aCC+xeG1alOibmEeADd2XaW
	s20ziYE7JXB3Mq1e9eqRHNDIXDz/zVqQh7gTi/tPgVtfj0KEOYlvQ/vEdJkoY3gi
	B+nknYaJevhh2+1tWk7THyKYZ4P68cDu/HjemPDYbylNpg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnvtu8v14-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 14:11:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-506bf83258bso65980061cf.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 06:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772547069; x=1773151869; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EqLIOXPjjHT0v3jLmjFH4RwBq1pmp+cieEt3IvpmSaY=;
        b=jz6Dm/hE5UNW8K541aBd8XASaueyo75RGT2ZiaWkvTTR+WwaZgrgkMP1XhWCTOjK/r
         xe1gQ4pziZaHF7/4oPxB100fxf3pUQvB7vtx2pf3ajYbNQvOouG1SPL8Zktk958Padei
         ES3q1vZmubejJ7FgQl+O+EJjMNExBMAT5o1E4Ek2YJqK3QqhC9PF0m5zTFE5rofSXOFQ
         IRZNU5XDNdeQxjGW3l2INJqDjkOvb7e8QlSdR12KsfS0SFVu6wjqnn2lm7ZvX3tUh7nO
         RkSXP4r3RQ2B//P54lNrBXDaHkeZ6Vi2zWn8UW3O/lGXGCwTPCXJQUOEqbk73Hi64KV0
         o8Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772547069; x=1773151869;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EqLIOXPjjHT0v3jLmjFH4RwBq1pmp+cieEt3IvpmSaY=;
        b=cLkmwNsCmu7kjVjKQjltXXxYFkH1MqwZVB6ZQR3XVeIWny+hhYzzA3eHNHSBf0Fnig
         3Wa10/OovbkfZVGGKkzXvjmH1zhAnL3PsAR0cvyuFEIJPAuwaMoaRH0i4EacosKS60D6
         OtwKT8+39Z89V4TYj/uwZVg6/qv5G00K365jqvToZguhv7fAtzPpltv0Wk9xsB+oszR2
         IlU3lianxivFb1hbNik3qeONmQ2CT2zHGNY1S4AaY3qeXqiXg67JWHYvdtXlAGStIwlr
         r6BWAJnGUYbudHmmEVOeFRhlE0UWIgala7bEoFzFHv2M/0+GGb2/pA3+ZUWy0iI9Q5WD
         Wn/g==
X-Forwarded-Encrypted: i=1; AJvYcCUY8I/+hX1mNvH7Ladd8MriOyAMcP4WRR5TnpVIN9KI4Arc/zLYBi0ljWUpVFyZQOf8I2R4wDH5IcSQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjzl1sZb4sl01U6zhNfj3JxYMaGucm/n5SAaa/yZh7V19wKCOc
	3YfO4hfp5y2i+BIE6DIgQOetZk7+Jo/Xa+QWLbdFr6QPyVPLaCCZxvx3Ea15YyMn5ZqiJU7Kxww
	3qx2ULwr0d4TvZ01ssNhzEkhxUq6Spmbw/KfiAJcOhArl0ScFdqT2GHLgm3+3Fq0I
X-Gm-Gg: ATEYQzwGMCbWR70RHjN6JzFVeWTmWAb6SOeA9TYGIQ7kh+l1PCSvqJoIpPB42vbFUPK
	53EINjjm7eND1JilQIm4Afr0OSPDVuLtKW1Q44blOs+W8F7o2U1TMh+nel4NZaezqoE9pSgD6GT
	VO15cSMwx7On2Jx3t53xz6zy0RAKeRUycFf5mPX6G4BKyiQ5OHMCD4DZr0u+omwy5yZgETNkRKI
	ZszZmU9llDnU9gEE3HphZyrZxE9RFS6aiejM7Gvj5yMwi+9w0nB6Nqsf2slBn6a2WjQoBqYxmbq
	i4HZ7ufQu33+ajq5XuRfIr49821GcUbQ+R5Yvzi09oBoTA7Zl/PiFsgdte/VodXHYxVE948bu/l
	xlVKY22ASI8yzyHsozCDHCvOXuWEpE36V1AAkzOo6J06XUCKHmTwJYgcUxn8leTz4HdMSrmc+5H
	KROyuPutwqsHqPBfPH2OuaK8MRlA76s71uliM=
X-Received: by 2002:a05:622a:30e:b0:4ff:c04c:3d75 with SMTP id d75a77b69052e-507527cc0a7mr178882271cf.43.1772547069116;
        Tue, 03 Mar 2026 06:11:09 -0800 (PST)
X-Received: by 2002:a05:622a:30e:b0:4ff:c04c:3d75 with SMTP id d75a77b69052e-507527cc0a7mr178881641cf.43.1772547068551;
        Tue, 03 Mar 2026 06:11:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12356ffb2sm605664e87.88.2026.03.03.06.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 06:11:07 -0800 (PST)
Date: Tue, 3 Mar 2026 16:11:05 +0200
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
Subject: Re: [PATCH 8/8] drm/msm/mdss: Add support for Eliza SoC
Message-ID: <p7daur6flndawb7a3o72gli6mvkbph4dko7crly3gxx3c2iqbi@3bp4foq7o3po>
References: <20260303-drm-display-eliza-v1-0-814121dbb2bf@oss.qualcomm.com>
 <20260303-drm-display-eliza-v1-8-814121dbb2bf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-drm-display-eliza-v1-8-814121dbb2bf@oss.qualcomm.com>
X-Proofpoint-GUID: AioQ8wdpFwIijWuMW-IYkJDOC4-Eixa-
X-Proofpoint-ORIG-GUID: AioQ8wdpFwIijWuMW-IYkJDOC4-Eixa-
X-Authority-Analysis: v=2.4 cv=A75h/qWG c=1 sm=1 tr=0 ts=69a6ebfd cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=dHc4CrXR-K1SG7iiLmMA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDExMiBTYWx0ZWRfX1rpjnzr80DUh
 DCy2+WwHtDrYABxvLiXqz3wq8MXdRkGXhBo9zdg8t4VWtURlJUrmoQ/Cpx4xgRLLdGyQrb0c0cc
 ORsgpdgdwOxS8AgQsfHihOZj2Po2BosI312wAKokWOQsL5Py8tCysVkDTIX84f/DW2JyHs1BfRR
 spGe9QMS1PRXtHBSOsBR4h4dpB84x8eT5drYE686t7wZxhwFnemBG+fozzuAL7mTzJeAJyLb7Ke
 jKpE9koVdN4qT/LV3DAD/+spMykS/OZZrZidqpo7QFDOekz4AtiuyD+XxTmwsrsX2dz3AY8Kmp9
 f6q2zuQS8pZljY3i1ePly7ghE93j/2zU4uuTJfLyAZe0kE0a/r8/j8Vq6+NRyZ6HihiuqxCO036
 m8oPfpx2j/Bdb8lCZF9A/1hfrQnkABWiPbDilLZwNTgNSZ+rjim2ztHKHtKGTPHNl3n8+JCqOoT
 M560MB51hH6ac9M6L0Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030112
X-Rspamd-Queue-Id: 81CE11F12A3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	TAGGED_FROM(0.00)[bounces-270547-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org,vger.kernel.org,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 02:07:58PM +0100, Krzysztof Kozlowski wrote:
> Add support for the Qualcomm Eliza SoC platform.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

