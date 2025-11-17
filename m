Return-Path: <devicetree+bounces-239379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB27C64476
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7975A383814
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 941BD332918;
	Mon, 17 Nov 2025 12:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="naEH6W/Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VuiMWbTZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701E7330318
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763384107; cv=none; b=EnorPKJiIyWXop06m3waWIHOFzug5eNuucT5CXcA1N5J1E++abzBkFF7ezoLi7O5GxP5Np15+clb9q8MaLJEpSRY6UuLSFojS+k0UGWdEw3VffS1x65Smunp4QclPia7Ltxv3teO0EWDsicNWiczY7Jotfwj4lN1NTHFrCZ0UOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763384107; c=relaxed/simple;
	bh=/ViQXVPETgm9i+UC8rUHlH316+ODP/Jsj7gqftltoPA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cXSDEH5P2KMU2xEa/eHvSdsSVlqDHKCNU9pxcy47XHoky0RpAKYdYe+OcL2sg6vHCnWuX6m4IFyEuH9DnuUpB3lytfdCmb0ioBR/zyHfbpQ8iKsJ81icQuOor7ROe3yTBiLmhAJkWeQoekqJxzuWVBxfc7Vsb3WVkP1+HL3iHnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=naEH6W/Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VuiMWbTZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHAq2M23921137
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:55:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bdcENZOZ9B7OMEu7ofl+EL83OBr5cRjNFZS05TG0eoY=; b=naEH6W/Z5wJRo3h5
	6yOD1vojhaBFleiBn+R2Kt5cuvlovXuBCXdAd/SXbnGXsKkJE+sdvvsua41q/JzZ
	EMUiXJ/FV7iIyvkTcCNj5ihQPnRJb5Stp1r0pj58pdVP3ZzQ1NTL6VvImt33K3s7
	ICGENOD5rmevp9mRUinAwwaoUC3BUaTrPtZIWC7g8L7rPEn/r0T8pZbv/iXC8hxk
	dhcfNr3/ucrTJS6REFUkszrJpGa1NEZeUtvK8iIji8kafbdg7eNZ7sxhP/zBlfqR
	/a6GWKEvMnSK1euLyGTOAjTDTDFxOD9nHSZF+hLa78ccLhT/Jm5ZsS8hOADv4uCW
	qyRHPA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2ay8b0v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:55:04 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee05927183so1552741cf.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763384104; x=1763988904; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bdcENZOZ9B7OMEu7ofl+EL83OBr5cRjNFZS05TG0eoY=;
        b=VuiMWbTZfB2Ib6Rd3vTP12Y9rUsF/rHfBHvn8mjVk3TT+XXGHO/OJght9prJKlMhOx
         nIB8XX0Qj2gE8VvbXInvQECoCbrBwf4Sw6kAWV2FSgKcdFBrCylkOda7H8W6i7FE8sew
         SmFx2hXnoIZUhSVcOSbQG1Thjw+Hc6/yAGhXrhmYxosu3Xz3Nokx5JLKz46BvuWVS5QD
         x/Agl9Pv82AkXhvUsF22aipiFXBuPiBfOHeFcGRMuGKg4tomTc1g+5BAebwA5U95eFZe
         MrzRUlwn0EJsf6EKtTCRAFz6SHNPhs7zEbE4DyslAuxXwy9LdebfZG4wfhXalgrPXjy8
         Cm1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763384104; x=1763988904;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bdcENZOZ9B7OMEu7ofl+EL83OBr5cRjNFZS05TG0eoY=;
        b=lbv8ijBlj4N8ZJeEHmLGyAeXjCFLXjYc0Ejxhym7a9jaEgPIbvSMGTeReZo4csv8XM
         ArKVKAU+MJ93jwlFnKSsqHbqFLPSzBLMz4dg54BdzwK7EHL9dBijGG9SOyMmODpkxvNL
         WsUsAC3lhVfSM06GCTVQouOWf6xrfbalXqSkVyBvm1ASmU/9fxpZELiAWeKhbpuGlMje
         atB/nf7PD8FRorNrMjS2cASSMwMElWIbmwZiq3Tjn1brS9Fxu4JNqJugKDvaKs+7TdSj
         j0dXCcTLvwI86l6PUwVcpMUJDw+Fur+dT1PttEXzjJ1Kgj7hEvG78O47snolC5jvxd8c
         MeNQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4hgoXtAoLrM3+rxh4jP06Gsl3RsVtqn5FL744s4aLCGVfPdgaLm6ysJ2RqdNHVWTTSrd2ieuq7VSl@vger.kernel.org
