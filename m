Return-Path: <devicetree+bounces-274079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAzMEOJnsWnsugIAu9opvQ
	(envelope-from <devicetree+bounces-274079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:02:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B412264103
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8EDA5300B461
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B122D877B;
	Wed, 11 Mar 2026 13:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ksKYSHzQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W+dtuBb6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8660240DFD5
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234112; cv=none; b=ndG9lV6xJL4kZTtamv6IpA+5ugblJupCghL+oVUR5t2BapXkpxABTb7qXDlbZ/PdHppKaB3Ulu99lBuDfB0mEEbJxN/aXJ5bWecRgaDrdSiVZ1mJdWjWFkBZ5imNuS0/s4n0i7f3VtqDRbB5+fVbS9JQAUff0+33jo+wlGaNE/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234112; c=relaxed/simple;
	bh=w3DdBqnwYzlppHJlA0FKUqhcUqEniEi+aCNpmhpnk/Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a5GKggacgbE39BA544wGWF8yF+JWd6CsQqW6TGw8Zo0Bz0tDZl6UQJ3YxAXiJkxSu4AND52MnEJLf0I9nMhJlrU7uXpfCQzzTyoBEtsZTEmEpw5+NRglbMUWwXJ0Vym9t9En1fTAidc4VDecaAuR2eK9AA2+vhMqNRDp7AgAoQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ksKYSHzQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W+dtuBb6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B9EXhV1573138
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:01:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WXcLvHbkZw0uXVaZr0o1vWk4BkeOU64L8yo+XGnvNBE=; b=ksKYSHzQ3430mJLW
	24gLPMOMJuhdnhQqN+ZLprglRvOIqbSetPAYh0jznUcwwoNm6LTMYPn2mEH4rBMl
	sjUg3vdeElCRgRXiTHmWq7Lj/5NfST7wTETyr34xKIUGMvg8w4tJbu7LFqV2uq+A
	yyOi52tFqO9Nr+e/6z8f2p/AgU7Ff2GkbR+XGOhe6PJlrkD9+P0ZGjei9ytJkuqw
	yZYaKF0aPTXObYlKAHtamWRSMSy4t6pVqS8KsVTP6vcMi5+rTY+arLLBCGY2JOTY
	RcJ6fMGSW4NJ2iNot9v2hfWhcUWrltaoiaSjXupPNzk05IADSXbBwrVN9XmgkRW+
	fBEgdg==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqgkbnqa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:01:49 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-4173d956b60so3852451fac.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773234108; x=1773838908; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WXcLvHbkZw0uXVaZr0o1vWk4BkeOU64L8yo+XGnvNBE=;
        b=W+dtuBb6j1HlB/YM1N+JVCnRK01ZvwYXeIclZKnT5iOO9sjvMbLFR4jvUCwOffO4ys
         W/wiUtmvlQm6sUNW3DEoMxDkDeaC8X885MpA7AtiI203m0fvbILW7OMHerNFZ+GMfpy5
         yLo+XFD1imEA5eW+MCix9wvRwLL95f/geDIV2pOY0IMaqMTd7jUPxvAfA7AmRgElF7OF
         ktm1amNSELIKHGabR/y/KKkCV2HBA4guBUMqxIiLJrD4J4SmDPl4wCf0gL61xfu2N6XB
         D5DXeWdZYk2fnzv6PD4AoOHkmyPhr6A805inPXFNuONLefrLkisCN6d0Fuh8aLyWh5tq
         HNVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773234108; x=1773838908;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WXcLvHbkZw0uXVaZr0o1vWk4BkeOU64L8yo+XGnvNBE=;
        b=FuQC1XU72sxKdXu5dxr4kk1m/E4hSRYe/MneENKp5FZ5+SVwqiENUKwaSCbtjAOhRr
         kqkrB30Yaky6ys8TnXJIabp0yctCNYWqgBRAHk9/dNlcV0n4ZyC3TXrgr1I25sNyAxcW
         ijtX5PvXllcaucPn7nDhCcPJ6HaFBHu8BExLk6bfru8EpQUQ8rGewHyY8zD0IauOATNN
         c/oJjkbcaymiQdw9r2Wmxa0/KotrLgJ0vCvntHSGnHfExG/1ChcysWpspYo4YdmLmIGZ
         E0B0omGpz+NFMC/pLLQZYzR0groFG7/nnWMLkpNaPFjTBJSni7Hwo/ofmqB1hDGEJeEp
         tgzA==
X-Forwarded-Encrypted: i=1; AJvYcCVW+FHHa78M4Y5vZ3PdBdGiEjuhceCMuD/4VeRto9AVClD4UE7bv9WAXAycfvA8n9tSGIRk5hj/wfkW@vger.kernel.org
X-Gm-Message-State: AOJu0YxpBTOvTnVzRZyq70RfsLL8zuVpbYSHk/k8SShcA1GGnYpHg2P9
	HvTjZtSscFzL1AVBDTkx6Tw1ZMPgRKmM9YQl/sCVCOQ54ZhCleoCmD4V65lvpNJKVVqs28eoMzF
	x2q1gvBCDyRyQFRxrLap/ywb2bgXXZ8u9Y0N92S1AOBaVPeTSuIblUMQ5sv8HYUpp
X-Gm-Gg: ATEYQzzdq669dGkgq/pctCZxmzJlOURwueDPxZKc0mPR4yQQ7WMfSOY9njwEhU42ti2
	H8WNa6OrXyCOoNDAo3E6HTzjQXv4T5DlfDirYW+U5aUOpAAqWY5bToUECdVg/bifIP0309dSjop
	kCC8gLPzAXFiEkHJbgYToF4amzYM1nj+BY6vZfUotPOskXWGepkTq5wiVJZenbS2JGRUbt5V6ES
	ECnKQ4dNREM26qiseLdRugpsbq2NnBro72M+SpSwFaJ1UKr5SXFnE8NwgULQELSlBHB9g26UhRh
	R3vtX1WA+R/IeQvdX9FPFEqMOQ8oIoSykgq8ZfWoLeLXXscPzpfu5exSjEnSJg1QF2cImIPQmym
	DucIimj/suWCFjxhifAjwnUy4vRXCFTSbGgSVpFnvXmpJ1XIFBdJLMm91t0wDl8LQwUGBFT2cQC
	VWBbA=
X-Received: by 2002:a05:6870:a199:b0:408:a779:41a7 with SMTP id 586e51a60fabf-4177c9fd737mr1130455fac.7.1773234108106;
        Wed, 11 Mar 2026 06:01:48 -0700 (PDT)
X-Received: by 2002:a05:6870:a199:b0:408:a779:41a7 with SMTP id 586e51a60fabf-4177c9fd737mr1130324fac.7.1773234105957;
        Wed, 11 Mar 2026 06:01:45 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6631532db0dsm524054a12.32.2026.03.11.06.01.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:01:44 -0700 (PDT)
Message-ID: <5304144a-0907-4b7e-8c65-d0d37e74e9f8@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:01:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/2] usb: typec: qcom: Add support for shared USBIN
 VBUS detection
