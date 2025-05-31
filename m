Return-Path: <devicetree+bounces-182021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF24AC9C62
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 20:48:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 755B13BD447
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 18:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8EC91A0714;
	Sat, 31 May 2025 18:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JnZK+hfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECB619DF61
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 18:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748717327; cv=none; b=jSsTIzlaZGtnfU3c61ftIz2qgn0opaQx915mhZD3y6CBZQ7rhlcfPlpRD89KOOi2XpyQgzXJhUPEGImIyh6wFfRFFU+ub4bWbVd9iuPMUnC4uCPBtu/XnCbwnBuOWpRj/VYkBit5N1EA3c1Zr6PsmZ1+6kSRKpfSwlAD5dbiC0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748717327; c=relaxed/simple;
	bh=twnMRSAjtTxRsTLOV3TBRxjz+geOQMUR7QVp+z8lBDY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y0WRQeqUznhHYQpE/m/1A4k0hE6c9TH/4yJJFUX9Tzj5YK5Qa7b+dyjrxp9RKSQu18vxkecHu0Oc49XcHodfkjTgkqsQZWpTCOsOXWJ6STsQTgbRWB4eX0EsVFPxCEdC6qEs//iWB180IMQ73r4/eoxKjH0dqUPrmq0LjO6aBXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JnZK+hfy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54VF97R8031903
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 18:48:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fq6UVpWTFma51ctoNBqE7AuMMwmya04U5DV/dQ3iAq8=; b=JnZK+hfyv1XyuO4x
	5QKELThanYZBqy59WIWL1V8nS2NJ147LveHw+6bJ7QutoL+kEqsqNzaleLRzpqFm
	/oAepbXDPLK5Xl6gHfRVnGij5W2VJn1QPY0TUmF2s0rlm1lpzVb4nqtwSLndkvYg
	B3hWGLJfteLFuEjt0ZJ65U7FfiMJsd7WZHOushh1sup2Ck/eB2rG0jsPgDZDkhys
	y2iZLOkitIUEvMUzFzhZJqmKRBWF+BL5pRlSxvI63EESPg5T3l+pVaj2WU2G/U4w
	0LbyDISVPzIbsADafH6OooG/BcyLRcEpggYdCHrmWGrWrDMiXWOUxdKx9wFq1nMf
	jyOfHA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytkw17qv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 18:48:45 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a42d2df3b5so5930751cf.2
        for <devicetree@vger.kernel.org>; Sat, 31 May 2025 11:48:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748717310; x=1749322110;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fq6UVpWTFma51ctoNBqE7AuMMwmya04U5DV/dQ3iAq8=;
        b=ljoE6FWYvrOEYiKPBx9XzkcEAdIpq8FqRNdXyIxy+Z6w2w90Cj+hjPHufGxBguuR1G
         cIZauC/9/2XZh/yvZqHy3+SJGI86/RqfjDmyro7kn0Pof4z/FQzlewxELgINtM46QVak
         St12RIZ0HXghrFT8NOoGc9H78RoTG7r46qniFrL+/HqsIi4tzV9TOvTvg8wA96RaWTth
         Mc9iOpdgZHb7M2NfdUJj42CTA4lt5MlHYPDa6uWhAW96RIr7XzAYdv7JJ+JWZLBK+XgU
         9ic0rnu/gqsr0k86mRG1ww6JnLYRSbwuQFKl+BROrfPrF0v6JjFIK4dX5ftrD9KkkYUF
         6uHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTIoBu08tvQbRNPb1lIs2BvvwDEE9MLf+H2c7P5GHm/BcxgV+ZlXMY3vI6WcBX+PTdhzYl7xBBZSkK@vger.kernel.org
X-Gm-Message-State: AOJu0YySYOSy3/pqoE47XIJag9XJ9mF+JWmbXuq8j6vKYv4avcwbDl5D
	flGv56ymrE2KFNZr6IDbgxLH4okbCBBeDHX3fcjwTMk9qu0UO6I105j0gH8Cr/drTJju4BygWM7
	YqmhcMU14Kfa5xu8PfoqyIeinNmoQNJBRkOxoV4JUed0PGNLfavG9cy5teM21BjVj
