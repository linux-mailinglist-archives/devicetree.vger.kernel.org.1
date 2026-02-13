Return-Path: <devicetree+bounces-265481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AjKArOpj2mZSQEAu9opvQ
	(envelope-from <devicetree+bounces-265481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 23:46:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AE6139D8E
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 23:46:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 443B2300680E
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 22:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2263E2EBDEB;
	Fri, 13 Feb 2026 22:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VXJBaBWE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F1kM180S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609B03EBF34
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 22:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771022767; cv=none; b=IMmzbGn1WB+f8UmJhagJExrd0ICs+x9XmQovn/RMe0sgti9zTw4JGsPoK3CYy/Yuui0/AQ5j4B5fh013wbU0gihlFTxvGLcSTg43/Ry4icn2Fgzd3OHMde0tpUB6pSshtfm1HyZCveO/2Na82easWTMsyeBGL+zs7n5SOAs0N70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771022767; c=relaxed/simple;
	bh=knJBdqPjVtEV62c0/GHhHaUpxoq6PevP9pwkwQcrQXY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cs4SEeqvGFy9E31gRiRHMnzB9DnWLizoPEpFYybt38NKzAbncrKhbsLDTLKdnr7RQkB7lUsUcjZ2l2usaY1RP8H6ysn35MMcdAV6Wu34g8knW0Qp9UYdqGV95632xs89QqS/OubG5nTGWLTeRFYXHaEpDbTI6VzL1cjxjPB87tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VXJBaBWE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F1kM180S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DEdxss2628029
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 22:46:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3SsDYUO/omo5M8jNjG2gaAOl
	NQh7/M+BuNJyGGLsXeE=; b=VXJBaBWEJSeBXk2+pKZW/Dyj5r9h7dypGiqmo5iA
	mrISmWKXpPCs/3B4fsYgD8lWfOD3EMNXfIed9ZDL5vTONpT3TBuYkvfyR9PX8M1b
	hz7OGbS4Si/VPQXMTF4rMjDexggRKqjoWti+D4yIdfU75OunRBTrH1KsXzDaAnAE
	LIyNgdg+cLAeo04d7Wl9eJAZGQBCCxkno/u7w94i+5TcBNxjrGmybXwa38Xu4N4b
	gKe1A/ASiHVw/aR2g5Zv5NO61mz7Q9g6O55BiF5hW12ijl2xPBVr+YBRRAGfpDaU
	p0ez7ErsXgDASxeQYGypHxSf42/C4o6fz0+R6MjD62r8Tw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9yguu3va-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 22:46:03 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c71655aa11so663961385a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 14:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771022763; x=1771627563; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3SsDYUO/omo5M8jNjG2gaAOlNQh7/M+BuNJyGGLsXeE=;
        b=F1kM180Sv/8d23+2m5cN+Xj5fIpYb84ZMDma3m3AiVPuo543WJej2yqtyum1ABHMA3
         frVM5O2cyqXvBU1Wk0DNgH814+m3IB6umUZk5S5YJo/IH/+wE2jDaOkLritZAf1bRoB6
         5yY9btkgoKGTVF30jAGYep3rGKiv0ubXUC0tmXxTmF7USQRSbUPpH3pZj39NaAVg66lO
         7Q7jbGKvyJwC/J+q6/4fGglllhhT2R8LvAIuS6/GgGWB10cnErABZ/fpA324+VEnbux3
         NA8ArmT++sy66SbZLhsnpUl8fGwdTircrmhAwacaYNTMrl4KpK63ydOYtoz4joCgNLiD
         KQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771022763; x=1771627563;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3SsDYUO/omo5M8jNjG2gaAOlNQh7/M+BuNJyGGLsXeE=;
        b=t8QvCbdci/5GTmJ8BlDgyWnFb28e3/9galI22Q0HRsnQQEhEBsxHOODTpgXHFJbiBw
         EUBDVlTwYyAx2m+dkb977k2NTyTV1cXZrDvgEZurdqTp2T8jAlfhOmN919kbmU/fX3Mx
         zUg/KUTNSudmZbXIEYJ+g+RqMHks0KiLsSvya58ckj0o2lFAm1SyOizildr3w4o/dCwB
         v5gbBh0a56+FG3i/p8O+zJ4RBgDOaHJFsCYJhhFmzzXjOP7WpJK3TgZXU3TwBfMRBjIk
         0zBORWvH7iyp7Kj3aSYkT3Yb4+zW8tyNHt2GXEE1Ivzm4G6kDim4EPIm8KjjHgMRsG6A
         Yl1w==
X-Forwarded-Encrypted: i=1; AJvYcCXjTD4r8ynO5JejoFD4Lr5mhDANtefx+k7sugQKrmt2ztMPxGJP5Xkhu8zQSupEnrlqyInCWWXygUa+@vger.kernel.org
X-Gm-Message-State: AOJu0YwBJLoJjvz0TVipAySLZrlaag061LZFPt11XUFub1O/FC9YbBPc
	L/Fgy/L3MvMKwEV0grpmuk3wrVo1Di9Oj0gixuiyOAui25fwk9joyt0rnUIuFCKZ2UiSjYCEBrH
	NNChKTmEKPA0rOXaqNe/UtSVy8AG45sdpjT5Fk8c9yvFi2i9dPV9/pj7v8/CKgYhz
X-Gm-Gg: AZuq6aLdCkdURXaFG84+1Obm9sIgxZBtVsLQ4JMB6iP3T/rLHFhkGcK4GM1GbejYUY3
	3mGbjF7kLxcAk6WFh1KolaH0+MDwrUJdeoEmUr07Gs42VlSvGj4E6r6Cdnl31NelobszFQwISM8
	+YztISQz9CCqQV0LKQIDdxlkvb/OGV5E92AV2kMaI3VzD+91lxp8Ki+Ar+CZqEl+wTRNcvbnzef
	MnafccdMxA+Cybf4YTKBDNQItkh9loxJuOCi8SiG00YEKF6X2vO7gwCV7vm8uOt+J5nCMsoLMO6
	NT7JW07jAKssQlQHUJcCRM3uNPjIUV6KVbIgnVNGcs4A8IwYTX5sl5Hp0Q6VQugg91EZXcAed5c
	gw5gmgZgrylP2tZSEiC6hvZObhHXtyw2VqByLVY6JT0uWW81WP9jbAPxUErJ5NBLjdOiSf8Mfix
	HWKDLb1v6PqGGa/fKNdPoNTMvR69qaIZvfX9E=
X-Received: by 2002:a05:620a:460b:b0:8b1:728f:952e with SMTP id af79cd13be357-8cb42269571mr428793485a.31.1771022762595;
        Fri, 13 Feb 2026 14:46:02 -0800 (PST)
X-Received: by 2002:a05:620a:460b:b0:8b1:728f:952e with SMTP id af79cd13be357-8cb42269571mr428790285a.31.1771022762117;
        Fri, 13 Feb 2026 14:46:02 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-387068925besm15182931fa.4.2026.02.13.14.45.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 14:46:00 -0800 (PST)
Date: Sat, 14 Feb 2026 00:45:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm670: add thermal zones
Message-ID: <3ekefztyorudtf4xcdcamoyxjrgylaszemb52qmqgoxflyp3jb@6gi2levlz3qt>
References: <20260210021607.12576-1-mailingradian@gmail.com>
 <20260210021607.12576-3-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210021607.12576-3-mailingradian@gmail.com>
X-Proofpoint-GUID: uDb2XzWuNhgxTHpPgViQ1S-Fz2Ualn6_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDE3NiBTYWx0ZWRfX0UxqfOVjILIu
 sFkkBhbGNAE+NIH7TyQa77wwzZ5bKwJV75xnyICJ7dilSbW4q9KSAI25bLwQ/we77FNIXmycDLH
 dzoUOo0fnw/3NOwxBl9j28P/cOKzn7aNmARJm5BLsqjkpWeLzjKb95vYK9fPdGldWggKvg6iag5
 fEd1TD44/Brpdn73yU3LIcIRwebOx9TRJMY3LLFjcw8jj4CKQo/BoZBvigfoDqE85U2VonolVmH
 aRUZJ4zCtk0qm0QPC9PUPqrMajzNAbyG78dL9qdMNIreq+YuzaTw9QLCb7mdZII2bqLvAPIcqAt
 8uloaFvgGEdzJywcPLkuVbAfQ6RDm5OOWuU4+GQY0n11Ficn68JG/5akWP4gWu4rJkY5VcKMgDm
 0qwJrlJ18MP68FKSaZnpxvyA88Vg3X+s18b5HkGRrv89qc4bacvqMxyNzXNZeCcHWxfHK245nNv
 57GVOp/v1L92A3DzOYQ==
X-Authority-Analysis: v=2.4 cv=If+KmGqa c=1 sm=1 tr=0 ts=698fa9ab cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=pGLkceISAAAA:8
 a=fwIEsm_0hnujN-Tp9KwA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: uDb2XzWuNhgxTHpPgViQ1S-Fz2Ualn6_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_05,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 impostorscore=0 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130176
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265481-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,intel.com,arm.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E6AE6139D8E
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 09:16:07PM -0500, Richard Acayan wrote:
> Add thermal zones to safeguard from overheating to high temperatures.
> The temperatures are very high, but should still be safeguard for
> devices that do not specify their own thermal zones.
> 
> For some zones, do not include untested cooling devices (although the
> GPU is untested).
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm670.dtsi | 558 +++++++++++++++++++++++++++
>  1 file changed, 558 insertions(+)
> 
> +
> +		cpu0-thermal {
> +			polling-delay-passive = <250>;
> +			polling-delay = <1000>;
> +
> +			thermal-sensors = <&tsens0 1>;
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&cpu0_alert0>;
> +					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;

Note, use of the CPUs as the cooling devices was removed for SDM845 in
favour of using the LMh. Please consider switching to the LMh device
instead.

> +				};
> +			};
> +
> +			trips {
> +				cpu0_alert0: trip-point0 {
> +					temperature = <95000>;
> +					hysteresis = <1000>;
> +					type = "passive";
> +				};
> +
> +				cpu0_crit: trip-point1 {
> +					temperature = <125000>;
> +					hysteresis = <1000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		cpu1-thermal {
> +			polling-delay-passive = <250>;
> +			polling-delay = <1000>;
> +
> +			thermal-sensors = <&tsens0 2>;
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&cpu1_alert0>;
> +					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +

-- 
With best wishes
Dmitry

