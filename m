Return-Path: <devicetree+bounces-133533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4E39FADBC
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:32:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BDB31883F24
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57E011A0700;
	Mon, 23 Dec 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R1tO3R3O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6D419F131
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734953543; cv=none; b=hUqhGWSqKRxu1NLtq4FvoTAiLMWm4aP/GOdpVQ8fuOgpWIzlaDxPjtXe/p8YMZ9IQiGhlFmRyDmEKPvahe8iuizc7ujVUvSz3ETimR43bOuVr6VgNAsk4xabsvH6MRSBXRVMZ7MyppGU42c2CYxRMqw1YGAeHxWZzr9BmQwwx/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734953543; c=relaxed/simple;
	bh=ddN3TUMU//MRHVwcaia1eSh2NlmOAoTnRKVqAqIevVA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r5ZE1++q+a6qDW6xf/7gUIV6O8llPaAJketxnSBNU5q2Jd49jKlUfLzXyCrom4VuZKzYk/aGLTnWEHPW9OvjZx9n17hHffT7fH3U46r+QPV16LQj+F8KXEiDmjCI9UmbrRrrUtg/RmTli7yEQNo0XtUk9pjQvNVT6NEZpp+eJ7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R1tO3R3O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BN8odl6027165
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:32:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MOlqzadqu/LJnvelEUfcMqT8XbZI0skQg2BV7KfAyF0=; b=R1tO3R3Oy6Ku1zNt
	whLQsTNiHA8rn/jawC+saCZqwss1SQXek+BPuSn+TpJ/ZlYltB/HP4AYl61fVVgl
	84KCU68ytGVm30GJTxfsU6vGVOaCKiUjhne50JCZ22WlbVtu1IqTw0oe63RetcbA
	FZvDI//Q0s/5EPEtE5HDyKD7UzSjCKnWpqo6fnEYIpFeMils/5KVPLMhfm20v6c/
	BdoVBT/tIrjpR/YbJF2da+hyu1nJ8Boz95jNXKIlszc7u8QV045dTdFmEOV8yho6
	B/gjS5bK8HDCgjYE2tirwVETJDzJ8i53VfL1wzUn/Q/x2EPGcvjAS0p1RddD8FVG
	noNx3g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q4q4rcx7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:32:21 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d88fe63f21so10337886d6.3
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 03:32:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734953540; x=1735558340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MOlqzadqu/LJnvelEUfcMqT8XbZI0skQg2BV7KfAyF0=;
        b=buvE8pTSU6aZd86vIUi9xzz4/GbXCBzCZFtyEr92SLH5DMh9M2p5B2VVwYvR/VvMQx
         8Qi65K8TEtYU7V9GXzMqqXEOA9+fWORberJnXn4fEhRiEGOHZGNTapDrvdZhKwDrC9Oa
         jkFJ+B+6mzJgLq2Ih6KGc+ZMcf6JNwAkXg1mMph26LHeyS46YIzYc3bBCP819cJXT37P
         DgGLCVASoWgIqpAvkOBIPpf3ZOt9rH0+zY9Kl2rrHK+AtpSFyim4R9ZtIpOtq1NOD4ir
         gUstKQt9zLAd4MiehGCLtC+YbKCLOCcyast6TI9hAcf3Y7JS5LXVG6LiTeE3GPzsedRQ
         JUmA==
X-Forwarded-Encrypted: i=1; AJvYcCW+M2PRV6v56SptNVdKvbsqAoSJiuTVCBYIlmAn8mLJrD5FbgVEOjFpvEYjLjm8OGToRtLtue00/v9C@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8pout/E5vx/WcStnXGWlN7WE75Ho8GWQ1HN1Z7Vzh2o9chYLF
	xda+vYdidDjo8iBEnnCZWkPHu0YX/aFzVYxmvvUDJZ9rK4ApTVgaFP1M2rDkrx8Pjh6NH5f4RZA
	P63AQOq+MZMZ/IEYlTM3PmP0zVy9FkmzjvWCBbZuXUsPih7MKaZNwFsn955OG
X-Gm-Gg: ASbGnctmqlD9GPXRakpPwPpuIW1NU0HGsgR66c3JhVdxGJGPkgxe7TJTayB3xwKup8g
	e9qZtZZrW6aFj56aZUvKIc4r4+5rGUy/O9SaB/qdw4GWjj4tLms6MKy44mAOz++sr3u5cfSuwKN
	2O00HM/PnJ9adNm9PnBOWOITdTP0V1l4jou3YxVO97yQtqzbcZgf3NjS8WQ/7uw8LhGq5bYkZ9h
	cegDGZE7JyxLYcM1jAE2Vgc1DmhadW9K8fbFuY2L1LYbzsD5FFqlIh/BSbYXsFf/Xbnpra4LTx2
	RIsm84jZ/cA/EyRD1/S/lLnPquxNE6XPZFI=
X-Received: by 2002:a05:622a:490:b0:460:ab1b:5ab7 with SMTP id d75a77b69052e-46a4a989daemr77874451cf.12.1734953539855;
        Mon, 23 Dec 2024 03:32:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEfZWAkmbUeAEAvrezytr7+dWC9hQWvnNbAT9FvvBs8Z/19THY+oFnuB32RxKglL0eBiE3bPg==
X-Received: by 2002:a05:622a:490:b0:460:ab1b:5ab7 with SMTP id d75a77b69052e-46a4a989daemr77874291cf.12.1734953539454;
        Mon, 23 Dec 2024 03:32:19 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80676f252sm4954953a12.33.2024.12.23.03.32.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 03:32:19 -0800 (PST)
Message-ID: <3c116766-9ca6-46f6-9b06-667b7d541dbf@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 12:32:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: qcs8300: add QCrypto nodes
To: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241223110936.3428125-1-quic_yrangana@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241223110936.3428125-1-quic_yrangana@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: m0hWsu8ZEcpvmx9xSbjjnbMcJNahDudY
X-Proofpoint-ORIG-GUID: m0hWsu8ZEcpvmx9xSbjjnbMcJNahDudY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 mlxlogscore=690 clxscore=1015 bulkscore=0 mlxscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412230103

On 23.12.2024 12:09 PM, Yuvaraj Ranganathan wrote:
> Add the QCE and Crypto BAM DMA nodes.
> 
> Signed-off-by: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

