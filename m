Return-Path: <devicetree+bounces-142568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 357BBA25BEC
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:11:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1331D3A4024
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B423205AC4;
	Mon,  3 Feb 2025 14:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HweA8u0h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA9920551A
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 14:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738591797; cv=none; b=B+0azHDhYrKc/K7RokKIT8h7Q91jS+DUF+fpA89gbHoTrWMYvP5QyLsMEPT1pSt0MWR3p2dRW1xrd2vmL3PHOwsYam8j2hOhrkhH1y3cHgvwiLDCGXUwwjdt8OczvgLBwQtLo8M7EFizKqS3kYXWKnCp1LKRBOebzPY08cIrXvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738591797; c=relaxed/simple;
	bh=x3CVHKQsrsBc35sYt/SLxzM7OsZW74laauClXu3SedQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=AC1MErKe7A1uAtR6uI+qhJ1uwY325PI1kn9r+wo5mY+eBaAmt9RiYF14EK6dWDaVpGaLy2FIAG8aMNegwRZ7inZqtAni893A6SJx1m5O2FHj15YvRoWZNihT3mfGRiTVnIzdo/6MzukLdaA+U3mhga49BCruRIlt17WUJyFodug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HweA8u0h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 513E6wme005747
	for <devicetree@vger.kernel.org>; Mon, 3 Feb 2025 14:09:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PqnvQI074/SnPhRHaDZqDIU5f3FDzozpaHm90U+0054=; b=HweA8u0hbjNe0fJb
	f5n6RWmKMDZ6iVaCxA1mUqv5GcjN2NpU9mrTa/S/UvONbp08eyv5fqnAsZ8JkKWL
	CCLPL5+8HSLhEqdtO2KtPzGrkidpVYQrypPRHZV/j/ptmMKlZHPNKxsbSp7bSHAx
	dFBGOqYAfhHeYiy2zrVY+ZE8CX0PqwRzo+AKY9tRdSgVin1kT5iwbvBbfnimmZVF
	nVIQu269efng/uSfvDqUYIphJnPsSgzw7z3u3ZGIsEwyem5d1zC5ewOPizCAxPFN
	jozxZBCjJqKaYbatIG+vvggrOMjv6D9dmmyzMJZa5Rf0CoqRjm6R+bakGAFRyYTc
	WOIJFw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jy9g00e5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 14:09:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6fee34f95so23291485a.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 06:09:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738591794; x=1739196594;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PqnvQI074/SnPhRHaDZqDIU5f3FDzozpaHm90U+0054=;
        b=siRxigaraJBMXWqzDqJ9xzox1NFbF8EOuy3TrCO/nNdPBHJoA/IIcpBLJLmbBpAkNM
         /f20JrdeDHpFZuS3m6ZgU8rliHJcyuLIO1f0c/kjmDWBA0jOTU54FuIlnPRpU514n44i
         /ukaqsXPNX1fapOetTvG0eWXxLFEjeB7whFAOIO5/JXiyJI6ZXDf2CJ7J//6vFEBjT0r
         82xqU2HvoyHNxJl/ZVX8bt0YNTMFuMmfBwF1CLkRIYRShYSKHKIVuUrvZgZA0YrsASJZ
         1Hqi2VohzbNYszf3cv1jM0XULBpRagaglBhiRrU2GTlNNZBO8ovxfOg0bAr9A0a+Ney+
         nGeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTNRK3K+jqqcxe2vliBXHqVxbuLONuW+j6uFsWjNF/l3OkzabLM/P8maxlQ0kN/5vQ7sY8Xrqp/Q5M@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7hSBMlnjuvGkh+HDajTZew+MGxO3gwoJa9dQ6Gr70rjr5N4lX
	yaJdeA9Ts7h38WSW07jDnqsdOAbwXPtUYF0MoOMW17cYZTxMnPtq4wzo0l9sqmBTrG+VhgGFqhQ
	Q1NDDKTKYeKQFEcTW9I5Nrz7L0PHI6KhAkVin5BIuIQTnmcFr/cUq53vtCKMa
X-Gm-Gg: ASbGncvIzYazVbBX5XTD6mt26q9NYYrJZW7lD0kDUjYHdI4xUcJ2JpGWUpwA0PpDLCq
	INXr10Rq+Rou/hivGivJbajmTDlg/f6WyiMqneHqU+snlxMyWhXO8GUMTl/U/ThS+FTKNRBJ8iw
	VsklBNx9KPCknayBPajm4OXlaRe4XTMt8UlznzRQOKRhP/xFapoXcot5Qm+te7dlwB7Bao9oME3
	CVkoP2HP4qc0exR84a7vksFBUN4gXJmDw6AdRJGBD/2eDlvdKX/IyXSpUZF909LHcpUWAq2HALX
	F+jdPedVAMEbLM68W6763rVDEWdGCE6QgKHAYHEumiTfJ1ZO1jaz9X+Plaw=
X-Received: by 2002:a05:620a:390d:b0:7b6:d754:2076 with SMTP id af79cd13be357-7bffcd8fa55mr1031476385a.12.1738591793743;
        Mon, 03 Feb 2025 06:09:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHEdwI+jcirq72tzg0fC8beLhnirVMEduC/S0WxjJZZWIFxTyTZtGZdO0egq+PfA0bGFTgCpw==
X-Received: by 2002:a05:620a:390d:b0:7b6:d754:2076 with SMTP id af79cd13be357-7bffcd8fa55mr1031474085a.12.1738591793255;
        Mon, 03 Feb 2025 06:09:53 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e49ffe2csm770673766b.97.2025.02.03.06.09.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 06:09:52 -0800 (PST)
Message-ID: <2c306351-39d7-48da-8860-e8eb75e301e0@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 15:09:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs8300: Partially revert "arm64:
 dts: qcom: qcs8300: add QCrypto nodes"
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250128115333.95021-1-krzysztof.kozlowski@linaro.org>
 <20250128115333.95021-2-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250128115333.95021-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 39jybOfE2moL3TBRQBRJTMmQFHC2jQby
X-Proofpoint-ORIG-GUID: 39jybOfE2moL3TBRQBRJTMmQFHC2jQby
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0 mlxlogscore=999
 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502030104

On 28.01.2025 12:53 PM, Krzysztof Kozlowski wrote:
> Partially revert commit a86d84409947 ("arm64: dts: qcom: qcs8300: add
> QCrypto nodes") by dropping the untested QCE device node.  Devicetree
> bindings test failures were reported on mailing list on 16th of January
> and after two weeks still no fixes:
> 
>   qcs8300-ride.dtb: crypto@1dfa000: compatible: 'oneOf' conditional failed, one must be fixed:
>     ...
>     'qcom,qcs8300-qce' is not one of ['qcom,ipq4019-qce', 'qcom,sm8150-qce']
> 
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/all/CAL_JsqL0HzzGXnCD+z4GASeXNsBxrdw8-qyfHj8S+C2ucK6EPQ@mail.gmail.com/
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

