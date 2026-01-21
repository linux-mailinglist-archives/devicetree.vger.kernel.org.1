Return-Path: <devicetree+bounces-257903-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDmGFSu8cGkRZgAAu9opvQ
	(envelope-from <devicetree+bounces-257903-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:44:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA0A5630F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:44:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E85B54E1C59
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0C093D4122;
	Wed, 21 Jan 2026 11:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eefXYH+m";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g/6nJ9r9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873FEE571
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768995577; cv=none; b=elagAK+UJGF6l+lCIWGr0nCZ6PQRNEjvL7UG9lUuzWQ73J/N2gYGcE7blmNZBrE0PXLnji1H0/luOa3yUikm+3vplmWz3TNXXs1VOrQzjhnvfy4sulbpF7gSlrCtE5K96y9TzD4ZgbFzh6xIgRvMkkIAvyErRO9DaWaXhnAI/gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768995577; c=relaxed/simple;
	bh=C3AuM6OlMCXL0GH6v1baiVoxcEikaQ64Uxk+D6jO7RI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sgFNyFqOJDvyNY3ls2Fn1f7bJYSp5WhP7/rJFO0uQrDLRpLR16g5v0/zE8dTY/XqoBsP5K+d/YOMFgdjIcW3PlciNJL+U9hjIBRM8VGhU7sPC6fJ/xsFhXcZkOodW8zG+d9hMy7ZQEr0nf23qEf6VinyfPXcjxvcbpSDSQPqBgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eefXYH+m; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g/6nJ9r9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9euJA3991338
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:39:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PI5WjoN6WRRm+sMw8sYJtYcPNwFg57e6M1Ef3SvecmU=; b=eefXYH+mA2bY8wVm
	HU2LQb/J+S90yIdIG/h9dOtRckpnons+WTIlCbHvfymT7QNIAUN0foSNsWcmLM+4
	7D4uYLXR6Pd5qh/yLG3iXyjWPn3a1o1OS8FQ/lAPJriS2mxD0tbw7Fi22lx9Zcap
	HmDCUXonDH/kQlZOcyd8LCWMoC9TDZwDOVnxLutA8yCbCWs4xOFZhtC4+ODVhQpz
	fPs2N56exp+7jX1E4itcxXXNpBjZWwzVGzJzkfUWO1sqVHfpBroIIyOwaYUB4bUt
	lS/C9U1JpttPJQhHoheREgxUD2D5X61uH5/VkndhgJwOmDfSbsuiNWwqaptMO3uY
	XCUKlA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btpm421bk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:39:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c536c9d2f7so231335685a.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 03:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768995572; x=1769600372; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PI5WjoN6WRRm+sMw8sYJtYcPNwFg57e6M1Ef3SvecmU=;
        b=g/6nJ9r9lT9Da8ks8l0Pp2gOu/af0ao5JVJT/Qbu1OfNbbyA5NZ0ruIeMB+zBLzsD+
         dU4z50jKjtuW+6LP+f0nmT6l9GrmRH81e9iGOFv/kmcpSzgLjQ6Lr51lCgGiSRpmhG/c
         uvekJlAtBffgUSyOgqfCRtHgySYXdqngQGwv/5/OTqY6VKfdIHwNLlFFC1mlK2zzQLBD
         wXZdU4nLa1wXB59/m5wSTHjTvgh+SaFP2F9YULbzPojHIa5cEQRgQCLRmJCseQuaovvv
         0fimSn9jzFerkcLh6g+mcHkXw9tDCuhdhbMrSTxVMeb2HqLvl4OKVyPz8qpoPll9B6J6
         w1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768995572; x=1769600372;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PI5WjoN6WRRm+sMw8sYJtYcPNwFg57e6M1Ef3SvecmU=;
        b=oV5dEAvafIFDRK15KAOfo2k1916PnXRWCpVh9t5NfI5A09koDthmRYFoyIHUttm+06
         oy51Haglr0g8G6bjIrNLtVccHHjrSU2jhc0A0q6J0G7evfhXrpy9x7ZzCeFYwRmebCZy
         /RNezqyCFEMyMt+4Gmns2QE6EFmOIP1l16maLq9Jg/Q0/SSEv92vPJS9gBfFKdYjNBfZ
         pYk7++ILTvtlHmcClxg3lYLdiPIPcEw1yTtHAXPVVwO6yP0myDzaziEwNJ1nVXLLrWxs
         t4bNC7sH9btXDpx38ZWqitD/JO1ehpoyNlI8RkapIz2CpSw6JkIF9Io/Ygi9zXcmcpq2
         uVqw==
X-Forwarded-Encrypted: i=1; AJvYcCVzLFfEt9iViLvJO2EtbA2xZlWgASEtEgtFPOta08aZFc0AIPV68UoGWEXLU3wa/y9J1kUxt9TOQ/ZL@vger.kernel.org
X-Gm-Message-State: AOJu0YzkAXpn0g8oKgNxOx2yQVAtOQcYbTtfMW20wt5Sti86BhqLN72W
	PQiQowQEc/FFpVJLFaE3d/Qx8d8hlxmYd0LQoCCZBZbmCGyzSynm5uJjo8P5AYr2SFZtn/W9Xj6
	Q1ZucMDpOxwDlzqbmU6iApKv69WHMnv6V0TY5zHN7V9X9ZDofoaTpTK5zNhezWjWn
X-Gm-Gg: AZuq6aLBOkMtYhfUHNuWZneEf70g59qM1Q6k3BOOE8SC4jynm978w1W//SkQisyvrPJ
	0+ZtL/1D3rWeIGI1FLb3GuKUKXh64r4Lerdm5tntE9d0I7OMKDdF9015f1Eiad6zh36P3S2xZ7M
	s9kEmcorJT7w8pWC6a+nSTiuS4h7Aw4WbuFNjnzcqcNHl5PcWDGUjnrS0ht9aKY+pKxNqbp2NEp
	xgalMP5zqBZeNWnbbDkgiZMM/1BmQcCKsSB/BaBMhE8YJlLk0k7v0MfKPtSB9Ecmh5kC0wD90Aq
	ZnzBFxqSuHbTDRww4UF1eRPjmfj9ABUyLeqLnAlb416BmQ1Iob0PQS0PctOB5AJz0XYh5GrJZZA
	M/0BDTMvc+BsgRb/HhBqOrqxZKsG4bexZcFwMPn/J4rItbjOuilKbmsEKC2NgnzTxDNw=
X-Received: by 2002:a05:620a:e05:b0:8c6:af70:22bb with SMTP id af79cd13be357-8c6af702446mr1261656485a.5.1768995571830;
        Wed, 21 Jan 2026 03:39:31 -0800 (PST)
X-Received: by 2002:a05:620a:e05:b0:8c6:af70:22bb with SMTP id af79cd13be357-8c6af702446mr1261654785a.5.1768995571452;
        Wed, 21 Jan 2026 03:39:31 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65816ab4144sm637133a12.33.2026.01.21.03.39.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 03:39:30 -0800 (PST)
Message-ID: <5ff927b4-8596-467b-bece-00364a00324b@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 12:39:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm630: add SPI7 interface
To: Gianluca Boiano <morf3089@gmail.com>, andersson@kernel.org
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260120193634.1089688-1-morf3089@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260120193634.1089688-1-morf3089@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Jv38bc4C c=1 sm=1 tr=0 ts=6970baf5 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=m2sNn94M0xWKcIwpXWYA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: oHN134ohrjKnHHemnHQQRtaaKon6y0SX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA5NyBTYWx0ZWRfXxXxYlHTD8lEK
 dW31LXk2j8ILYf7tRCyO0MTE2CMVsFOw5wIPfPP1ohjW0an/b3PT7LwmvfHhYEld4dq2nsdAmpG
 CO/VzX7kzdjuvBEAfjfpYCjbM2NZ3fxUA43wBKmzjWKRE3j3oJvMbIZ1D3r36Un/rppVbfz+zqS
 rXwl1N9TCIUorbrS24UA0vouaADLhnv3oZal4tGmGOBB4oBjYFOEbp4PduE5UeHLs6tr+aVwIbD
 Nkp+D8gDyOTFxfWKPIiQXuHDmeTgYhU2MX4AzUN9dTffO19V7+d81yEapSPeo26ivH5qBQ4bTse
 c/rkjHnxHtSQmK8kOCFa5O0YLHQ7BnEP28ybAIv8pNSTsrpbzMTL9oVjId5hx3Y3i170pjXc79p
 vEdE7Q3zQ4QS9ReeAUGJki9TXAnXUDm9n6IeOPZFjMdSzTEfoW84L+yOPacqw3l8htjALfrMawg
 YFsqBA328+KShbwxE9g==
X-Proofpoint-ORIG-GUID: oHN134ohrjKnHHemnHQQRtaaKon6y0SX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210097
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-257903-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EFA0A5630F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/20/26 8:36 PM, Gianluca Boiano wrote:
> Add spi7 interface to SDM630 device tree.
> 
> Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 34 ++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> index 8b1a45a4e56e..92afb5428e3c 100644
> --- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> @@ -1013,6 +1013,20 @@ data-pins {
>  					drive-strength = <2>;
>  				};
>  			};
> +
> +			spi7_default: spi7-default-state {
> +				pins = "gpio24", "gpio25", "gpio26", "gpio27";
> +				function = "blsp_spi7";
> +				drive-strength = <6>;
> +				bias-disable;
> +			};
> +
> +			spi7_sleep: spi7-sleep-state {
> +				pins = "gpio24", "gpio25", "gpio26", "gpio27";
> +				function = "blsp_spi7";
> +				drive-strength = <6>;
> +				bias-disable;
> +			};

Since they're identical, you can define it once and reference 
twice

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


