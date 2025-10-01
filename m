Return-Path: <devicetree+bounces-222938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D36FBAF9D3
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:27:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CA08168DA3
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B438C28002B;
	Wed,  1 Oct 2025 08:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l2DiGUIq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B6A27A465
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759307272; cv=none; b=t9aEQ3JufjzLVm3DfJmGQftI6+Wk62XdgaZooGViKRVT3JIIJ3pQA8ziKRH/6qVtMMMJud5XXmYuNnPKWms/Ph+MckZ2jJd9PApUUOezvTzBUhNuA1X+FQTova4ubZ/3XTk2HvSEvrJNCPXYWUilYrRqWMSD7KzMFujiJEOVTIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759307272; c=relaxed/simple;
	bh=eKDxOd/8infgGPrJNe1yhZvRW2gOa80XvT8nyZkZHoQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dGavl60Zf/uZXzBAQ0ZiTeqkyVihjvx2Ba1F9sn4jzmEx+LhDLnB88YGzeuJnk8Q2+d5tDubhpDBw2B11uYDdPdDSy2kHbNCRJ2YXbuMkTuHMNqNeSYVfWMO++zjYoRjMN8mgvkyAa3XpYe+ArgwrQRaSEOanAmuKBMku8Y9Z3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l2DiGUIq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UKqpQ2027451
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 08:27:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sRte5Fe52kG9pSHQFH/MbokFPbtdU+9oG1CqeyDC+9w=; b=l2DiGUIqY7SdY4wo
	uRnMahgndNelhmGeIXksnIzQmSDntX7sHyvleBhZkcvSWA9BAXdFfCxHIifmB5sn
	rAeKldqI43SZ81O8+sIiIxs2AF+rMzPkTMNnZqq7DwZaCwFvJT6U1x4GOqlX+frG
	wjrqeW5biyAYO+FBPNdbx8VQayJLiJ0Dne5J0WYm0L0V7xaI517n2sPAe5/il6LH
	n9YrpZxgkTtTkeAm16s54jNBj0kgDU79xIm2WHDC62kqKzRSbVcVlpMj37eb/UT1
	xym7Vtdt2bP3BNhbFGABKLnvPfHS6G3fshEKjbnp4pjH0n3gQGbKAQRzgqxbr+IP
	TiVJAw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e851kutk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 08:27:50 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e231785cc3so7112421cf.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:27:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759307269; x=1759912069;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sRte5Fe52kG9pSHQFH/MbokFPbtdU+9oG1CqeyDC+9w=;
        b=kzXGgCNGPxhancz7hu3nS3hLV7YGnXCVKwiCocPEWRY0Oo+nBEoKd2+zpvj9fW0Nk4
         IZwL/eWIM05Drj/UP6eRRPf8TdueHgZk3lxvEuZkUmQ58kIKHBObuqT8gR46kU4zRyUR
         bARuNTBNGI9i1EclEacsHn9OcIXe4yc6POwL5i/WjLNOf0VcHwdCE3XP9lP/aGLDe2y4
         oTCSSAPKUW17gcUV8vgtTX3JxLAQBOzViUfp0Ktjvldabl4WR0069joOeNqvsVRSpJ0q
         lqM0/iACbzW5xCl6E4kLRWdBzAZOwxsgp0sw6LxV61ro4+5f/7ZI6dF5mKdW/of/lKRX
         UFaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKZ3dw7jDK6wGqZar8DXimV1trt1CZBVB3Z1aGCfFwRyZmMZJxiK54pENn1OR+Qpf+UI0LZrNwbRqy@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ2pZqpmm9/FAxAQy/dfz68bKR50FCyWw81IwnHDDoPE6hzHoA
	l+pNbCpZ3YpRWupnixCwJGnFVyhQ8qaGq2PGGoaRb6T5DBA7e+YUqihy7XQZyw+UXFJe9ISFppq
	hWuH742ZTpTiSE+xcwFLLLoi7ZpFJ7gj1yi4bCDMRHYcmH872bUtd7GHByIgveDCx