X-Gm-Message-State: AOJu0YwE2OL5FlvFLWrgFuav+flLhOMj3Z0BVkuNnYXZLIGNZqU8P8gC
	V6KyU3LxfJ93XODqlc9Bg8U0BSySld9QZAl3IBSI0/NSWNCW6OOGVbl+3JKn4ZvNQ322og54wro
	fTeKgwIDSY1bIyQKEwMix9S1HQ9FDjPf8wPKuvoq1Thf6s8EXoFh8Gg2JLND3/6AB
X-Gm-Gg: ASbGncsCIxeVJYGJRi6LnTkzXkkA5HnCT5ZQblHeuw7p52y7x356KsfwLIwUzWKj5qv
	l60u7luF890nOLBTbHo391SFURmHYp0HrmtWs9PQe9+vc5KGplejZdaNYXWoY1maaE8wou+iodG
	K3yZ4ccxAkWLRfSsUKz6LZc94lwuRVjedeQwpsVtylzm+HhkW4xYcR51gbXpCLQVZcCedmPRN01
	YWw7bMt/UO/c1Dnc52ZOaKkgZXi6KRGpp/+qfOpENXF/baaNYEwWhe566idgOhfc3nNB830HS5Y
	gifIIU1AHaMh1H0u09sEwQTJ2sFnpbmPCa0bFyoMdoVgjAfLV9ZWa4WylzD/xGWR9L+3AgrApJb
	Db3zAhN9zuRD9Av/NDQ2tTbeqMjd2PS30yBfcb67wS6nJeOuMWSTfvj5+
X-Received: by 2002:ac8:5d49:0:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-4edf36e32acmr108054561cf.10.1763384103741;
        Mon, 17 Nov 2025 04:55:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHyFG2DBhLfyxJtaVBKBZsfbbQ4NicKzSiY21/zQKPNc2lzz4cBWrQJ90YZ/edIQgdmGnAR4Q==
X-Received: by 2002:ac8:5d49:0:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-4edf36e32acmr108054351cf.10.1763384103351;
        Mon, 17 Nov 2025 04:55:03 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734e9e0f20sm1090820966b.0.2025.11.17.04.55.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 04:55:02 -0800 (PST)
Message-ID: <188c5c73-4a91-4f3c-a45d-fb35b171ae63@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 13:55:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: msm8917: add reset for display
 subsystem
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251116-mdss-resets-msm8917-msm8937-v1-0-08051386779b@mainlining.org>
 <20251116-mdss-resets-msm8917-msm8937-v1-3-08051386779b@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251116-mdss-resets-msm8917-msm8937-v1-3-08051386779b@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dL2rWeZb c=1 sm=1 tr=0 ts=691b1b28 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=G8-SSAS-OYPV6Zknk1oA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=YF3nxe-81eYA:10 a=dawVfQjAaf238kedN5IG:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: Heysltk8_y9sgy8MNZHW_pan9-gf9dev
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDEwOSBTYWx0ZWRfX/JCtiwMjUo4B
 qOoKKuu6Xzo9e8T9stVKrNHnuZBE8lCEaBE9elGUkGjKnvr78s7hDNHM83MJaOYasNDO50NR5dG
 PQ7IH26OuBDcK1eIbPAc0RLbHZY8C3LromVb7tq10AMro6ti0CqKJPj9ZZ2F/rpWlvj5gAfIzPn
 2ht5XsGdc/YZf5XS5SstWkYpJ6EU7agruU9VE2BCYmqz8IO4zcT4HzcjiB6Kuhf54VgTqqd/xsY
 j1RT5VWsBFGjf6txWPXKATQ08udEYQ5BdCTee1N+KIu7tGXBZT0kbU0eLbe6yLk+0GdTL4u2XE6
 L3VbfKAZJ75dqZ0W2gUrA7q+fv7mMhdvf67vq6QKWNPX5N2ZmPgsZTpbcwbAMlPBvhMmRLXziob
 dPF6+YL7mNXQUj2bA7dU0Bo+UeWkPA==
X-Proofpoint-ORIG-GUID: Heysltk8_y9sgy8MNZHW_pan9-gf9dev
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 suspectscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170109

On 11/16/25 11:10 PM, Barnabás Czémán wrote:
> Add reset for display subsystem, make sure it gets
> properly reset.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

