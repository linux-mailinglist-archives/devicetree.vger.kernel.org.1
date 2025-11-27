Return-Path: <devicetree+bounces-242668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB87C8DBB4
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 11:22:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C669D4E59C2
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 10:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B972328B5C;
	Thu, 27 Nov 2025 10:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RO7G+UGO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bmOEXMaT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09CC2F90E0
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764238939; cv=none; b=A4e0PQeoV+VXXnYtSuGbZfZZZqCcdDRA0Vj85pCU1Cty8Vgwb+CZ+2L3PtxrNRdGGPf72bbUfo4qH/LR8pwb+JqkR7AjkYXQi8yTUygY39RmBhJ/5IJQS6V9I8GcZ5TEwBXUoJmZA3VZEdrMCxRrH+sB9DSw4JgPgUAFm0OXjb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764238939; c=relaxed/simple;
	bh=EzZcKz34puk0lf+z2fBkN/21KveoFk/UhBjwLqxGJQQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u5eGA6BScMuqX7t+gEiJoqV1/CfTDwO+Gym2vfWqtVR6yL6qL7+tfA3vvTEJPcP8xWqjUyS3sGZ1yFpp8/Tvb4hm5u72h7TgrgYxPBdwV/afFdx+y78hbP3fEKLMrfMAJgvptkun2rmQImsoZH9exyOfxQiGhKzkr+MQHd1aO74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RO7G+UGO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bmOEXMaT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AR9B6Nm1668417
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:22:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8Izgit49DNjllAi6oPH9XyHM39nEnA5/CQE/IZlGSxU=; b=RO7G+UGOq7sknBHA
	S6tIVvGMiNKwTz5yHe1betV/jWH8WY8fri06a6LETs4YBZtcvSJTzSRTgKNtvK3/
	/EexDJeN5jwkTG5Aedqf+6UxVBicrrCrFyKISAnur2CT5tzfY/hWEGD8eLVNJghS
	VLIUs/r9WDjDoEzz/5zmSf8HJr46JZCmwg+MnZ7xPXPxpLxvRU30TmGvZpTQZQyh
	3uwiVhoBGbyiln3hkpKBx3PykK3cHADW9/PJRAuhf2wGctaUwZdiaIpjVCfE4GWD
	dUBIyoZJtCGoQRkVv8Sa9ljTWF2kupLczME7YubGZOmIjf1MorZdSr/Q4zT3ty5k
	ZZgRnA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ap0bmuf3n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:22:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso1603181cf.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 02:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764238936; x=1764843736; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Izgit49DNjllAi6oPH9XyHM39nEnA5/CQE/IZlGSxU=;
        b=bmOEXMaT2g1OPtUZ9hggy01LcG07QmGiCDYeqrflQE4/RVq++71UP2V3RPUqpc16++
         iWkt6NwF9RctBJcBr90+oTHXKS2rykN6PWch2pYExYIFd1WsQDAJ0v+4WC1rQrLK9g/w
         1e74PNKqjyt4YuCTPp434orRajB8xMJ9mhIgFrshrxLtBuJOUWM6RboPxyKxvBw+pO6r
         Lj6fC9yOB9Mb+AsSyRt8cn75r82HlqsF49KcvEW5MxuWauJPeK0Q9aX0aVqJ46iNIYRE
         wavc+BTxZioYO1wlFNv96CRuroLe621i5L/hOSFLQAeegkchSk5x31s6vDqeNQYb3xPj
         R9ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764238936; x=1764843736;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Izgit49DNjllAi6oPH9XyHM39nEnA5/CQE/IZlGSxU=;
        b=ulAped60k1CutMalmrMxtrRxNsAV738XnK1sgShA/pVPJ30OZ6tNuUD2WLrMS2vrkR
         Dj5CuH36su5aVFKmcamBUg7Fbr0UZfwfUsTgyhHMcFNd6ptj1Jjocnmqqjp6w34MKaud
         YCPBaS4RNTiKZQM8Wb53Yb7rulkKT+jjQ+d50bm5jaFraoSowB8QKbTRJydAPz6Jm/hu
         0X/LabPiH2gHA9qoBbg13FsuotuY4EteKYueSOIy4CEi0xlxTnCN1jvysHALIEUQQuSK
         rqL02OhaLOsQ5MYXL5bZNkDvZ5UE461UwG+1g3GmFWYRHfTyYdoXJnDflHFcGfZ5VsEb
         ehGw==
