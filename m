Return-Path: <devicetree+bounces-252323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD54CFD7CE
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:51:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFB3B3034361
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1CCA30CD91;
	Wed,  7 Jan 2026 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cR/ZEDFw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dq6ViWG8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B76189BB6
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 11:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767786496; cv=none; b=JdEOOoJCE7QaJP01bWtXZQcwPLsh39/rdlaxvepUA4O6dVvzdaoYI9LpVOqAaXCKXbq2aPxeyoOcDO8Rwox6eBeO4L62m7/iUFxYDJKaAE/oG/+lQ5FUdwSqc9/47xx543+trcHbZFZgBYQIDLgjzSTOK8GuypkpQYGX6rlHOdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767786496; c=relaxed/simple;
	bh=NRPqCnq+bAxi08NrdzH+fJbdsb30br232ITCEdo39WM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q9Hy2WdmUg76lcxz73wyTitf12q1JQ5JNvAZ7dN155CZiX4mTwbEFctAlaDTATkoIERy+JGPzC6s3JBdn0DFfLCo5It7dNyogpgsgXSLfF2e6CojCnUKGS+akVpPoJNjpaasF+ItZ2yTR6+mwIx9F5bl1tBbFYx+GT0WhkLdv5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cR/ZEDFw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dq6ViWG8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079q5Wg218415
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 11:48:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oGpzHT3oLL/fLY3xKQef70iNFay52DCte5QHMJsrv4E=; b=cR/ZEDFwIerULcGT
	ngAQ/B3xIWQRkgrdGuaTrIEXlmuSnyFBrM+/gW5Cc3/K2WicLq5g3lTBVPaB63Dq
	cfON72+6URJqq0YOBCDytaKT00B9qD762M7Ngvj2fLlemwJnKCnmI/gTMN23gCi8
	ytx83ZnfMfjM1zUPRdlxdrDhgpmjR1kJVu+468T/aPV2q5BBLW21qWddlZsLbIRM
	ZKZIDzbm4f25ZshCw90BdwPiamc8HHKIcinr7kDypOHfZXJ9QdMH2r3YGmqaXU/v
	OLMekt1ThVtp1ZZItjtyEEcRGlM//2OLLQqMd2XEJPgPq8uhYuZfKR06N85SCj9X
	TtnpBg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn808att-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 11:48:14 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee409f1880so5084651cf.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 03:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767786493; x=1768391293; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oGpzHT3oLL/fLY3xKQef70iNFay52DCte5QHMJsrv4E=;
        b=dq6ViWG8J4OarF2SVCQlAiibD843OZanLgIWYsfheTbDvN2b3FcCQHrYdLwZE34P19
         K0RNkgt1WPugKiHnq/tNWi5d5ac84XTlSrxCrw+Vwo3PA1uzb8rjAp8zOd6Hhifp5WD+
         YhKvRR8upZHYtgXfSZkuRr2A5KZ6u69/XrrgIyxzFn91R4Wsvst0PWx1GUabYypJXZ5j
         MOoT/AN9IxLNXR8CW1ExgGZtB8kegLtZ9FRaIUXh72bEmeg5GN0mRuwmAUvlCj+eAJcH
         sp2Euo3Eu2Q8U0EtZrVZVLSGm6m/uyNtM9LyNgfhziCa1yVzjoRcL1DxecUZMfOoS9cn
         N6Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767786493; x=1768391293;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oGpzHT3oLL/fLY3xKQef70iNFay52DCte5QHMJsrv4E=;
        b=EiB5KelPLv06UjZYdMuMT1U7Po/PGSdmFJ8Dk84WQfiSl7IgaHsquW5jvXvY1IQcW0
         mkCIOyK/QoOVXkO9uMHFuAfmTNTNTZ/Gmx0HH8QMHbJICgVoSuMHzRmjVsaaYQfU8gks
         KCFU0eO8Kld4NAMkV90oXQYjbRqw9lERkjptX7n9t1i/VY2MEQNxCZjFJqUUZ4U1xbeS
         GW8IrATuAyFfum+CmW/cqMLy/OeDUQLiF0kGN5wIjn4UMGGWxTX3YZbfNi3MvzVSIhXn
         kL3x2yBFuLssD/PoXWZRkHcvech4Rc310TVzrkM/Ty7ix/RInipanMPZvwFyQkvhzSlH
         EXpA==
X-Forwarded-Encrypted: i=1; AJvYcCWQULyyXh/Joyi6Cqh1XGFZ1F/CvrvZ46qc7wVe+Ys6K2Ob2z53Yf/W06OLgSxTaeMYhK/R7O5SMQtc@vger.kernel.org
X-Gm-Message-State: AOJu0YyI0fuh8YcEqpg++dlYaoiuDyh2i8E/MFpBBpSn0Y3cGM1mlAHj
	CWGT62inX8vWOPrDRRcZWtYlufBWkVV275RttDjzbEyl9iOR9ywTSLXZHJOKKTXXPhzEIJ34Ecw
	Tsuz4sRZY3gP7WJwo/bsqG89NWDSWh/sGWkG0jZmtpxAHaL4RTrRuN/uuwD9TAlWy
