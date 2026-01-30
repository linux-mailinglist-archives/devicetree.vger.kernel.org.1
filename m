Return-Path: <devicetree+bounces-261169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFnWJ9GNfGkBNwIAu9opvQ
	(envelope-from <devicetree+bounces-261169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:54:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E43C2B99EC
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:54:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9AC7C30143D9
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C94D4374169;
	Fri, 30 Jan 2026 10:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YRYv+qJ0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ib8QKYb1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728F536920E
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769770396; cv=none; b=p7951pDVaklsSoa5aNTuJGTCey7gyicZ8bZy6lZJ1qyazAy7+741OAvKg80K/WvtUC/2NcQs6/Ab/8o7TIDeDA574BFOqNBCnXQqacxcd2YIzS6FFAdu7BR1LyWWQXQHTI/x8BvEECBF18WaGJXcQT2hqu/ZK0frzsOSgIWoawU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769770396; c=relaxed/simple;
	bh=cOXTKoNWUgye4LyeYc31QCfkRcoUwN8GOnZOTv5rysQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sd/zTvesdg1vJaPRfpVVuO8hZgwqinHUWl50fy569ntLh9TKNXU8o6jL37ZgPOMxBJjYJgBoFvO2r+T4ytMn4uwu/xYB2K+WqU8FW/dIbGZZ3yXrtncv3DfO64KuKet+UUtk/cWBkiJ3/OXGgRufAik+d0x2eNW8fABRrVddTXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YRYv+qJ0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ib8QKYb1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U3VqA02993780
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:53:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C1HP+PUS0XqDz8A8z7e/OWGq4Syxb0euN59n+MLEdIg=; b=YRYv+qJ0TAY0dXv/
	SO4sBYGrsDNUMlVL3WdOz//QVPfIXevc4MYNGOOQxnzCG2w5H0B1EMsS8JFXEZSU
	WOYcXte3iE5WFOXWnmZA9BhiqtOxUFKkk11D7WB2n50lKXykR/v8tYYwK2ER7iyw
	R9E/7LUQKEKWLPi0QwlvN2A+J8qoGH2Ye8DXxzUUM2CBM42FJX6KL6nTgPlLZ2k0
	7Bgz0MRESog4E9tYquMnKrJH2yqeaDnLEXY+xR84wl5b44nEQBPUpcIuofAllaNL
	9lEonA9x4rzaWPtsFgGAKX1eYb/D4EFEPLs1CbaUZ4FQ2i5aqBZTWWex3pPKqcag
	XOcQbw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0db1jh3r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:53:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c533f07450so14813885a.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769770393; x=1770375193; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C1HP+PUS0XqDz8A8z7e/OWGq4Syxb0euN59n+MLEdIg=;
        b=Ib8QKYb1tdUPOPr5YgQPlb+D8xcWpna102bUKaVxAmBhK76nZIHiOM4pKc1iBGeZDW
         LdhDWAuZ6723cvNdTsJHR7+fcvUVOQe8F5Ta8s/ThsQa1RpF9+v95AGSeNau1rAgxOM2
         ee+C2QCzJqdBgqZfLfYSvY7RcR78dUxEumgvzq7e7KmXgLlLDdq0z4Q6jzliHBGMOzAU
         eeWM+GpWo+47BCs6SgDV6Vv9sG0HsnDY2A3kUAkuHTQbAQOOZFoUIa4KSA1jF0MGZ0Xh
         rQk54obOh33UuUVX2m3S9QVLItqZzvCFFlKNLVcSrG+CpC1SuaZX8i0eEWH2gYhki1MU
         oUIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769770393; x=1770375193;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C1HP+PUS0XqDz8A8z7e/OWGq4Syxb0euN59n+MLEdIg=;
        b=lv1HtmqYLjigewpr1BVv6ITmaoKug7NH6qLYl+rRsXKwI/ZGhE4dJT+5R6jOJg3bkU
         7G/zNYS1YfoGoUosPJE5HB5auxWyruvUHVdLe2hnjC85bnMGaDOX2um0MWKYSfjoxLSq
         V6JW2bvVQN1qBgp4DvVNCoj583LkSmdra0PETP4FtojOejA/SBWPRgHsUQwBau/PsmVZ
         u3nLSu0I2yFBWUHowEF1yJH6IUnL/Q8lbBVv/USud+dcadJCV3Pn6GMIpDdv42QXBEuy
         3IG96w/u8ErWi7YlulD1y/5YEhf/pVPcgWHQuViapzd76W7yX81DszenBwSNPgovJyJk
         kLYw==
X-Forwarded-Encrypted: i=1; AJvYcCVW15+TimmOJQhdG+fJ9gnnHp+WYbdfsJoR0eK+ArvEPFTxUymgH4e87t3vkdyTHAgxcWUU9uXCWI0E@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0rEXzgjzU5J3+nUeAcAW4r4dBWJ5gK/g10DT/6qWN+EDs3Jtq
	KLr+af4CgLvMSdOIwoVs0j2e8IPaE94+z0J0Xh2ocnz6fzZKdLf8viB0O16hVv0jp/SfkbmScbL
	4fRGDcbtxqu7G6xaB/P2xthH8CUYd43W9svyy8JBthkMT5fMgkDKWkxxmZZ6tA8cN
X-Gm-Gg: AZuq6aK+StxNzyITmRVU5XFXTUmbjVCkOyvE/PiC9wLTF3KbTF0hvIXsopNkSZIjoEE
	e685PIgPaexJRgeKDvxL8hS7qK/RG5gfQmLCNgU14kkTroHd0UVWgs5Ib52niZNdqu5v+B4eU9d
	IoPsMlXcvRgpRvtOXK1jRk36m4NUsgPbGEidG0XQ2LarNCeNv7UtNPAqIx0dgeyrZD771mjlyql
	i9WQQcwU8N3A/fhJXIrfe3Iq9ICvlZtHqCbrp0Da8zHzekGLcwkx2EO7JQunYDu1Nh/2q+QuW3X
	fUoirqJ8w0U3+ZXrBHoDygRU1cP/35rsuClitP1u9Mb2IS493bCWlYV9j+ZDU74uPQ4kib+Ebmf
	kcIQh0WCPlSiWgc4ylUtKlG9dPQQLXsTS1AJPgjJxaDuzAkwZjjav+z2Xk+4SnfHDF8A=
X-Received: by 2002:a05:620a:17a8:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8c9eb265cedmr268607285a.1.1769770393563;
        Fri, 30 Jan 2026 02:53:13 -0800 (PST)
X-Received: by 2002:a05:620a:17a8:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8c9eb265cedmr268606085a.1.1769770393046;
        Fri, 30 Jan 2026 02:53:13 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1c0213sm406769266b.48.2026.01.30.02.53.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 02:53:11 -0800 (PST)
Message-ID: <8ec07e5b-b83c-4e76-a49a-933420ab55d5@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 11:53:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: lemans-evk: Add Mezzanine
To: Umang Chheda <umang.chheda@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, richardcochran@gmail.com,
        Andrew Lunn <andrew@lunn.ch>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
References: <20260129172850.1175728-1-umang.chheda@oss.qualcomm.com>
 <20260129172850.1175728-2-umang.chheda@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260129172850.1175728-2-umang.chheda@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: LvVVjYY3t0hp-Xbk7HIlaIFrrOEPLgZS
X-Proofpoint-GUID: LvVVjYY3t0hp-Xbk7HIlaIFrrOEPLgZS
X-Authority-Analysis: v=2.4 cv=VMTQXtPX c=1 sm=1 tr=0 ts=697c8d9a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=2ybyCHOLog1-fLgjBY0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA4OCBTYWx0ZWRfXyCrPXWgxXIV4
 HgVq24DLb07z9wb4K2UiyYkQ4jUEdkCyd8SbIqCHnCNmVGYacs6JNyS3rYs96qRu+TIPgm8T84b
 eeg1x3+T2t1jXqdqz7c0O+j4POvzbDbZjvKaqNja8bOzwlqINykGT91UJ3LTvhDx2rHjcWCl0zB
 U5iiWomxlt/YueSjbVAAjIqVpYbrnx0OTwzAmMzZbq6hE/wG8q4v7D1FXYoAD+SxLV5UmLLHhT5
 uMpbiJHURRx9uVTKksqJo4XisL5+roUEhXte8cGNPrS8I3Om/pq0UCssOmkghkCjBUNpexFAt38
 uewo6MgE2fnaXfcB1UrqEVcabV9z6KT5T7L0sfHVcmXedQBrDb/IEzgHX938g+/PNfO3R4G1LH9
 msWLJNlLKE5LGGWaw4kVJFfqZA8ZGPk09oNlm28laAQGf03haIyEKWAiXTW0FSZIHKiUEdCFFou
 BpTDxkjW3oTB60+s8dQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 suspectscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261169-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,lunn.ch];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.2:email,0.0.0.0:email,qualcomm.com:dkim,0.0.0.1:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.18:email,0.0.0.52:email,0.0.0.3:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E43C2B99EC
