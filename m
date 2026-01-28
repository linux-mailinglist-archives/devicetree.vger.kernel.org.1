Return-Path: <devicetree+bounces-260317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCGRFhvpeWkF1AEAu9opvQ
	(envelope-from <devicetree+bounces-260317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:46:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A419FA6C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:46:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 179EE300B054
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B7A032BF2E;
	Wed, 28 Jan 2026 10:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gOF5g3BE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FF7Fy8MR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFAE18FC86
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769597203; cv=none; b=NdbmeWpwZvzWr5tKEJNdwIyBA4A1CrDcmOSDhm2QO1JPiTJQnJFmRg5xIF+UjOm9lASYT0CBvL2VFYCaBIOQI/kmp4IJzqR0u4N95Fek11nUG+5GciffylDha3wWqR1xnJY8cpTxl4eELNJkCfLvTFMd2JmCBkDz9gYLSxN8nyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769597203; c=relaxed/simple;
	bh=GJGh78OVgX0ts1MRlePfIfYN27JNf8/NUs11QvP8vmg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pTlXzak2rO+I5nAkMCGBLV4IAcvCyzpvuXhQ7lrekQn47rGqwwjWHtLdzoYILtvQSUkisN7x9T8APSQWzf1iHTrqioq9+rHfNfSyBUeXEwmJ+DFwpYzK1TbaVdjwD5xD5HjnLQpTBxJWQ+gXO6xnHkeGBKzblqhjM8n+vL+LUcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gOF5g3BE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FF7Fy8MR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S91sKt3442499
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:46:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uwa6MspgeDaMnEjEP07Ff+4UbcbAFRdcCQaVvZ4XcUE=; b=gOF5g3BEg5WCkXcu
	yLt1DdgWflsPzsG8EtgP8KVJsAmq1PpDdc8MM2affS5C2+HhhsiKuvo3SG5nDmfE
	yGjYipMwLOoc8TnISWYw+BC+HCxTltcbQlKZltRqaMqH6g1C4u8vLTjhyfQGE0UW
	HwxVgdzAlwPkUTf94vmVaLOj2jXhR3faVdSOLmOUFjTiWqIl0bmwoz8eAxKbEB6W
	Szp6WB5nclURYHco0p4eoYOLtOmjTYIpFO1ZwiGiA9Hj15t40vN+Ozb8Zfewhaz2
	BKgwFP8OTqjYPX7CNg96c2satfQIuh5+1LeYFOlvBVFDB3s+6KqPW98SHJTZbO5i
	uELdTA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byanahb3h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:46:40 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c533f07450so184655585a.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769597200; x=1770202000; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uwa6MspgeDaMnEjEP07Ff+4UbcbAFRdcCQaVvZ4XcUE=;
        b=FF7Fy8MRAQK06P5Two1UvhISCfdVz7wQANqB3w2EjBQ8/jsKRZJJRrsVfWEFiWotEW
         zbWRdxSMXYoIaoZtItRdzCck5KeSCTAzq2+9GP1sQBOtMQZ7UnRz5tCSPK7L8z4A/Lme
         ypx8CP0ffIZqSkJ4Snq14azDlskw2YpAXaLug+EwPynjwKtUOrynbtr2lF3CDJDdt4YI
         kTG13KpuIUmSG3H4C+VmxTOqprC5RKvtUB4nP0FeJvGre3oBbllZamaOGHBIa9LGGeyM
         1HD8muL6ll/Ym8mga5G/1wKuXhZQBGg4KVMl67x16YYGgMmcBvWl7VfCMkGFwLoUI8z8
         lQ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769597200; x=1770202000;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uwa6MspgeDaMnEjEP07Ff+4UbcbAFRdcCQaVvZ4XcUE=;
        b=mehCvUrkXEWAVwEupgWrbpqMfGIdpfk6m/2AfkJBtH9sNxmv1YKxadl5ihMnQvgZ6m
         xQHGbOxvOAUeT0m9aDLiW6TZTvFM2CcNVI6WacnuZoRaj0Oz5gKOgPoG6urukzM43fjR
         xOfqPg2fHd2FR7oGA6eMc/OIia74yea01AK6fmTnuVHy0HaJIWLqMtdK/8oyZMDw/5QJ
         ZsPC4dpDLxShb5+B970gIQxr4oFj6Io0LofFIYdvsgNpQd3b/TArKxWXbH3T3PY61RnW
         Kj71KfyFQOsKOu+xhzho/HiXDUNmtrARkuqtPauH50+RFfO9Adsti2NyWO7IUpr8qp4n
         +H7A==
X-Forwarded-Encrypted: i=1; AJvYcCWtTZ9EkvKJUC+wifALuZjNV6t9PpBNEk5oMw81Gyhx5rV9Db2awVs8xa7CkDas97UOzLTAfJsuVB1A@vger.kernel.org
X-Gm-Message-State: AOJu0YyX4um+dTV8o4Xfx8XJHa1rbN+++RcjmelhEdOanuJFfBSirbjL
	qOv8mh4tL7Jz8EwVX0aBRaqHINJXCsssFzhH25yZiJ9bpNXx1fEFCE2drLj5Ms0CSlCTbgVFXDC
	UqTYdgROLwXzhkuZ1IMSPvukmlVkWrOs8uuk7zOnNiWVGOvXTqsX3pE/LASfAXooW
X-Gm-Gg: AZuq6aKFLi2k0l5grRSCkVUwDPalL+znVzkH9nxG42fO6fubClbkiB5WJ6ZIBsiKivI
	M98ERcrGdQc+IPjRdRJG/xO/Xv80ZwgeRw/mR8TFeIxpINL2QuJ9/r/TczkKqhjEhBNKgjA5LU7
	v75x0RICug1eU7aiosIJ2UMjOUotzpeI4rb6NrtarbPoicAukE4nnc41SMys6AgsixxK+nxv5Uf
	+Q8v7YGHifzp2GYfcGITnaDMr88Y4P0l1KvjtR/RYLhi4CgmUTV8efyekoiQJXELNlk6lxT/xgZ
	9RbyrzO8wWyBFaiGFEprS+9ewXeFcD/02xIN33fglf0IpTRdu0KVrU1PVm9X3oJF2AtkhU2Ib36
	MgZvhC5Hhy9rGgntGfcNJBm5sOZeSHTr03TL4jbN83o1ibEnDGJNJ0yyCHpODe8WVZN4=
X-Received: by 2002:a05:620a:191f:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8c714b9360fmr114711685a.2.1769597199845;
        Wed, 28 Jan 2026 02:46:39 -0800 (PST)
X-Received: by 2002:a05:620a:191f:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8c714b9360fmr114710285a.2.1769597199457;
        Wed, 28 Jan 2026 02:46:39 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbef86df9sm114178366b.10.2026.01.28.02.46.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 02:46:38 -0800 (PST)
Message-ID: <366fe074-3355-4c9b-b60f-4f7de0ba6a0f@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 11:46:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8650: add CPU cache size
 properties
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260128-topic-sm8650-upstream-cpu-props-v1-0-9fbb5efe7f07@linaro.org>
 <20260128-topic-sm8650-upstream-cpu-props-v1-2-9fbb5efe7f07@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128-topic-sm8650-upstream-cpu-props-v1-2-9fbb5efe7f07@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: NIg2DW55tetIAwrlOpsEnbf4Ltv3dU1N
X-Proofpoint-ORIG-GUID: NIg2DW55tetIAwrlOpsEnbf4Ltv3dU1N
X-Authority-Analysis: v=2.4 cv=N58k1m9B c=1 sm=1 tr=0 ts=6979e910 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=eHTvguOgXxrd6O_h2noA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA4NyBTYWx0ZWRfX/vswMaCohjfP
 Sr1CFcya5wBS2v6AQP5q+3K/ehMrmZrzkiPd13mf/aLsUeut8jfyTfAzt80zaCfXZQBlnpC1cLz
 o/s3q4Ou5eWH8sTQbJUIOvWL2BevfNKccLJzspLSl47rBqIWFonVy51f5JWdqphXhTvQoE49Bdd
 yAnwg+i25JhPgJ+NeaD224bQS88ykFTRJv/GakGEZZqQf6j96ChLpRpOonlCGEup4OUj78No8F6
 LzvLZkaRTul50yxx0lftyFwqOVUwHt9iqlDnlUa7UOcF6P3Bvy7enaUQxF+x6am2DGyRSIA/AMN
 bWVPJDy54YEaPrPH/LqZVbZT/bbc3Q8z35JBFJW8JHEK7BU+jOXKlrcPhE4R7iY+s5WDtHfQQXi
 fdh6xJdMQ+RlC8beI7rUbSJEh6RJKUONzxKTJvOtQxm5EcwiV87+ExRWv5OpfJAs3TZAm3EPA1g
 0R79Gek/TMiGu/N89Gw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260317-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A9A419FA6C
X-Rspamd-Action: no action

On 1/28/26 11:33 AM, Neil Armstrong wrote:
> Add the L1 cache size and its line size (cache-size and
> cache-line-size) with the corresponding L1-I cache and L1-D cache.
> 
> L1 cache is unified, but clidr_el1 register (get_cache_type) tells that
> L1 cache is separated (CACHE_TYPE_SEPARATE), add i-cache-line-size and
> d-cache-line-size and cache-line-size of L3 cache is specified.
> 
> All cache line sizes were confirmed by checking ccsidr_el1.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 56 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 8671c25dd68f..f8563ec79dc6 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -75,6 +75,11 @@ cpu0: cpu@0 {
>  			compatible = "arm,cortex-a520";
>  			reg = <0 0>;
>  
> +			i-cache-size = <65536>;
> +			i-cache-line-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-line-size = <64>;
> +
>  			clocks = <&cpufreq_hw 0>;
>  
>  			power-domains = <&cpu_pd0>;
> @@ -103,11 +108,15 @@ l2_0: l2-cache {
>  				cache-level = <2>;
>  				cache-unified;
>  				next-level-cache = <&l3_0>;
> +				cache-size = <262144>;

This should be 512 kiB, shared for c0/1, according to a block
diagram

Everything else lgtm, although I can't find a source for the
cache*line* sizes

Konrad

