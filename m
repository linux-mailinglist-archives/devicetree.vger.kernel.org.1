Return-Path: <devicetree+bounces-277695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KPpCm/Ru2k4owIAu9opvQ
	(envelope-from <devicetree+bounces-277695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:35:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F5B2C98BD
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:35:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CC99302C5F3
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CAC6352927;
	Thu, 19 Mar 2026 10:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W6Obaquz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QIdHoE1h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49C23C2772
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773916503; cv=none; b=LG6b9SSffD2G14zbXpvLbrU1DRB7wU3ygCrOCEAhM39u5yJBW9nSsJc26gdDMh6UGzLzF6ovUC6hDMI2GLZXKyV7bUAXjJmful3Dj++v5MeyCR558yfcqNtEZUfyyLmW6K4zuqxZN1vJylC9HLSuw+g5E5S9Uw3GRizZNHdYTxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773916503; c=relaxed/simple;
	bh=hAWjeG+NsPQursv7HB44cYhVWfuO9vlvMjswBd0DeMY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H+trnW4HqXOt9mwHlFKhQiManaTpfWgTnRAuwiTWit2JTstBH2KZRx4i82jFyzhttwWpspAy/XjPJN1lEzrLW9WYxoOEfjJmUneyPPV9bz94qZtTB9xGEP4eLOYvBlEeCEXLInh+YmLpXLQI2LzHFH3LCTj/A9WIQ/JHHRbYxbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W6Obaquz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QIdHoE1h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73vCp3771099
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:35:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dN1EVu/JbF8IkdV0IBCP32D0+7BYZp0d98zQyiRhmWU=; b=W6ObaquzrkpXwG8w
	ZxxbaPsjH1ndCM94kiTk4eo8cUZ1hypd0js4Nv8APJ14lcCpVfandQsCktlh2t9T
	pJs/BTKkO75RfUkNWPtR5NwnM17rZrM6hv8LgfhQohv07aZePUVhGtZwSvjFa9IZ
	elRXiZEY0SiQ9FT3xuLpfy2M2A0EgQSpj4q8ruTX5IzAFIEXMrIZpNplMRlINmVS
	LhDeYA4NDKIGUsRguzfd9RPO2Oe22L3DOmk88u/uxboSG7M0KIJDIgFyHRi6COOK
	9IEKaHODpUUb/P38hfxXzCBDClrrajbKfF0caFfgfPqaKP/duomiwNigtSHU9R9q
	PTpnnA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d083r9d77-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:34:59 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50b27636835so6296221cf.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773916499; x=1774521299; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dN1EVu/JbF8IkdV0IBCP32D0+7BYZp0d98zQyiRhmWU=;
        b=QIdHoE1h016maJZbTABK5UOUSvpm8mxKJwns5lnh2JCh5aX4wClPTk359xLLJRaUyX
         EVXAr6PF3DdG3yX843kd3AS/k/tE23LJ9qaXHcXk/tlwT2A3EUdV5WhSzgP9J+hjHvig
         tSHirR0qUJCX0tC8ONX/T4MBkvQ8uipHQChf8W4VWk3HmlSxGDQaAQtRlws+ZUjx1iyj
         H2+hik2/+NOmhJBunH9nY1dWpGKP5bGR88MwaJMFLJ2jH7B7UYLM1jXP/RIMpAVoDaIw
         nROhF0wPDVI/6P3DFQ2zhIHp5cwGN5K3wUlL/IZeiBqC/A0Xdu7M/XVwzOEH8MjJnfEF
         QGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773916499; x=1774521299;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dN1EVu/JbF8IkdV0IBCP32D0+7BYZp0d98zQyiRhmWU=;
        b=U3Pofq7eBhmHn7rIVtBAor2bPnJNkNdTBeUs8xZ+Z4ky8bf/JzcHTY0i1ovAiCnoiU
         EaFzcij7F6UpSup/o645362Rrcl7K/JVxabuLisGJfKtS3SsVw4wYzHDTGNLuBHDQ9Xr
         4KW+SGG1XarbkNJnt7892gOaCKxO/2vcJ9DeeYrF67bHEutSY/01vsY0yZpcJ0TWvcdW
         J/zAhg1NmB9dM38f1wir2LvfeqlYATdlaeWxPMgOEo7yu1SNWAVfCG9UPipE8WTOsCHS
         U28Vnwr5jmqNkivUq9VKvRbPqjgAeM9feulOyAwVVn6yyJiezuCXuUE8S+IyyKJQZeql
         aulA==
X-Forwarded-Encrypted: i=1; AJvYcCW5GPYGNaK6YAWYkG8DKVKDxdXKVdcYNbB16+LM5NFYBNXyDr9w10IEL9Ss+3hcXPL5u8a1ay8yV608@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo9EntQtv8/YG55mCdj8jXFlwJ50R6cbXr2jOvLzgXlTvOe7Tz
	dEmXGexbfBSuLU7X4OKuYMiedmsooJUNxvwpTp44W4ocg4uMobKv9msne2wBnsnqctiAveOt1bQ
	aqbRwMpBgR93N/HGv+6hk07Z6h+btEDNklP1tnZWrJXYaoiPVqaXoTQDV1XRDjtsB
X-Gm-Gg: ATEYQzxC1L8Yq9HDjjm1A+s5Vg6xPMXxDLGO8KxghCgOEdnLSp96N7/lL+8xPxjFF2i
	Jhtx+7W5C2yHv+ckQVtaA6q9bjgljMbmbibUP/n1oUOj9BW9IA7rFGuDUS0ULpcXkztXxfD/yJz
	sK3JMKUubRgDLSkL3Do9ZXeksg+iU2tu89Eu8qtysVfpZOq+E7bebktzK1xim1YAm3DUIRSMXSI
	+Ezo9o+i181sTlKzPxujADfHf0MZrRXS722NyRZF2KEUWhLWnpejcyWwSqtGNrCXifIRNgp3uv/
	ZeirZ8L2REHaURvvFBgsQ+LwQiOPjIWNEt6RpLoQkiPwNoMisqm0qt7gBEqKl7AFyU+FKoV7YjR
	TuC2XpKpiU+E5gU/la030Eht/HGfUUIGyJ+kuGNKTEZRadgY1lcVoqwnv/pAAeRXgPGxAcnJU4t
	9bvI4=
X-Received: by 2002:a05:622a:44e:b0:509:911:3273 with SMTP id d75a77b69052e-50b148b071fmr64099041cf.6.1773916498916;
        Thu, 19 Mar 2026 03:34:58 -0700 (PDT)
X-Received: by 2002:a05:622a:44e:b0:509:911:3273 with SMTP id d75a77b69052e-50b148b071fmr64098751cf.6.1773916498374;
        Thu, 19 Mar 2026 03:34:58 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f1738f1asm402338266b.58.2026.03.19.03.34.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 03:34:57 -0700 (PDT)
Message-ID: <466e7543-20d1-4015-89c1-1e2bb0f1cb5e@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 11:34:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] ARM: dts: qcom: msm8960: expressatt: Add camera
 flash
