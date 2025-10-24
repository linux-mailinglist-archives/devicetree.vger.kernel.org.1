Return-Path: <devicetree+bounces-230683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B882FC050AA
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:28:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59E153AE9FC
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43FB0303CAC;
	Fri, 24 Oct 2025 08:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ihw2QGcN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6432C3278
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761294384; cv=none; b=ZIKolrTP9JQOYm5arr3olED7OSRZcg9hXOSJYmonDSVEcOQFb24QgAnepjUzq5JKDKtK7oaGYCr+7MemP2tmbrDQ3Qjg2sXOWuvr/AxUHcef1TnCO+wqbPEOUntfjeAPSSYlEikg8s7G9YGNEXKPZjpCF3TtHhrXrMvL1kI8Bjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761294384; c=relaxed/simple;
	bh=3wnHXXUbxvNC7AueLagvjDdvYpIN3luXco1Nv9HWe1c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p1mMuIcVsfqHbFVUosSsBohyw5B6c7QT+UzRj/kmXyyV4IGMzUHmVID6ZzxzHUCpZOb0Y7LNwI4FyNIiRHMBevQ9O0on+FmckfyfkZbV1aTj7H9HbyPqM3w9NBrGqXFnSSFmn8EKb/xfdKAOqnbA/+qpQsq8Q7in7+hqxWiJKS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ihw2QGcN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FLJm014876
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:26:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	376XFuF7lnjqNU0g0kqMrsqRp3dXMifm6+om7j0VY3E=; b=Ihw2QGcNGcc69+eG
	Isj4MqXGrpud8K9PQ3Hs0n9nMPbXFjUX43m/dTOq2VvSvGA1unEfwd5MXOCqe8Ii
	7KBCcKF1TLXNIlh2egiGZrgSAcLicrz0i4//t4IZL7pa748VrWijUGe+695/9yPT
	Rn82t9JQBxEE81Idn0GG7xjYYIxhhdRm0TZwwOT5/vLsRHLVM04eKHOPmKnVhFCt
	V7tbTITyXp59YTV7WlZu7dtdvrDjRJfxEcxbqhaQQyRpUrTsxYr2b3MoDKiWPZlA
	t/8gD/mm2W267tc9KMkQ6FKC4RDBYY04zjATvCnB0o6QnC3SpvW38XT71GL1kl2A
	YU7lYw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v08pujuh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:26:21 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-826b30ed087so4956376d6.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:26:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761294380; x=1761899180;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=376XFuF7lnjqNU0g0kqMrsqRp3dXMifm6+om7j0VY3E=;
        b=Jj8C+nd+jVbNkOcHFPjejIgRqbqTZxCFqLiD5BpoVqSNzlKGtgt5Qmg1dX2DTTyJz8
         Q3A9vy0V/yg+CyRUjKyoE2uIaziURJ6Ebjb6chrKmSd7gG3E0GlSj5kFqH3Agcu/Ez6j
         fEqCZkWwt4TXj0HM5+mN1FtByQsrIRmt3pG7HEb8EzVR1zVcMtXBrdR8DjwWRU0GpGRR
         Q3NN0/GElbpapHyRHslhR+TANfqNVyn3jSATjukN6zvXXSo9m0lHuXQ2kNTmuggS3IdE
         MNTm2Sj0uqfAN7d7BnBhuZ3yLcmA29mn7EHDrVo6KP7KnPCFupv95PCloLUBXczMONZT
         X5FA==
X-Forwarded-Encrypted: i=1; AJvYcCXfRBYy2TXEacoE7b3DdVm3MLQKelrnT6f3lmmKP0ROHpq7hyXbUHALJVf+RczQAyGE8FzG5M/ixnZt@vger.kernel.org
X-Gm-Message-State: AOJu0YyZHlwDQvV6+dY6eg4v6Xa+poIes5fPlHeioAphL0PH+CpFaa+N
	cY5izZjvyrYHsTxvYkxkRshc9TCOGNoZm8UIAkI7X46xrs/GnO2EShIDF5lzOgWid0YfKKw/+Si
	HKRNMXbuO5vXniMcSNM2VmucGtcmhhb6bB1f7VV4kEnbuU1G9/XlRUqbC1LnMICYf
