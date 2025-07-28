Return-Path: <devicetree+bounces-200117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B7634B1373D
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:08:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C88F11892BE2
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:08:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC2A22A7E0;
	Mon, 28 Jul 2025 09:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EakDVqQ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F5D1581EE
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753693671; cv=none; b=rJh6rrqlmqMxSPJ72G0gMGkuYBR8lg5uHGVnRgEQEk2t+B26Bsn3Mdz3lcCWVrykVfqx0fhORDNAVPdMes6MmKjFd+jwNRRyA1wzLiNqWx9gsVvii5yoxYkebBxZl9+KZokWX6dXMlCpZgQd3UQ18IoxN3m4k8cku1cvg7sArho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753693671; c=relaxed/simple;
	bh=zvZJc37IM1lXzSOwsBhbEwOaTkTKd3wszmRWIQwbGUM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=nmxn0bbl/ohdmVCjPRpvsm/ac+LtyN7CvrF3VOJXk7CAJzOn6a7T4N4SeJk9rJebgv2Vpl2tIAzZcjGc4LOnaalE9k/FA3w7RIH0htzhN1H/6Usb7c+B/seJTnzbPQgPfqptx6x4Mg5PmD3SjdBlb+79egfNcioWZqri+z274rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EakDVqQ3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56S4rdUw016873
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:07:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OtaOTLSP/DV+d52JHjxMOpsKY7WYh3o1dzdSeMKQJ24=; b=EakDVqQ3QMU8UWWF
	pa75601iZ3iTooCqVGvx8BFtuU7ylEgwa2wvVGgq9L1Pnfk7PRR/hQJXc2uxab4P
	jIQeKz4BTFEdEQ5pUVwFvYvxu4J0UoCZdvOxg8CjSpG4+OGxrx1lW+rTaHBR866y
	t2wOBUkAoNRYffvEZxR6X7IJh59d8G+6sRNXpZnOKKI/4z73H0Bt/Ic54WJyRAtj
	PZ0vQLW45PvMvJIEpBuiqCwpSXXnvV+JEgHSdMlxIYBFXO2ePtXd4OzFu9BcaseN
	n0wmPdaqmoX+BblxRobSkk6gMRGKJGkk7164wQGLn75ljldjFp4v3b58leN9eYzq
	bgEGoA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbkux5d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:07:40 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7073b0e7576so7276896d6.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:07:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753693660; x=1754298460;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OtaOTLSP/DV+d52JHjxMOpsKY7WYh3o1dzdSeMKQJ24=;
        b=swJFgK4wQRdytDlsCwDgAN+YCTvoG31iK+PQmJ19UaJQ67Fp0wTraz5eq9OXxZ7bjw
         WGAZFU4/YnDn0BO5Bdf0hxvyHsuAYld6x+8obM6ftQwd9xU1QG8vr7Bo+XaC+aRA4LjX
         3sj80J2Z5VdzMTYIvnVXAuLSXTIlaPnT0zHrWcqw37p2hltw1FmZ5t4nwDx/ldaP3BbG
         Qd26GrOu/avG9tIQ2q30+XaKPUj9NSEEFoJs2BF7/5rjfXyMpK5LqPhVn5lvfkMFVtdU
         GPY8vvIKR7c7VOVezDTa0NI2EFwsnnRxXRcTDQNvnI++uC9CbNIscZ4vrkXpLG/eHIXn
         6gkg==
X-Forwarded-Encrypted: i=1; AJvYcCUDl5ogiXBbcWGwA/M0RgY+ozg9boPto3WY09rOf+/bgrtQlJkOAzlsDguCxQOaWXpe9B237xTKbRpP@vger.kernel.org
X-Gm-Message-State: AOJu0YzJXmxnvkZl3j7nK061Oxqq2KD+8Z+xzbaW/fCYB9yUcsJi39v2
	dLYsfMuRLqEchimQXRh/t6nOV33TpqKbd02j1eI3qPxMDvuvPbvNVvWUXbdQPm6hp+w1X6LEkWb
	pXYxMV1BCET/iIcFZ374UhmhAGhy1cIRo1PgaB0JUEhtGDBVtX1noH+liQ4M4P42g
