Return-Path: <devicetree+bounces-266572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +F5COZWylmmRjwIAu9opvQ
	(envelope-from <devicetree+bounces-266572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:49:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EAC15C7B5
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:49:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 567213014108
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 06:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A64331E0FB;
	Thu, 19 Feb 2026 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ckwVtfOM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZSHuX1TT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C273033F6
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771483793; cv=none; b=DOICrxWPeZdOHl6dN008+LlWoIAMRMeA08WLvNLzmpzT5orbQzQukUiJYEqRInbTScQsomJMJz9Q0JP83MDyUW0swYRRGSaCsCfYsqVQFqt5y+3sCdgqzGwllX2CNOEdnlsp2f44RTuKqkrypjhGhsKu99EorxR4MNAMSgX9dts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771483793; c=relaxed/simple;
	bh=dr6VxkvEg9hSxWAjmfumV5UnqGRaz1nVI6ESP4NNj70=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LpDkHRiU/IkqpQK+E59QMq6U4tVYCloHsopLpoWAlswFH8RB5YgXpyHxc1vsBMdMjEq4mISj5N+fV+XrRh0+gY+9K3Io+0X+LmC4nJkp72d5LzNuHQDzApHbY6rT2hbn9uV0DYR3Svm7LhxXb5O5I0wGK8broFP5ZIzyMsktvDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ckwVtfOM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZSHuX1TT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J1EkW3159744
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:49:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0HWh+N4WiR3PWFLachClnwFs
	NcwdDKFFahQfFNbu/nQ=; b=ckwVtfOMv+5tZzxhvRhsTPagi96uQc4ESnAHE74m
	L+7qdAH2zXy2FMR9aHvi8xbZhqd6w4RcyBOlyyJ9MtexHNPWuXffoBw7o5ZsDgTh
	YsBil22MyzmZwzcwecDbbiqFJnGrovLHZtVm5uhoSBYr8K7iC1QElE/6iqjrU1GD
	SK7a/c/TYuIxs92ZYwJpyGmRyO79+PFw2/ZGqSLFUJvPgT39M8p3BF6LttP22fb2
	mqopCOO2N9aysAmJn0zXLHT0bDHe7HhtL0ck350MHI7ZB2X/YhbgoN8xoFxPekYM
	LbdrGkhnkMle+ppPULcUnvgfJOh1jfcu4FhG0Fi15InsEA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdrpg8jr3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:49:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8ca3ef536ddso597082985a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 22:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771483790; x=1772088590; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0HWh+N4WiR3PWFLachClnwFsNcwdDKFFahQfFNbu/nQ=;
        b=ZSHuX1TTABuE0vpVYumOsMTrF/Repyzc4lTd0Eqck4TC4r2Q3n773m1a1nXKjmIXtm
         xL+X9oI2qSDZ/9kBujKWULlNSa/15lYnwJL7e5q9kKMjQYdzXpiHyujVYbNH/kpoM3/v
         kFvNk3gZ3WpdmRZHOBfErFuLUhfYAcrxkiOG9YqYuwl9N2nSRB5G8gpzrN6jwrR0BeDk
         0ygPBnQbkm9aOO9cwpb0s4o1uWFZHBq8DF9iSq0/ijYABGutH/LA0oIEkUk2VPnE/8vx
         3jpvA/mis83wPHsOZUt3wLyXJJ/lWKWJvhxo9sBE3+C5+7xLnGTsLVvo6fRgQ8O7dy8g
         UhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771483790; x=1772088590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0HWh+N4WiR3PWFLachClnwFsNcwdDKFFahQfFNbu/nQ=;
        b=W+Pcq0e6z3kSx9esF7eEs7Xc+Zjgx7OT8BcqKWhix3R8fmVCOPTC+L2mnfKvgdp30Q
         G3yqh/yQ3EtxBiv7i0aUYjU2Mjw3O9If+qGQp8V6pvJCoAoFxIhiAegHzl6QKzBuUVPE
         szSbKMXeObnAoXSBFUEYR/rj6yqACu7UFle38KtaiiyzzJuTEmEXTN5CdnzafLvsI2jT
         KFEpHVNDXWfXVyqDgUoAq3ZfOIKF/CkhpVykv4ze54nyZuE9jJGiuZrYl7cGbNNuUpah
         7wFaTnLvd5kw3inj39z8zDH49uSPfOhy+1ZsPLU3IUMOrnyjMpfqWDo6ahYfweaky9QM
         SztQ==
X-Forwarded-Encrypted: i=1; AJvYcCVM1ckKjY0pIhtf4LeD+I55vgCmk+Cx3fflORbRdXlTmRO2aKDWrnJF95XSxuzzTtNdlNGChBGWUjYX@vger.kernel.org
X-Gm-Message-State: AOJu0YyqJDTVZOBnF2jChJymlQkQkbOatYdqg5/VUonGqdwZ3hWAD22N
	pLqkL287kFOhj0RDY4NUFjZLSbsv9Mu7twx9Qn9jDQN0oYTzHlw8dYkIODUba2iGb+zeob2c1ml
	zsuH/ndX7jYFgIG+Fu0M0JmtLrTwNIM01H2HKHlq5qhk1x2jMxxe57Bnqu5WfR8Zl
X-Gm-Gg: AZuq6aJT/9T+AZ6rDc010gm6ysgE4GKo0nW1Bs1W2WDjalW86sAFFDgS9+LIGmOD7an
	vVpT8Y9e7muKwO8zDCMEC29FT+s0/7hoCXasE3Z5oD4WtxfjMe3dpOUFdz3n6rUG5uVYMmMF9P4
	/Jp6Imht79UNvG2zvaLH+x191TLbV6J5xHytlKhotVbBc4lB147EeljQTQJPr5/bjimou6fm0wn
	EQH7dHuFDKBXI4UopN9DnIBDXlVzNBPnSZdj+McrCZLhSG0Txz+3zY7bmw7p2R4Krw88TtaP4mZ
	NhVDlimXrzQHjTGzzfxpK7T5oHesuExrpCk1cRM5kYuc+za4e0SEFMQi4rDn9vSexXO0H6MzGrM
	Jf3owIuRQ+kOKaQ0EzK/9HUjQYNAiOvu28MpseR2HIZGqys9SNr/Cjk++Gwm7kGjih5WVCnH4pd
	r33hjTfgMZvJGWa+acvpCFbYDPz5O6Z3sl3j0=
X-Received: by 2002:a05:620a:460e:b0:8c0:dc64:bb9f with SMTP id af79cd13be357-8cb4225fe11mr2400002685a.18.1771483789793;
        Wed, 18 Feb 2026 22:49:49 -0800 (PST)
X-Received: by 2002:a05:620a:460e:b0:8c0:dc64:bb9f with SMTP id af79cd13be357-8cb4225fe11mr2400001485a.18.1771483789262;
        Wed, 18 Feb 2026 22:49:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5ac5fasm5184588e87.64.2026.02.18.22.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 22:49:48 -0800 (PST)
Date: Thu, 19 Feb 2026 08:49:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] arm64: dts: qcom: msm8996: Drop redundant VSYNC pin
 state