X-Gm-Gg: ASbGncswn9moD4KGCtHYoA+TDtli/Urse5KGuhnUox3ro1SbbK6nufoOcpWPQjDmCks
	mHZ+mxZ8D7g6ER91fGGIJ6/NDwfHYgmKbP1LvJNxXarAbqZ0Vk3aXTPK9thSmKzztq8z42kaLgS
	/IKojTZIqyYt+c4cLmcb9EhFSbPTB1L1BVJcOqRZGoTCxIQNwEgARDWpTltsdn3J9r9/0lHlTr4
	Lu8RjiI+nUQQRyjr2ibwR7dJ/uu6iKXEeVnwolcFJKy4ZwC+sADSldz+kWa6nbJvihEF3l2zPCK
	lGoFN58jLR0KvfW3wOB6YuwqEoy9yqqCuNd2XM0Vjj/+EwnMftaeTaUA1RzYBqujkw==
X-Received: by 2002:a05:622a:44b:b0:475:820:9f6f with SMTP id d75a77b69052e-4a44315f061mr44406931cf.9.1748717310677;
        Sat, 31 May 2025 11:48:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFS50jxW6Qje29AU0C9sBepph7zG42LOAm/3jLmwP8x0sfmPiEZkOM44vaelCgiKPREG+C6ew==
X-Received: by 2002:a05:622a:44b:b0:475:820:9f6f with SMTP id d75a77b69052e-4a44315f061mr44406631cf.9.1748717310234;
        Sat, 31 May 2025 11:48:30 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60566c756d2sm3678883a12.43.2025.05.31.11.48.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 May 2025 11:48:28 -0700 (PDT)
Message-ID: <4b4925ce-3a01-4295-9864-a43c65aab530@oss.qualcomm.com>
Date: Sat, 31 May 2025 20:48:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: msm8939: Add camss and cci
To: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250530-camss-8x39-vbif-v3-0-fc91d15bb5d6@mailoo.org>
 <20250530-camss-8x39-vbif-v3-4-fc91d15bb5d6@mailoo.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250530-camss-8x39-vbif-v3-4-fc91d15bb5d6@mailoo.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: f-LoFL2xIVhpPdjlzEAq-DP8Zo7URDYU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMxMDE3MiBTYWx0ZWRfX4XkUCcv6+Wkh
 JxvrM/ljaL9Ichb41DrstfM2/xJJyBZuo3QbmwO5eIFYqDAS6HU6aKDlK+mHSNMjDuQUTtORIIr
 9ZcbynP88CJH9FDz6hak0YQskOKNtE1yufG+gp/ntepeIDORmRYMRbtDQ0dF7yCGI2TWyOcINAT
 bNqEAmSe7aJ2y1+6cGtg4Off/V96zWu4pQS9atvxwzA9LLbjxDKq4ZvHeK8VT4GfFR7tjTSL9Qt
 JYcRcUG2CL4mSTxLTG865qnzTJ2AZ3lX5R+8uVSQjVCVWas70Isf0JnedXoTlgIhr/M9gY464Dm
 6qQfRwrJpaHJ9QfzpHhIqNqWA78377hH3YFOUFehXfaPW4+xbPqfRkYktWKtB/E+yQnKZjU3zoO
 DTlZLcRVt4KauJGZHZj8TJD0fQDU79qJ1JeomJVhXNi74dRf0fbZ20hPgYp9wBqHlpgojDCS
X-Authority-Analysis: v=2.4 cv=WI1/XmsR c=1 sm=1 tr=0 ts=683b4f0d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=TqukyxIwAAAA:8 a=EUspDBNiAAAA:8
 a=siKOB1rTJ_YAM3DqF24A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=e_wvXvRcY2B3oMitRgDS:22
X-Proofpoint-GUID: f-LoFL2xIVhpPdjlzEAq-DP8Zo7URDYU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-31_09,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 phishscore=0 mlxlogscore=734 bulkscore=0
 suspectscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505310172

On 5/30/25 11:00 AM, Vincent Knecht via B4 Relay wrote:
> From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> Add the camera subsystem and CCI used to interface with cameras on the
> Snapdragon 615.
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