X-Gm-Gg: ASbGncs2UEseEt8PwrR/RO8D4Tfta4RHgrgJY1yZAfUx4EWVoTMoy4SHN8vaShnvMp4
	Y6YlFJsy6+Tn2P2PU6r/CA8BqjkSJMPiFT55yvZV1T2CxmwE1JPGzMPticfubOEONC9y8T7T0l9
	uxl0qKlwUzmQQzzAMc+HiwaDOj/SizCC0cEXDC/rY9Xookz+ztlAr+IUDrc4fdZ3r1d1wnMQ0bJ
	TgfN3ZW+sfetNZ/FR5lvIxaBp4vdrPR/Du0SLFenlj/F8f8aHKS/4PHslhRMlU2laJzpeFzXnER
	5t3ES2zr7l0v95knMxVblIx8lUjBboSIFofMc0urbJ7kLEHLpbnWDsHElkHH6G0LB3fuOw85EIp
	3wuBOeNqhU/C/T0xP5gRWQZrmm/I=
X-Received: by 2002:ac8:5e0b:0:b0:4d9:ac87:1bdc with SMTP id d75a77b69052e-4e41c547752mr22283401cf.6.1759307269090;
        Wed, 01 Oct 2025 01:27:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGazXCpf23PMH4PrA3/BHdRst7lhfzNEub7Fo50BJ0w2oAO8PQN8uTngF/EvP3RGSn97sQEKQ==
X-Received: by 2002:ac8:5e0b:0:b0:4d9:ac87:1bdc with SMTP id d75a77b69052e-4e41c547752mr22283201cf.6.1759307268641;
        Wed, 01 Oct 2025 01:27:48 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3b4271dea9sm831995666b.88.2025.10.01.01.27.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 01:27:48 -0700 (PDT)
Message-ID: <7b1286e5-f685-43f9-a5ea-c82a3ea8a1c6@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 10:27:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] arm64: dts: qcom: qcm6490-shift-otter: Add missing
 reserved-memory
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
 <20250930-otter-further-bringup-v1-3-7fe66f653900@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-otter-further-bringup-v1-3-7fe66f653900@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68dce606 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=7Ovdx5uLAAAA:8 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=Q9X1YL7jsAXwpJAzmCoA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TQZWkJv5rNK5-PaLMsrg:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfX3Ck0gOzTDzqU
 t2V9PgGrhVs/XNmN00eaYzF9cYv7R00WVcf/v1U4r4Arh4MIhT6dW5iXqVIp3qYU3hOkopJmueO
 Z4u4ufmsPhtRdmqJvbrHAy5bd7lVIKfhVZQeC5ZDrujKS2IYayoLMbGJ5k9qNME7VafD0+SXxF8
 B6RhFdkwQ1xPJlhcUGTO6QMKj/QnCkM1jMxLDwqJEC+Rw96cJqlkJ/Rm/jdUlSXq1ptM5htytMb
 AsrjsOjQHG0+nvoj3d51m8laV/8tOTUDgGwv8sPxkTitjFvBVn7PM0GV+IT1bGfDASvQBksaB2z
 dUGuhkyMxUa/uHKG3Niquz/+QmD18Fzr/ol+so1aZ/P/0UXk0QVGXJEz7LuAsynrDMUTtGiqeoK
 R8EinUzLZafYU54RIOMZko0ckh75AA==
X-Proofpoint-ORIG-GUID: 2SjN3oZhNCrTXQTcu35YtTj8iIu5Bs7F
X-Proofpoint-GUID: 2SjN3oZhNCrTXQTcu35YtTj8iIu5Bs7F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032

On 9/30/25 4:32 PM, Luca Weiss wrote:
> From: Alexander Martinz <amartinz@shiftphones.com>
> 
> It seems we also need to reserve a region of 81 MiB called "removed_mem"
> otherwise we can easily hit memory errors with higher RAM usage.
> 
> Fixes: 249666e34c24 ("arm64: dts: qcom: add QCM6490 SHIFTphone 8")
> Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