To: Alexander Koskovich <AKoskovich@pm.me>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me>
 <20260308-qcom-typec-shared-vbus-v1-2-7d574b91052a@pm.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260308-qcom-typec-shared-vbus-v1-2-7d574b91052a@pm.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fPOPpHsIC06lULZgGwdW7KLy1kSPIHWD
X-Proofpoint-ORIG-GUID: fPOPpHsIC06lULZgGwdW7KLy1kSPIHWD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExMCBTYWx0ZWRfX5VCGcLtH3mNN
 vMMKK84N5FWl4zs3Ax1RLKRcmblRfWIVKokdEwG3PQBQ93sEW9/FiGCBotCRlZcMVCcJQ1HsfkL
 8JlRKwKh1+hFpOigJZEfEpdOrE9rLEa0mR+kT7m/xhD3ihmtL/UKleycFCrwLh0r3Dz8Xb8TO9+
 Afn0X4ivx2uyXHwcu4rBzWdWwmDJ/hxHjvER0DBQmrgWbs+QWhyNA85jRa/GMuJ36ENI9o7kWQ8
 GasakpU64caZmMMC+WjQYao8MwWIDpPzvY6Na92El7AKqC9C3TNA2hVtdqjQ+cr/SCdKdhaokjB
 DMXaLg5rYiIe4AEkOOq472G8aWy5FptTt+4WlFW+uDfE053I6BjJFgGARCasD5iCqb6j0nPIRlz
 uP3af9LQNpnIr03wBjiBSjKAlTue+x8y/a8YTiS+g53wxOCXWExHZgMo3war+5wwX9dC/sRHcjj
 Wq/3Zx90yqcyyEouY+Q==