X-Gm-Gg: ASbGncvVh8cJAtJ+5qiVbz4aeYt9uZaBRg3oZ5H02BAOURa4fjQws12nGKqhlCRQ0xa
	d5/V7/TALUtTawKrrF5/yayNRXR9bAbxXW8bhx3Mm90LkiRfbtj6sDQoWHYD/Gmn1o6ljlrpsor
	cn0Ryo07eWkYM6EgheaytNk1HmBsMaXPFZ/0TKHcwXI4x6Lc+qNWrE7uKsYVR/73Oi18bE5VVnB
	7BTEjYwCufKuej3FhpTE0emWmCPY42En4T1ABi3QfbD3n9JoGmLzbnzDSwaXEs8alUZm3zZWsgP
	MBsRXYudYR3pR961FuD+QOtjRcHzWK2WDvFYPaLA7H7RwiXr4Eo2ExRirYkeLTDl0Uyn2soSDop
	q7vAfggD1E5goVF6s8Q==
X-Received: by 2002:a05:620a:390d:b0:7e6:2435:b6a4 with SMTP id af79cd13be357-7e63c1c555cmr619353385a.12.1753693659755;
        Mon, 28 Jul 2025 02:07:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFS7dcUDok8MlrUYjDETf2C4hAw3upxujHwxwpLTG4xsI+lKYIU6eMEVLJXJKxX9C5Vz8KwrA==
X-Received: by 2002:a05:620a:390d:b0:7e6:2435:b6a4 with SMTP id af79cd13be357-7e63c1c555cmr619351685a.12.1753693659338;
        Mon, 28 Jul 2025 02:07:39 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635860143sm398459166b.24.2025.07.28.02.07.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 02:07:38 -0700 (PDT)
Message-ID: <dbd3653e-95b5-486b-b38c-422fca099df4@oss.qualcomm.com>
Date: Mon, 28 Jul 2025 11:07:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: Sort nodes by unit address
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250727193652.4029-2-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250727193652.4029-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=68873ddc cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=x0-Ntm4DP0gVEan9CnAA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA2NiBTYWx0ZWRfX/QPn4QvSr3YQ
 i3K+TqAlizNDUpw7zCvZvkcX+7SBUpC52zvDJtErfzxxfQ1V/i/aAw0FOG11IftJ7zwqqSmP7bH
 Pr2N4L37TLqZs10OME52CsZKhl+EQ3aJYsVcffJ5q+TjC0hM8e4rehlwMoV++bmWQQqerx2XAgM
 ucYnUEuuDlfhjxc0FxiCwAAieF6UhCV7pyOskO/aECX0gnu1LMQ2hze/2/WOBbBUSjiV+Ug3XU8
 4c2aEX1BnkwV7MJYgJK4KvlKuosmzRnAjIOHtTTfQD40Ogd5hVvR+v03IHKbOpRGpkfArNI2RIj
 vWtGPWo+jlyUayk0BpLJD7X7swdVUdMgcwZN3LH3e5dbiheO8C5zfGkAaZkCzpOnWuecPuuv/0J
 W1g1aIldKIJilp47sqypn8jnrUsqJSvKOhKJ/kiPFY5gM8PxYe/b2IISdZoR1PIZ6AN+NCud
X-Proofpoint-ORIG-GUID: uWi-N0AAACOxAvp2OSPABIBLoKozDYRa
X-Proofpoint-GUID: uWi-N0AAACOxAvp2OSPABIBLoKozDYRa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=814 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507280066

On 7/27/25 9:36 PM, Krzysztof Kozlowski wrote:
> Qualcomm DTS uses sorting of MMIO nodes by the unit address, so move
> few nodes in SM8650 DTSI to fix that.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

