Return-Path: <devicetree+bounces-199027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA36B0F170
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:40:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18BAF562DBC
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9C9F2DFA4D;
	Wed, 23 Jul 2025 11:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bEGV6vIJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447AD2571AA
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753270831; cv=none; b=h7FIjkd+P1Vq+Ek2IGrISrPSWFov/kOFx0kLvOqiAJzk5piyFs/9IIC96RY9bSqK+ZgedSUNGyPEaSzvxk4oddUaFJgbdxPgwrFnhoFdj7YDrbmpvleXmALNhOPGcPRuCmSZpCnzFuhrrnlYfs6VCd01pvqhO56RI2I9Pcb27v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753270831; c=relaxed/simple;
	bh=zxEqXYU184o0NEWEyl3/b8vley0hDm5uiksijtgyxZQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b6wYFnSiCxldkCar2E/j51rUWjwOTuvcnRQ2Jzy/yesNRlA95Bbx3Jws6MW9ks94DQ1yM9TGMSdzv0HQsUiWxPo2dVf7uKwdbETlrFDjwSU7JUprFTUGlxak+Hoet2Y+1pqg37ic2ZFYombdLsd+V1spQN++rMJ5k5SbzWjQHVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bEGV6vIJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9NeQZ032432
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:40:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LtBv+dCZU3MXTFg6yWzYJnNxDj6mZzTLopQbFf0I66k=; b=bEGV6vIJZ/WxzI75
	kX3+NLMErVDAVinAiLPX3VhuvMAgH8i2WNBphYP3K3EJjq2sthu6AJ+QSTxH5zUB
	c4uw4z76EpSzHTJonIfAG27cY/Djl3MnuJkehk3WLyeOWt1bKIV3oQS4bSKMVg1f
	MpIWfDsE8YgKmv81JEf365deK3vXP/N2iPhkIC/hQKeG4sg5YOBw7GX3qI1hWmdg
	x3eVs127j7Q+Vy4Z4r/nx9cGMlvV7OqM7M+erpwrHa/DNMI65ttQCWDVf85m7ktD
	ypAs9lfuldSUiQhBjRBv1bj+u6a6RiO8Itkdd9Dgl5BlGWIDGF9EXi5tNFNmzhUr
	2dudBA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4826t1ca48-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:40:29 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ab77393308so21670581cf.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:40:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753270828; x=1753875628;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LtBv+dCZU3MXTFg6yWzYJnNxDj6mZzTLopQbFf0I66k=;
        b=Jf566PfXcuZyN8a6OyV+PbG1ia2mA4xE8uz8zWviozjaLNrStIlcNcEZJ0eGaK+YEV
         GJzxaLWit1rAzNES0HOLMUcZP1v9AsFY/rez74xs1pSG5YY2s2LGMU8eejU/LsWwppI7
         HBwTMsKasIUN8lUfXQKqCEp3Od2V8F0oXy8JcRLvECogZ19EcOWDjvR1aIv0JzL6iWxM
         jKUnmTsXWl+VtJWg0NWEnikHVU6nO5HpUDYF22jRxagLEEPmPEojLUq1QrYJkpUUn2iU
         4BDJvvIuzPRYdK3Fw1aNA21tVipakElfGo5O62/NJarasy7S5d5rscMtrGKQ27lihOPf
         Jt6g==
X-Forwarded-Encrypted: i=1; AJvYcCWhDvqgwettKW+rJtS4rFksHrhYp77iqb8rQ1pTyXr6Bv5f15JmtO+l4VhBi06IM2HStyFWbOZZ7Byp@vger.kernel.org
X-Gm-Message-State: AOJu0YwCaY5mj0bnOwtbct8DI+us2FVtpWulwoQoiUZrgeipRfG9JawQ
	XXcD9/edtJz/00ZVj8oeyYrSbm3W1RIXluD0V0Zne8DPxKdP8PAxvnBHbhyQSNXDLPeqBe89DA9
	ANRdqyCxdlJWhoVmriwJ1OUXq7CSEbeeVi6ItbI6PAJ66LeDEFxl3JONGHFopXb1c
