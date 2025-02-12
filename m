Return-Path: <devicetree+bounces-146081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F8DA3339C
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 00:45:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DEE73A7FA7
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72922046B2;
	Wed, 12 Feb 2025 23:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XHN/72TF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7441B26157D
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 23:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739403918; cv=none; b=c6KbedOGegxhCyViK4tIByHe0rtDjAw6ZCsllV58Ak+DP39pLu+uQ5cgy32y1dpnmMgnEMBKOmCyHaG20TIFwM7nZ7xiRltI/gznqUTmZqt17I1ZU//RgBXz4td76bCX7PQZxDfMY4aXV7w3pVg5KQli2OAvwIWCmbP1gLhQVIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739403918; c=relaxed/simple;
	bh=pISEIH1Hgm1ebhPn1Af3Igag6b5WaEXZXIPkb7MG8Ik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bvf77EUo6aPo+xWhNFbaN2j4TyEjFjC2jCY8rR3eylGvqxkEsNhFneprnk/+T8+gYtejc+dnK1jyMmXzX4k+zurnwWymiRk4xnmyr3nT8PvV7/XI0E8lhAP46jJ16YVD2srOuwZ7OQeKY1X9Np+8dPuf9nF/pVsCrvvNXu1kFUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XHN/72TF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51CKepP6011426
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 23:45:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9hBUx02+DO2rqZGD8AyCtAGPZWGxGGVd2BFh1CEpmGE=; b=XHN/72TFUl760NPH
	l2CtKPY1AiRfQGp83hKOghligpP8eL1YSeDQKuW7mky0WFrHVy2rtOCR21JGvINI
	ddu+dZLlgYwSw2HLw8lTHMD1SKV1fu5piv0bBIl5CsdoUMQkVXR8VBRxBKNRm8Z4
	L1Dd/QiOV2LQU5CuX8B1KLT4yHBZH82yZcvJRBWkH5gRsZScc3xQ95ViS5bYwWSL
	xH5UnkFvrYKUHm0BP+JOGhJnWvMXLrmdzaccG2SSWXLNeEDUPDeso3zownIH08+v
	o2s/yCX40KgCiNM0PA3BuTgQMQ8q+3qeg9fAYP8gH4o8zImIIGMcZ9rxQrDNucU7
	2irhnA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qxv3xc9e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 23:45:16 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-471c02c21caso544501cf.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 15:45:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739403911; x=1740008711;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9hBUx02+DO2rqZGD8AyCtAGPZWGxGGVd2BFh1CEpmGE=;
        b=ep/GFRD4AUzMYwtPwRZ6Lkoe8FJYFoDndqWk352LznVY7jd8ztbdk0g6PKeIZ/a7jQ
         /nBoeRdiYPdyNn2qTl0TR7h9aABifNrUPD5xlMeO6fOVn41R8ufovISC1c4hJqKN1BFv
         bEIabPX/82F7L0o1embxx6O5sq/rDo8W2g9D86xIQa/fh9VeHeaZYL1oWnOQHMHim4V2
         5aLW2ewvce0NWt/xuhtmyjURYuMZPnmtKY40k7sImwr69KxleN2bnHidX3otKqT5Nb2D
         gjWoyIYHFRkgEz2eUhF7BFfCgGaIGnpgrpILkFV+jv9l4fXqoouTYBY5TtDbxJVxcP8U
         V+GQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQrDQLAkf8+3pqd3iE7v3vwwIY2arrJj80cQPXnNC5neFFkBCXoVrLM4+FVfgVV/5q20R3smjFFJ39@vger.kernel.org
X-Gm-Message-State: AOJu0Yxht2YBqkh/ZS2weolRVPD2CBk2O2jCStfSFbdEToK4KbuE5hdg
	MejUKavvReY2I+9ImFeZktF0UOK9xH19oLkMswedIBK4I6lOHwKgn/GdNYY8WnbL8O9IcXEYLjd
	4uRh55BSgc+PXyMtUVNhj8xvzrUL5HDfu7eF7zyllVVVpkJ7awP1Ij3OlDAdgeruX0o0O
X-Gm-Gg: ASbGnctYpBxM2LcZf8zttnTZFVb+kwqxVEyn9UbsfdcFk+1xumx1HRk1oqhq2xhNEdO
	+Oq7xZG548D1Hka3Y1NadMuoAV/tG/lthU1qusrSu9M4SBC0PQDLs3eCO6Cwd3UU+5arFn0hZgH
	0723Jg/BO6f488TTdwNrv4pWFjNZnKA/dubgJgzVvaQ1Nw64NodIo2yJferJ0S6LZr2knt99NEs
	75oHvICoQg/gZQrLf3WQN/8nqD3snrRjBlsk3QMPQDSIlF60HS00TXI5fO+W4nVraBU3cHuv7xj
	B8GIu5uNJf1jW59RdN8EFDl5aOb9Wk9dr2gXLyjF2MghDHz7j9e3DbbfFgo=
X-Received: by 2002:ac8:7f86:0:b0:471:92fb:7b6f with SMTP id d75a77b69052e-471afe4e2d1mr29685371cf.8.1739403910836;
        Wed, 12 Feb 2025 15:45:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHZBbAM9Rfat+qt0Iy9OnSiRwVlgMt4KfOiA9bSD+573lkKNBEBgs8o9+PItWL0wgmfwvh8MA==
X-Received: by 2002:ac8:7f86:0:b0:471:92fb:7b6f with SMTP id d75a77b69052e-471afe4e2d1mr29685241cf.8.1739403910552;
        Wed, 12 Feb 2025 15:45:10 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba5339d94asm14393566b.143.2025.02.12.15.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 15:45:09 -0800 (PST)
Message-ID: <e2b31450-c428-43c3-b25c-3ec130171011@oss.qualcomm.com>
Date: Thu, 13 Feb 2025 00:45:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ARM: dts: qcom: msm8960: Add BAM
To: Rudraksha Gupta <guptarud@gmail.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sam Day <me@samcday.com>
References: <20250209-expressatt-bam-v2-1-e6c01c5d8292@gmail.com>
 <e0ef29dd-afe4-4ad7-95db-d21326744c92@oss.qualcomm.com>
 <CABhZbsXo69FL-xUfg3a20RybO_uRmsOKyMJ2w3qnpk+8pYyUqw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CABhZbsXo69FL-xUfg3a20RybO_uRmsOKyMJ2w3qnpk+8pYyUqw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: i6YleLU4PqvdG83xg8KapswGLL6KuqCI
X-Proofpoint-ORIG-GUID: i6YleLU4PqvdG83xg8KapswGLL6KuqCI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_07,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=787
 suspectscore=0 phishscore=0 adultscore=0 spamscore=0 mlxscore=0
 bulkscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502120167

On 12.02.2025 2:59 AM, Rudraksha Gupta wrote:
>>> +             sdcc3bam: dma-controller@12182000 {
>>> +                     compatible = "qcom,bam-v1.3.0";
>>> +                     reg = <0x12182000 0x2000>;
>>
>> The BAM controller is 0x4000-long
> 
> 
> Seems like my device splats with this requested change:
> 
> Diff: https://pastebin.com/AwzHPCLG
> Log: https://pastebin.com/WQswkndX

Did you keep your changes that shortened the sd controllers address space?

Konrad