X-Gm-Gg: AY/fxX68oIecfF5Qvt2qHr7qPRHmO3h3aRFE50wjDjKQ41TGsF4J9T1kUuC9eVFAsA4
	fTUDXhpQKoRIu9hgDZclQoeYsNM6ENVo3JJwR2j2cev+9cBjEt3LinzASRo9lMJN2aVVtbv51aC
	VQjGaXLzxw3VXsjCYdZDyzY71v2CjiSsITtrXpwMnmhwiYN1OWnRjEQE9GOr4YLeHfmIAkeSyUj
	8pFUBDYlEMaEshRMz7K2hYl+Ub+f3EkbOwszTMJhs+go5t4Jy0sXGpehitgn+2JZLQAz7z5PRF7
	QewoyDc8lGbLgUhdaz0XCCEuC/S4m2oZqbvTjtFhmUbIc7wcaSnZ/Z3dyeBrCgtYPgqvqVaCx81
	wXw9KGpB+liBASw6Cu0dJzJaKOCmYDl6oLNg2h96IFh10okv/1oEiV2bRkz7zZ0hbUEE=
X-Received: by 2002:a05:622a:143:b0:4f1:96c5:b592 with SMTP id d75a77b69052e-4ffb4a9a78bmr21357801cf.10.1767786493504;
        Wed, 07 Jan 2026 03:48:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEebjouS1vhnyClFzjTQUpWuxPqpjDOfa/93dLe3B4HBkvbfO+6dWv3OQW/2rAvjdmz+Go6VQ==
X-Received: by 2002:a05:622a:143:b0:4f1:96c5:b592 with SMTP id d75a77b69052e-4ffb4a9a78bmr21357651cf.10.1767786493042;
        Wed, 07 Jan 2026 03:48:13 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4d0290sm484352766b.32.2026.01.07.03.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 03:48:12 -0800 (PST)
Message-ID: <34c13225-efc4-410d-bc47-21efc262a078@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 12:48:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: glymur: add coresight nodes
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251230-add-coresight-nodes-for-glymur-v1-1-103b6d24f1ca@oss.qualcomm.com>
 <785daa0f-c9e7-4e6d-8140-dd16afdf2674@oss.qualcomm.com>
 <b949779e-5b9b-45a8-a505-03168afc057c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b949779e-5b9b-45a8-a505-03168afc057c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OtJCCi/t c=1 sm=1 tr=0 ts=695e47fe cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=64o_WFQJoLfARPdmrdAA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 8cfxtyKwRulDyfv8iIkoD-upvKWq_X1J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5MyBTYWx0ZWRfXxTstNi1ST25u
 sUf62DvVLlNl9qVpHxrYMPN8w//lRVL4yP6zNxjH644kDbUGsWrSUiHPKTBhawomC/Ryw6W6hDM
 WPHsf/VPjSQEN45szehtiAs1aPcxCso5k16kZnmns3yK+0O4XdJjhXiAwn2s14B8QNVWmUhPGtI
 GtdROAxVTqwHdD8xXWCD02DOYqbYSZJi40lHMifqstLq08g1tgRlPK8noAu7QwBhaf+986Plo4Q
 aUVd0v6EkiIdSdrlp/2P8DobPfis19eVnOdOmdNJZlGKHCOumZmTGV0Sc8lRYf9diGszQp0/O3g
 cXNx8kxYtFQ9EX8SJ/fkj0cCjJ/AB5Iv8ytN9s/UOP0HARbv0uCOy4F3NNcJZEW/pMbF+InxwFR
 7AZDjeYPXwxKslIP0QGmz+XcwkHccUJbupCrtlB+SefqL9J4AYz+lvTu0Y6R2gavxjbG5uCZfGn
 45Sxm3JJVPSmNZNfyYA==
X-Proofpoint-ORIG-GUID: 8cfxtyKwRulDyfv8iIkoD-upvKWq_X1J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070093

On 1/5/26 2:34 AM, Jie Gan wrote:
> 
> 
> On 1/2/2026 8:20 PM, Konrad Dybcio wrote:
>> On 12/30/25 3:10 AM, Jie Gan wrote:
>>> Add CoreSight nodes to enable trace paths like TPDM->ETF/STM->ETF.
>>> These devices are part of the AOSS, CDSP, QDSS, PCIe5, TraceNoc and
>>> some small subsystems, such as GCC, IPCC, PMU and so on.
>>>
>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>> ---
>>
>> 0x1121f000 - 0x1121f000 seem to have different/wrong names

For the record, Jie notified me offline that the documentation I was
referring to was misleading..

Konrad