X-Forwarded-Encrypted: i=1; AJvYcCVQktjUsvyCUcfKEhpLY9uRugj+TdA/LZV7DfXq9HqNqZQvGMJcxmHMgBkHtZ780Jj3H1vJzP+KqhvD@vger.kernel.org
X-Gm-Message-State: AOJu0YxXvr97K8ujsduptnfZI77yyeOjzDeXvwH1tfLEsrNng3bJBh3t
	wrpEkpPFkEyrgMvYssfk5ao4ha359ZiNOVqwaSeqEkNYrtkaDDZBgqZ/fSl1N6ctMTFTxEYGNut
	+VIo3oeFWFtvtf/w9JpHxT6ePTNezBEmx2XZsGZi2LxPhs0L/fFR3FqyKKPaooOngXCIsL6Qf
X-Gm-Gg: ASbGncuoKLs46xGQXuhqQF/ZzAqkgv0Dn21WwzXf7AIVSm+/oPDAO/d1f+mKjTFgHiV
	Y6aU4/SCp0Zhq6ClOTf7Fz7yk7e/18fiCTONK3zPeCPSgTpcBZevGk0xsDeJiAnwf7HjM1ny/9B
	j7HM+9iSsLSRRGTD/PzzNWGLMx8OFEsDaP1GsotoM+Tf1JBZdIVGrI8pIS8pQQuTxb6tyJEEmqr
	5K8e3opTAUBsEBHnYNgldzxSf9mESHJO7hjZPbxEnQ3liEDYx+r66wBScVz7N5mYVOpxLLmX5/h
	PKN2jb9T8ekGXM2C2xF9IXg4bqWqY3JBCiCQpClgEhll7R5z2Wg8ufVpcadM0EgIWUY/GSf7bei
	V0haAjWYKe63ZZlvaRnnml+PdC65H0sWAjbE5v0myj9XKrJRzwst5kDiiYF4R39SHz78=
X-Received: by 2002:a05:622a:511:b0:4ee:2bff:2d5b with SMTP id d75a77b69052e-4ee5886636dmr231859131cf.5.1764238935677;
        Thu, 27 Nov 2025 02:22:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqUc0ogtoHKBCaZjWaF2tK/VCEBVLqOY0zxIutky9DgwOKFAZGrdI/Xrev9xz3VoYkwpdCjA==
X-Received: by 2002:a05:622a:511:b0:4ee:2bff:2d5b with SMTP id d75a77b69052e-4ee5886636dmr231858881cf.5.1764238935174;
        Thu, 27 Nov 2025 02:22:15 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5163903sm130958466b.7.2025.11.27.02.22.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 02:22:14 -0800 (PST)
Message-ID: <80c26f33-aaee-44f2-ab7f-767467423396@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 11:22:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] soc: qcom: llcc-qcom: Add support for Glymur
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com>
 <20251125-glymur_llcc_enablement-v2-3-75a10be51d74@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125-glymur_llcc_enablement-v2-3-75a10be51d74@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AKyLkLWT c=1 sm=1 tr=0 ts=69282658 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=LSTLbLsVR9BkKCPKAs8A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDA3NSBTYWx0ZWRfXzF6o+JFIlrEL
 yUM2yaURwR9e5L2VsoyGHvRkJdsclCaDrMKFx1bnE++FPxod6lPyDetkAGI1KNci6t3+7ZbUpwq
 3xP9QgtcNXZtOc9QG+FzALxvXRNW3ar2cEKBMRTjfAgNHHKgvYMbppcLQPlz3XvVdIm703qBJe5
 P09TlW6v/LURoYjd6BBq0V0iAiJ7oUfEqvZjv2EwN6y/3tBo3wE4thQ83S7NNhZ8YbNZHhYQFM1
 OGAIAwEp92qKMEfTGnqQMJIOEsB7h9Ri2Zs2VE8EXNEufNhyWOBH9MvpiZX10qlwFM54XtX1wTY
 Z851lwtNL7FctqDJ1cjq+gSVL2eGvrWzgvAzpXOcQg/Ez5I5zKGMrK3kE+vk13dggI1S4Z+t6Qq
 wFTZhQdY5nOPNQrN+4jvAxBLnvnX9w==
X-Proofpoint-GUID: -sbAXytJ-grEoF3JfKbEvh1Tfm7Q0Hp7
X-Proofpoint-ORIG-GUID: -sbAXytJ-grEoF3JfKbEvh1Tfm7Q0Hp7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270075

On 11/25/25 10:16 AM, Pankaj Patil wrote:
> Add system cache table(SCT) and configs for Glymur SoC
> Updated the list of usecase id's to enable additional clients for Glymur
> 
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

What happened to my tag? :(

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

