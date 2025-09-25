Return-Path: <devicetree+bounces-221381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B027B9F2EA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:19:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38BBC1C219E2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8A3304BBD;
	Thu, 25 Sep 2025 12:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cxmr+xaw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D9B30506A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758802549; cv=none; b=uZewexlKFmxqwQtnC6y0855W8hKAgT8TapdJ3nuh6x/OGp12+dnG/c/uvGwnoL/EIW9e6Rf2JN53LTOO3VuySeoZOeNoJ1SAJXr/8AoDHWWaPwY52lUq0jA5zqUC0gZh/o8MWNOiPiBZmVSEUjhHsLrUdkqsPeEVptF/vVFxoKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758802549; c=relaxed/simple;
	bh=HQloABzlnB8r/NiJ4QOXbc7ZT8TEzRbdNF3WianAing=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FSqKKHNwiRkc5CHZfyyIuXbOW01wEQYYAEuC5rDRKLsmpzxb/ZldIdin025sObhRVx7xceVRYgTk27rVHJMRhheNlg6FWRkXuvYJlDIW7xV/gXYqNxUFu+v5chzbuQuLE0WiOKVQfWwJpcSOcC+jVHedXF4sY5mM+l61OD5xqT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cxmr+xaw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P92v2l022115
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:15:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ouVUk6EkYRj6EqW6mxcCGA12lGdj8Q5EsB1YmAFNCoY=; b=cxmr+xawu7/OiGto
	hKBFSxw1GOr7BwHSqh1fj6Wquo3GiKjmyDRK/yl1HXNPJD0jUKkKzqWMgH0CvLhX
	krW8IHyL/ZDiyfzMasbn/tY1z/bp2JWwyzMOZ+SyyHAGQNXTUxO70LCU3R+iOrp3
	PNGrN6HvL4o4+gdzd52P+WHgHlIQgDG2QJ6opnagCputPwiQVGJO6XqVVXwfUXgu
	iCPELS33nVpciqC8CmeLbXdRiD96Fwp3oXdGJslWFYza7C92A/HnR+l23HbAbXBx
	vRYM632IUoUHa4mQGfnS8TubLqshbozzT1UCkl5jW8JCL1C0JCT8iex4To2ozDJY
	kHvJ1A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budafkjx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:15:46 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-85a8ff42553so27045685a.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:15:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758802546; x=1759407346;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ouVUk6EkYRj6EqW6mxcCGA12lGdj8Q5EsB1YmAFNCoY=;
        b=rZc7iLrTbr4Dys+nVEebUeit8Uphopd72C3EW29n3bH5vdBgJX3RjKkfE6QrvnXnTV
         bUTOcMoad/bwB7Xg2kz2DTjUrkbfLg+WNND56Z8qXA+ELEZqJxRz9CPe1eikXkNfqn6M
         rhYXi/4fT0AStAf2hhQUEz7xQDX4ZrOJSJT6vjvZEq19Jk2nU6MuCegY+ibJJSp7N55z
         DsRnyCQGA20XOUdLn33THT8IyFJSjSHW/1UvSEt/sYuDjB6m8YQSxGMp9n04iALwX+o1
         9Ku335LPlZzCDIntWtS69fo1nx/0ELp22E0DGh2DGBeNjJODvWTkwBPVlTHBykAALJ/C
         NWkA==
X-Forwarded-Encrypted: i=1; AJvYcCX4roniJ5MPj7WHLVeV0LH+LHSPrXRMWfE4+NqiOTZG2KMoo5MUjjgCiQri/uRD3WwKj6GaJf1ewo8t@vger.kernel.org
X-Gm-Message-State: AOJu0YzksTx7Yfc7R2EW042DtxUzGvNBaM/Rageeuf5y2/OcrWeokY92
	roR8j0sNicmxXzt9/l3OyYlcy1X+b5ORyDeqmUWY7pQT14Noe5sBMUwV34rmY60Is9q/DnC1V5e
	GuiSlfyhNkbGDYssB9pTjrGjADn5AjtbO1fBZT3p7PcEmjDfPEty/yOA7eVHgSAW/
X-Gm-Gg: ASbGncuuI9lfAFSv0tjdl2Zk4Z4qymtzYBJoV6xxBin/JX5+8mrsPbYyS+3JLrRxPUk
	6x6YtgQhsVW0QXeXOuvmcxSp2afm+A57wtxieEyXs11FvHl7oK3+Qy4GBSBLqDhUddOiywlemWG
	UaqhsNO26beXqs2/B/DNETTNrJ+S5LACcnN+G+8uRUfTKFtVIYvdH1fQDvaHyLHpn6dIcBEkfdC
	HJ8GeeNTARZ+TRL2T1GmW1Q8XiaD1DhWKC09cDr5Qoa/k71tf5FZ3jbF1S8ui0Mp5MFiHeuQ5Aw
	WoDIehkBFHk2oNRkQmh6XooUb6muEP8NiMjQStdK/UC6L5EDvic3+iUKGNsu2J3JWokoAGHfLVG
	2sKZp1OaiqGlTrzDghfiMDg==
