Return-Path: <devicetree+bounces-247395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CA0CC77AF
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:04:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00682302175D
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B61A33BBCE;
	Wed, 17 Dec 2025 12:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q4mNHrEm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PdKGRVup"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512E133B96D
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765973086; cv=none; b=ZH1rhiZ3ajQja/IlP3Ylvc6C+HjEC4KgcZIz7bMKK2//AQPOjRjWGaStzqWi53Sr3HYlHB7yDqp56lb2VxyYKrJDFsdu/TITQ3sc0vrUW3PlIcnmq10vCh3+ewE+9rfs5UYaCX/Jut0QZskvgHNW1sd96V3hEw7VwS7wwYgeA9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765973086; c=relaxed/simple;
	bh=uBF7jlSoEoiH4BfDXFU84wpBnHQgusEmkCAEF3OwAzs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vBIQRcYvBZqn9PIiovsD5Jrwhqgct26fMFLr3+bqCJcf9OoqvpYp4XaG42qwP1sON9lzKmGFUrtmOp8sWBw+CaRwZca0Acb7wH1+Csbdi9gbSV+vLwKyP9w6vpO0xVYQ8NX6D59jLU/OXwci9woGK0bQi9//lzwhG/Gt/rgW9wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q4mNHrEm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PdKGRVup; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHB55Cr2316097
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:04:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XLrWVMaiJs3Mq/N5mWp0CleIsSEtJfnYE58vQXmfhy8=; b=Q4mNHrEmtezQFijs
	y7z2XkHIYSaAzf1cfqSMeRE0ZIiT0Ee0njPCxLidqUdok/3VALUw4Ftcj04pL51Q
	ARJ4/O9pGnUwxgxsIXVDmI/Mr7E8JCKJ3azfGmLlxpVYVkwzUzwMCUFfcKd4VhDx
	gYlBHpoo+saSjTaq3uVy698sZoHws2WYJHoP6ZvQTjiBobnTHCJUwbqB3sGUh5HN
	gGmEs3sWexciqv6seAZmm6lzcvZXK2o13NBy1PyJLudnGb09jOSvXDQIO1Om++xj
	I/cu2KdENSzliJxBGF3OwLVsCgWRmRzMSu8f9hRQ3jxWe5H+Rn/IMVRIR4z/6CRg
	NdG24g==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3nkkhc2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:04:43 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-6446cbc11a4so1837560d50.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:04:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765973083; x=1766577883; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XLrWVMaiJs3Mq/N5mWp0CleIsSEtJfnYE58vQXmfhy8=;
        b=PdKGRVupgV57IeshvSGs39exGCmxdlN73bnILiFoI3Mk09XktveZ5vxXTTMuSMwwL6
         7Yn6Hb9E1OSA+dIDaqVQM2NC/Fl/84M8Vt8H+Y0VIxQKn8P/s9U0E2T+Z6DN9NqZY2kz
         GII+RYsvRltrjbOD+naCVA98Nb0+zcgBMdFzqPpS9yOgSyTOErJQgVSur6TxcxgnSBJv
         ovb5Sha7R9OnyLmmeiKdy5NJztpvzoTsKuexmrtSYxLOhGQctFXuIOi/jS1ldduzv8Jx
         xbPssCaj43YMRLeHapD7Ozy2/q+iSbVGV7XWxzGqSx5iCanlAsNAgJRNOp+tDx98fjAa
         xz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765973083; x=1766577883;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XLrWVMaiJs3Mq/N5mWp0CleIsSEtJfnYE58vQXmfhy8=;
        b=I8LoaE8BAs2RZma+2BQ6rXLjMaaD6yJh6AQ7KfUkTItul3XH7EI8E48RQj+EfKHuRn
         ms7KsdYDW2Fy9EE5fs9UTIrR7rM4q58lgH/kFPbv+1Zr3oI+WEooNjnBywm+rsunSY6x
         wJy4vDT2Xst1lfzZFQKdF0MlWzvkuEb6azGNHnnIq+lmonjxybS3QUJwUEB7cw0cLRhK
         kbZeFz7DTCAEc+thrhijDFBHWXa28ZSAHzIhogNLk2KCbqjFmfYETKBG/3GY5qJIL4YN
         MLSAvI8jYyCC4V6JgUujAyNWQxEFBeQCrRssB7HhN8MWiPm6vr7DDUxIGe3JT7TnAbrC
         yI/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUlfjGvwuWQQZ0geavO1dlV+cq/u5p5AMvwvF2ZgT7d/fq3dn+nftUmg9dI5TLI3AL24XZTOMHV03pl@vger.kernel.org
