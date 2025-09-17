Return-Path: <devicetree+bounces-218417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F5CB7FB3C
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:04:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 48EA918844F4
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F39D830CB58;
	Wed, 17 Sep 2025 13:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GmusjpdG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DFE223DEF
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758117559; cv=none; b=SDerAfLvkqdB7CPzo0CnCn0EIdinYETWIRXQH/BUk75QNVxi1Wyqn5nQk8lCa4AsYMZWrDoMu1CFd5gJys2Ir5TKI+y55gWDh9rjTSizbavtWVNYy/RmJK7AC44yLzmWvtVdHxUmdm9a5H/7bWuqtQDw5lblmBzKr+e6eA3H0Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758117559; c=relaxed/simple;
	bh=lyGb1aFoYsF+raAKp8sU36n+AGvzU8VFUBNR24jkqzw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DT193913JRGXNrr+T7IzeZRwdyRk4c6vZf2XZyqkO53T03DCpoG81rnYTjZnkw8zu9lkLduokfZKI/1AtX18ip0fTctHDoLY/aheKLsJpciOcZ/x97I5k52VUnqsX1RKYIY+6je2zFIYJskaGFnMtmjJgfA4zMZGa7ftXIbJGY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GmusjpdG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XYYk018237
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:59:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uiv/XsSJSXK2+dr1Alsnv4ajZiNrr6ESJ9d7QQbgOeM=; b=GmusjpdGWf2ntEuN
	yKa8qCfbKl/RpVTJVVX4qC7wlSFDnSXYYpAlMOT665oYDxcgHFCAPo94gap3cs1g
	HEHutbKCNyXeh1pr6wTzKJ8bmzbLh3hSfg5AJUCvVTBXkXt7ASZSeafScMixmaRX
	9U1Qtoy9rqDjd9IDQSbIKRCdKG5KcI90JyzbW7Ts0pgB2YM8pU65kFgNBPtaRY2/
	ffKZRIHvflq5j9I3YBjEmToNuL7gupmIjwaXZi9h+DROeu1pRr4Sv1x/f+nSFb9K
	Fro7xJP687mno1TBMVJ1brL7purdc2tffvT7isnM1RQsPA0SXnMZC9ObTg3PNDVN
	hIiRIQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwajnq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:59:15 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b604c02383so24894961cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:59:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758117554; x=1758722354;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uiv/XsSJSXK2+dr1Alsnv4ajZiNrr6ESJ9d7QQbgOeM=;
        b=Sq/8YTcXSP0+VzDFEpzsHsDWmK8AZV3lOepVYhMuWLXYu9pYSbtueuf2/2LjXO9Fxz
         /p//PD/GufFZG617MnKP6sfltsNfQui9CDSAYbuD6cbvW4rHVefDVtjNLBotAg8onFGh
         QGYZFMJqwQ+oi4jwpfdl8rDyDZdDA85p0imwiEtjtEpF2RE83ZDwsVnhcujyDL0XYUlp
         BHG4/uE7NJPY9ZuIyEf79tJGi0ubGy+DYW/gdfr2g6KzK6LHvEodNx/44DoodsRlU0ac
         UcFjiuxhIIw9X/bYyN9h4R7h6651MXtgUzelGe9xhwtkmLJZu6ucpJAmt2hR0oKMKIfK
         Gf/g==
X-Forwarded-Encrypted: i=1; AJvYcCXQmoz3OKJ+SgZhZVdIj4GNjWxteZ/r7Tp5+rrbYvf4UQHkAGvQFvcwRtledsMonz2GevZWLUACt0wV@vger.kernel.org
X-Gm-Message-State: AOJu0YynOEbQ1KKY8dEvUPPv/w3/70A6nx/nrqlNywI6HQKqV3BlRI+G
	HA1MZ9QQx7LanGc6Lnt5u/QqYY16i7yJ2jWxRKN8511cbRk6B7r1nbovvCa1gZo/Q56ixQkICQV
	40ZDMt1Emb8oTcoMLkGIZJlvHHvBb1G6qtS5lOJeKmnXYsF1IWzPjnWelh1dPB9Xp
