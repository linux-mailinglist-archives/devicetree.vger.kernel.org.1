Return-Path: <devicetree+bounces-243977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE02C9ED0B
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:09:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C5473A26A1
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E03F12F12DC;
	Wed,  3 Dec 2025 11:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i3TaJ4FL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NmHG5WWw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B87C2E4254
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764760185; cv=none; b=HbKscuj8D7i7ZHVhEOPgIKpKYr3J+lWe1J/eB5iNe6syen7hr5IUBbOBnfCw27tg6qQ9ZaKfv/8uQwKCddN8l4Roht7xze6BZUKWRrMpFGRPsJLemN+2Mw6ps4J40Ek09viKGWT2F39u+Ak6HlxZ1zkBPB948OkCcBVNiBnSnAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764760185; c=relaxed/simple;
	bh=vdFkK7ypt9X+ce/+DbnA0cFqtIl7lp/UAM9TuaXU3ls=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h6YZbfGIycnMH2aUXC0DrcXxZImw+bMeVd4MC++4gb7H+uBo7L9QCsuX2OrmtZC9RcaUYqXOv10pECt4cWBFtJSzIG0bia0s0ot59/xA6FgMvai5cMOknzNY4ggvc8ywCVjR+YcopNCbO2cPqmKWH2YGPPUPoEpaj1ySzu1LlWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i3TaJ4FL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NmHG5WWw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3B4txw2627210
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 11:09:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ez9X+gNVpOb3V8RgGtBRfzZ2PPzE0pOUGurV9fILGA4=; b=i3TaJ4FL2Ys0kBZm
	Os74tZwQ5qyiTeV7QJQ1Ues6f4TDohDRZQh6JjnzruYO9GgfT02diiwpoITfsuGL
	TVHGxJucm26wl+RhG3bukMM9CAZ0qohftOhP1VvOPIAst4tBKnwDGhUvrvAM+UXZ
	1HZ6KOyuDYItMEI5eRfToEgEeFcyTySui+pD+fbh6JEDx8M67hyUopFUvkwtftgZ
	Pb9GqgIpbvfv2A+tXGYbL/FJlfEqHm5V9uMrvMC2o2i19Jrs8DqcRetO6pK/ksmF
	FBdXw/OLPDcxiv1z+IdSsyDInqo2HiM0wyLDGGWerQphqVLjvab4ejRME/yQnFnj
	LM4B8Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atm1280gb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 11:09:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2ea2b51cfso137848585a.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764760182; x=1765364982; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ez9X+gNVpOb3V8RgGtBRfzZ2PPzE0pOUGurV9fILGA4=;
        b=NmHG5WWwOM0jtGnKNxLK7tDaAk7JL0QnVoNeRcrO3hkZeWSLwQUaO86ZtBk+pdii4Y
         piGVP/zlnqjrQQRCoONpKkxsf90QAMmlpaQgwqYMPmrAzx4K18Cn1tsC9a0NiW3+YvCh
         5PM7q4QIM+ZgF6Ri3Ev6b5w88hD6SVElX1aIxTAC84hQBLzXHtgPZxiocoZYTK7JUw2T
         qkiT5CsgJBD6KU46c9aN4ExVO1ifqdRXE8i4U1PS3sgxwc/wcAThf5yMw4KFeTlPeZCl
         IFpBte3+0J3cp/fDJQHChwNUPYDChBOkhn/1SsWnsY6tX+0VX2mk5g66T8v5jw5uH0Q4
         tlFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764760182; x=1765364982;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ez9X+gNVpOb3V8RgGtBRfzZ2PPzE0pOUGurV9fILGA4=;
        b=k+BUumqiexEVYdwObv0fN2Ikv1SzBCtGArwSG1YImEr1TEmHLM7xkNNIJ6YHPSP+0T
         LwqNAak8L0viS2cTPu2GHx4JSEspls0Y6J+/rbQ3LiN5NylbJoKu53R4TsYZOyOujuxz
         7j+C0QtSEPQwoQnKFe77U3+G8QYfA9XviD5WLytnrfIobQZjn6EdoUz6JQkYH4DDRBXZ
         8MY11FCyVfmSKjq/RVUJIfBACKxwF8E7m2M0BKNOZDjIrLAgH0FVwaMOW3h2oYLnYfHj
         6VcbGiuMrqd7hSGc8nA/bhPyizXXUcRukPSmTjCmcm0Wrln6o8M+T+kF0vfpxSdVj2Sd
         U54Q==
