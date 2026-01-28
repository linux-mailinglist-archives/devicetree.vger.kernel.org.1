Return-Path: <devicetree+bounces-260268-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wE63FgLWeWkX0AEAu9opvQ
	(envelope-from <devicetree+bounces-260268-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:25:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7629EC5C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:25:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 46272300809B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC7C338592;
	Wed, 28 Jan 2026 09:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JCGt8yGu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d2fVNjvP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6B6344D91
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769592307; cv=none; b=JwmU4mxcvfuAC3W22YL+RI13VxwstNTCHb04apUtViUFZ1u1kjD3VayyyZkAoB8HLDmJT08LlZeIAvzB8PgwqypwSs4Ni1EoVfiGBkiZsSSAEU1y93PL00+nLBXUzcALLesJF28MLkRSUyxL1dUZDyaLdNdlIPR89tR0mJBOK5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769592307; c=relaxed/simple;
	bh=7Y9NHAgaKLSYXrQFN5FMQoLzGkGIhe78xe6bGAR7RP8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BC4OPQ7HBhgRfxdcXLXuN9ShQfK+PA8j7YG6O1C3d7Tw7Cabkgkd4F66fErIuWs5heR3VgfzDCn6FAPQwdomkqrCTPAXX79lhXtK4a3HfZ4pRUOFn8sp1y2xmQNqwbAh6OsuNDeI/v5Mah74bM7V0HV6YnRsJVobjgCIbru+HDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JCGt8yGu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d2fVNjvP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S929aV320337
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:25:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k+NYTqfC2rPSOmFSkyxan+37r2k6CbBMiFEWoGhcr4E=; b=JCGt8yGu1Op3OgoO
	EyFGOAhmQVPyZsKe//pZ/OVup/S1FZ4kr3kfAZgOO2JN9rdAPsjAJoE2BJ7ZjRJ/
	i7eMRDDIowSxWFvOX5gMnpqWro3H9O+7saFsFOf9s6ccU3nC1+wfXxm9WbZ73DIz
	V8XwylcsYmwoDmDlVoPE1FenTCqjbOf/rCZM/WM9GSC/MiC4pa9Z0nECyJh91b1U
	NXgjs/lHOaoXmii+zEv4tGjJflFkPH8E39g92Q4Ao17xeg4VHr4iu4jldji5sWMw
	n8JSn0Cgc8YWnO07ijOqJLKVM+j8z78jrYFmhlJke4G2O9/63YhM+602MRLVA1yG
	1mdizg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by4sjt3cv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:25:03 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70cb31bcdso13558985a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 01:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769592303; x=1770197103; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k+NYTqfC2rPSOmFSkyxan+37r2k6CbBMiFEWoGhcr4E=;
        b=d2fVNjvPdUibX3MAxXu8VTl6+YiNdBf0i/cHCkhhvmcBMPtJ/T/XRX08CF2eEAEGB+
         V9XSY4CLhbYSgLXsEj8u039uE+oZzZazug/zN9RNtULo6bFC1Hzvk2kKK2C79FJQ5MCz
         gOE10hNGTXM46t64d0YmwpgA8btpMzNG61pfxu3mVFMLGZaV6TV6L/T3lf74YnDY04oA
         I3AXMR+Db0lkTrUmxNHkSjPWYXuLBG6zHt1kZE5TaFmFVxPYkbwWLNBtstvJ6FuUx5qx
         ay/hdjMNWoPzfIvCDqXU+3D4fNKAAqGUVfECIB3HeS+kyxAijw6sQ+fWlomh3VWGJ6fC
         2TRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769592303; x=1770197103;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k+NYTqfC2rPSOmFSkyxan+37r2k6CbBMiFEWoGhcr4E=;
        b=WZZRmOtXEZwsvxA431v1E8MBqEazF1Me8rpPldY3EOfUR5TY0i7zgzKwLUuuianu2w
         3zeZBgAxMBShsWlLBd+UPo4f0ZeIODLkKb6Wmkz26MuTQJkhiH+UgMh8aVBo1/7HraAa
         HsgAQ6ndtNWzv1OzeLTCmdEOKCQg5JC1K/xmH+zkxR8Lf7EcvG7iJre1XrZJqgBJXA5Q
         Ki8pI+tUgvWgnRdV3+BTetx6bqNCJ9vi/7wudzxXIJkN55z5MXyFpXFlQYALBODGc6r0
         tN+t5HHBg8YVmeDfmG1lMS4R9UUOjxDKGM12bi5r65oofMz5kUtxSMdlPV2JzAijobVt
         yubQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2DMf2EeFw2cIep4ftytM/nn/gauZL8xCoZhP2n+F3mKCqr22tvpzelJ/Sh8mWxYglNTiBYGzZECgB@vger.kernel.org
X-Gm-Message-State: AOJu0YwjJ7iTBTkFRyfsKQ/y+vXVjCGxSxbQQ1tCru/ORCRFhT8Izw7L
	A16I8TxCnmDagUECRgRBlfQ+oUHijKQ8wUY9/7/TmStG/NDb7YTNciw02DA+dN5zFipHYiYso2J
	ADWbAv0BbHbJVOXwxVAQv5r68q9sXCuzKJdFiZ1TSbOjVTovyy0ypg/AtANughfcU
X-Gm-Gg: AZuq6aKI756/EJCcBxYFzE9kw1M1r+PEwdpI8S+A1UOBC0gJNBAnPw0GhE7LQegr1X4
	EXJ6TyI1JYRtDVd4WfgIgtfQUGdW71dzofA/ekOw3Hw6RISAzJrqls9iK7YMqS4QNBA5ImbNA82
	1WKpO4P2aB6mpQ13CBvdEV9WSYxrbscIaqX6MqeGxz4XapnuVIr62Gn7MMtkOMOwv4jqYaVcfmi
	7MQekgzJEOMWFr/Z5GAfevnDzz92IAJbcQx/U+5LVWFB7SE3ZsfkDFuLzTdqwbyKOKaHFM8rO2w
	HubgHmVpX+JeztfVhL1XAlQFH9GizHV/eeZk+HtqFVEO8kH2bMWQOWnuaH/f4IoKv7dwAslEWQV
	RtEFg3EV/rKXmqeW5kVQehv4dbx3PPkt1PidcuxavHlYbaQauyDKSxGE1BDr3NVeROv8=
X-Received: by 2002:a05:620a:29c4:b0:8c5:305e:ea16 with SMTP id af79cd13be357-8c714c152damr99025085a.8.1769592302883;
        Wed, 28 Jan 2026 01:25:02 -0800 (PST)
X-Received: by 2002:a05:620a:29c4:b0:8c5:305e:ea16 with SMTP id af79cd13be357-8c714c152damr99023485a.8.1769592302449;
        Wed, 28 Jan 2026 01:25:02 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbefc27c2sm103179066b.16.2026.01.28.01.25.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 01:25:01 -0800 (PST)
Message-ID: <41dde874-b912-401b-aed8-3baf26b63b15@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 10:25:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [[PATCH]] arm64: dts: qcom: hamoa: Enable cpufreq cooling devices
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260128053208.3240189-1-gaurav.kohli@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128053208.3240189-1-gaurav.kohli@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA3NiBTYWx0ZWRfXz+4LEY+XTous
 Qe/itA+7kpt1IOK4eyYh9nIpKuosIwaxl8vUvNBYAZBSW8Ya/UEVVelbrL0l4eUmIHE1gEo8XSn
 zCagYCsSK/zK0sRNaNn9Zr8qco2KTAr5cIZKBxbQefARuWvWP10AzoS9cXcUAdpZgh3WzD9fODN
 xF9pyrS7AvMyMIoSZQCa2op+lWEtvCPE27e2zcK6WqetaGZ8/tQwGthzh511e1mlsaQQO3nQXqV
 ClmVhU6r5s/33HZLAYs17ED9QwHffX++QEevfHkXnO2QJef6bs4H+B2OPY/Ht4QWwQpFuolUV/h
 Z7K2JByGBhoOysA85C7u8TG9IyF0G/hbTRrOSEICJ8trINodxt65DiM75/a3KaEGjOIgEXM0GUV
 xasvzPmcnOQhVtv07DXq3GvKE5GlOxzQb9neGn79bCxtrgg2eZAYYNmVGIMVf7k5/BvUnlD/FpM
 Bv1hNyTFeU4R9mUHAdw==
X-Proofpoint-ORIG-GUID: qPxypyKAIiAwucxKfmsbZlyE-KoedH3s
X-Authority-Analysis: v=2.4 cv=KezfcAYD c=1 sm=1 tr=0 ts=6979d5ef cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=CXwDkO-cZtXeSndBd_MA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: qPxypyKAIiAwucxKfmsbZlyE-KoedH3s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260268-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7C7629EC5C
X-Rspamd-Action: no action

On 1/28/26 6:32 AM, Gaurav Kohli wrote:
> Add cooling-cells property to the CPU nodes to support cpufreq
> cooling devices.
> 
> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> ---

The subject has one level of square braces too many, which makes
tooling grumpy


>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index db65c392e618..799e405a9f87 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -75,6 +75,7 @@ cpu0: cpu@0 {
>  			next-level-cache = <&l2_0>;
>  			power-domains = <&cpu_pd0>, <&scmi_dvfs 0>;
>  			power-domain-names = "psci", "perf";
> +			#cooling-cells = <2>;

If we're making this change, I think it'd make sense to do so
for all SoCs with some form of cpufreq, since being able to
throttle the CPUs is no less than desired..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

