Return-Path: <devicetree+bounces-254475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9460CD186E1
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:21:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D87D30734CB
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D554038B7BA;
	Tue, 13 Jan 2026 11:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iEERgBlO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xlwr/tIP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E611635C1BA
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768302958; cv=none; b=SxueyMJhEH4kV0uTnu4klcumCpkU2hv6HTHUKkfOyzHBjHNwqlXi6VhNqsbeeeN5GvUZReJ+k74PcbFvPM+co7HKutcUmQFHKS5pOJ45SjoVOunYGaTgEqBOuRRkz3SWjfrd9gEVcD5hhMAqVRHN7XVtKVi/Qvov7WgEYhGQ58Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768302958; c=relaxed/simple;
	bh=+bLGB6ZM3C0b7tjb3Ht87bo01YwecEOlYC0n6Dparmc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KLVCGQZOnNGNtV3Qa1E9Msv8Sdr645oYmjlRhx7I4HtbNfxsmNZqJRu3vaVEG/Y62rCwMJEYCdWDwdDOewl/o3H6TtRhsI6N2c1KNidvI3iiDgqBV2+Z23sQmkXyBID8+ru21ulsdUF0tHwjOoybbHdDS/Z0WiFJf5GKYp51CgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iEERgBlO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xlwr/tIP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5aose3636908
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:15:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WVz2cn3CkK/mIo0N8EVudxmtiUauPsvts9rJ0BtRZTc=; b=iEERgBlO108Jbnoe
	rdkZ08PB4PGIZn/o+lECpKt6YvxF949EuAE31JyvGK2l3ScuRaa1eYl3/0ateZ3W
	IboWh0dtqGduxGxPVv5sWLB8Nzn2bR4nPKrLvrHO1tosdnYFG0myuNSfI0jtSKR5
	ugE3JsnS718CZizEpv77l089ZZ1cskYb3jcIEFMxG3QewCm8z2hPjuY/+Knv9ikJ
	mM+MUZm16JRUyHpIFOyuL2Ys6hPr15V2ZBafo8irR34KWZVSS0w9KdKdMuk4GqwE
	f7Ger/7Zr5uYTzueuZbptj6DfzO1vE7GzpMtRCI4zLuWO9594mxTjGZFwslEDRum
	1VbbGg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng2c12nu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:15:55 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ede0bd2154so23153351cf.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768302954; x=1768907754; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WVz2cn3CkK/mIo0N8EVudxmtiUauPsvts9rJ0BtRZTc=;
        b=Xlwr/tIPfdEHm5AhrGf5sf9AgSEm1V/p8vdqxAv44fFDUWFMQlBZznZaf6VjFlNVVR
         d/vsD5eujPVZa9GfwsNhlNnwcCyFNHwdzpEEmaKJbNZRKTNluy/+6R6HF+fmOf0iWlT8
         67YoQLjR+SGfzpmEkC7+D+vPeXOpJdJFAxd5lM+anusPxt8vyRm7iy2Z79hlEHZO+B33
         hROosL7WJ+7bzpEghxAz3kuBk5zkO5MVSWsaH5O+iIQm6RXypd+ok4Zs0NmYIk2vVtJS
         6NMQti6piLwei+FrH3bWcXhspV7IC3V5pzsEagsRtVP48INxgajqXiOTi1dneDGT+GOA
         OasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768302954; x=1768907754;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WVz2cn3CkK/mIo0N8EVudxmtiUauPsvts9rJ0BtRZTc=;
        b=NeLyJAi+YHE64F98tbk9OVf5GttLf6WolEK3VP1HAPxe6I2sxJiwN6ou8LXPTq5Jp9
         011FJAEfZslTqgYkW/lp0353iHv5WSle3aIm4ojw4jd6UVKyXq7cKf9CI7WjNe9+0+Wv
         ZAphn258lC7g8PwhnmBqzCWsIJrFfY+GQHhOb4B6CO6+fa1HhW0YoKaejWn88VDy19yN
         yihvYS1O/e4RKb83wUxpJlDm4Pv251hDNDpkGbKWLOCIA6kJ0NLZ9FuR1HkuOBmbI75T
         lqSBAnbYPNtFgl2uc/JMMV5uax7LrZ/sf6VIK0VO/n7qKcEl/+g1RTE0cwSTGP6RrkRa
         /a/A==
