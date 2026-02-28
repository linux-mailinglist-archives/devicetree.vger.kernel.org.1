Return-Path: <devicetree+bounces-269564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SI/EHS/qomlG8AQAu9opvQ
	(envelope-from <devicetree+bounces-269564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:14:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E541C32CA
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:14:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 815F6305580B
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA69642B73E;
	Sat, 28 Feb 2026 13:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RD37Q/9Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L0tY8eAX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73ED043E4AB
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:13:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772284412; cv=none; b=TKifnGGU/N2+3m5kZv4Fcgu8zJ5MfUZDnf3/MfJDV/BGYxR5gzZTRBdB190VeO+EDdDWeblAmqDkC5re6PzHTFWrmFN+CtsqMbT0QoSZpLv27yi3UbfgrFxvasDTljeVWfh4U7S1t05cEkoVsrZa9jOnBUiXQKkq150LZy2vmGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772284412; c=relaxed/simple;
	bh=5X5of678gdEEn2egm2NNhYyrE3TMVGUs6D05NrPOQ6s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rln62KgAmqYvEV6wzg0WSRh6oxcNJX7obWH6RQ1KAJZWxGKVs9YcFYdWP12QkEmZS+XEP1+kDeOj7HQFC5cbZDtLWG3nDq3+UCfoGvR4sm3nED2ML23AaRTr6u74eK8W9GOF2euN2n9quYtSL1IfRjznbm6J3MUpKgV43zsJeXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RD37Q/9Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L0tY8eAX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S95f9a2493652
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:13:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Lq5HDmU5pADtCWaprdjzEoV0
	Xb9hhal+FSuYJoDFlQc=; b=RD37Q/9Qiv33rKktZ527JmJm+jv5yhpasq86CS6V
	kLzvGMFkRNPDEr0uHVfY4/wxjAJI0B4Lr6cPbTbq7U2gmg8WlrGdDzsIxR4rbDnb
	5ZUdjS8q6qkQg96uoZaJH6NFwCIIc7FRe+I4vnCOjHLHGIWb0ztNhrvS3gj+c3Ed
	vVrqpS+GoBOpPiZqGfydVc2MqZ1f1LXcsSEqtnnhIxg4eNDHUXM/ZqEEhX0jZknM
	ifsjRd+Gn04FSuxL10m4mihX4JjiBOA7dEfGtNlh7LIYhXZF/9pn2SN2D+NRE9sH
	PlCa0NE4TC5kARFM2uPddg5tZCkAk+XpKax5LCx12hXfKA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksfggvhw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:13:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb5359e9d3so2569691985a.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772284410; x=1772889210; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Lq5HDmU5pADtCWaprdjzEoV0Xb9hhal+FSuYJoDFlQc=;
        b=L0tY8eAXHxS3ZbIGN1UKeKdyiiILBvxRSZ9dX5GVKSkpwhcKyCVNlaXq430GUUrFf8
         I3mrtj1xJWVIIYfphrcAgl6Ecbn5M6kKH6Iw7AGTzUQ+0r2sgQOAtuOikY5TdQzWuIGj
         ih1G84rz2ttsqw9Zq4S7a7XH4lmauziv9M08FTOGmkGgFg0Tf30mt2IMeJpLw43LRTkh
         mOo+Kf77TVEMDp3jsgV7bmfEGpKP39qByjDGJGc0DJy4eLviHVe1xw7YKRlNI1KsDDvv
         +KSRTpYZgVUMu3pv/F1RuFMXk7TzPdiGs7zd/jKL80hnZJzJm5XSXko/VmV8BqIUHIAs
         T7Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772284410; x=1772889210;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lq5HDmU5pADtCWaprdjzEoV0Xb9hhal+FSuYJoDFlQc=;
        b=DFvOaEWcQosWAE6/Pq1TazORrOXbGAotPDgIwWY2saHqs80sJaJljWkT9cVo/6OdOw
         xBQAGBgJfrYENntOMtYhWeAvb93FdL+PXnBVRGqEQO0qFCYzKQ2bOOqd9hX4XqfJXD7c
         5s5WhAM17cN3CHa7XoqifQaRbCBJlI79V6y9L96t/R9R0YOkH0CZ72zalT/pcWUmIkDJ
         uB/sW6IYECNxzV5VLC4/gFz02K5uAODgxSDG+WTihV9Q/t6k0Ee3WvE4YdX8XNkJZjAj
         BkNiKZUe29FuK/JIbECtoOhzRuq5Txtt9P4cu2ZjY+OixxpJtrwACOD83Ktv6xvdn29D
         +0eQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaYdzMsGvwVLtaGDIfhA5zWeEY1TGg5SZpgOB7xfib9tQ8m+TVivwYFEXtNm2sIU1/HljdTtJD9txx@vger.kernel.org
X-Gm-Message-State: AOJu0YwnhS0mg6iT6LkIVSl4lV/y4prwX4PPaOAzsLpqHMr7PvzCpt7E
	yhL5esB2Fsyy3aakZ7FFK3xAle87bG9BC2Rr7ilYE11QpeZhbAdrC/UM5Y/nmRyjYlpYnPpHYI0
	jRZjr8PH/CXgFVrsbSt0IDFhKVsK5ugXP6sFah1bK7ZlcQoXWiBpKjfcpZuJalbqi
X-Gm-Gg: ATEYQzxnBv1izxsVVQD2AxVDesE1vYUxcevcAVPdu8ljQkWNZuf8NMyhX0szQPBri28
	eLo4MQQTL/tX6rFuZh1G2Jrq4d81TiCFXwQOZ3ObBt32Yfa+bz2uKI0q/1PyJ5ARdGI42OI4hh0
	NFAoTKJjP/ejQGHCQ4DGox+y6M8+Ekzs+on/rnJ/5o3fxkbVpYfTL0uwNKVSGQapgZBou/ww1yc
	Q3vHVfF2G7W7fIfYBEKO76CIkqo1qoaVLNylEDboZ7qpTeyaaZ2qsXZpf0GFtgbjtI0S524Rw4p
	eVdpq9wF0Lnzzi8rbpYcRHw6K8vOPduhJO4kyB+AXV0liRdnL3oc6AVzCZOFDoLgQ9VRIC2bSUc
	iAJV4nJxESVbLcYzfC2sxbUoVhanWOBNHgFh6nvGpaDjCxKsJjcJrmZAxHKMCt9NWIE4kMXwRqY
	xrvutMMqUqKUCSG1M3v3D8bfA/1dbM0w5AbUc=
X-Received: by 2002:a05:620a:2892:b0:8ca:4288:b168 with SMTP id af79cd13be357-8cbc8e4c5b3mr725767485a.42.1772284409771;
        Sat, 28 Feb 2026 05:13:29 -0800 (PST)
X-Received: by 2002:a05:620a:2892:b0:8ca:4288:b168 with SMTP id af79cd13be357-8cbc8e4c5b3mr725764685a.42.1772284409304;
        Sat, 28 Feb 2026 05:13:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f3016bf6sm18740421fa.32.2026.02.28.05.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 05:13:27 -0800 (PST)
Date: Sat, 28 Feb 2026 15:13:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: use refgen regulator for DSI
Message-ID: <awrfjdwsf4gyyg2s6ppw4jfmpzp5s2aavosmspsp26oqccco7y@csij6bpnfpu7>
References: <20260228125431.23098-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260228125431.23098-1-mitltlatltl@gmail.com>
X-Proofpoint-ORIG-GUID: HVBGag9UEYqCoNn2-79Ub6KB0-5bk366
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDEyMiBTYWx0ZWRfXwqub+h4DjpkO
 9aBzjEmocjMJFtu50k7DqEbxZwq6/VVdPlwxwnW15zRgtD7oMm53884EPwnT4ibr0an0ubcLK70
 SUXnDIeGGjwmSwoQeUbFE26jbXcMe0jbPIS7lZc7BjFaKMnS++8rmwWY90aRGStpX5Y5kklHh6f
 lk+eh+zJALqdw2wy73THhmhDkFZT3vrblF2bjZ7MMhIXTOykPoGOiQlh6LTEsdOKUdfUq9Q9Lyy
 +cEAc7n18Pr/aXiWzBoRvvXdtqpkfEx4d2GRyqpn7Jfmz02THxRThi7HiLqq1BX7AuZlouQlNcm
 YDG8TVEA3CIHWDC00lRiA0Lee31FT4CKJfhiOvN/LPONYOEKNSdiYv/BGwpSPy+9oMMJkFFuVxR
 sug0fPipcfNLJ4378behX2QNaK4ry3RHaQNSPJLcyuav9hWmDAGMtRj/BXolAGgmBd7PeYr1oWs
 uNrOKaqBnel0zfSlDvg==
X-Proofpoint-GUID: HVBGag9UEYqCoNn2-79Ub6KB0-5bk366
X-Authority-Analysis: v=2.4 cv=BIe+bVQG c=1 sm=1 tr=0 ts=69a2e9fa cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=pGLkceISAAAA:8 a=ivmz1Vb5dG1lvjaeTioA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602280122
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269564-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ae94000:email,qualcomm.com:dkim,1.81.32.176:email,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ae96000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[1.81.40.128:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B2E541C32CA
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 08:54:30PM +0800, Pengyu Luo wrote:
> Use it for the DSI controllers, since DSI nodes have been added.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
> This patch depends on the below series:
> https://lore.kernel.org/linux-arm-msm/20260228101907.18043-1-mitltlatltl@gmail.com/

Why was it not squashed into that series? I'd assume that DSI nodes are
incomplete and are working "by luck" without the refgen supplies.

> ---
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index 79021267d..1599d698b 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -4843,6 +4843,8 @@ mdss0_dsi0: dsi@ae94000 {
>  				operating-points-v2 = <&dsi_opp_table>;
>  				power-domains = <&rpmhpd SC8280XP_MMCX>;
>  
> +				refgen-supply = <&refgen>;
> +
>  				phys = <&mdss0_dsi0_phy>;
>  				phy-names = "dsi";
>  
> @@ -4942,6 +4944,8 @@ mdss0_dsi1: dsi@ae96000 {
>  				operating-points-v2 = <&dsi_opp_table>;
>  				power-domains = <&rpmhpd SC8280XP_MMCX>;
>  
> +				refgen-supply = <&refgen>;
> +
>  				phys = <&mdss0_dsi1_phy>;
>  				phy-names = "dsi";
>  
> @@ -6398,6 +6402,8 @@ mdss1_dsi0: dsi@22094000 {
>  				operating-points-v2 = <&dsi_opp_table>;
>  				power-domains = <&rpmhpd SC8280XP_MMCX>;
>  
> +				refgen-supply = <&refgen>;
> +
>  				phys = <&mdss1_dsi0_phy>;
>  				phy-names = "dsi";
>  
> @@ -6478,6 +6484,8 @@ mdss1_dsi1: dsi@22096000 {
>  				operating-points-v2 = <&dsi_opp_table>;
>  				power-domains = <&rpmhpd SC8280XP_MMCX>;
>  
> +				refgen-supply = <&refgen>;
> +
>  				phys = <&mdss1_dsi1_phy>;
>  				phy-names = "dsi";
>  
> -- 
> 2.53.0
> 

-- 
With best wishes
Dmitry

