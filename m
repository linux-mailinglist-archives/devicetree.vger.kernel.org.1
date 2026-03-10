Return-Path: <devicetree+bounces-273455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KN9JO5L2r2mldwIAu9opvQ
	(envelope-from <devicetree+bounces-273455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:46:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5696824996E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:46:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B82F303308D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8A77372B26;
	Tue, 10 Mar 2026 10:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NkN0i8J1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dzbG6see"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6C4636EAB1
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773139443; cv=none; b=PCKYHe0p5rhDcgAmvAulJwXiAOiBUWaxnUxzQzEA3IADJV6Bct5i1rAqWNm7KmVB5C4m9yUYgJXks1sOmjKy3D6t9I19evtDIyUyQesxLkyiN5Zk2ER9GPFMTE+Fxczm5cdhQVU0l2lWafWSlD+JbBNwKInjypmBDGJ0cUt4uYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773139443; c=relaxed/simple;
	bh=T+ZNuvPfZ1ijUPZUkzbUUMd0snmJEpXCJTKT8en2UNM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uayPZCo2sEy6ghyuaO0A9kaCgAirOwt+cynt+TZWUKNv7qYWD00UBAWc0NArQFT+qOi1UrKNxStQ+5RswEeeH3RdyMcV+Ev2dTIYd1VymBh+bDPLsmx5VN7xZt3mKKpM6PkPCme+6oSPXwWSXk7qYm+GRsEuH5AGSDpVC+CZEgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NkN0i8J1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dzbG6see; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AARELo4188504
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:44:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DOiATxKxwd5pn0Fw/t5rqGl+XclLEWRPBZaWkoAss0E=; b=NkN0i8J1rdVyS0Hf
	Vb7EY8IQLn6bmGTr4ZRDA0FpM+ZLPpIa3R4KD7JOLPcUNslMq6wLqhuPHvBHzOiS
	DjGIpcZ5powOKyoDKQ1lkH9CdkYbu+obXRtu5fl1R3LctmmfVd9zeI2cYZSM16fS
	HnXDmyiwpPRYLipURPyeqZybayxAc6dDboO+kfm/PS3peLDYcOI1Qp7T1QjSLis6
	PdfH9JIM8/CqpK80fOGcdGeRkn+t7cyN8vMWzJmgDv3v6kM4BwA4aJTjJWFJx3um
	87xYWSLQJ2O4YED0JJzZvvlI4vuTon3Uxqf2wDpkr+TELI/3pmeoCJgjKtQQCYuA
	eqL12g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cthjf03x8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:44:02 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-899efdcdb70so4104456d6.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773139441; x=1773744241; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DOiATxKxwd5pn0Fw/t5rqGl+XclLEWRPBZaWkoAss0E=;
        b=dzbG6seeCT8+kgaaWPcZWoVzThcVVIen50gSzmEGWSge+D//Xi+OLaHEAeKnjzrqfU
         fyrgjlOcVF9ae+zhEYMyapBjq+623B+JH30bIWviZm0dGxYcGq/sEHMSB32b1C182pqc
         e80Koyc3vgxc0Y7rsngL3yEDtihY0k6MAmS1jdebLC6rQx7O+YHUc7eYYJHyQKqB+t1z
         N+/27VmvsJ5DdmNri2zlJOyUkMSvI1/jFSYj/VPYjZVfIWAs4AYCRQD/Q0r+7EnLBioY
         W6NF5tVIIbWaO1ysYJCLWe3V4SUrsVkGTdnKYS4kvx1W7Z0tTX0HAY+uCM0m27fo4PT2
         EvkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773139441; x=1773744241;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DOiATxKxwd5pn0Fw/t5rqGl+XclLEWRPBZaWkoAss0E=;
        b=Nl4ae/AjkBlGBaH9Jahy5wOu3Z30ztpnTtFebH6MXx5D6dCEak3a5/7xFCi8VRJLbi
         Q0TeTJ0GdPiK2Vt1HiANuxDXy8Np+8c+XEAkjbLPeVih4bU9hu8yqi5/3xwT7krk8GzD
         V7S3VU03SH8TAoNAanC9Gp59YNjbJRK4UqJsHJ2lGxI/7YE3uwduIxCSEzjRG323tHwZ
         CtPnArpO4IHHaXVF3ghvw/eIrQavYgll4a6LxKwpW9IWEfq54z5UPysoc1BB5DFag8cA
         xpORUqF8poZaz5CdTfIBS+BdBQVO+kLnEWgAaWhUiV8/f5KAc1/RnScqY1/VdPyHQXJw
         j/Ag==
X-Forwarded-Encrypted: i=1; AJvYcCVXiZm2kwpC730M9+wmF6xcYfQFjIKd3Ujapk20+LVQG9EEzWbA7+IiGBV7i4HoPzCDNasaMjF9tyMQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxlfAxPE6DIQBCF1XNqj56/CIWf+/wpskQMZW0b9NtZfqJdRz6w
	PpH6ty/zoza2NZVTNjjqT3qCCu4U3Dszptq/FccglTKxvDa4aag/OU2Ckcu8bV0+diH7AfrxVC8
	NPGZrvmrFzYzO8c3opU93mK131pqzXTdzSibuAbagL9dtNtovjvHopow5SnslUNE/
X-Gm-Gg: ATEYQzzq0dBud5mCQYG10myFAbMdCerKFAvNIvEQNlsHNF89+EYHZu5Y6jCoBee6t15
	1wo0z38wy4Bj1Uf6z5qg5hCVThzahhbmFhRQzJuWjuR+Wg21w1Uy6Qhws41a0d/fn5j/jcznLdt
	l9fidqYVXzTw4AK3X/Yo5hzdANCE/nY1IDMNkL4JRYh+kyCOZRaXED91APfyMD5/li+UH07MQLQ
	3rraYhRh1Wn8CkwxLoWpSDZA5s1elks3pQvLuPwq75qqKjfDG2BrlyJlLnQL0GTKrZlwM4KXLSM
	w9r47TxWKYJ9NIWxHcI0HOj7H/BYtiv7NcgUDwc05zmqu9DQgSqFJgOim9yT9Fw+uWiENr29IJf
	OGkgPDLlzf04gerSWoGzg6WWDHTnF0gUIM8rF2MkISxPfJHzN64xsJh5NTNViW9mQ/4GgxdsWIB
	PhY5Q=
X-Received: by 2002:a05:620a:468d:b0:8cd:923a:87a8 with SMTP id af79cd13be357-8cd923a8cdemr368967285a.1.1773139441127;
        Tue, 10 Mar 2026 03:44:01 -0700 (PDT)
X-Received: by 2002:a05:620a:468d:b0:8cd:923a:87a8 with SMTP id af79cd13be357-8cd923a8cdemr368964385a.1.1773139440618;
        Tue, 10 Mar 2026 03:44:00 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b943cca3c0asm415890766b.34.2026.03.10.03.43.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 03:43:59 -0700 (PDT)
Message-ID: <288bf404-17fe-4efe-b256-2ef76b543658@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 11:43:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/7] arm64: dts: qcom: Add Arduino Monza (VENTUNOQ) board
 support
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        Andrew Lunn <andrew+netdev@lunn.ch>
Cc: richardcochran@gmail.com, geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260309152420.1404349-5-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260309152420.1404349-5-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 4HWVTQwqHcEYrORFwqKRC7c6RRUQsjMZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5MiBTYWx0ZWRfXzxgBnFz7BRQe
 XiWft4qKzrB400s3ixn4qa8JAurLBSd32jPXbrQL2R3/Dw11MuUy0iLKRZ/93/IeWcHVMDKovCd
 5MSbbWn/izLNCpFJFAZVeV3OW9uj2fU0k8bjuunaEPJAHprjrttcvqeE9TLqHBH5kX5m+Uv5mWj
 dpDLclv7kdz+AM1N8tudIoOX+LzI810Jm7HDTfSI54F1CmRxR7j77FaINuGD5UoExOG8sCm3y0P
 VtwbYqWZAaQevfjXEWXp4tp11ZrbKPUbz5dmgd2a6ZCUoX1UqM6TBeJtF4Wb42I6xMWFxdPpCyi
 8uO7ydGPedfQgzcG8qCvvGsKGfVkY01Tsbv+5QTriR3q7Rq7G2tyykVXHpRX+E8h1qzdQcirSOa
 c6Vtv8oSRkgY1CsRQzY/5S4rowN6KSV2gNWMg1qll3LCZ6WAMaKA67h4CxtU6JP1PPG2T3Hukc8
 bEQwctWfZrnbeZCiSpQ==
