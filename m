Return-Path: <devicetree+bounces-184906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA022AD5A0C
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 17:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5340E1BC1576
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 15:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DA621A23B7;
	Wed, 11 Jun 2025 15:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GpyO7Hvf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8559919FA92
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749654654; cv=none; b=iZI6C3HTviq+Zq3k/QYiTH5PfL3w3/gRtNnUgBUpAptmTWasgZb8XWD3C5ZWO0KDrhNMpCkxeiKCfVr05UYgv8dUiRvOh0Qh7KoboJeMm7sAab5Ihb7bY54GDTWkiSagceXrlENVerHN81HuWnNRDVKbmKjnXLzZs5f4bduJZ48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749654654; c=relaxed/simple;
	bh=Pjstu6Va4x0vKiYuuaFhFC/BQAVykOlzMH43emz9AVQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fQ6rZrnN0Fzp4cJ73rwO+N2IJh5NXwNdbEG6c8jqGAQ0jMMfRAkNL7ggU3QPWH4l3DfFOgFQqFH+yb+JPya7om+Izi63EJD0H8BJsH2SObGnDZiPmo3VCKngaZ1jAkJjR7cSrG1cT16OuPLnNZ+GCVkc966/00lfa5vbTOU0mTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GpyO7Hvf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DF0l024009
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:10:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EOeuX/aj+lp4fPVoOPmoTV5VlHflQlkwIQ9s7HfwMKc=; b=GpyO7HvfCbutA4xN
	BlStcmsVEMscAq+KcBwSyTyJ0lWvsJFQ2dDFb7jZRoouAJqwPP/tlEz0ucA/KFEW
	30mLBVPa1IVZkBqubj6QcQwjgm3Q85joxB4VQMEkmjvaI7Roy68Q0uowMOgOxwKu
	gxpzW+rHqvJwl/UE/PSEnNOGWeyD2RHjXw7EmxaI8IqnspJd8f3OhZmInvcM4s9l
	9xjKB8E0DEDVhIK4YwDhbxM2vNcNpHThLjOn18qhtmRjrcGFO2UYXKX5BnNGr7Fx
	t8OoNXJX+1FKYaEs/dNUFGy8TJ+NirKLegahCNveoTuMs2GXn8ROKh4bPLxH/nJB
	g/F50Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 475v2tg294-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:10:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d09b74dc4bso3996785a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 08:10:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749654650; x=1750259450;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EOeuX/aj+lp4fPVoOPmoTV5VlHflQlkwIQ9s7HfwMKc=;
        b=qzzLWo6kIKz5ia/4OssrQ4XS9x5ob7RSL8PN9bSDxWEoXrBuVUvuQxvZcqezAxeJmA
         TVFvnivoQZ4nvWG6qPeRoEvPfy5V87O5x3WtXopn2eamiO880eaIuN15SqCf3fkr5niS
         vR1Yf3ftG3XAzh8I4DS+3I3K8SUUhp1cYsvLRTo3YLE802Ri7UbH3r0d12u/iOxnECUZ
         i6cr3MNUmhfEOZC4GKB6nVyCZEmkX0vG+we7BL1zYfvvQB0/VNRKYog6PZXnN1jHEdhd
         WEdswNbIxmd4LXTKouYFL3uwkCEtqSMqJPpRPiSnm2qdpeSc2kHF0LgpASBbiLgG0vjo
         c9Aw==
X-Forwarded-Encrypted: i=1; AJvYcCUlyas1Sixvs64LIyFtNK0psMtxO5Qy+CFLjZAICH+/AR4E4oinHNjC2YQ7cfQIrEPsS7uHaV64LSs9@vger.kernel.org
X-Gm-Message-State: AOJu0YxKfJk2Nl/peL30GkCLYBHy9/T3H8jg2BdwFxG5O9bhp/VLfV5u
	39S1ouBdeymMxOELr547n/x0ihYXU99GUOVMvriYMoFUDut5kdNWv8uXqowUnuOWphLNVI/9b9o
	bKxl58Rq4h+UYeK3BBeQ1gThofuJqbr5z+yeIUCrk2Mm4uyxQiWaAn6OyIvBhqc7i