X-Gm-Gg: ASbGncslsvjiNBCq+qnWqlygq1c1+RkhIT2gGLNyVamhy+5iEmdAFpz6JulKinh3YKg
	/PgJDoeynNuUPtSmpLPlwaGoIlvB7Y+uCm1T2fZIZtSpJAYWP/YwsBOBzibIvEzv0kJWqNwcP9S
	QwEWjEGgTipA1ojILcp002Kp4odOSI/nbCM2TTWFbkJvBxUvObn0yAk8FlrZU1omo/c0ExpYgeD
	mj1mcL8Sli3txyueu/bodb39pEFYwID8ScAhtAkcxtUJo8M8YzKUUX+tjbbXf37t2Td+e4keoDY
	qcL3zVyWKt91RxXAGsABf/ZmpNdjDa+t13bK88FeRy9QBmZtZfwmgwkxjWm5itvU7P3/dUSxMVS
	fDpmE8MhjNemcdq1152DVTA==
X-Received: by 2002:a05:622a:10b:b0:4b7:a308:b5aa with SMTP id d75a77b69052e-4ba68901f95mr17459971cf.7.1758117554307;
        Wed, 17 Sep 2025 06:59:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXXp9M/NfwdwYTCoRDI+XQGNkB750ohCjW9JwuICJtNf50OfYIZe+NpGOz7kkOSn2YvOjDsQ==
X-Received: by 2002:a05:622a:10b:b0:4b7:a308:b5aa with SMTP id d75a77b69052e-4ba68901f95mr17459721cf.7.1758117553734;
        Wed, 17 Sep 2025 06:59:13 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07dbf5dbf5sm1019452566b.79.2025.09.17.06.59.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:59:13 -0700 (PDT)
Message-ID: <de1a7ecb-924d-4ed2-8034-721b8dce69d4@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 15:59:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/13] arm64: dts: qcom: sdm845-lg-judyln: Add fb_panel
 dimensions
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-9-5e16e60263af@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-judyln-dts-v2-9-5e16e60263af@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=HbIUTjE8 c=1 sm=1 tr=0 ts=68cabeb4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=Gbw9aFdXAAAA:8 a=H5uZHoPd_HLTupC0YvAA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX+q9CAjd2fGOA
 Bh9yGyH6CICpZhRdZ9zO4l/LQHgqz0OGy7fZO6r0ZTs6RxgSjjO2BzhtuwyKb0waDI44+EDOslX
 wbaod319evK6yi5pypKy7nYS13uiPOVXZac4TgXqpAyCcxY3i5JhliKsX/F+ZUSHYnHgwENQnwq
 OlkjBK2jbZAajcRlST1L5nWkKykX8rD5QancphJtGMrTfYiCdJ2cEChTNZ3tMpY1V76LKzpe5yC
 SyTWWIoO16R7G0oYZHGRal+cURC0kImOn0rkVlCcJNyV/mvpireBRKJcqskwu3UNK+qfcAJ3smo
 eHqpF8d1DJBSjzh31Sebt1y6us4LdFgaAj95Q5AQCLamsxedPPrHmie3igasCJhBKrjw7v4WJIw
 e24cAfCR
X-Proofpoint-GUID: i2h9bAuXOna-oNNlun94oWqmvomgwP1-
X-Proofpoint-ORIG-GUID: i2h9bAuXOna-oNNlun94oWqmvomgwP1-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/17/25 3:09 AM, Paul Sajna wrote:
> Add display dimensions for proper scaling
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> index e84b45ed82fd13850ea7ec1f34ddac5b59fc1434..8c1692f86e6ceea7b718361965e78f95d39373bb 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> @@ -23,6 +23,13 @@ framebuffer@9d400000 {
>  			format = "a8r8g8b8";
>  			lab-supply = <&lab>;
>  			ibb-supply = <&ibb>;
> +
> +			panel = <&fb_panel>;
> +
> +			fb_panel: fb-panel {
> +				width-mm = <65>;
> +				height-mm = <140>;

It'd be nicer if you moved these properties to the actual panel
node (the DSI one) and referenced that one instead (I think that
should work)

Konrad