To: guptarud@gmail.com, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org, David Heidelberg <david@ixit.cz>
References: <20260318-expressatt_camera_flash-v2-0-5c2b9a623dcb@gmail.com>
 <20260318-expressatt_camera_flash-v2-3-5c2b9a623dcb@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260318-expressatt_camera_flash-v2-3-5c2b9a623dcb@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: h3HyqOU6wmaq21hjnEUYYiXEXDXvFupZ
X-Proofpoint-ORIG-GUID: h3HyqOU6wmaq21hjnEUYYiXEXDXvFupZ
X-Authority-Analysis: v=2.4 cv=ApTjHe9P c=1 sm=1 tr=0 ts=69bbd154 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=OQN141zOAAAA:20 a=pGLkceISAAAA:8 a=b-NmJ6g92bM9CzcnVPEA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA4NCBTYWx0ZWRfX17xaTtu0P16Q
 Ax0x6tJU3+zSwAUvHwa+eInsIHwwmgItAjk3nFjbnScoMZMDwhlHq6fAqZwVGF0FzSzq67bdDIs
 n8ZXH/+v5MozKdF4zUCmA6ZpB9AeWYJJA/7gcvUBFd7SYMPAxfgdZXL9guJfQUaeHr3zF8/bWoG
 mFo/YytFgKLdre3gTQvvW7YBIbh4qhIt+u9xDTN+VGrjjtDcoErMgSAUptTSAJovSxsr8k10iDw
 PSzKe6dr45Yi8g1l7zbHZg4Fz8gPfGdo+OFLEXwq5wwLmXWwnTtVIsh3+E52P8rc0fIfMVpNScX
 dC8+y5wgxw//b+QhCZjRdKi7r7rXY0hEd4ABmMHB/zCsPCluxmWk6biejEhBMcy/MpI8dIS4PS0
 IkypGS3MAoPdPzAFbozrm52Uc9lErPauVdClfpA105GRwh00WgEvxg3tws6JIi2r6rOKRluMIU0
 LFHl9EvtIKUZBuM7y1Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190084
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277695-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ixit.cz:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 77F5B2C98BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 7:34 PM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Add camera flash support for the Samsung Galaxy Express (expressatt).
> 
> The flash IC uses a one-wire pulse-count protocol on GPIO 3, powered
> by a GPIO-controlled fixed regulator on PMIC MPP 4. The regulator is
> modeled as a regulator-fixed node and supplied to the flash IC via
> vin-supply.
> 
> Downstream references:
> Link: https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/drivers/leds/Makefile#L51
> Link: https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/arch/arm/mach-msm/board-apexq-camera.c#L591
> 
> Reviewed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  .../dts/qcom/qcom-msm8960-samsung-expressatt.dts   | 43 ++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> index c4b98af6955d..ad5169a60937 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> @@ -1,5 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
>  #include <dt-bindings/reset/qcom,gcc-msm8960.h>
>  
>  #include "qcom-msm8960.dtsi"
> @@ -61,6 +62,32 @@ touchkey_enable: touchkey-enable {
>  		regulator-boot-on;
>  	};
>  
> +	flash_gpio_reg: regulator-flash {

"vreg_flash:"

> +		compatible = "regulator-fixed";
> +		regulator-name = "flash_led_en";

"_en" makes it sound like it's an enable pin - if we don't have a better
idea, perhaps VREG_FLASH_3P3?

> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&pm8921_mpps 4 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		pinctrl-0 = <&flash_led_unlock>;
> +		pinctrl-names = "default";
> +	};
> +
> +	camera_flash: led-controller {

Let's drop the label since it's unused

> +		compatible = "richtek,rt8515";
> +		enf-gpios = <&tlmm 3 GPIO_ACTIVE_HIGH>;
> +		vin-supply = <&flash_gpio_reg>;
> +		richtek,rfs-ohms = <16000>;
> +		pinctrl-0 = <&cam_flash_en>;
> +		pinctrl-names = "default";
> +
> +		led {
> +			function = LED_FUNCTION_FLASH;
> +			color = <LED_COLOR_ID_WHITE>;
> +			flash-max-timeout-us = <250000>;
> +		};
> +	};
> +
>  	i2c-gpio-touchkey {
>  		compatible = "i2c-gpio";
>  		#address-cells = <1>;
> @@ -247,6 +274,13 @@ touchkey_irq_pin: touchkey-irq-state {

This label from the context seems not to be present in -next, FWIW

>  		drive-strength = <2>;
>  		bias-disable;
>  	};
> +
> +	cam_flash_en: cam-flash-en-state {
> +		pins = "gpio3";

Please keep the pinctrl entries sorted by the GPIO index

Konrad

