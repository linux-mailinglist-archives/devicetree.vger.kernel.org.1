Return-Path: <devicetree+bounces-274086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHSBL21psWnsugIAu9opvQ
	(envelope-from <devicetree+bounces-274086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:09:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D5F264284
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:09:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9D6033049C8E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CECC30BB8C;
	Wed, 11 Mar 2026 13:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AnCNtG0M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hIYWTTZx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872AD30594F
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234446; cv=none; b=JdYpLHUQ7S+wbHC/eiTIFJvhujbR3i6lDlMGr4fS1BP2aTmQ3Qg334bw1kMkhR0fEAVkxqGVGSCgc+eOAYPFp4eQJiHxw2YN61sKedYnBH09kx7jMap86ReERcAWk9Ij5oQYwLJ66i0TJFfG0aRuzqq99a82dPCs5DKr4qW4JRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234446; c=relaxed/simple;
	bh=fbjFeQKkf3We9Z0zCyJZjbfjHVJDOCBeDpY4Djg3y4o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OR6X5vUrpspXrMABg96lJ3Mq24xaC3vWN0hTOafujCLL/GW2QR63zN69uTOuQpBnLMJDTn4M4nkbjPQtJrL/3vWuzzAMTr49VT68MD5PyKHqNfYAYSBLislPc12xfsRzJDBXK9/sfIsmg3/lh12YNEVLbWkHcI5gUTgZO6DPJUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AnCNtG0M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hIYWTTZx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B7ZZND508366
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:07:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NFGqFcju/HBfaEF7ZbKNU4HnJrp9Ga0LE8bLG/xknuY=; b=AnCNtG0MHmyRgtB3
	3PMNfUOyZ2r2xET0T2DicxSvHIlN1kTzx6Zpc4SnpoXk0bH52ZFkiMxo7Tmu+vmO
	hy1eHEHmWWnG/IGyyBxEsRIS91iAnvZu0hBPjWEE/AUcaHbpoPHNBguMtzytd7Y2
	dgKLKA7nMPqtOMugOUNTR89VuLY4i3EfKFwiQyY/OyCHfB5H9DlYiT7C0EOnIlk7
	L98ycHBTxudJ0xAnqPRLluHupNd61O6sjD6JI+KDp4aBqIzPaE1dezrWc9z0dwYZ
	n0y3Pj3Oe9CYbUpBbtu6S6AFVI75f/ljkAKCHhCCuqo3z4WnHeVBIKxlSvCBoJCu
	kLTamw==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctppaky2h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:07:24 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-56b1c27e9f5so682099e0c.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773234444; x=1773839244; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NFGqFcju/HBfaEF7ZbKNU4HnJrp9Ga0LE8bLG/xknuY=;
        b=hIYWTTZx+GuEgYVa1u5bskA2fDltGXY3mxeYf157WooXozjtKbSQJcYXBztQN/IBbo
         xql71rOV3Gik6gCkv81HA3LsscmEXv1f6qIuKRPns3UCT3te2BkoJkh0eU2Gyaf030Rl
         XzjsAO3PphcfLNwKbNIMKkLqgxmycTUlKtt90T6x4U1SjZbtz1huOAbfLGIrzOEM6lth
         HFJqPSPmXE7Qduyv5imXQcLfyaxVwIbCvqGH8GN2HZylrOZnVE9xOvY5xT99JhoygNKg
         KDBnnSSLAaJ7BwUi1IChSDdbjfsq5szobUYp/DaS3pkpHqEGE959Hix/d72HMACbS/W5
         z8hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773234444; x=1773839244;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NFGqFcju/HBfaEF7ZbKNU4HnJrp9Ga0LE8bLG/xknuY=;
        b=j2aok7eBr6JJBC/mEDXvVX73zGaEKyb5UGgUYmQF+9AYHh+ubRsfDR7kqly8v6HmW3
         hObmc6TdjAKr1MBkk0GtBHZ0vlkcdBpyMs15Il2rKtpQAYON71Vx81lpfEi1xYM793X0
         rXkmB/MFQY9gtmAt5d8p+o86M7nKepIIoKR0TAp+DzKk1wUCooGknMHPMeNzrhBGbBlo
         gK0+u7uXlE0c8+MVN4YGizn7ZaZ4FcJjXH0dz0tMrtJltWnN4DY16saLcS/9q9V5BAA0
         xAM/3Y5lK/kgOpgrImDJ1oNBG8TWNqf8TIcUoEInIdvvEU1AYlv3OeTJ0XyUfxE5bldX
         mWSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEPeR/6Bgfktl33FhtR+ZLu9q9kP+HRDBFitFe0FjAq9gezMgWsQEmPTpGB5UKo6mmid1uFYUDd3Yx@vger.kernel.org
X-Gm-Message-State: AOJu0YyS/WD9magtr6uipfLlHRJLYegcrwu0E6h4vwFJmvlSAaO6erkW
	PRCswRv0Ue05CQWtA3JJHKJ5vr7gjc8wR+tz4I8Mk19eXVcyApJlaPOo5LrRzqVN42DbWmQqKub
	VMasQS9Vfmy3E6t7Q5YWE39oL1T6EuNbTQ3B8E2r1mPTwRHTmgXscd33kqwmqwG8f
X-Gm-Gg: ATEYQzyymz6UJxrCE0qOBDvnzQ5mz49W5fmbOUvRnPByij/WqIKbvfMhKE7K99XNbnE
	4E3UJbPtLiP6qpvybh1frTo5MeMlu2uoZ6uRTGUGTlUhL+WwhP3Cko1capeDiTVJneSN66Oju3H
	/e4fJcFRjW9QZNs3TNB2gavQTDwhME0vUYOErXQ273PFqjVl/RD4rYchPokoN4TTVPis+ApjXEa
	hAiOxlExmrAjKeZ3bXp+4QkmMSFqesFHApk3Dtzq5wYmO2kdISFgJ5NiDPE6rJJns/L2r4WnikA
	24Mskdxa0CZaq5LRim2ggmjVYvyLNyEabGNjWa5rmWeJN0pOkG3DeGuQQ7aOC2IjDVQkEX2Z7UK
	HFG9j39LtkQYb62gndTs1tTTOdwGcmqhWcA0oU5ioL05mtOjVW0ra7LAdOiq9obfiNUtHgEMKzF
	BiHIE=
X-Received: by 2002:a05:6102:94d:b0:5e1:8746:85ed with SMTP id ada2fe7eead31-601def8bf46mr421413137.4.1773234443755;
        Wed, 11 Mar 2026 06:07:23 -0700 (PDT)
X-Received: by 2002:a05:6102:94d:b0:5e1:8746:85ed with SMTP id ada2fe7eead31-601def8bf46mr421391137.4.1773234443277;
        Wed, 11 Mar 2026 06:07:23 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6631448605fsm521124a12.12.2026.03.11.06.07.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:07:21 -0700 (PDT)
Message-ID: <cffdb8ab-a293-4535-860c-378a4b8a3d33@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:07:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: hamoa-iot-evk: support Bluetooth
 over both USB and UART
To: Shuai Zhang <shuai.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        cheng.jiang@oss.qualcomm.com, quic_chezhou@quicinc.com,
        wei.deng@oss.qualcomm.com, jinwang.li@oss.qualcomm.com,
        mengshi.wu@oss.qualcomm.com
References: <20260311090921.1892191-1-shuai.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311090921.1892191-1-shuai.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Q0ot4_Ew0Q3UAy66DbKovdF4bF9FVqXW
X-Authority-Analysis: v=2.4 cv=D7BK6/Rj c=1 sm=1 tr=0 ts=69b1690c cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=BgJLFjmsKqNP7uD8e2MA:9 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExMSBTYWx0ZWRfX0cikmqAKFCZb
 80M3Frr+Cce01sltbdaHvyKuWd8Czk9utTCKMwuvOMkRiOjDdW+lWtlVONFWqEfYxv50jH1Dozo
 UhS7uWfX8OuApQns9nZyDk/fqATRI2+4Ny2mWwjhkaDIJb70q3k0c2udk3DYQVPR3UldQdif3fF
 lA0j7gPrjJIJayx89JdJ7UrpB7r1dVwY9qzHmVq82TSXCGaZRgNU/iqQN9O68y2kberhAyP6y4x
 /cco1bmEG10mMdCgpu1+B84hy1cQDf28ikBqYcVNRuXSmJuTRvJvhrh4DwZAeHdvAPI8CyeEv8Z
 HX7AYoHUdUOShfiz++HDaVwuVQI5XYgo1KlNnDxWQjNTBSJXxNcMA9rkHNw42b8+jjsGTs6Hfli
 YZRRZWG/XnbalR6m+BBW+UoY0BxJMq93mdqrmO+EKVi8aC330Q2Qhy3ndzc9YMQ+Y8yy9YDuSO1
 a328X0Qly4hmTw+lRVQ==
X-Proofpoint-ORIG-GUID: Q0ot4_Ew0Q3UAy66DbKovdF4bF9FVqXW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110111
X-Rspamd-Queue-Id: 65D5F264284
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-274086-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/11/26 10:09 AM, Shuai Zhang wrote:
> When Bluetooth supports both USB and UART, the BT UART driver is
> always loaded, while USB is hot-pluggable. As a result, when Bluetooth
> is used over USB, the UART driver still be probed and drive BT_EN low,
> which causes the Bluetooth device on USB to be disconnected.

Is bluetooth connected over UART *and* USB simultaneously?

> Configure BT_EN as a GPIO hog so that it is controlled by the platform

What's "the platform"?

> instead of the UART driver, preventing BT over USB from being
> unintentionally powered down.
> 
> Signed-off-by: Shuai Zhang <shuai.zhang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> index 630642baa435..60a0b3ecbc1b 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> @@ -647,10 +647,9 @@ wcn7850-pmu {
>  		vddrfa1p2-supply = <&vreg_wcn_1p9>;
>  		vddrfa1p8-supply = <&vreg_wcn_1p9>;
>  
> -		bt-enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;

What if I want to power down Bluetooth now?

>  		wlan-enable-gpios = <&tlmm 117 GPIO_ACTIVE_HIGH>;
>  
> -		pinctrl-0 = <&wcn_bt_en>, <&wcn_wlan_en>;
> +		pinctrl-0 = <&wcn_wlan_en>;
>  		pinctrl-names = "default";
>  
>  		regulators {
> @@ -1398,11 +1397,12 @@ wcd_default: wcd-reset-n-active-state {
>  		output-low;
>  	};
>  
> -	wcn_bt_en: wcn-bt-en-state {
> -		pins = "gpio116";
> -		function = "gpio";
> -		drive-strength = <2>;
> -		bias-disable;
> +	wcn_bt_en_hog: wcn-bt-en-state-hog {

This name is illegal (make CHECK_DTBS=1 qcom/hamoa-iot-evk.dtb)

> +		gpio-hog;
> +		gpios = <116 GPIO_ACTIVE_HIGH>;
> +		output-high;
> +		input-disable;

This property is not allowed for TLMM pins

> +		link-name = "BT_EN";

This property doesn't exist

Konrad