X-Gm-Gg: ASbGncvElZgHKlp/iGTGLBuXOnAEUASY833Ekj2LYur11GEPHKFWTtfP/bKHuwreXyx
	NBkzh+DQn9ad0d76UfCvzaN/IUyl5FHyGKdmpwJKr2eiaWUKAzKvSlolMR0nHvUQYsijIA0oATF
	H0vJNubrMcA/5ei8TVDFcr91HEFF0sTgAeq67cMxIISrPm4rToVrma5iUCpwvfEtc/h6cpoeSLt
	xuvUAvzilDBnJ+ZYzzsFU+hRB1vN7Zl5HuNR+ehRpAD3fhQWiP/PHx+vJcT8cfSo3b9RBqSKJaY
	KBp4ZkOgZVKec/bbvyZgVMx8tJYhU82Ld5E+vS97EoczJcqlQkbnOlNPBQH8N8QeR2n9XxdIOCm
	nuMA5Nj08ZgBQHeyqyQ==
X-Received: by 2002:a05:622a:1b21:b0:472:2122:5a37 with SMTP id d75a77b69052e-4ae6de5bfb6mr14172251cf.4.1753270828291;
        Wed, 23 Jul 2025 04:40:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFp928hZJ9EbJ+TeXWHb9YaHxKY/0cu/xA0W1wmCQOKT9wQ1BXC6xBmFULU4vRxTLsQq3PrOQ==
X-Received: by 2002:a05:622a:1b21:b0:472:2122:5a37 with SMTP id d75a77b69052e-4ae6de5bfb6mr14172051cf.4.1753270827690;
        Wed, 23 Jul 2025 04:40:27 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f36ff1sm8509328a12.26.2025.07.23.04.40.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 04:40:27 -0700 (PDT)
Message-ID: <70277682-94e7-4905-823d-25ae76f72ee2@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 13:40:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl
 bindings
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250723103644.4058213-1-pankaj.patil@oss.qualcomm.com>
 <20250723103644.4058213-2-pankaj.patil@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250723103644.4058213-2-pankaj.patil@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: StaOfhZlDHK_C8Zw-QFbjcLv1jywP_wf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA5OSBTYWx0ZWRfX/grJoS3aQuUf
 7NozXWKNLQFxP0Dbq7ZSGapovkONT59b32NGh9PGInrx1yh1txR6DF/7K8tSNIRBHz2Xa2h3Y0v
 Mjf+55nzF8dbM6NNObr5WGrNCowMs508WVslkDBBAOlWwAkDIdGR8B/Djdg8z8B3X6gp3We6XrG
 KL9f6k5SGYoL1wLqWV90g1ZQ2GP6e/teSAev9Sql01drxcOFg/N+qO5cbGPonfgmNXLIaXEQ3lT
 Ayc4h7Sn0tzxgxKQmruw2MHqsBYDvbSxA1+QrooazWALhr7JZgs22ejQ9Dibtnu0DwSaZTEGyqC
 pFz4om+mrFUT3suPS4AWn8V8CrHYe4wrxxNMH0z3WufJrmIQNSPB72/HPXVysxyt15DN2bnNLb6
 hU38TUonFGk+ahtTeLuzRQH54wR2PXF1px8WFxZCk3jC0L5XWNQM+lgO8SuDNArLYg9drzwW
X-Authority-Analysis: v=2.4 cv=E8/Npbdl c=1 sm=1 tr=0 ts=6880ca2d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=0A8kWLnl_qBNfi7CqYEA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: StaOfhZlDHK_C8Zw-QFbjcLv1jywP_wf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0
 mlxlogscore=898 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230099

On 7/23/25 12:36 PM, Pankaj Patil wrote:
> Add DeviceTree binding for Glymur SoC TLMM block
> 
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

[...]

> +      function:
> +        description:
> +          Specify the alternative function to be configured for the specified
> +          pins.
> +        enum: [ gpio, RESOUT_GPIO_N, aoss_cti, asc_cci, atest_char, atest_usb,

Any reason for           /\ to be uppercase?

Konrad