X-Received: by 2002:ac8:5d92:0:b0:4b7:a9cf:91f with SMTP id d75a77b69052e-4da4b0490f1mr25219061cf.8.1758802545962;
        Thu, 25 Sep 2025 05:15:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKDTicP+At3tb6zBRvj+8JVoPm7W3lOGpEI+urWVr96LG5JzmbSw4XR7btbmuKOwHogSvf9A==
X-Received: by 2002:ac8:5d92:0:b0:4b7:a9cf:91f with SMTP id d75a77b69052e-4da4b0490f1mr25218681cf.8.1758802545476;
        Thu, 25 Sep 2025 05:15:45 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3545899fc9sm153299966b.91.2025.09.25.05.15.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 05:15:44 -0700 (PDT)
Message-ID: <81822df8-1978-4f22-93e7-87b79e1fc9f3@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 14:15:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 2/3] Input: aw86927 - add driver for Awinic
 AW86927
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250925-aw86927-v3-0-1fc6265b42de@fairphone.com>
 <20250925-aw86927-v3-2-1fc6265b42de@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-aw86927-v3-2-1fc6265b42de@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: RN-_nJvyhwPWDH9hG3xYz5ldNa6uVxVX
X-Proofpoint-ORIG-GUID: RN-_nJvyhwPWDH9hG3xYz5ldNa6uVxVX
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d53272 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=6H0WHjuAAAAA:8 a=pLNEalJQesa3U4KxjPAA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfXxDVFWu2pb1mK
 tzN/Kt7U5+23DSsCZBo8/HzrLdf9Wd2+ilhipI1XeTELdIV5pgYEgE8g7LpzQK5fabUluM+g5/K
 zWOev1IjhNI3724ilH1PXG5FPMw4RVpLd6Y2d286jZXcPwvIRJJFgwn8fUAsCr+tpJQrpW2w5K3
 JSJ4QlzN+wC2b2lReSdemfMSuCaRhReG87ZOx2e1qgcoWi2hekxBZkKAFZK3/ZP4x2yD9xfOim/
 L6smHQ/jIs09X9F2qbF/9FdEHqsPvevrj2SH5aHuQBSUSV/1Bf2dkXshCmEUZThEZd4lfxB3T8A
 kn/gRsVUvHUKqxyr8mSBWjzT5Wxvi6pnAR6xpzK2tjIbVTSyJ0usTo+IQxNKlohEwb0BKT53WO5
 M/TOZvC2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

On 9/25/25 12:07 PM, Griffin Kroah-Hartman wrote:
> Add support for the I2C-connected Awinic AW86927 LRA haptic driver.
> 
> This driver includes a hardcoded sine waveform to be uploaded to the
> AW86927's SRAM for haptic playback.
> This driver does not currently support all the capabilities of the
> AW86927, such as F0 calibration, RTP mode, and CONT mode.
> 
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
> ---

I'll give you a couple of cosmetic comments, feel free to ignore

uint8_t is abbreviated as u8 in the kernel

[...]

> +#define AW86927_PLAYCFG1_BST_MODE_MASK		GENMASK(7, 7)

GENMASK(n, n) is BIT(n)

[...]

> +static int aw86927_wait_enter_standby(struct aw86927_data *haptics)
> +{
> +	unsigned int reg_val;
> +	int err;

"ret" is more common (for "return value")

[...]

> +	switch (play_mode) {
> +	case AW86927_STANDBY_MODE:
> +		/* Briefly toggle standby, then toggle back to standby off */
> +		err = regmap_update_bits(haptics->regmap,
> +				AW86927_SYSCTRL3_REG,
> +				AW86927_SYSCTRL3_STANDBY_MASK,
> +				FIELD_PREP(AW86927_SYSCTRL3_STANDBY_MASK,
> +					   AW86927_SYSCTRL3_STANDBY_ON));

this is regmap_set_bits(regmap, register, field), you can consider
dropping the _MASK suffix too

> +		if (err)
> +			return err;
> +
> +		err = regmap_update_bits(haptics->regmap,
> +				AW86927_SYSCTRL3_REG,
> +				AW86927_SYSCTRL3_STANDBY_MASK,
> +				FIELD_PREP(AW86927_SYSCTRL3_STANDBY_MASK,
> +					   AW86927_SYSCTRL3_STANDBY_OFF));

regmap_clear_bits()

(also regmap_assign_bits() which is a conditional version of the two
is a nice piece of syntax sugar)

Konrad