Message-ID: <cq7bdo3l4w7fi2aymo4ovafrj2y52k33dspeii2lvv75viujet@anvldr26j7to>
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-1-2799b8a4184e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-1-2799b8a4184e@oss.qualcomm.com>
X-Proofpoint-GUID: 7oDsjNaMuXnLEODMI2zxLKjqjC3NP8SE
X-Authority-Analysis: v=2.4 cv=JrL8bc4C c=1 sm=1 tr=0 ts=6996b28e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=ShtdDeiuQy05pCu-yTQA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA2MCBTYWx0ZWRfX6EmKTTviUiOQ
 fNzKjyzaEZ/OyXy+b4vwuhVeHIt+7Ml0DKfA9gRFqX0QqrC3koQlP2y07E0/7xOQ6nS76eagXei
 7QqomYJ9hJQCKdRF7KiGxooQceHpDXHfgimJlM/VS8MU66Y47omCF4y4kM6I0RcAuJcCuUMOEUG
 U2EGSIiUeaF0nP6mh13951kP6wh9rloOQgBl0LEaJmkEWnJnyxjAccG8XhHeWylv2Hx+mTcORs7
 +yjqrqUIh7gxwFAY+N/U3oZFwfvLEX1gcqH/YHTGxWP8XZAf8yjyc/ERPyfE67yKk4jua1fz7cA
 uCTqPYl3X6GBQ4yaMfNSfZZjBWgRCZbt2jA64feblqZfaUQLdQSnNuaZPZV51RuhDhsAIpfSExY
 Ky+iixXfn6uaiobRAOx7i4g8/EKPQt3fseNVLFCmrZ/F9HNvgu0gWrONhaJygCKuLzJqCeHjvrq
 I2QZjdYTJTCrbINZKrg==
X-Proofpoint-ORIG-GUID: 7oDsjNaMuXnLEODMI2zxLKjqjC3NP8SE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602190060
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266572-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 65EAC15C7B5
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 06:24:23PM +0100, Krzysztof Kozlowski wrote:
> The active and suspend pin state of VSYNC is exactly the same, so just
> use one node for both states.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi   |  9 +--------
>  arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi    | 11 ++---------
>  arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts     |  2 +-
>  arch/arm64/boot/dts/qcom/msm8996pro-xiaomi-natrium.dts |  2 +-
>  4 files changed, 5 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
> index 63ab564655bc..a4dcc88bb01f 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
> @@ -745,14 +745,7 @@ mdss_dsi_suspend: mdss-dsi-suspend-state {
>  		bias-pull-down;
>  	};
>  
> -	mdss_te_active: mdss-te-active-state {
> -		pins = "gpio10";
> -		function = "mdp_vsync";
> -		drive-strength = <2>;
> -		bias-pull-down;
> -	};
> -
> -	mdss_te_suspend: mdss-te-suspend-state {
> +	mdss_te: mdss-te-state {

This is not used and probably can be dropped.

>  		pins = "gpio10";
>  		function = "mdp_vsync";
>  		drive-strength = <2>;

The rest LGTM.

-- 
With best wishes
Dmitry

