Return-Path: <devicetree+bounces-277127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHS5HIyCumnrXQIAu9opvQ
	(envelope-from <devicetree+bounces-277127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:46:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBD12BA27B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:46:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FF1E3030121
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E5639150E;
	Wed, 18 Mar 2026 10:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HXii54Sp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Bv+NbQbT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E3F38836F
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830728; cv=none; b=iH6HshLghVliXDgsmNZXt/3hCd/kppzv+gkYaFtvMPonj1NryhUSjJVkiAP6dKXtc6hb1rPv+UFZm64Y12SeZz0D6CrdntdIo0qrbCnNTbaiL37iYdXOmGFbFDQP0c3mbt39TQ2VIxMvrwzbL/PzlUaFirqV5L7aCJgRYQnUBSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830728; c=relaxed/simple;
	bh=//OxLOzMgTjauQvuyL+lZcp24g6KrZmCPIRlt0jWKpo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EpsCrV218IhglIJBa2p0WHAiaH9mtJO1kx8YLE9B/GscEultHGANKLX5Lyy1isMd1Cbziplxe5LTCFXkZeIXvg8HJ/aeoL3J+mvnz/+uDYBDI4L7PAFHa2PKGNr9y5e2KAfRWjv1a8hukk/4GU/67pFuh1iTUzz/DWm2zLv2OY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HXii54Sp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Bv+NbQbT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I8T4OE1050806
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:45:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iQhqPj1ByA3ORdYfDon1p6XXcHcVjv/qyWJ+en2pBY8=; b=HXii54SpPRF/nRpa
	pt1yoR/doineM7ebiyVmUIyA3uBsVtFppI1VRBGVrI29PCtIHt2DMrRItI1LcTO3
	nhlTQzsjVy86AppfdMwIddkAN0wGBnxGVGUODy1Y4bJGGFeyUeGRS+ZTIFtD1are
	9qq64WiXWPL7LpexWZQbAxVbFjofhI9ySzZXmz8BQezcCfSY7Jbr42+PAulNRqpT
	7j0cOouTuxtU4qN0Puj6vUNzrdduIdnZpDedVRrdzE9s0miAtBh3w6WDRnt5y29P
	5W3pfqjQd/gKNQ9EuNVyWo+mhm3os7oGzClefVvJTJvT1yr0eQ5S09a82r/+ZYsj
	ItHDGA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyj4ej4jr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:45:26 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-509219f94b0so107183211cf.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773830725; x=1774435525; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=iQhqPj1ByA3ORdYfDon1p6XXcHcVjv/qyWJ+en2pBY8=;
        b=Bv+NbQbTtTSWnVMFVZB2h0CwP2rdp/uSaDYjnhmnIzpgZ+qVywl6pcVaJ6zFvsYLMk
         f30dAlAcyAiRXCtUDYgpj5vqXh/Q22S46To9saalALvs9SACymHhvPwWdUDmBBiI51T6
         gBQwGiC1oVZ0Q5sXMfb++Xyymq0kTJ7iV/Xminf+xfK1eZj+mkudyFeUB/5rWXY3/X2E
         8wgBA0pmyAyPYm+v5+Js+BHejJps/2kz18l6r7Uss62owvxz04dVKBFZpXatTHSKiDIp
         guT0z50sJpIFmWB+uVLqFzsWXEuScNLQOO3i1tRJN8c55IyJc7D/mYpMd8Alg7bc01Tf
         9vPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773830725; x=1774435525;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iQhqPj1ByA3ORdYfDon1p6XXcHcVjv/qyWJ+en2pBY8=;
        b=J4H34VEZZNbDwfsT1QKtVnTu6tUJc5jk/0b3UgsM+Hf81L6oU6Lys4w7Wz14XUG23H
         xj85r8hGWPc+gXdh8aTDcZuKbbuF44RZcsKD1/GmTBHotF3HNKL0avkzgyXVrlh2ma5z
         qFe3W42Vm+Fz9xAmeiiuW5yFHqWdAWjO+lVYI2UYju+mdG+KLQbrYlf1q45ala1GBF8p
         TWZJETRwwdXiVzk++t3Ukc0RVY+DTDGOUH6jdUY649GM6YvFy0eunDEp/xKMGVB3sST/
         aC4rPOl+b/XPK+HSxlwk9xsQ29QEXC3IyrdWdraNOMj6hNMpR2GPGw+kuv3K5IYjLci7
         bdrA==
X-Forwarded-Encrypted: i=1; AJvYcCXLUPJfpE+RfWkzdTxHVzTlNHTB9nRSiGl1h75dJ2yQSdAt/IeJw9UUZ4On2YnJOOH/N3BTaZorpUgY@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ5KGPDT3UgwrG0JuGZYWgNF0DKuPKYQkVvvHG3++pO8DoRcBY
	CUDY0KMZ1gBBHEylTWpL6d4N14RUNS1EG5mmcKdh2mPZ3t2s5wTMlWPMBDQCXX+iY8yBqcnsJ2R
	LxiYl2KB4y60pcTbJzKBAQzLZsD/IcF5jHGYEEfvnik1LJtXnf3gofuZIQWRgSSoD4pc4NbEc
X-Gm-Gg: ATEYQzz8ksT2aKIC8zznTBSfumZSC1sjlwvTmDA+zy5Bh2Scnw8L5+wfekjzlW3bBaP
	n79dzf/Che2mfXXQeRL5Q5G/1PWm825wE0Z2L33SHHWcRPAh85T0+wB6Ig+Cnzz1NQQK8XowNhQ
	O86Bramj8vMnoA2FrWqKAwCLeUgfOgcG+1jl2Jj3kmjnl3YViDQC2dfayoSln4KYRBX1dv/bg70
	BYH008tAHRuxQQBk4++RdZB/RZd3rQz5BIo5b62j9yWV9yb1Y3TnZadeKD26AFfRO9rBOxvifpx
	LT+exQCcVPjRiFtODz8fULsvyL81qolnmrBR6/no5jZbkb1ljiCH2COPWwOWiHlBNzy5fAvDnbd
	JqeNI4oBQ+EXG0NonrlIzezd1TswZLOuPi2LOANPIINnpbSiH
X-Received: by 2002:ac8:5a56:0:b0:509:1a36:6ad9 with SMTP id d75a77b69052e-50b147a964bmr31652551cf.30.1773830724699;
        Wed, 18 Mar 2026 03:45:24 -0700 (PDT)
X-Received: by 2002:ac8:5a56:0:b0:509:1a36:6ad9 with SMTP id d75a77b69052e-50b147a964bmr31652211cf.30.1773830724171;
        Wed, 18 Mar 2026 03:45:24 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4e48ad5sm63631515e9.1.2026.03.18.03.45.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 03:45:23 -0700 (PDT)
Message-ID: <7a8c31ff-6458-4840-9b8e-a540a84244ea@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 11:45:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: Introduce Eliza Soc base dtsi
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260318-eliza-base-dt-v3-0-8a50bd2201ed@oss.qualcomm.com>
 <20260318-eliza-base-dt-v3-2-8a50bd2201ed@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20260318-eliza-base-dt-v3-2-8a50bd2201ed@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=T4+BjvKQ c=1 sm=1 tr=0 ts=69ba8246 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=uu6HZSQSBnFQn7oXV_IA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5MSBTYWx0ZWRfX9PhT2XbOA1nl
 VpcyhO9v3nXsZq59fCAi/EO+TSDVffumHjM2rndNZEwMHHR39dNr3mzmfUAZ4zVFguGDInRUGq5
 qrgi6wmsTjmXQZCAdsIPrfvirc2SUgm1+0CPl/kY7cixnGrgCyESsTtqJrmnfDqqtXUlDfGy8AT
 Rmb88c8EiwFuHXLaTTKQEtmCRYmCZKt5FMWyq4MeRq7+9oLnj3r5lFv1Ii6DY+SmmL0CilBIWb6
 MZ0wcwZVZevMuD96p2p6g2R3oe3iWFltKSrbZ+eijWCzK1O8eUYuKwYgQOIlzNmgylTyJmwVbA4
 6Flmo8M72Am0Qnlr0aR1PeBnvfyjeTBAUpbUGXzfAFhnAt7x8Mw/r0566vuwkrvbq/VALt7afWZ
 i8Qta4WXuQ7dOGmVCMaGCZrDRvQ9OBLbPi3ciUj6qW+LydQ/nuy5Us+JdN6QFIdtV8ut9LsFiV1
 /+5lcnyPLuGHb+7yZGA==
X-Proofpoint-GUID: z-3Q3H3X14I0dIlBRDzPUK194UrY4K8k
X-Proofpoint-ORIG-GUID: z-3Q3H3X14I0dIlBRDzPUK194UrY4K8k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180091
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[a0000000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277127-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EFBD12BA27B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18/03/2026 11:19, Abel Vesa wrote:
> +		};
> +
> +		idle-states {
> +			entry-method = "psci";
> +
> +			cluster0_c4: cpu-sleep-0 {
> +				compatible = "arm,idle-state";
> +				idle-state-name = "silver-rail-power-collapse";
> +				arm,psci-suspend-param = <0x40000004>;
> +				entry-latency-us = <550>;
> +				exit-latency-us = <750>;
> +				min-residency-us = <6700>;
> +			};
> +
> +			cluster1_c4: cpu-sleep-1 {
> +				compatible = "arm,idle-state";
> +				idle-state-name = "gold-rail-power-collapse";
> +				arm,psci-suspend-param = <0x40000004>;
> +				entry-latency-us = <550>;
> +				exit-latency-us = <1050>;
> +				min-residency-us = <7951>;
> +			};
> +
> +			cluster2_c4: cpu-sleep-2 {
> +				compatible = "arm,idle-state";
> +				idle-state-name = "gold-plus-rail-power-collapse";
> +				arm,psci-suspend-param = <0x40000004>;
> +				entry-latency-us = <500>;
> +				exit-latency-us = <1350>;
> +				min-residency-us = <7480>;

Here and ...

> +			};
> +		};
> +
> +		domain-idle-states {
> +			cluster_sleep_0: cluster-sleep-0 {
> +				compatible = "domain-idle-state";
> +				arm,psci-suspend-param = <0x41000044>;
> +				entry-latency-us = <750>;
> +				exit-latency-us = <2350>;
> +				min-residency-us = <9144>;
> +			};
> +
> +			cluster_sleep_1: cluster-sleep-1 {
> +				compatible = "domain-idle-state";
> +				arm,psci-suspend-param = <0x4100b344>;
> +				entry-latency-us = <2800>;
> +				exit-latency-us = <4400>;
> +				min-residency-us = <10150>;
> +			};
> +		};
> +	};
> +
> +	firmware {
> +		scm: scm {
> +			compatible = "qcom,scm-eliza", "qcom,scm";
> +			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			qcom,dload-mode = <&tcsr 0x1a000>;
> +		};
> +	};
> +
> +	clk_virt: interconnect-0 {
> +		compatible = "qcom,eliza-clk-virt";
> +		#interconnect-cells = <2>;
> +		qcom,bcm-voters = <&apps_bcm_voter>;
> +	};
> +
> +	mc_virt: interconnect-1 {
> +		compatible = "qcom,eliza-mc-virt";
> +		#interconnect-cells = <2>;
> +		qcom,bcm-voters = <&apps_bcm_voter>;
> +	};
> +
> +	memory@a0000000 {
> +		device_type = "memory";
> +		/* We expect the bootloader to fill in the size */
> +		reg = <0x0 0xa0000000 0x0 0x0>;
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +
> +		cpu_pd0: power-domain-cpu0 {
> +			#power-domain-cells = <0>;
> +			power-domains = <&cluster_pd>;
> +			domain-idle-states = <&cluster0_c4>;
> +		};
> +
> +		cpu_pd1: power-domain-cpu1 {
> +			#power-domain-cells = <0>;
> +			power-domains = <&cluster_pd>;
> +			domain-idle-states = <&cluster0_c4>;
> +		};
> +
> +		cpu_pd2: power-domain-cpu2 {
> +			#power-domain-cells = <0>;
> +			power-domains = <&cluster_pd>;
> +			domain-idle-states = <&cluster0_c4>;
> +		};
> +
> +		cpu_pd3: power-domain-cpu3 {
> +			#power-domain-cells = <0>;
> +			power-domains = <&cluster_pd>;
> +			domain-idle-states = <&cluster1_c4>;
> +		};
> +
> +		cpu_pd4: power-domain-cpu4 {
> +			#power-domain-cells = <0>;
> +			power-domains = <&cluster_pd>;
> +			domain-idle-states = <&cluster1_c4>;
> +		};
> +
> +		cpu_pd5: power-domain-cpu5 {
> +			#power-domain-cells = <0>;
> +			power-domains = <&cluster_pd>;
> +			domain-idle-states = <&cluster1_c4>;
> +		};
> +
> +		cpu_pd6: power-domain-cpu6 {
> +			#power-domain-cells = <0>;
> +			power-domains = <&cluster_pd>;
> +			domain-idle-states = <&cluster1_c4>;
> +		};
> +
> +		cpu_pd7: power-domain-cpu7 {
> +			#power-domain-cells = <0>;
> +			power-domains = <&cluster_pd>;
> +			domain-idle-states = <&cluster2_c4>;

...here.

Each cluster has different entry/exit latencies, but @Konrad insisted to
represent here only one cluster. I believe it is not correct, but I am
fine with it, however my question remains: how does this work in such
case - which domain idle state is really used?

It's more of a question to Konrad since he wanted one cluster...

Best regards,
Krzysztof

