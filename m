Return-Path: <devicetree+bounces-144106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC543A2CE07
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:20:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D64E43A2ACB
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2718919F11B;
	Fri,  7 Feb 2025 20:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VdCAYhQ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9295323C8C7
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738959621; cv=none; b=KjCLxYx0Cc08N5zaXMU2+JFbg2gNVNDxHiLwIhxF8N2VQ1L9m19BvZfTx6Mh5jp+VeQMTS2zfh2VuAqFvs1em+VIBbHp+gSOKFTqUzhdOv8izqQxJOfDU6x8MH6A9MhbnLknPWcHgxYTB8xDFpi+l9ZSv3vDIIXc6oeUuzVLQ1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738959621; c=relaxed/simple;
	bh=nBM4DZmDQv6tt74S9NggpfBtRBceUzgagm9bf7r2GXI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DYqrrlXbJhmUaTmNXCcwyWU8683YnVjFlD90euazsMFR4HYquchfLvmIw8Rn2JDpaOlrWQBcAbl4GF9hIvxDipEHjb2Cy/57WNfiVgGB/1nzzZevKvdahBTB9BSz5+wfXZW1tRdvDW3dyL29g5M86geRTcizZgk4Pn5zGWNQae4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VdCAYhQ7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 517FNVp6007791
	for <devicetree@vger.kernel.org>; Fri, 7 Feb 2025 20:20:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R5+HHERxxJ7BW4/TYZ5C+u2OAyVYPWzRYhyWOOU+CJM=; b=VdCAYhQ7iVbi/04K
	4JCZOSdwwHeoXvGqAGldhSWwPp3Esg6DjVw8T0gBZRQ82d3xtqpsZrRBwa20qZ4p
	fUmNKx6Q/liRCgceo1/UuMLLbWCrZvNh52UIP9SnsO4h+VjzVeDy3fqbPn5lDW3J
	6HkGuVd779tQpTYADC00/yu5BwKymRWILHjzHlKglu+uLDOTrbD8ZiRmbwOt4phO
	OF15TBea49PAUOiBUVRsRKeJgkhaUbaT9DkxsdB5hvAF6PQH0wPS3UvcKU/JVBLB
	1bQwoTkJfPL0OQg6l5/QmV/p5RXOQagJoCChl3zXTMuMjkjpa+GvnybaAICKYnO1
	LdSreQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44nmsbgqg8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 20:20:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6f499dd80so35425985a.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:20:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738959610; x=1739564410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R5+HHERxxJ7BW4/TYZ5C+u2OAyVYPWzRYhyWOOU+CJM=;
        b=hWdUe7/LMiQPCSHLTPPlAt90gdrgLLs0YSOJGMP5pTQOAEhNMlBOQaRZgIshllH/j5
         AIuINTSFfN7wc1dfgypxG/1QEwfjQZJVyoL7FlADjLhOnh3drnaCzWP/+q/IaOke+Nrl
         DjfljYfViTUzMb4fzsNs1Wq4jvqG9OUIXkNgL2DI41iO/woLMbxE/KJ2Q8IaxS8uEKSX
         DyT7zklF0mUsFToOjdac/G/CrTbzHpfS8knMkc5gtT6q+50Q5auYJW4Iysfpn5VnbO/K
         fcSgfPnxN0RZkNhOI7M7sBnL970UH9d25GcIFmMnuJ31n1d8wMTWNSO38VyGwh95DhvD
         Y/NA==
X-Forwarded-Encrypted: i=1; AJvYcCVGJluuEqjUaaOmf4DkagFG1R86jZd7kpw20ch6b7Rdw+vQ6uet97Mnm3HuEa5U1Qp9JXfo6kvbQLMA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+udBq1LciArGt+MFDOvruP8fbMfCWTn6+tw0VI+7LS0zeFiTz
	w1KZ1vogcSyegjQ4oJd2dD+fXBqvpEsYu8B3uWG0Z6X9DPXQDXYnVjZJRBtsT6J1zvIoDohH57o
	BCqbspF2rl7xRbI+gRxVH3pysuU+z6sL2DApP/HYhNdwaQd2KyX6cxo7wRL2oIfYJjGJB
X-Gm-Gg: ASbGnctAnbTFULhgcn4oZil6m738VRBvYJKDbI2fh8DlHx2Fi2uqrisSsjE/Fm3Y7bh
	f7HWIiuzrmy7zZ96BWz2Q6ZYnqPPh+++jo8YdEJWM0P9wzPr/nChTiTpf9cx7JgC8njuctfLbjU
	ZdQwsS0kGT0x7xoZ2GuuNq7Ln49HnaC9QZDDs14XvswN9YuLR21P5hbeUq/87IQwuyjRmerlh77
	qRAZ4aqRfcVUdB0bQO9RVU5BU+dmy+s3QCsz2Nq6PGnZadp81hOa5DXhfOBKd5Q+IS/hlECxP1P
	tEAJB2WK0b2UzQ6Z14J3Sw==
X-Received: by 2002:a05:620a:2601:b0:7b6:c3ad:6cc5 with SMTP id af79cd13be357-7c047bc666dmr272721585a.8.1738959609765;
        Fri, 07 Feb 2025 12:20:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEmEyUIm/VOLiJ4tAJ2lxhMAvt67rONo6F1TFJ9jX0/fY6FC3rQweEnrPhVW8/iuTFETEVeHg==
X-Received: by 2002:a05:620a:2601:b0:7b6:c3ad:6cc5 with SMTP id af79cd13be357-7c047bc666dmr272719885a.8.1738959609377;
        Fri, 07 Feb 2025 12:20:09 -0800 (PST)
Received: from [192.168.65.90] ([78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab786aa2c60sm209993466b.102.2025.02.07.12.20.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 12:20:08 -0800 (PST)
Message-ID: <85c31e1f-20bc-4e48-b179-e44ee8e1f816@oss.qualcomm.com>
Date: Fri, 7 Feb 2025 21:20:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-oneplus: use guard pages
To: Caleb Connolly <caleb.connolly@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>
Cc: "Dr. Git" <drgitx@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250207151706.45031-1-caleb.connolly@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250207151706.45031-1-caleb.connolly@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: -0yPgMGaVyqgLUzcjHH3So2x_1K6Wa3t
X-Proofpoint-GUID: -0yPgMGaVyqgLUzcjHH3So2x_1K6Wa3t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-07_09,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 phishscore=0 mlxlogscore=709 malwarescore=0 spamscore=0 mlxscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502070152

On 7.02.2025 4:17 PM, Caleb Connolly wrote:
> From: "Dr. Git" <drgitx@gmail.com>
> 
> Rather than manually define the guard pages, use the
> "qcom,use-guard-pages" property for rmtfs.
> 
> Signed-off-by: "Dr. Git" <drgitx@gmail.com>

I'm not sure this ID is acceptable

> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---

The patch looks good otherwise

Konrad

