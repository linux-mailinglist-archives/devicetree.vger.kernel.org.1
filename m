Return-Path: <devicetree+bounces-163019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A0CA7B092
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 23:20:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 802603BEF1B
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 21:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3925C204F9F;
	Thu,  3 Apr 2025 20:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D2nL7VbK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0930204F97
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 20:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743713289; cv=none; b=lS8ki6mmydu02J6AkLZHY+2iZqciSM5+MYcQ6SpdziLn3E7ZR8hWQAHrmUn0sU1ilubPvPyN2pLqmp5lihLTqSYWO5Q5SZ/Bfn1WomBEAa/4wfe0QhglKYFhnWSvsG5RBbwSOTaWKUHCRn20cCkP59Qh3YJQ36V9NoWy7Ws5LNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743713289; c=relaxed/simple;
	bh=ByARVNs2/94yXyo2jTCQFxi95LxJUdjcWtISN+VzO34=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FW/5xIke5BA7VfimSBVC7qQIbonY/OuW1AAUTXcOp1PxkxOhdOM6U8Fq6vbG1gVaXQ1LJrnWZqTNcEYnEybyNuGINPQg3a79mgnqd+K/hEBQkdTSBiJNCaENBNasCoyiw6xy/7AhmIxsebNH12QNeSriX6yHOdRoPOXTYe22uXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D2nL7VbK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 533JhEks015908
	for <devicetree@vger.kernel.org>; Thu, 3 Apr 2025 20:48:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZbSA1DZ+wm4AKS1guItAosf4nBYy3ZpMHJTTERfAWiU=; b=D2nL7VbKnTomAGe4
	up0KGWVTv0pdehrT1DGZDrrfu/TsifNDjeDQpKjNWwFKGYNE8wWaMgjSyheMSX2B
	8ZMYD1XkW50ekz5pMkPjwb2IOrvi33xeRMg9BAuqKSJWir4pLhqyjLB8xmHzbmD0
	Soi5RTWOC4XX9PLP7snYloUI19BcFLcF+iqdfU8a0+dPJEWz6OgAj+BatKitCNEQ
	p7wAV6rijtz4ZZu/1arCf67rhSi2G3qqoCwzrDZ3XY/4coxf+BRoej4m2D7X6Iw5
	jIihtqToz3raBdm8OT8zkUrhXVw3Iw2N+aIAXr9T72ic/YK87HHaDODplbpRx9Gj
	LZ8e7Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45rbq00x5s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 20:48:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c547dd8b06so24100585a.3
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 13:48:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743713285; x=1744318085;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZbSA1DZ+wm4AKS1guItAosf4nBYy3ZpMHJTTERfAWiU=;
        b=ot2urZEK9AyCAumbt5raeP/3JV3iZgNaHBRIGPYkqj0Z24/JaHpuQyPFpXPwJkTeJg
         PhE4tnf2IrHF2vyQK/Ozl0UF6nTjnz78DccfgOgqb2hx/qXb+cRvb5+LrZUZrvDMRUSA
         yqzzhv0d1SSZnqZdFXSd0xAryrTAKQb0a/d8XvvHQICOOCwTT68GPmnhpkhdOcWZnFNr
         IF9mqHNkBE7ELm4/VVpFqvnhzr6vBDK09KSo+23LqcIwnVbILNIVORMtnWIVhg8AXwsG
         aIEUh3wFrdmxGh4M9FP6EeZFAmIFHZWUP1eqPLWMbsrXrwLwum2ULVrf9ksvhpEa+YTR
         I4nw==
X-Forwarded-Encrypted: i=1; AJvYcCWOtcvJTMtS1W7Y9k2Uu/DhlcImUG5Wj1NPugNSTuUXMlhjEF4XDh3vbTQqQoMfOk2xb3sI/8OBT4C7@vger.kernel.org
X-Gm-Message-State: AOJu0YzwIQNRJD9b8z3E50EwANCxw1NRe0m/pByKzjiGMalM9W9owk1V
	lqEJ/rRt81Y4xhYwyROa270j6FTwkInL2YRQaWlaDgj+U8IyIoGJdYmnVl/jODB8607ReB+oJjP
	bV3t2hcNu/EcCiLwyifklyLqdKIKe4wqwf6VFJX3RO3Qpdz/shjW1hIvQOEWT
X-Gm-Gg: ASbGncu+XnVrxjMfwg9TT8c/od05ohXVPog/0YUalPKTOye0tEHumMVh5aTTf6vN2sk
	GF3cHpagfb6778RSKvfZQwjhXIXB+nMwi5t00sr1W9ormjdV8qJoqqTT1AT62tADqtWJdBtkec9
	43O8mmtSRW2i6TfQx6kQBm9rCmLlj/itf7KOWKqpAf8I9mAz4QxFgzSlzWJfg0JYdi+nxdZ2+Ec
	rKZiB3H6WAAgOfutZwflt37eoDlwj2L/W+XLWU0fdOxE2lOL0q3LHZaAa/cAuNMVTBTgYuE0Bx6
	h8Pl36j+CddUoHZ9hhG130Vw7ttGXViJ/xsfF/opSVIdiZc2elRKtc8SF1rg457oF/Y6cA==
X-Received: by 2002:a05:620a:40c5:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7c774dc4185mr33441785a.10.1743713285664;
        Thu, 03 Apr 2025 13:48:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFp+1amjTwUQ4AsU03G8K/0ubl+e1o8QxpJmKtqcBcBTnt7Mg14gblMDDogOym6+X/hYXyJvg==
X-Received: by 2002:a05:620a:40c5:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7c774dc4185mr33440085a.10.1743713285308;
        Thu, 03 Apr 2025 13:48:05 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7bfe5c93asm147372666b.14.2025.04.03.13.48.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 13:48:04 -0700 (PDT)
Message-ID: <c25d6b93-f5e0-4f28-8a6e-f7a8bf07d53f@oss.qualcomm.com>
Date: Thu, 3 Apr 2025 22:48:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: add the pcie smmu node
To: Pratyush Brahma <quic_pbrahma@quicinc.com>, konrad.dybcio@oss.qualcomm.com
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        lumag@kernel.org, robh@kernel.org
References: <c5ead68a-f108-4e73-aea0-d6cb562092ac@oss.qualcomm.com>
 <79504e6d-5ccb-4909-a88e-307280c5d359@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <79504e6d-5ccb-4909-a88e-307280c5d359@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FQHT6tJxcL_9wXONBvTmqurZ4BAPYici
X-Proofpoint-ORIG-GUID: FQHT6tJxcL_9wXONBvTmqurZ4BAPYici
X-Authority-Analysis: v=2.4 cv=ZNLXmW7b c=1 sm=1 tr=0 ts=67eef406 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=rw1LKgnZhq2XGCI8xKYA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_09,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 adultscore=0 mlxlogscore=904
 priorityscore=1501 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504030110

On 3/28/25 9:51 AM, Pratyush Brahma wrote:
> Hi Konrad
> 
> Can you please share any updates from your internal investigation?
> Do you still have concerns or can this be merged?

Pratyush,

please check the internal e-mail thread.

Konrad