X-Rspamd-Action: no action

On 1/29/26 6:28 PM, Umang Chheda wrote:
> The Mezzanine is an hardware expansion add-on board designed
> to be stacked on top of Lemans EVK.

[...]

> +&ethernet1 {
> +	phy-handle = <&hsgmii_phy1>;
> +	phy-mode = "2500base-x";

+Andrew could you please take a look at the eth setup?

Konrad

> +
> +	pinctrl-0 = <&ethernet1_default>;
> +	pinctrl-names = "default";
> +
> +	snps,mtl-rx-config = <&mtl_rx_setup1>;
> +	snps,mtl-tx-config = <&mtl_tx_setup1>;
> +
> +	nvmem-cells = <&mac_addr1>;
> +	nvmem-cell-names = "mac-address";
> +
> +	status = "okay";
> +
> +	mdio {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		hsgmii_phy1: ethernet-phy@18 {
> +			compatible = "ethernet-phy-id004d.d101";
> +			reg = <0x18>;
> +			reset-gpios = <&pmm8654au_2_gpios 9 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <11000>;
> +			reset-deassert-us = <70000>;
> +		};
> +	};
> +
> +	mtl_rx_setup1: rx-queues-config {
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
> +	mtl_tx_setup1: tx-queues-config {
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
> +
> +&i2c18 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	eeprom@52 {
> +		compatible = "giantec,gt24c256c", "atmel,24c256";
> +		reg = <0x52>;
> +		pagesize = <64>;
> +
> +		nvmem-layout {
> +			compatible = "fixed-layout";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			mac_addr1: mac-addr@0 {
> +				reg = <0x0 0x6>;
> +			};
> +		};
> +	};
> +};
> +
> +&pcie0 {
> +	iommu-map = <0x0 &pcie_smmu 0x0 0x1>,
> +		    <0x100 &pcie_smmu 0x1 0x1>,
> +		    <0x208 &pcie_smmu 0x2 0x1>,
> +		    <0x210 &pcie_smmu 0x3 0x1>,
> +		    <0x218 &pcie_smmu 0x4 0x1>,
> +		    <0x300 &pcie_smmu 0x5 0x1>,
> +		    <0x400 &pcie_smmu 0x6 0x1>,
> +		    <0x500 &pcie_smmu 0x7 0x1>,
> +		    <0x501 &pcie_smmu 0x8 0x1>;
> +};
> +
> +&pcieport0 {
> +	#address-cells = <3>;
> +	#size-cells = <2>;
> +
> +	pcie@0,0 {
> +		compatible = "pci1179,0623";
> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +
> +		device_type = "pci";
> +		ranges;
> +		bus-range = <0x2 0xff>;
> +
> +		vddc-supply = <&vreg_0p9>;
> +		vdd18-supply = <&vreg_1p8>;
> +		vdd09-supply = <&vreg_0p9>;
> +		vddio1-supply = <&vreg_1p8>;
> +		vddio2-supply = <&vreg_1p8>;
> +		vddio18-supply = <&vreg_1p8>;
> +
> +		i2c-parent = <&i2c18 0x77>;
> +
> +		resx-gpios = <&tlmm 140 GPIO_ACTIVE_LOW>;
> +
> +		pinctrl-0 = <&tc9563_resx_n>;
> +		pinctrl-names = "default";
> +
> +		pcie@1,0 {
> +			reg = <0x20800 0x0 0x0 0x0 0x0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			device_type = "pci";
> +			ranges;
> +			bus-range = <0x3 0xff>;
> +		};
> +
> +		pcie@2,0 {
> +			reg = <0x21000 0x0 0x0 0x0 0x0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			device_type = "pci";
> +			ranges;
> +			bus-range = <0x4 0xff>;
> +		};
> +
> +		pcie@3,0 {
> +			reg = <0x21800 0x0 0x0 0x0 0x0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			ranges;
> +			bus-range = <0x5 0xff>;
> +
> +			pci@0,0 {
> +				reg = <0x50000 0x0 0x0 0x0 0x0>;
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				device_type = "pci";
> +				ranges;
> +			};
> +
> +			pci@0,1 {
> +				reg = <0x50100 0x0 0x0 0x0 0x0>;
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				device_type = "pci";
> +				ranges;
> +			};
> +		};
> +	};
> +};
> +
> +&serdes1 {
> +	phy-supply = <&vreg_l5a>;
> +
> +	status = "okay";
> +};
> +
> +&tlmm {
> +	ethernet1_default: ethernet1-default-state {
> +		ethernet1_mdc: ethernet1-mdc-pins {
> +			pins = "gpio20";
> +			function = "emac1_mdc";
> +			drive-strength = <16>;
> +			bias-pull-up;
> +		};
> +
> +		ethernet1_mdio: ethernet1-mdio-pins {
> +			pins = "gpio21";
> +			function = "emac1_mdio";
> +			drive-strength = <16>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	tc9563_resx_n: tc9563-resx-state {
> +		pins = "gpio140";
> +		function = "gpio";
> +
> +		bias-disable;
> +		input-disable;
> +		output-enable;
> +		power-source = <0>;
> +	};
> +};
> --
> 2.34.1
> 
> 