X-Authority-Analysis: v=2.4 cv=A71h/qWG c=1 sm=1 tr=0 ts=69aff5f2 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=rta_p3Q9v_S9YyuTENUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: 4HWVTQwqHcEYrORFwqKRC7c6RRUQsjMZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100092
X-Rspamd-Queue-Id: 5696824996E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	TAGGED_FROM(0.00)[bounces-273455-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,1c:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 4:24 PM, Srinivas Kandagatla wrote:
> From: Loic Poulain <loic.poulain@oss.qualcomm.com>
> 
> Add device tree support for the Arduino VENTUNOQ board,
> based on the Qualcomm QCS8300 (Monaco) SoC.
> 
> The board features a Qualcomm Monza SoM and integrates various
> peripherals, including:
> - USB Type‑C connector with dual‑role support
> - ADV7535 DSI‑to‑HDMI bridge
> - MAX98091 audio codec
> - 2.5G Ethernet PHY (HSGMII)
> - PCIe0 (to onboard WiFi chipset and USB bridge)
> - PCIe1 (to M2/nvme)
> - Button (via GPIO‑keys)
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---

[...]

> +&ethernet0 {

+Andrew, could you please take a look?

Konrad

> +	phy-mode = "2500base-x";
> +	phy-handle = <&hsgmii_phy0>;
> +
> +	pinctrl-0 = <&ethernet0_default>;
> +	pinctrl-names = "default";
> +
> +	snps,mtl-rx-config = <&mtl_rx_setup>;
> +	snps,mtl-tx-config = <&mtl_tx_setup>;
> +
> +	status = "okay";
> +
> +	mdio {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		hsgmii_phy0: ethernet-phy@1c {
> +			compatible = "ethernet-phy-id004d.d101";
> +			reg = <0x1c>;
> +			reset-gpios = <&tlmm 50 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <11000>;
> +			reset-deassert-us = <70000>;
> +		};
> +	};
> +
> +	mtl_rx_setup: rx-queues-config {
> +		snps,rx-queues-to-use = <4>;
> +		snps,rx-sched-sp;
> +
> +		queue0 {
> +			snps,dcb-algorithm;
> +			snps,map-to-dma-channel = <0x0>;
> +			snps,route-up;
> +			snps,priority = <0x1>;
> +		};
> +
> +		queue1 {
> +			snps,dcb-algorithm;
> +			snps,map-to-dma-channel = <0x1>;
> +			snps,route-ptp;
> +		};
> +
> +		queue2 {
> +			snps,avb-algorithm;
> +			snps,map-to-dma-channel = <0x2>;
> +			snps,route-avcp;
> +		};
> +
> +		queue3 {
> +			snps,avb-algorithm;
> +			snps,map-to-dma-channel = <0x3>;
> +			snps,priority = <0xc>;
> +		};
> +	};
> +
> +	mtl_tx_setup: tx-queues-config {
> +		snps,tx-queues-to-use = <4>;
> +
> +		queue0 {
> +			snps,dcb-algorithm;
> +		};
> +
> +		queue1 {
> +			snps,dcb-algorithm;
> +		};
> +
> +		queue2 {
> +			snps,avb-algorithm;
> +			snps,send_slope = <0x1000>;
> +			snps,idle_slope = <0x1000>;
> +			snps,high_credit = <0x3e800>;
> +			snps,low_credit = <0xffc18000>;
> +		};
> +
> +		queue3 {
> +			snps,avb-algorithm;
> +			snps,send_slope = <0x1000>;
> +			snps,idle_slope = <0x1000>;
> +			snps,high_credit = <0x3e800>;
> +			snps,low_credit = <0xffc18000>;
> +		};
> +	};
> +};