X-Authority-Analysis: v=2.4 cv=M4JA6iws c=1 sm=1 tr=0 ts=69b167bd cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=A_zI2UM3U9TYkvnQF4QA:9 a=QEXdDO2ut3YA:10 a=eBU8X_Hb5SQ8N-bgNfv4:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110110
X-Rspamd-Queue-Id: 4B412264103
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,pm.me:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274079-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 12:20 AM, Alexander Koskovich wrote:
> On devices with multiple USB-C ports whose VBUS lines are wired to a
> single shared USBIN input on the PM8150B PMIC (e.g. ASUS ROG Phone 3), the
> Type-C port controller cannot distinguish which port is providing VBUS.
> 
> In practice this shows up as being unable to use the affected Type-C port
> while the other port is connected to a device providing VBUS such as a PC
> or charger.
> 
> Add support for an optional vbus-detect-gpios property that allows the
> Type-C port controller to read VBUS state from a per-port GPIO instead of
> the shared USBIN input. When present, the driver also bypasses VSAFE0V
> checks and switches DRP toggling to TRY_SRC to avoid false source
> detection caused by VBUS present on USBIN from another port.
> 
> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
> ---

[...]

> +	if (pmic_typec_port->vbus_detect_gpio) {
> +		vbus = gpiod_get_value_cansleep(pmic_typec_port->vbus_detect_gpio);
> +		return vbus;

"return gpiod_..."

[...]

> +	/*
> +	 * On devices with multiple USB-C ports sharing USBIN, bypass
> +	 * VSAFE0V so SRC attachment can complete despite VBUS being
> +	 * present on USBIN from another port.
> +	 */
> +	if (pmic_typec_port->vbus_detect_gpio) {
> +		ret = regmap_update_bits(pmic_typec_port->regmap,
> +					 pmic_typec_port->base + TYPEC_EXIT_STATE_CFG_REG,
> +					 BYPASS_VSAFE0V_DURING_ROLE_SWAP,
> +					 BYPASS_VSAFE0V_DURING_ROLE_SWAP);

regmap_set_bits()



> +		if (ret)
> +			goto done;
> +	}
> +
>  	pmic_typec_port->tcpm_port = tcpm_port;
>  
>  	for (i = 0; i < pmic_typec_port->nr_irqs; i++)
> @@ -724,6 +760,12 @@ int qcom_pmic_typec_port_probe(struct platform_device *pdev,
>  	if (IS_ERR(pmic_typec_port->vdd_vbus))
>  		return PTR_ERR(pmic_typec_port->vdd_vbus);
>  
> +	pmic_typec_port->vbus_detect_gpio = devm_gpiod_get_optional(dev, "vbus-detect",
> +								 GPIOD_IN);

I thought the intent here was to have 2 GPIOs, one per port - could
you please shed some light on this?

Konrad