X-Gm-Message-State: AOJu0YynMkxs4jQ7wBgpiRs5u6syVVip+Tv3egZ2smMtMicweB5b5jGj
	vPgLiCS4h7IjRwh0E4Svg+AfIRWug+rxS3fbT/eXzOdcKKe9VPylZQaCe93ONfTt0TsBInDw5K+
	w7P3TPZq3sv/kAABqvKi+mmT4FfL2AHnGWu1N13my6kM10tVQA4ltQfOkUFeqbAZu
X-Gm-Gg: AY/fxX6VfQwB3C4X9+5SrTVJV9tSwjEeW5XGHDZutevbDyUJZWYUeVLRC60HdytdNZL
	eKKPOeTftUxLK7XS8AKzD3qVM8QsNb7Z7wX2gHLxyyMox9+FfhdDxYov9JlR7nTmgjyW4YIFzp9
	/QuvGQB/J4YIYOFozR1SU3c9kKGp7NlV/2FHKxNMQubAjyJDrvi13Ss6yNBswYOC2S3k5HMJkNg
	SsJXlRQkMB+ChEVoQcMu8uCg7AiRW1Uv4FRbC2MH1IlGKYt1VcmEajoYtsw7VOKMmfYiiWtYSNc
	YzVcHlwXAruer8jMMBFbWkNWtbpcaXKyVHBjeOA8zBekoDylqgBV/7524k8lemaLtwwHLNCn0VB
	pF8j/EcILxMduCEoe3oFecuy06msoFUlcRCT1LmY1ZvchMa3dhENVbHAuzKmbUjRv+A==
X-Received: by 2002:a05:690c:6601:b0:78c:4388:8afe with SMTP id 00721157ae682-78e66ef695bmr131567327b3.9.1765973082523;
        Wed, 17 Dec 2025 04:04:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4K0A12YGSZ5RpSg8HEc69xOuJj1UoqCdsM3mEK2bJtsg+facTn//Dvo+Pmf4AwKSSNN8OSQ==
X-Received: by 2002:a05:690c:6601:b0:78c:4388:8afe with SMTP id 00721157ae682-78e66ef695bmr131567117b3.9.1765973082091;
        Wed, 17 Dec 2025 04:04:42 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5cf210sm1969669066b.60.2025.12.17.04.04.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 04:04:41 -0800 (PST)
Message-ID: <f3ad33e4-1924-4a8e-8fe0-56487ea2c872@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 13:04:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-oneplus: Enable known blocks and
 add placeholders
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251216-placeholders-v1-1-d7d544200e7c@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251216-placeholders-v1-1-d7d544200e7c@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 9PXzugZ2DTCkHTMiEz9nkkhEmjY5iuiX
X-Proofpoint-ORIG-GUID: 9PXzugZ2DTCkHTMiEz9nkkhEmjY5iuiX
X-Authority-Analysis: v=2.4 cv=f/RFxeyM c=1 sm=1 tr=0 ts=69429c5b cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=-borPC1GNyWcu_w0NBkA:9 a=QEXdDO2ut3YA:10
 a=uujmmnXaIg8lM0-o0HFK:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5MyBTYWx0ZWRfX21WWKrD0D2af
 881q76WJfoLkRqH43vZoWEL9YTa/iOjHPyexgXXLrbJGAIIyw5Fx4RHm/Jl4H6YGgQ3f7kZszaD
 aOzEhKx7d6RPQcy7wx16RFdV2OsFxOtsWIma9C+tL8CaPkn5TJWiwwvv7TG2HLb9SzlOOgzYgzw
 +tgh3l0Ke1fOispZ28NYa6kJB8bRrAAacIki1nIAIefQMAWyzntOmITsaZpYPyYtfD+04GY8Pay
 c2WbsUWVDaL0U2I5GmG8BdhfxiChZFnbAgOv82ZtYjcQKWfx5qSvKnclBrxLxwG2jTfVY4sa56B
 ueFjZntpoEbX++AOgrC6s7kngzwzKG7IXb9zWSdDIHp0QAKtEfk83LYRT9sa38RvD/ipjwvKa4D
 N4B4tYCaDdqCrNLimwr9sqKKQZ89JA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 adultscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170093

On 12/16/25 9:34 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> We know these devices are present; most of them are supported by
> downstream and are close to the mainline kernels.
> 
> This adds placeholders for:
>  - front camera (imx371)
>  - rear cameras (imx519, imx376k)
>  - actuators
>  - NFC node on i2c3
> 
> This is very handy when rebasing the integration tree with
> support for multiple different blocks at the same time.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

[...]

> +&i2c3 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	/* nxp,nxp-nci-i2c @28 */

This seems fairly straightforward to enable - could you just
do that instead?

Konrad