X-Gm-Gg: ASbGncuQjJmL9Ar3Whs0xZlep7BTsmkegN9GyX3QBYVAzFhRJpFdq6Hy8u0KFytKC8d
	PVSiK2j5XCBYHxJDxqsGFVsiww+Y/jnoeFxSTvFLAN+kAlpDqGuy3n9VskvNFjz2fI6C7Zf0nwl
	V25VS9DKwMJMQTNBxMLvIkrQTLwM+Ck5U5MPij3CWpVZZckCXSlwm3rBo/VC7eHTAhAQVyeVL4g
	VYs+RGMQLSRyUmMC/Eo8ARLW3XZNrHWGA6QXWIFaMiizAYh/tNxE765XJqIfrJN9CpG7VQwmMQN
	yc/fURcZWNWaIJI7LfZK7ZqGgJqswhz9mrZVXo03a1fJBqed4UbfliMqOycMyeE5Sr/GEpmwoPQ
	6anI=
X-Received: by 2002:a05:620a:2697:b0:7d0:a01f:fb88 with SMTP id af79cd13be357-7d3a87d5fb6mr205963185a.3.1749654650520;
        Wed, 11 Jun 2025 08:10:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4KmUm+Si2jLdnAkaak2AEgUiMJQSFe46yLWft0cIeucvk47Dt59m3jFWcF+h+kwotiqXkCQ==
X-Received: by 2002:a05:620a:2697:b0:7d0:a01f:fb88 with SMTP id af79cd13be357-7d3a87d5fb6mr205960685a.3.1749654650017;
        Wed, 11 Jun 2025 08:10:50 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc38d0bsm897828066b.120.2025.06.11.08.10.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 08:10:49 -0700 (PDT)
Message-ID: <18fe2e1e-7bdd-4abc-9342-7644f94af4af@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 17:10:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: x1e80100-hp-x14: remove unused
 i2c buses
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250610-hp-x14-v3-0-35d5b50efae0@oldschoolsolutions.biz>
 <20250610-hp-x14-v3-2-35d5b50efae0@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250610-hp-x14-v3-2-35d5b50efae0@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 35ZezrNZZXxCR6x2KZORkoDXU3aYBZqq
X-Authority-Analysis: v=2.4 cv=GoxC+l1C c=1 sm=1 tr=0 ts=68499c7b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gxl3bz0cAAAA:8 a=EUspDBNiAAAA:8
 a=vdNxfUKwvXZ3YRcdAeoA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: 35ZezrNZZXxCR6x2KZORkoDXU3aYBZqq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDEyNyBTYWx0ZWRfX+GtjBUJ59L2l
 eXGR25xJn8TtIi3Cev+rtJbUHS5H+8gXWS1i9JZwiWApZz4CouqKClJb2LeM4TjnAxLhZDG4nfy
 OrnKvB75DLdbv26evJA/W9MXUUB5NaNfXarJzR+MF6vBKVouz19IuWmBkfFF5KKqpJH2HyZDXQp
 jsBPcmKjJsi0ZG42GAmxblKh4WpqscQfGR7/D0ix4A1lytPP7EKivP6PgZjyl9GYbwppoAiXzTP
 MlUOcLfeeOuABmaM+4OOHQgyBuhUkSf5yproHBnlJbVGv3ThFM0Ey2IxHa5s/SVQjR56lILi8Wq
 fVnC/SGNCEM4m5OSvLZOkQbB5F7f6N5jV6Bd32Ny5dKWGwWi9H2K/wMnXV1o5jrNvKnpR7sGAks
 2J7/sB5CPhnOAWZLEtxiLC0RR7ts7EpPS2/iy8klAdCsEyuvBl4Zn+XGtBjDkK79VKcoF9GP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=711 adultscore=0 impostorscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110127

On 6/10/25 7:25 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> At least from Linux, these buses are not in use. Remove them from the dt.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

if you're sure there's nothing interesting on them:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