X-Forwarded-Encrypted: i=1; AJvYcCUwySSH8jzrUcj66EWfR5XK8PCenAO1hBQ9M+xAOFLr6OqhnskhhCr7GpC5+vJ5eOplnPGnYapt3843@vger.kernel.org
X-Gm-Message-State: AOJu0Yyji+l1kRD1n11OXfD0et66iMX0DYIFTCFZ9oEpV4XdRhUL1PBv
	ibrdU4e6axdFebJlpYLOI5kzGzbiYXHw6g/sJYxLqPpWc8gn8K9tgXzx6FgK9k1YOJKO00e/3aL
	dUzW0/VoIdxrxJqElwRrTW0m1isncQ/79Anha8jRVJPrmvoM2p4dfEVEEYz53A/mID2MWrYpi
X-Gm-Gg: ASbGncvQhtJhmH+4epNZWiWCRxt+PP5A6oq/aX45eoQdQWyAC90kpsLGxH7lIDs8qXH
	hzDoGuieyGOlkpsjRlVEEyaZyLRR8q+5eG8mXPFN6oqIt/ORv1NpmjPD8K4izmp8PPRl+rkKbaH
	+fW7NvlSFAGZinNZtj7O6beN1V3pGJ1C9BMOFROnTTTeLd7LUD2SegAfLFynk1dMj44yVcl/yZR
	5M7pnqbOsusGCvUCR/neJo2fK0WwmqAis2bBOO/4/LQdWQoNepTL+2UgCQDOZiAJUoLUhgBru8A
	SsNy+DRrwpMCwIctCVvdiam63eoX2vCPRO+m9FuxG08xkCq3clbDgmKTEMPfh3EkA9hUwQCuUCM
	v7XwPtw+q36u0xTxaj/kwkc3HY1irGR23KD4nDxZoRQGIWFSjCwi75IldWqaUlcnZ+A==
X-Received: by 2002:a05:620a:2808:b0:8a2:568c:a88b with SMTP id af79cd13be357-8b5f965a3e4mr65536085a.11.1764760182563;
        Wed, 03 Dec 2025 03:09:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0uO9lEaWLeMvhQ4EzNvfXWea8g0DFzrI1CbrVVYIEqi3PGL3TREVaHZOEr3O73OTIifEJRg==
X-Received: by 2002:a05:620a:2808:b0:8a2:568c:a88b with SMTP id af79cd13be357-8b5f965a3e4mr65532385a.11.1764760182027;
        Wed, 03 Dec 2025 03:09:42 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64751035af1sm18524137a12.16.2025.12.03.03.09.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:09:41 -0800 (PST)
Message-ID: <254824c4-67e9-4bb7-a0e1-98886a0e5df1@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 12:09:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] arm64: dts: qcom: sm8550-qrd: rename image sensor
 supply properties
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
 <20251203040538.71119-2-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251203040538.71119-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA4NyBTYWx0ZWRfX5yZUCihoOeEI
 ssoATA/e4G6d6oF5rjmv6Oi8HAoJioiHg+N5fS7TvpKN8rM1Ry6ub6VpI1F8+OG0caJt5CGYmxF
 g/mGT3wglnmzEsVsGUBQpXO/rp4JSekLcE9DRSiLmhV2NK6jbQbGlmdrZWc6vCXD4pBwwQi3rJN
 F/xrE6pHF7A/ykTzv9DhrIItFBnueqqjXll3yp9mitFXH89d3AQfscMZtSD64Qy43R30lvFV14W
 1nAgPGI/RiJN9M3krbHMPniwcjp962SH1o1SzjKihQ4qOc8OJhz+vZOy6C0zEBaO2n3JYxhvf7Q
 4qPqjCqgCO/ASUY/Dk3jnK9rksM2vA96+e8ir2w0H+odY6UBH3+rM2uglLVSStT+xVxE/enuRZn
 vlN/mYuKV7odc02UF3i8impApjDxsg==
X-Authority-Analysis: v=2.4 cv=JY6xbEKV c=1 sm=1 tr=0 ts=69301a77 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=O7eCob1Rr8zABwO4z4IA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Cnh7gBK1UUDlemWeKZwoPyLnrLMiTaIr
X-Proofpoint-ORIG-GUID: Cnh7gBK1UUDlemWeKZwoPyLnrLMiTaIr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030087

On 12/3/25 5:05 AM, Vladimir Zapolskiy wrote:
> At first voltage supply properties of Samsung S5K3M5 image sensor got
> names following a pad name convention for Omnivision image sensors. Now
> the property names were corrected in the sensor dt bindings documentation,
> and it should be updated in the SM8550-QRD board dts file.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

