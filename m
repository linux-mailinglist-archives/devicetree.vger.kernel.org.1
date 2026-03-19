Return-Path: <devicetree+bounces-277788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLy3CI/5u2llqwIAu9opvQ
	(envelope-from <devicetree+bounces-277788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:26:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3718C2CBF28
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:26:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0202F313042B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 761353D4134;
	Thu, 19 Mar 2026 13:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lxitOIXF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M55Fp6H9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD8D3CE4B6
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773926767; cv=none; b=Ti9k2A+WoSerHWCYLVi9ErqLZz3UXcKczqgShK8AOC3ZoJqHtJgUR4A9fosjQSIMaS33NuCm8uuW37DZeuSoQhIQxHlIfdVTgA61G0CxS9dPcjMGatyc6v0UBnvNT0k950yPq44Cv6UDv+9iCzG08LfRj7lpx4RZvWlOXoOteN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773926767; c=relaxed/simple;
	bh=dWjAVqW+PlMPpFf4l+RNqdSfuVbME+xa/Ux/Qh4I4hs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pkTk43Qy8HV3IH5BppmJTfS4LyigDUfsPo22Nvuf0L1xwNbjamcYazGS+Hpt65bcLT1MGkaRiRqhITz6c47PaDKrGbeu4MYqPLtACzXr9I57KLDFiM3Hy6ZDbyT1f+x21lCkfUVR1Bo4jqLUKYyMisMyo6dzSxVhQVMO61KH93Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lxitOIXF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M55Fp6H9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73vDf1898552
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:26:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oftS/j2Ly5tXJaSWNCSRIJ16nd6X9wSz4KOt1Uf5Q7w=; b=lxitOIXFT7j+SXLB
	fn+25+TQzTi9TSOO5VNXlbIJQxLuVR8AbeWwb6VJ2V66lHwqbVc0he+P9Onzjvpd
	CYmWVHi+bezRT5105wuWFsF6fHOIms3yqiO5Ht8/YLdxXMW02SAn4GuKZGAD1aGL
	l+jWksb8umHXzmVZog94RsD/45ssy9kIZdf/KDNEQsagM3fuKz2aiItalDIUVJzb
	vler6CMa/10EHznszCISI8LVIpaqa86lmPugTwyJ6FHtdWwr14l3bEl3K0QU8yog
	3hQskK1VOOGFWby7vo+7b2GS89toOy55BHG0bN4d8/X5u/wGaGflBz23oLsGJGSU
	4otK5A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyyhgbhm0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:26:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50943e69b08so6676881cf.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 06:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773926764; x=1774531564; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oftS/j2Ly5tXJaSWNCSRIJ16nd6X9wSz4KOt1Uf5Q7w=;
        b=M55Fp6H9v4gRIFmWeQhT+5O45UqXNSDX4yxfHie0ESx9g49z4Z6TbVuQvf/qyaSfFI
         JRwPReRQ128UVXIZ3B4O6+UycLy9LsFbpS3HCfBtmt4lVQJ3LHKgxhife0oQc6P0jgZ/
         ajfYRq8HB3bAjRR5BoINICXL5dGMLHPBitoVRXyWyhQ+KlKUcC7LXftkrDdIDzFQ3MX3
         0OQQJ4FBNmT+L4P4CjByf0N79Suy03QfOoyTVlzJu3F3WkmS5eOAZBVU5BBXdNtlvrXh
         xof9GT1ZUL/ySbyNOC6IueEktG5HOv6tXqyn/8hSpnb7In6rkrlww6X2u6MA9Fbn2uRn
         qTPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773926764; x=1774531564;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oftS/j2Ly5tXJaSWNCSRIJ16nd6X9wSz4KOt1Uf5Q7w=;
        b=F1GYeFrfR4lY7ljU04fgs8S4IB3NBV/H8Vxcuqky8GT46oncTINsFZRu3H7UEtmkwL
         SH9gYB01r2NThPsgRu7BqeLvRdulqqSePs5O1+ZlwGD6FglBA2AT8Rn72SbP++DVTulE
         ZIZzq8CXvHQnMldcCieFsyy0TsE40ZaC6mKdxuafdbIfKWX4X3a64qOuzK+GLJ3q/KZz
         Hr4mATAWB44YW/+3kACxC8Hzc7aK/9xP+nrc1gPd8aTjBacOgK2uMwLswZFZOHl56PLs
         PLgIwtROxMvd8RPORJhwFJ4elyWqHmWNZHTJl/9b8+UvNixDxYuAIEe1bGak6AZWnH7G
         mSOw==
X-Forwarded-Encrypted: i=1; AJvYcCWSQlgTnnA6KN5ynFIdb1OQUEBWU3eKE0jXSwPJC1h4a1FUO2O6saI5bIl/YmLcs+hYHdeosA3jeClI@vger.kernel.org
X-Gm-Message-State: AOJu0YxLxfVlW421xHDqhiwtOzpu1oQEH8TP4kF9zNYOVum9/dw/Zolb
	SvJRCOhvDUAStyb+eIQyUnbOuEj2/TeKz/ry0f8js21cC0+bpt3wC1clkyrY7wjM04O+mJmc9yV
	p8IESvR261M58VDU6UU6CJw3uo7S+VIujfcy2DMR4kFK+61I94yX8U6OyI2XEgO9j
X-Gm-Gg: ATEYQzyvv85yktsdx+RewsxRSPOiSOdPq/AGC8W/mrf4WCECIqBBCAWKg5cxFk2Xo7O
	6RoMM+kLnpvxo9r0taZb9k2RuBY8vPbvbAVQk8pNPmQrLAz/8vlUu8y6BRw952Uek4soJys6AWA
	+u0z2Ia41NrFOOfQM6KnI0TFINTEM8qAzvywc7miFdBzZXa+OccvAZ1BvTgCnqe/oWKfvnQYXTU
	dSbGGNIpPrDseqBfwjeBgw/WWXvi8J1BoXvxdtOiKjDwaGx0J3VOCg7DvbI6dTPJx9Jz1xe4ZAP
	SqMjYm/QpUt5Upx1SCSFK5TARWKB5vbvlmx3B+MFJBXt89vshztcQOsyjQUWIN+xyHIerPyGWzE
	k2dpSwbHetmEz7bvk7MAikIEcAD58VI3B5yfpxwUm5bNxr+nMXgoCzQSofKLAQluCpYuLcVNlUM
	DUi8Y=
X-Received: by 2002:a05:622a:44e:b0:509:911:3273 with SMTP id d75a77b69052e-50b148b071fmr69826561cf.6.1773926764365;
        Thu, 19 Mar 2026 06:26:04 -0700 (PDT)
X-Received: by 2002:a05:622a:44e:b0:509:911:3273 with SMTP id d75a77b69052e-50b148b071fmr69826171cf.6.1773926763788;
        Thu, 19 Mar 2026 06:26:03 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f142a785sm453890066b.14.2026.03.19.06.26.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 06:26:03 -0700 (PDT)
Message-ID: <1fd9048c-b0c0-451a-a6f7-e5474352d118@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 14:26:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] usb: typec: qcom: Add support for per port VBUS
 detection