X-Forwarded-Encrypted: i=1; AJvYcCXUxSHcdMOwsB5ZwOmttMvqVro0bCBy1Jq5Aldw/IBY/ZvNoVbKfdxHoH6wfDOaMcf0GuFMEynHhxmQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzkp+kR+87hZzU8QG5ZgYRq14KAZvM6gsiTf2Cr0lCOaXWjMGgU
	saugRgR4tSkunOmoMPSdV0WCnQkyvnKEKTGs0tS13rybKrCzA+gN64q5qmyWFNoNylvgFv+3k1o
	aRGpUpkOTiaLtAPu7wAY8cdzO25oY0bR5ranYj5hy/EKDKJ2z4BtPR1Kgf5Yc3Kam
X-Gm-Gg: AY/fxX72ou5J/nb3105MYCyvOJHQWwmqAKyCN0cqfDp3RfNv3bZwjhHgdFT/Ya+g3wo
	C8SNA1wQq/OdJcrYMfal+M9lbwH/u/S3hQno5RZqSIfPMSP1TKOWZvaJt37u8SNKg3+nxKL8Sxx
	Igotrj0itBfeerYJTffzQK4hxsga+X6tZGiaponA/pR89A/23mXfG4XamvnL9HA0X8nutH0cwyb
	GkzAuCjJvkgjVom/JwueLneGkzaZvCEFDj20olAyHJVvCghLDYkoZTATzZvN+Z/G/j6TuVmULiF
	i+jf3txxdja4RPPBo5E2P3TJnGW7JsChcN+668yA5tFcVf9Wn4wfdfewf9n+YOCuB60uttNux2+
	WGMw+8BQj9d17XSxw8ZMteGahXjy4l5+UnAwiDNWUtHTwGUXLZX2NP5GRCo94YW1oaM0=
X-Received: by 2002:ac8:57d5:0:b0:4fc:989e:f776 with SMTP id d75a77b69052e-4ffb4861697mr246417901cf.4.1768302954127;
        Tue, 13 Jan 2026 03:15:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHgvlL8JKDCb6sI78Mbz0Vz1WwN8iCeTN2tlWwmv6VllLm5D5BHEcNdQ6oG3pEEypulUcU1eQ==
X-Received: by 2002:ac8:57d5:0:b0:4fc:989e:f776 with SMTP id d75a77b69052e-4ffb4861697mr246417551cf.4.1768302953623;
        Tue, 13 Jan 2026 03:15:53 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4cfe60sm2185088966b.45.2026.01.13.03.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 03:15:53 -0800 (PST)
Message-ID: <f211054c-ecb7-4f90-b9ce-9fdd7710c8c4@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 12:15:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 5/7] qcom-tgu: Add support to configure next action
To: Songwei Chai <songwei.chai@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
 <20260109021141.3778421-6-songwei.chai@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109021141.3778421-6-songwei.chai@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA5NSBTYWx0ZWRfX98MGHj2Ipmon
 a/nkKfAGXDfD46VVA6c1ZjO/suR2GdCUdX9GiaQXuhjjLHgPKBexp4bnwmCJpvGxjMhYEIisWrA
 KW4BBY7Gb7/0NoTADApHJ96ZylWimc4F+8bJhr1Fvzy3O/omNKd3y3BVmnRPBdDScnI4S5nVZbi
 BmZ/mlln4C5b6ut5KCpP0LfZHpu3gIpxVQnKQWRu4FamgyB2ca01XUXS2FtgV6mmN9PdRw1FHZi
 BxUkKiTR3iWErVilfnIJTblSMfUB04E9i6exp4qVl8ORhWdwb8AhXZb9hPUoyFGd2A8/PmM7AXp
 +ImP93zgOyNZw3fPGwg7dWwmhbOdWX4gAYQ8CF6iti1DJSBstwYYkxJcF/wbmYo459CELdfV9lu
 WadyfuugNNONBbA+GpXxlxtRNaw3D9HJOuWWl3WY9j0EnRBvTSLM63HcyEWrZBFQP6iiFth1lmZ
 IJqKHm/Cf4yZlQ0ti3Q==
