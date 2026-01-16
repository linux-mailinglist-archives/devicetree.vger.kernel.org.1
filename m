Return-Path: <devicetree+bounces-256195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC9AD33881
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:37:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0077313F1FE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1EAC399A48;
	Fri, 16 Jan 2026 16:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BlklGxgX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wx5Y/UfI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D28E395252
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768581257; cv=none; b=q2gppBT6sgbuIkEg+BeU4R911tJeeCLx5WWF6eTjxkseupP2OBPIk4bpYv6lxeCrSmAVsthRnBeqt26qTdoWFKs3r70r+CCyhQqcSFSG3l4Hdy1wkj6CwamYORuMGtvlNInGK1bqldUTWfIzKj71wx0a70HZzZwkRyQ0myi9feU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768581257; c=relaxed/simple;
	bh=q74+5ZnUwcdx1btcAy2zqzv4xpPqKeKYliKs8FQFcvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IPwmTRVv/2wrED+JQ30NnRkxoI7ByIbfye8YHPc6Z6VpRP5nKpCJN9Kj1vuC11L7V6njxYEBQRkwzoYlPpgPyWlmKxwqkB6YOR5NxzJa2B70XoXO7fdQpRb+dCSvfliXnj2l7S1Ghw+iRixKj36pg+3Fk4LWBPXFlF8WYJ+Iuco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BlklGxgX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wx5Y/UfI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GFuqIk2819530
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:34:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ibXM/IJs9WDuZYSVdiNej6sR
	HQ0vHmfue7ThjW1H/ok=; b=BlklGxgXzEpdrHjixzkmtBz5qOh0KAbcMtdkXqLf
	thqtFeDPUY0ZsYsz821bAIawLyT6WN1MZRD6cwJUzSCgC/YzTYAWUJegDG4iVnIC
	17fuY/iUtlI7EObiMSOGcKL9MR+QsGeSj7toXEv3WOscKFWmtzTeo5trtJ2IPcav
	KR7l5iQ3y2tpMdJqgaNGAZkj66Sed19vhNQ+1Omm1Yr7Ydb2T0Lw+XRmMDmRQE2i
	h4L1mwgYQyCnH3w6WfXfHyySci90LAuxZCuuq+12j7wJOladCRbvxGhDEhY/EEYp
	8hkXxzPYoJqk0oh87VMPfvI4p/a1WbLAVl3i1HjVLb+7Ng==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq99ajuh9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:34:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c530da0691so481246085a.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768581252; x=1769186052; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ibXM/IJs9WDuZYSVdiNej6sRHQ0vHmfue7ThjW1H/ok=;
        b=Wx5Y/UfIFLTOoi32qYscrXw75WFj1apllJFzinR1rTEojY6eKrNAZyVPfk2S8pHuU+
         mq5oq6UEOyilijxVgpL7PzIwkoXDjt8dczU54NMQFEMn8fqRM4ZIFT7zWlDf88ocKVSO
         VgQurAG30zDL2L0hr/lJqAl/WtuE/2pca8qldLqer5ajIuJdKJujKfQyX7ODIF2+WD4a
         KPXj/Mbuiymay83paXpcWDSus77uZ85inlP+W9rBLeBQWz28odgu/HH5/Wu5SPgkhNbi
         Woa/eg4adycSLd9V5y+lTsrjbkipwmA70r0NjY/ktIzxx+3Iq5Q2QScVfyeDZEDpFhZR
         Ptqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768581252; x=1769186052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ibXM/IJs9WDuZYSVdiNej6sRHQ0vHmfue7ThjW1H/ok=;
        b=TMZCusH5iAFl8K2JKUR4NGHmQEv6xipEk/jC28N314F0BEXhmNRbKMBcVafjhQrriB
         MjFmOJMnvnU6I4EbpIk6cPfegQjSIB7xrWF8YIv/HFp9Fe3QNtMvpxitbLRqzOoFdA7b
         V6u5N39Pw3ODaDT3CnCcK21MarvkrBNUVDzmqTEZpChBzr45mx2CnBMg4PHh2hnYgb73
         sBNUc2SSwzGWj9uL7dxKSggv+lGaUzj+wm3HJ0+9s3u9DO3ZCov0/Bjrl+DhtrdOcjkD
         hEXxMyFFdmAJAbbbPsi1mHJhDJkttui7WVWEEi0o+4GHrq59nFeCN+gP86Y8q2wfwq1s
         2Upw==