To: Alexander Koskovich <akoskovich@pm.me>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260312-qcom-typec-shared-vbus-v2-1-99ed9e500947@pm.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260312-qcom-typec-shared-vbus-v2-1-99ed9e500947@pm.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEwMyBTYWx0ZWRfXwzj5m2IUTaxW
 6WH48yfPKrZjexgHTBUU3bgraczAL6J6HgrAXeoJStJtFFMXkoDEFfs3zsg5Zg13RBNwnWzmq/0
 1WPdSJkMniPOpi7Aq12XZXvBt4cDWVC55XBIdXmNh5qOu5uGZ6xxHfhGuRLSQ07XruoVsuPVeyj
 XJ0cc+03J5T1S/T21wvlWK/G0AqiEbvD6ftR0qpjr+D3rEXL0jUn3g92yafvani2i39bqDEBhUv
 YFruE2yxFpfWe3IM4vmJ9i0yjtwopsJsr6/VaUjB7tx2mKEEpnZvlSl6jHMQ5Ja6OGQ55K9OhgE
 taevz2ioDvRYjjqSitAAMcqHmzySCds6ir52n2z/2wrDXODgdgirVZpwCPwxvBomDrhz5OVbI61
 ap2tlCmFCXqD6Mb7K5PFaK02iSA3C6sWl3hyJkpKB+Yw/Xfx6dY3pw0Qidq65gxHVdg4AE/bCL2
 gDHi0kcWcwZ7dxTgV/A==
X-Proofpoint-ORIG-GUID: JyMlMoFQrHcjmnCUzRqVNm5MXAaMSqIP
X-Authority-Analysis: v=2.4 cv=IbSKmGqa c=1 sm=1 tr=0 ts=69bbf96d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=j6gRNK-Th0hO_mIPYl0A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: JyMlMoFQrHcjmnCUzRqVNm5MXAaMSqIP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190103
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,pm.me:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277788-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.992];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3718C2CBF28
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/12/26 7:16 AM, Alexander Koskovich wrote:
> This is required for devices (e.g. ASUS ROG Phone 3) where more than
> one USB port can act as a sink and both share a single USBIN input on
> the PMIC.
> 
> Because the PM8150B uses USBIN to determine VBUS presence, a charger
> connected to one port causes the PMIC to falsely detect VBUS on the
> other port, preventing it from entering source mode.
> 
> For example, plugging a charger into one port prevents using the other
> port for a flash drive.
> 
> Fix this by adding support for the vbus-gpios connector binding so the
> driver can use an external GPIO for per-port VBUS presence detection
> instead of the shared USBIN register.
> 
> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
> ---
> Changes in v2:
> - Dropped RFC prefix
> - Remove redundant vbus-detect-gpios, instead use existing vbus-gpios from usb-connector (Dmitry)
> - Updated cover to better describe scenario where this change is relevant
> - Update comment for EN_TRY_SRC to make more sense
> - Skip vSafe5V poll too not just vSafe0V
> - return gpiod_get_value_cansleep (Konrad)
> - regmap_update_bits -> regmap_set_bits (Konrad)
> - Get vbus-gpios per connector (Konrad)
> - Add bracket to if (IS_ERR(pmic_typec_port->vbus_detect_gpio)) (Bryan)
> - Link to v1: https://lore.kernel.org/r/20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me
> ---
>  drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c | 53 +++++++++++++++++++++-
>  1 file changed, 52 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
> index 8051eaa46991..a8f6687a3522 100644
> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
> @@ -5,6 +5,7 @@
>  
>  #include <linux/delay.h>
>  #include <linux/err.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/interrupt.h>
>  #include <linux/kernel.h>
>  #include <linux/mod_devicetable.h>
> @@ -176,6 +177,8 @@ struct pmic_typec_port {
>  	bool				vbus_enabled;
>  	struct mutex			vbus_lock;		/* VBUS state serialization */
>  
> +	struct gpio_desc		*vbus_detect_gpio;

I'd like for this to include the word 'secondary', since it's not obvious
that if an external GPIO is at play, we have two ports connected in this
uhh non-standard fashion

perhaps just secondary_vbus_detect_gpio

Konrad

