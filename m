Return-Path: <devicetree+bounces-242978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3772FC91CB3
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 12:32:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6798A4E3A03
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B99BA30EF66;
	Fri, 28 Nov 2025 11:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PRJoywFE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jzdoycil"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABC417BA6
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764329547; cv=none; b=Bz3PHHe/hGBEnevzQUZ5f1KQ4IvmUJh/xtCWmIlmnMQj6syJj6zWPDh9ua/ytNfoJmmM1SFr0QAf8PXBaA6Asa1W0n01w0qph1WqSPqTwPd5A0v8M5p8yT4WTrJhbMiOBRy6n3LCq/7kHi6l/n+ggiUFr1TQfaQJBrHpNV594YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764329547; c=relaxed/simple;
	bh=IlGqejTxUcXaPC+LhR6zkeAqRrGA+xSroN39yUlX3vA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TOE50WZFkcbyJ/OWQJ5H3zBRalirtnJWs6Tt3tQn22jj8TaKBS15qpqHDdyRFVo9jYW/OtVz7VIonRZ0YZbC61KEjzmxQ6PJvT0L9BsFCXXQIrjvlX+8yAcAAJ0aCQbtTeksGUsZH/BnqSze72qTy1RhPSd6q3w6EL/s8ZGEKeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PRJoywFE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jzdoycil; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8PBQS3919396
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:32:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	on0p2ah52fek9cWslbKDUISLiT/n/kp65o4z/5HVnso=; b=PRJoywFEHT45aAq6
	DFXhUwLZMAqffYKbjZIUHSB+uGFmNRTDbd9+9xuJqup+VXhpu/aTIDn5xs+8A+mM
	Hak9q68lN1XVjVYVhe0AJT3Q0VRM+E+J2kKpIM57txt2XoF2tTCrol5dyseurpCr
	jiQQpMP/5cojkzTXd9s3s9JHSUEyqO+0NKExrcogp2S9boomxwOvp4Vrl82POtmy
	UOWpFfcEvszZyEUf3PvMBIryYSSohZ07gdc3UQC7L2gINrhij95Fbf33CBFYxaq6
	1HyftBUanJ4VXTVycYAj9R1DzZ17zzKHOZ972nE4LeUwZ2CaTgnFpUWJIeiBA7aI
	r3Punw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apq66jrqh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:32:24 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5de05befb05so109120137.0
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 03:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764329544; x=1764934344; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=on0p2ah52fek9cWslbKDUISLiT/n/kp65o4z/5HVnso=;
        b=jzdoycilLzQVLMjgQdn8IuOUQrR5TKBjjF0u3WZKxedWe6E2IH3LNPWGWL3vBTBZe/
         hsEgDv8sGyn+OV3duxZbdFkNlN7ffcCYh0XYyA5pTYy8OoLbAFGOf3R2PGc7p8TOk/s9
         Z6OUpkuhlJpPY4WhTLS5OtyhC0MXBchZnXqZojliMg7VN61m8uZgWVhUuDPDF5wgIZ6o
         h524ZoOvuU1fhSufL/ARFZmGrOFVqfiRlkH7+mEgYyddP01EXbtwtN5WgMPI1ZXbQcpx
         0OX9F/QhRUzlaJCywTD/TLqN9gFxc57QOb4sOcNiif0CGY2v57Xn2HLUOeDJPv/r7h2B
         QWVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764329544; x=1764934344;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=on0p2ah52fek9cWslbKDUISLiT/n/kp65o4z/5HVnso=;
        b=CoOox9t/yeJlQ+WfeYo92iL7eJ2no1zeP39+5r6sGIVnIJK46SggdiXdanK4wCsll0
         yjJihZYdsPSkBXv0kcPMbfbJtqz1srYkqGEQUNJuE2kZxNsIrOTK9vwNnaXzEugX4pf9
         Hns70apNI+t4uZ/mSwncxyVhHm2Dfyt7+QPPmhvg4zRunIUcW2IDacX3OVmjLAoQhqnZ
         OnqUEDDmneVmOq2azY7Br9AUsCqFQO47eTfH/AcceWDBrU4fp9YkyUty3T60K05PRT5A
         kXhQW+tGzIaPyXT66UyknTdzSayYnvM1uIGp0Y7F+g69Z/7nocWLPP4VikLBgRU3dzDj
         tmZw==