X-Forwarded-Encrypted: i=1; AJvYcCW6Lsq2m6GUhFfwdoIim1vIv14555IjSQBHqvOnpFpCveql1RIR4MQgz0PFFWIJWYA8EtzsZ3KyMjzD@vger.kernel.org
X-Gm-Message-State: AOJu0YzR97265MO70RK9o1ldHbD6UNUh1YcWgAtBHG2qIp4Jcqgwvgyl
	8oAGOIbn7TSaH7tu05HYCSTP8Ixl0uqufzOLYOGgbkYebK2dr2IDizhL6pbGGewHOdkng1fTVxS
	X1OV7Va63OSP2vE8mYzNdGP+s9e5EdqdjXULWtLBDvhejXBcSexzMVAxzDgrJiUtd
X-Gm-Gg: AY/fxX6oG8RMMAOknQttitWSiyEqGqdWMq5NMk4CYjbOwQ8+tI6ETtQaEAhyBtFyqeD
	+HGE3pNl7+Oed4uk6Xo//43JLfKa2l0G+p8OEvV5dv7IdEoiQX1gZBdEdQtrgHlEnFnqzNFlnLp
	dzQvhAkp/m01mmWZVDG3rlBLAbMKWWS/MDT+bYZN2OEHko2HCZPeA+/LeKHKg7oD/3PKkdNPvxf
	TV4183C/CJC8Iy1zjT2cGnucTuK1T75jMALoeHmzF0uo7Qy/1EkjhjEDK6rl9NTBq0mHpYauunr
	TrddB2N/c6MlP7AEbsTtGCR+WnSeNSfNcVk/e1y8OF4d9ew5Vyla9BGwHnJr6YVPc8acKvZYzzz
	0yeY5+diduanfz4qiN6Bu08dbeWWdEE1KrXSnOwp5/2Zhj/7vT//VipVcZ/tL6fLDqZKeYEoAWt
	JPpE2FkMmBESwGBUIEiAFxlRA=
X-Received: by 2002:a05:620a:454d:b0:8c6:a22b:e135 with SMTP id af79cd13be357-8c6a68e828amr459906485a.36.1768581252244;
        Fri, 16 Jan 2026 08:34:12 -0800 (PST)
X-Received: by 2002:a05:620a:454d:b0:8c6:a22b:e135 with SMTP id af79cd13be357-8c6a68e828amr459900185a.36.1768581251735;
        Fri, 16 Jan 2026 08:34:11 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf33e7fcsm905003e87.20.2026.01.16.08.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 08:34:11 -0800 (PST)
Date: Fri, 16 Jan 2026 18:34:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Georgi Djakov <djakov@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 4/5] clk: qcom: camcc-milos: Declare icc path dependency
 for CAMSS_TOP_GDSC
Message-ID: <cdtaituwzxzhv653ahzfmrcux6emgmrnpp43xzs45e6dsy3uls@vefliexuk6vk>
References: <20260116-milos-camcc-icc-v1-0-400b7fcd156a@fairphone.com>
 <20260116-milos-camcc-icc-v1-4-400b7fcd156a@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116-milos-camcc-icc-v1-4-400b7fcd156a@fairphone.com>
X-Proofpoint-ORIG-GUID: vmeo_-S1pArGFXzcYpKS917asgKf1iJP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDEyMCBTYWx0ZWRfX/ADFpndIwK9g
 ZbhQhzaFR7V9n6HlJeIK/m+V2uzPbk+aFb6w9CdKXEGfxWxkANwEcGLZ+9ZDjcAG4qODhfmroPx
 eVE/Y+rzJgJt+4jC+obFV3EMgLrKu/tfeklxgXWIvtZIdLfNJxzykE6Vb0wo4WJHMOxuZV4Azba
 klgMtxEm/pG/qqAJcASPsFyHQNzTrcQlIM1AJThdrQq5tuoFoQVRscgTM+mW5cGXkVxdjBpPdKY
 mkp2UYrdGePrNN2klVnHFx2Ixm0Jsa8E4g1bI1KqCEnQhKwxszGZwkjTN9bsYPMqv0jXxjsHMOt
 5qp/Iw2ZDYHJYT38zRUp+zzoi2q8pyM0OY3Gehkh5gkJK3LUqblS1Z2JgABIx55uRhFEetj+t8w
 pT8+KFXSO35DeX1/2z3R57/9tcuongj6ewHEOEJc1frYnE0oFg8E/ZlGqOm/XXttN3Nh/r3fHjd
 Nr52Y0mDLHeojzHreTQ==
X-Proofpoint-GUID: vmeo_-S1pArGFXzcYpKS917asgKf1iJP
X-Authority-Analysis: v=2.4 cv=f5ZFxeyM c=1 sm=1 tr=0 ts=696a6884 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=uEvfv33MuhQ9VhGiz4IA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160120

On Fri, Jan 16, 2026 at 02:17:23PM +0100, Luca Weiss wrote:
> This GDSC requires an interconnect path to be enabled, otherwise the
> GDSC will be stuck on 'off' and can't be enabled.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/clk/qcom/camcc-milos.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

