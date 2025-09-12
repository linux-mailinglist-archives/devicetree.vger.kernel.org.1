Return-Path: <devicetree+bounces-216341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2782B54693
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:13:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70375562A90
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:13:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72FED2773C7;
	Fri, 12 Sep 2025 09:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BKeLjFtb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9A7276028
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757668407; cv=none; b=shlzRg9YZHiLsP+2aL4u179Nlb6K0sU4/egCQS2rHSq+/4GLmqGFA8qrW6h5G4E30euN6zK1jyZd2Inr1cfyiZuEGurTPZe2IHMtFEMlZLm6J0hmGkUZNMzgnLqjI5luUYcz4Y2RmMHS2PxBirNXFJ3PjH5MpD9TOwWAhLwbKNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757668407; c=relaxed/simple;
	bh=Rds/Qy6B10X8PbjBsAn4at189CR6n8GputyaSbIHvLk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TbYc+IMt2+1cvNM60vXMengNA7uLWdWRSVWX+OyPaRbfy1r1+y5YbAZBVToEx8NBztHyt0sD5CzOo6RcXppnN/HHifPQ7wPp1HkDB6KoxHoDR9OHyFxcgwZ6PzPUsrIooeXT9npvHrKiLAzQG/bhIgVPGOg7rift4anGEwzgwJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BKeLjFtb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C8NrJ0015492
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:13:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MDiPEDL++Yv4djZtWlpbz56GxaADR2O4WCwvyOpamYU=; b=BKeLjFtbduWu7Ive
	CbrRzBEaoBA1le6BT4DOqVACa8hsMxH9wluEwDjN9Ly9hefgGvqHBCnIAaG92Pbv
	ynWdyWss2Lb4K4dFfNk6lBGIA2q08QjPBbY7oqG2jJFMhRYqvB6/14MVSiVbOzIj
	YJCpAOZD59dMc26aS4cnR+X/p9WtoMw1TWPO6GAU3mLYd1iEGYCX0pDp2eVzdR2X
	WSHZaJkzXmtvh6dzFjYkZffQpgWxSVWzUnOzskDcFwrVIFNDACr9xgidnfVEJAma
	WYi5L2CdKJDhn7ysnaMC1qY8lCXwsvNB59bNfAj1bhRO+EOVBAI02NRbA9RPjjnd
	uxLnWA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4masm9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:13:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b613a54072so6367011cf.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:13:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757668404; x=1758273204;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MDiPEDL++Yv4djZtWlpbz56GxaADR2O4WCwvyOpamYU=;
        b=uUfD4SD3esE4Eia8wRUdQ0u2h5SKpEhXJ8qX2wzxYg54oh7l2uAb7EifiRnDOpwuW9
         /hOT2DZQd7Z6N4uFTVvVXJQlfSsKl6/q9caWwBLqYoIXRi3KEUGxqMtFWSgSqCJhW/Iq
         RQJ4gOCjwD8yhYB1Eas9xGZnO483d810uVg9D+IFZoUuALPKHA1ZkeeWk0zeXXS7HOw0
         OJDGy9ol4ljeKV3WijaFVpqoWK5c/r32ljBvR/iZZsswL0OUm+A4yo5nOHPMB3oQuIWT
         4SLRh7dbZLPVu3nb1N9upjT0APBrOU6lbGPsg5vTsjvKimA/mMTGjIAldUWq1MuMGo4Q
         4vCw==
X-Forwarded-Encrypted: i=1; AJvYcCW4QDXFtszBqYIZJwZmzH+/blqXpg4LQfv4DV40vF61H3YOHSPY3KjpY9wi3TFnbwAugRd6Rxds+/EZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxbGRuFgPGOeSTdEvlMVdUPqEUcgWLElutuq9zAvXZotjQCL0jR
	2B0nCsbhPmeQ4AaxJWSIDHvcYR4RO5mK7Mfw5ip0hzuXitInEtN+DbePK/JB3N0MuYzv5uXBLNU
	Ajz6mYs//xSJCch8kjSUHm2Uno8KNn04V/Lm0CpNEIWyuHmOVhfrRdlByLfnEnQWB