X-Forwarded-Encrypted: i=1; AJvYcCUDmemyNgPhWxwWoJK0sUaDz8kzTqqK7o0pI+q7UAnpf4PzO2oxjpyjE0VVAGR6f0ynhwpCMkNfOXBS@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9bmVdu51meeRlOlLcxQEH4D6Xwb+7YXUg6AuFmW7LQHXmXonf
	3150PxPcT6lvWKC3VAyqirk0z/3AUoUVH9+KDKFCbF/sLhRh9kK6lwR1Qrv+x69CIwa0KjzJk/8
	faZg8JDHsejPvvXAYFzWlgrKAeAdHzs0YBMa0jC5IMdRLZCOsdlFpdBJuxoSnCias
X-Gm-Gg: ASbGncsKSrAG6aRQM0qnms/PaDfr0Uhfws6VwaQ84tuShZRBJZcCSwFueO/bzsJdHA3
	3eSMkaBbKnZ8vhg/GPVURonU5MSxo08ACxM2oTq97BbQp4NcD+kadjMvCEou3ee/Tan1yjhXYuo
	hYAc91Mozn9sB+365G+twTcjqQQN3keBAGn1fI+/BrM0EiuFRq6/UAYX+Q1fkcKsFn//JiK32Vn
	oSewTzn1UXdRJOe8II/8CHewgUp3A/o6p8yTJWI5sQbjl01fwVSKi7uxAgLNs1dudsbrsO4s+lP
	6Rf470Za56PWemuji4s2790/u9f3aUQZ1cA3LHDgGQfoRUkDiBj/iaiaheFGilYPzqRCXQWJpK+
	sm/0bU6R7i1VM99bbRto3zGZlWlVEUSlN9y3ucEv0NEpdV/uiPqF1SktIYoNulDAvxaw=
X-Received: by 2002:a05:6102:e12:b0:5df:b52f:58ff with SMTP id ada2fe7eead31-5e1e6a59ccemr5076358137.5.1764329544312;
        Fri, 28 Nov 2025 03:32:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEVhtD3wbD8HAzB+HwO3p0fm45hGD9PrKrgX7qTDxq/Kq5y5qaWEjnnLYt3dJAVxNoxoiURPA==
X-Received: by 2002:a05:6102:e12:b0:5df:b52f:58ff with SMTP id ada2fe7eead31-5e1e6a59ccemr5076344137.5.1764329543867;
        Fri, 28 Nov 2025 03:32:23 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f51c68d0sm429606966b.28.2025.11.28.03.32.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 03:32:23 -0800 (PST)
Message-ID: <3aa86b13-9505-4f64-a168-4c46962b715e@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 12:32:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v19 2/6] pwm: driver for qualcomm ipq6018 pwm block
To: george.moussalem@outlook.com,
        =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Baruch Siach <baruch@tkos.co.il>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Devi Priya <quic_devipriy@quicinc.com>,
        Baruch Siach <baruch.siach@siklu.com>
References: <20251128-ipq-pwm-v19-0-13bc704cc6a5@outlook.com>
 <20251128-ipq-pwm-v19-2-13bc704cc6a5@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251128-ipq-pwm-v19-2-13bc704cc6a5@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: eapbTWcY-pu2S2n73A3aE0JCBwz1w7jb
X-Proofpoint-ORIG-GUID: eapbTWcY-pu2S2n73A3aE0JCBwz1w7jb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA4NCBTYWx0ZWRfX4dz8Ww9i3vEa
 rwb37ub4sl7t35YnweJVIYuukK6fi6DSKDB2I43D716jYg3Plk9DSeqlL837M31HjvjFnV7HI1X
 FkPTuRdSuXEKh3qksgJv81g9aoVi1zxnLWXxa1FkUGQbkybB2mPw+34sTRef6eYxIOes1pSQSNG
 u05u/Zs+3Rd9T3T622S2Hbp1dTCLfqzEJDE0PDWDIwOpyUvHbVzo0uDjZ93K032MkhknmcrLmdI
 T8+36PjuJUuo7pcm7fF7Pypl/xPsz9ZVpSVPxnjPHgsFEuc9SfLvRcG4T2CRPzjTQMXUJnh0de5
 9KkCFFrmUY9ZXfjRD7Fla21lYpl+BQEW98rShGBDZkf4xL/D1Ui+RVWEjNTK5RP3+qlwS8LVtpN
 xp59f6dmv+VQvYb38B564Akvzge3hQ==