X-Authority-Analysis: v=2.4 cv=C5TkCAP+ c=1 sm=1 tr=0 ts=6966296b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=jWTz0FIqI1YCIfhA4ZQA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: QfITFFopm3VWUyyQhvJfTt-PCvrxRYJ9
X-Proofpoint-ORIG-GUID: QfITFFopm3VWUyyQhvJfTt-PCvrxRYJ9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130095

On 1/9/26 3:11 AM, Songwei Chai wrote:
> Add "select" node for each step to determine if another step is taken,
> trigger(s) are generated, counters/timers incremented/decremented, etc.
> 
> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
> ---

[...]

> +		case TGU_CONDITION_SELECT:
> +		/* 'default' register is at the end of 'select' region */
> +			if (tgu_attr->reg_num ==
> +			    drvdata->max_condition_select - 1)
> +				attr->name = "default";
> +			ret = (tgu_attr->reg_num <
> +				drvdata->max_condition_select) ?
> +				attr->mode : 0;

similarly to my previous comments

[...]

> +	for (i = 0; i < drvdata->max_step; i++) {
> +		for (j = 0; j < drvdata->max_condition_select; j++) {
> +			index = check_array_location(drvdata, i,
> +						TGU_CONDITION_SELECT, j);
> +
> +			if (index == -EINVAL)

stray \n
> +				goto exit;
> +
> +			writel(drvdata->value_table->condition_select[index],
> +				drvdata->base + CONDITION_SELECT_STEP(i, j));
> +		}
> +	}
>  	/* Enable TGU to program the triggers */
>  	writel(1, drvdata->base + TGU_CONTROL);
>  exit:
> @@ -225,6 +258,8 @@ static void tgu_set_conditions(struct tgu_drvdata *drvdata)
>  
>  	devid = readl(drvdata->base + TGU_DEVID);
>  	drvdata->max_condition_decode = TGU_DEVID_CONDITIONS(devid);
> +	/* select region has an additional 'default' register */
> +	drvdata->max_condition_select = TGU_DEVID_CONDITIONS(devid) + 1;
>  }
>  
>  static int tgu_enable(struct device *dev)
> @@ -356,6 +391,14 @@ static const struct attribute_group *tgu_attr_groups[] = {
>  	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(5),
>  	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(6),
>  	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(7),
> +	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(0),
> +	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(1),
> +	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(2),
> +	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(3),
> +	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(4),
> +	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(5),
> +	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(6),
> +	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(7),
>  	NULL,
>  };
>  
> @@ -363,8 +406,8 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
>  {
>  	struct device *dev = &adev->dev;
>  	struct tgu_drvdata *drvdata;
> -	size_t priority_size, condition_size;
> -	unsigned int *priority, *condition;
> +	size_t priority_size, condition_size, select_size;
> +	unsigned int *priority, *condition, *select;
>  	int ret;
>  
>  	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> @@ -417,6 +460,16 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
>  
>  	drvdata->value_table->condition_decode = condition;
>  
> +	select_size = drvdata->max_condition_select * drvdata->max_step *
> +		      sizeof(*(drvdata->value_table->condition_select));
> +
> +	select = devm_kzalloc(dev, select_size, GFP_KERNEL);
> +
> +	if (!select)

stray \n

> +		return -ENOMEM;
> +
> +	drvdata->value_table->condition_select = select;

I don't see a need for an intemediate variable here

[...]

>   * @max_condition_decode: Maximum number of condition_decode
> + * @max_condition_select: Maximum number of condition_select

Maximum value, perhaps? You haven't explained the feature very well
so I'm not sure what this is supposed to reflect

Konrad

