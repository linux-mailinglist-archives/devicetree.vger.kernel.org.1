Return-Path: <devicetree+bounces-269045-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id o0weBD0ZoWlhqQQAu9opvQ
	(envelope-from <devicetree+bounces-269045-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:10:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DF01B2814
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A15623062F95
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86586345731;
	Fri, 27 Feb 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cyzxEwvI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PZpRWZU2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5085932A3C8
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772165433; cv=none; b=f60TfQxDU0STGebbLma9KxNHKeIpA/WfHVPJHv3fRN2aBP/I1cs/W0BF1UH10pBa5871VuOmF8gGTDo8dkzeqF9a8TLZW2SB9f7/V3WlJk4xqkCGgyyRykAyh1QIakvqkl9xwkMv+dwSFnRkufbwfwCA/12a5cQV91E8KluHuz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772165433; c=relaxed/simple;
	bh=Bj0ZUFjTMmu4Nw4UHMoFxZBd2KmFxc6fJ8hukBXmkDM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WvkywKnJV6gz/6lIIXZHmeSia52KA6Nz8YCQ3m5bY6fVyBHAHrstL+c5u1dY4DH8g6tpqlyFAOJvw3BX3URwFbPJLp2QEH/Hz++KFSjAr3KOyUidCpDbL0UtL8PwE3Omd1G3LBELiTrK6yWAzr8GjkoKajYn8DcEpFR2XyVtcZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cyzxEwvI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PZpRWZU2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2Jxwu3747068
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:10:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=L71qfvZcuhojND2DO+m5ogZO
	lYNnWkJoCk7YZqd+Grs=; b=cyzxEwvI4WMDQdkd7rae2KLAnI3d1otFiYTVagH5
	lap3HaSXas9O7G5N75OB3r6SVBP7oOkzL1eHyahJKg0IWb9XKXdh6XVvteTOeEtE
	hi788YATwSZpU4eNqMRS8V/G2J+4W3dFdj5UBu1jLAutuPZrr3uF/qg1VDweHnFD
	Jc9eX/wOiAWHQ9/3Ft+hZe0Pvd9z276e/Oo/juA3J0FbZYQBRaCgDGa1eEJSzkFB
	wy4WjAYRgo6UprCtySIEtdWTMqagGH+O/KLsuft/0aFyPLkNEh4opWHxFegmHMQd
	gJgDRH1fxFPfkYT4/q0fcCFB3ZT9b8gRbTPE43RQjSevjg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjuur1fjc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:10:31 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-896ff58f17aso170621106d6.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 20:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772165431; x=1772770231; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L71qfvZcuhojND2DO+m5ogZOlYNnWkJoCk7YZqd+Grs=;
        b=PZpRWZU2AYCfTSQzOGpM8aVQGUW5R/eu66/I7SwhYKdpuD1Suu9cjTNnymyhXs6Aed
         CoHM5WYRtLpyGojwfmPsZb9rCRmEM1RhT5AHlK2e/Bd5OZ7GR3uu6vJUbcl6xq+hAMOv
         YRqEEuARJecdzqXPKm7cDQBnIRnkbsUpQkOBJNLsdDXntJm2oTLg/GUp+Tn3E6tEOt0I
         A2C0jFBLUCHI8UCo9kStm2T3gZFa6WhiYw5C3k7T2mQFtcjIM8mSSfTzEq42qbp5DR1q
         9dXvwfYKJTkWTwFsCWuT/E4Lzcp38ScPEBrxUWBLMoeWPZwAJxgury777FC04u00zetY
         Ob4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772165431; x=1772770231;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L71qfvZcuhojND2DO+m5ogZOlYNnWkJoCk7YZqd+Grs=;
        b=iekxefqgqVhxP8Kc5hzTTVtQjyZmVJCRN7bPfHK9fWo6qkRh4H3Vki6Mg59CGGiDsP
         VTV+zSdXwk4K9WbXZxekgQtmu6toHc0qomUo0r2mVT0SiwGIKFr6xRGOe6uOhWmS7mVa
         mGTgvW2QVT4XHcqTmQqs+/T/TPlmFjQWxUz7R6bruhtLl2O/PMeXVIZs18E6jqkIAU00
         fz9MwMkpiYOPhUQmdoBvw2IXSC8FHB4OjJ+ATs0eevsinobpJiMThecveiu01+C/jXp5
         LB4PJ14BnstHggyWxlj3RQsKJ8Y7vmw/rc/HWYr1Zyhl431+NQDLzCj55AXSg8WSoTh9
         +vXw==
X-Forwarded-Encrypted: i=1; AJvYcCVi8WbP1TY0Cg0BQ9Dt03nERyd4pGc6JnWtpQkIf58ywlx3C35Q3ZrKA9CFjyqMYRICqX5SdrPl20qh@vger.kernel.org
X-Gm-Message-State: AOJu0YwwSAcA/ZkE+9QQ17QSi4KENiP55y1ROwkGvcK/8jOWVX5yHUm6
	SLx9/RuVCE3dN8kLsDsDxae2yqEZAuqcIPXyFdR2GQrYWUtrxJAq6AhzNoqLOPP8xQN0oWMBJQw
	d/EV03Sh1TC22MVO+TN0LbhBug1nFMjYovJSpCuKWgN0ydb7/C9ClSb8422GpZYyI
X-Gm-Gg: ATEYQzyJZmnzNOtM0SF6DMxjzuYy525OzvGsJyfgWUlJvbIEr9yWxKMqnCOQZovpKcw
	QEc1i8cU0WYYsK/lyRPljUZwGIg5Emn4BjIAwwYierbCe1fQ0nqPjyf1VPGkADsRLeWV6OyiE3w
	XwkRDbpFxt+v6xcum51xv360YZsn0NZ+RfLbbQ1j3UpySqVrUJMagVlhrYiMMysYi+fdCsdfoh9
	noeV1KXPV2N4NCkvJi7cLcBSyA4qfDi8eigmzziVLrc6JsBRrM4B9tguRmG37P0KEHkJEIaDKBu
	d7/bJt5D/i8rvfmn7Y9jGAf/l1iqOx4gXAH83ACuY5PPBGA2IrbZu7Wi80XBHztJ9/NYLrq58h4
	Z+Sgm7olU31CzsUuAEqKvksRyspUXMURLNrAb/WZa0f1i33v+bRiot0wyYJ+2no9arMBxPGgtr2
	Iwm2YpILRgu25jdCWGJ9DbwuBJoFamXzPZTOs=
X-Received: by 2002:a05:620a:29d3:b0:8b1:7c0c:e27f with SMTP id af79cd13be357-8cbc8e54d43mr161899785a.82.1772165430503;
        Thu, 26 Feb 2026 20:10:30 -0800 (PST)
X-Received: by 2002:a05:620a:29d3:b0:8b1:7c0c:e27f with SMTP id af79cd13be357-8cbc8e54d43mr161897585a.82.1772165429969;
        Thu, 26 Feb 2026 20:10:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a109e01175sm1585657e87.51.2026.02.26.20.10.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 20:10:29 -0800 (PST)
Date: Fri, 27 Feb 2026 06:10:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wei Zhang <wei.zhang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
Message-ID: <2qmyghwciz7rdbprpoy6bwrfesbyqyqmdbo4ejjptgf5ujm3vv@ddb46mmewyau>
References: <20260225071459.1600394-1-wei.zhang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225071459.1600394-1-wei.zhang@oss.qualcomm.com>
X-Proofpoint-GUID: PwrxcaGiGm29xsaKWBIDe1uTPS-3HJzV
X-Authority-Analysis: v=2.4 cv=PN8COPqC c=1 sm=1 tr=0 ts=69a11937 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=DgEYNLXXC2yaUqHi_YcA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDAyOSBTYWx0ZWRfXxWfH75OpQYzU
 tUeBFjSADa9UAEu4q4THpVUNkjXIzlHJOYruKxL2MF5jrCsezyAB1AlFXXO5cKUhVUQdw2wBSvI
 vA47APW3jr4mnra7BIl+NzhjoHc3QODWwajkBSBVF94g9pyiF9OaZpcmPq8uo+9zHQ86KY8I/4G
 H2ABsKY2xHyayhEpZvPrPWpo/vO7gvr3GnuHjl8xce/EC4aVH91k8BDZ0GMzKMbY8yTJeDtjloT
 YGxJK2j4ro92bPCiuNI7WQsfOrmlSo0peOtrH0rRfXX45U4/E2yW6oJixAk4dIOqkJ1vIGS4s4i
 jlXszKbRJ1cMK0by9+eSpDo/+cg1h3T1l6EWTcxFcfkckgnEJliREMnakLY0n6qo3cSGBj1P+0F
 lNlh3g7QvDW8jubjyTZh/C6BMffRQwKmeQ02vI4ycjDQ3BhhVEUbBE5Byob4YPDh5CR2FlwRVYg
 j+21VnVcD6DDcd1P+aw==
X-Proofpoint-ORIG-GUID: PwrxcaGiGm29xsaKWBIDe1uTPS-3HJzV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_04,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602270029
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269045-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 11DF01B2814
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 11:14:59PM -0800, Wei Zhang wrote:
> Enable WLAN on qcs8300-ride by adding a node for the PMU module
> of the WCN6855 and assigning its LDO power outputs to the existing
> WiFi module.
> 
> On the qcs8300-ride platform, the corresponding firmware and BDF
> are QCA6698AQ instead of WCN6855, which have been added in the
> 20250211 release.
> 
> Signed-off-by: Wei Zhang <wei.zhang@oss.qualcomm.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