X-Authority-Analysis: v=2.4 cv=BYHVE7t2 c=1 sm=1 tr=0 ts=69298849 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=Lh10uZTOAAAA:8 a=VwQbUJbxAAAA:8
 a=UqCG9HQmAAAA:8 a=k7Gwnk5ueRFZCsjwaScA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=TjNXssC_j7lpFel5tvFf:22 a=h7PWpkqlkWt1jHQZSjMD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280084

On 11/28/25 11:29 AM, George Moussalem via B4 Relay wrote:
> From: Devi Priya <quic_devipriy@quicinc.com>
> 
> Driver for the PWM block in Qualcomm IPQ6018 line of SoCs. Based on
> driver from downstream Codeaurora kernel tree. Removed support for older
> (V1) variants because I have no access to that hardware.
> 
> Tested on IPQ5018 and IPQ6010 based hardware.
> 
> Co-developed-by: Baruch Siach <baruch.siach@siklu.com>
> Signed-off-by: Baruch Siach <baruch.siach@siklu.com>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

[...]

> +/* The frequency range supported is 1 Hz to clock rate */
> +#define IPQ_PWM_MAX_PERIOD_NS	((u64)NSEC_PER_SEC)
> +
> +/*
> + * The max value specified for each field is based on the number of bits
> + * in the pwm control register for that field
> + */
> +#define IPQ_PWM_MAX_DIV		0xFFFF
> +
> +/*
> + * Two 32-bit registers for each PWM: REG0, and REG1.
> + * Base offset for PWM #i is at 8 * #i.
> + */
> +#define IPQ_PWM_REG0			0
> +#define IPQ_PWM_REG0_PWM_DIV		GENMASK(15, 0)
> +#define IPQ_PWM_REG0_HI_DURATION	GENMASK(31, 16)
> +
> +#define IPQ_PWM_REG1			4
> +#define IPQ_PWM_REG1_PRE_DIV		GENMASK(15, 0)

Sorry for coming in so late, you may consider this as material for a
follow-up patch (I *really* don't want to hold off your v19..)

I see that on ipq9574 the registers are named:

base = 0x1941010 = tcsr + 0xa010

0x0	CFG0_R0
0x4	CFG1_R0
0x8	CFG0_R1
0xc	CFG1_R1
0x10	CFG0_R2
0x14	CFG1_R2
0x18	CFG0_R3
0x1c	CFG1_R3

CFG0 and CFG1 are what you called REG0/REG1 and Rn is confusingly the
index of the controller/output

The other bits in CFG1 (29:16) are RESERVED so there's nothing you
missed in there

> +
> +/*
> + * Enable bit is set to enable output toggling in pwm device.
> + * Update bit is set to trigger the change and is unset automatically
> + * to reflect the changed divider and high duration values in register.
> + */
> +#define IPQ_PWM_REG1_UPDATE		BIT(30)
> +#define IPQ_PWM_REG1_ENABLE		BIT(31)
> +
> +struct ipq_pwm_chip {
> +	struct clk *clk;
> +	void __iomem *mem;
> +};
> +
> +static struct ipq_pwm_chip *ipq_pwm_from_chip(struct pwm_chip *chip)
> +{
> +	return pwmchip_get_drvdata(chip);
> +}
> +
> +static unsigned int ipq_pwm_reg_read(struct pwm_device *pwm, unsigned int reg)
> +{
> +	struct ipq_pwm_chip *ipq_chip = ipq_pwm_from_chip(pwm->chip);
> +	unsigned int off = 8 * pwm->hwpwm + reg;

This magic 8 could be #defined as IPQ6018_PWM_CONTROLLER_STRIDE or so

Konrad