X-Gm-Gg: ASbGnct74zwgWyoFFkkVJTVlGAQdEgn46jvBVpDj3fuUnEjyA7RAVGhCb+owt7mD8Nz
	VSg5G9rkZL9Jc0Yu09JSC7FRwCQVsSxudiGiMUk1IuRRXQH9hHiZ+8kSv/99sIAkvNzu2TXmAI8
	DWPEa5levhQHrAIWusVQw1TTXeeNyqQ0rcn3NLnynewnpLIN4Gr4y7zHBN3Zhwv9QOptc32pTv6
	JtUCIq7EKecuAZKwfzhFR7uM1Owx7BLP0p6n6oLKvPrYXAtiR+eULIRI4Wqq2Gf5HASeD/lheNH
	qNgyxag9QjF4UqsMZDumAy/z/bwbzTlVX8n9x9dkeob1vl/UtkFH6lrQkBXoQEeapiuzDT0whca
	9kEq0ni4qwxZaUtOD9ofW0g==
X-Received: by 2002:a05:622a:60f:b0:4b7:7be4:177f with SMTP id d75a77b69052e-4b77d117d96mr18898411cf.9.1757668403465;
        Fri, 12 Sep 2025 02:13:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLYpKy55N9vEYWMRWrsZVRaWYcZIKuUasFnYD9vP/tGHxW/XvgJ003K96eFQ0cx+Ci2827tA==
X-Received: by 2002:a05:622a:60f:b0:4b7:7be4:177f with SMTP id d75a77b69052e-4b77d117d96mr18898091cf.9.1757668402925;
        Fri, 12 Sep 2025 02:13:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07c28f190fsm159416366b.39.2025.09.12.02.13.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 02:13:22 -0700 (PDT)
Message-ID: <b7487ab1-1abd-40ca-8392-fdf63fddaafc@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 11:13:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/10] dt-bindings: clock: Add required
 "interconnect-cells" property
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Luo Jie <quic_luoj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Anusha Rao <quic_anusha@quicinc.com>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Devi Priya <quic_devipriy@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20250909-qcom_ipq5424_nsscc-v5-0-332c49a8512b@quicinc.com>
 <20250909-qcom_ipq5424_nsscc-v5-2-332c49a8512b@quicinc.com>
 <20250912-nocturnal-horse-of-acumen-5b2cbd@kuoka>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250912-nocturnal-horse-of-acumen-5b2cbd@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfXyszHnlSEenGN
 LgA8/tNhTK/fCW4SzIAHQiu6mJ3EJSEA7i2JzPY1AxRmYaZDIN0cL6I/Zg/JnidPP5R+udwHebT
 8Cp01IEx4sNksSoS3OoqPO9NthjaDh6kNpei2Q2Wp3EP9uZfOFpdZ7AZ4wpMVwMwdSLasZQ0Irg
 6UxKWDJWd0I7H59gn8dneBIcRfGxdEdABqEXxxak4gMaL/3k1H6J8N/P4zOixCc8OUtlp4TNuZf
 4Tjv0Wk0et/v1T9vtsJBrLqHSPbdNDy2yAEeoiFaDA01rpx+T2tRlWvxVG1oZZzpiFN6P52SxzZ
 i07lPpFSCFzuQchhfQ9zs1iHEm/p+FxCNYZmfjdNPe4bgjzB28EIVXI7Bc1eHKQQPO2AEeIXmo0
 NctAyaBH
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c3e435 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=Q-zjNaZJJLQrxVh-NlMA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: PIQlsAaX2wTEGf9Tg0b_4XHYZclMwd-M
X-Proofpoint-ORIG-GUID: PIQlsAaX2wTEGf9Tg0b_4XHYZclMwd-M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

On 9/12/25 9:04 AM, Krzysztof Kozlowski wrote:
> On Tue, Sep 09, 2025 at 09:39:11PM +0800, Luo Jie wrote:
>> The Networking Subsystem (NSS) clock controller acts as both a clock
>> provider and an interconnect provider. The #interconnect-cells property
>> is mandatory in the Device Tree Source (DTS) to ensure that client
>> drivers, such as the PPE driver, can correctly acquire ICC clocks from
>> the NSS ICC provider.
>>
>> Although this property is already present in the NSS CC node of the DTS
>> for CMN PLL for IPQ9574 SoC which is currently supported, it was previously
>> omitted from the list of required properties in the bindings documentation.
>> Adding this as a required property is not expected to break the ABI for
>> currently supported SoC.
>>
>> Marking #interconnect-cells as required to comply with Device Tree (DT)
>> binding requirements for interconnect providers.
> 
> DT bindings do not require interconnect-cells, so that's not a correct
> reason. Drop them from required properties.

"Mark #interconnect-cells as required to allow consuming the provided
interconnect endpoints"?

Konrad