X-Gm-Gg: ASbGnctyB/bftht0Pso6Og49gBCFDaP1RSU3f3sGaKQ6ILId34rpZpf7hz1UQf5WCgY
	0UT5FFaulitmczhLbUB0oLMW9AdiyppfPoBIp6ZQImOIstap5/Bti4YpNShWcTAV04Gwkg65BoW
	si0AmdY/f+o4dOh6k1TCMaiHtji9Ot4SzoaX1KmhlilA7kqCJRTfq125OTt36aTd0iA88+10DFg
	ikVxMSf7oIZ2QlyqUACo7L5LrWLIcmjqloY4tE5hl44JjTrtNwR1QsCZyYQiYTuyChn/6Rrl1RC
	tj6LuEPlAIAuyWKfI1j29OrL/qAolMsl6TZWlm1V7eu46ciSxkRw1AnTBkCvtNaabA0m7C27ntJ
	0aUMNnZGvxfk5hwXIbqdpJoJfem6vV9Us9S+25sOdJqEK1RRuei/v6xaw
X-Received: by 2002:ac8:58d1:0:b0:4b5:e4dc:1ee5 with SMTP id d75a77b69052e-4ea116a3a18mr118992411cf.3.1761294380469;
        Fri, 24 Oct 2025 01:26:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+kaZi0Hbg5k3D9owRXyS9MsGI1IZ5n8ScVBwkhSrJAmMxzXcl7R5offEga6X9VsoIJFEXhQ==
X-Received: by 2002:ac8:58d1:0:b0:4b5:e4dc:1ee5 with SMTP id d75a77b69052e-4ea116a3a18mr118992281cf.3.1761294380006;
        Fri, 24 Oct 2025 01:26:20 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d7971c8b2sm16029266b.45.2025.10.24.01.26.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 01:26:19 -0700 (PDT)
Message-ID: <229c1807-e534-4f9c-b459-350be0a12888@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 10:26:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sdm630: Add FastRPC nodes to
 ADSP
To: Nickolay Goppen <setotau@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-0-895ffe50ab5f@mainlining.org>
 <20251023-qcom-sdm660-cdsp-adsp-dts-v2-3-895ffe50ab5f@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-3-895ffe50ab5f@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMCBTYWx0ZWRfX3IhelAlr67yQ
 QpmrtaQh9lYc2m/l2tnLxULOIOT5v2dUgIQjgfDG7LC4b7LN4js8fKK2V207zIwsBDKlQ1MQr4N
 Ry02OsRc8n70sk59pRp/vGu/S3JLQzNY9EKsYDt5s32s9gfeoYmcfqEDCR3tnU2VlDOnhGRMlXU
 GFumD+gs9WNo+rP/sMxbPU+i//qSgsT2L8qhuwlgeM5cTqOsbiAFoyeI3urOMGGfPOBWLIx78M9
 ZegK5jzbchk5pnFDNgECw1UeelsD4rDIC6mMjVa6oKOyWQZXzmcJexoWKGIlJvIC/lrnGllKMcy
 S6Ee8PN6uuJ6V3535gIrqYfD3fwnEqdirj7DKujocJJ6MjtpxP7o4iQsi5YAaTg8pZsx/n8D36A
 vXh2zu0rlJZ+1jL1Rlro4M9lVa7rig==
X-Proofpoint-GUID: fCdQU_s5QcqneDzjmZKI3xJPL2HW3gTH
X-Authority-Analysis: v=2.4 cv=Up1u9uwB c=1 sm=1 tr=0 ts=68fb382d cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OuZLqq7tAAAA:8 a=2ipkEsje13vFSbuXtY0A:9 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: fCdQU_s5QcqneDzjmZKI3xJPL2HW3gTH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180000

On 10/23/25 9:52 PM, Nickolay Goppen wrote:
> Add FastRPC subnode with compute-cb subnodes to ADSP node.
> 
> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> index f4906ee3f0c3..2764666714e6 100644
> --- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> @@ -2342,6 +2342,39 @@ q6routing: routing {
>  						};
>  					};
>  				};
> +
> +				fastrpc {
> +					compatible = "qcom,fastrpc";
> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> +					label = "adsp";
> +					qcom,non-secure-domain;

I'm not sure this property is valid

Konrad

