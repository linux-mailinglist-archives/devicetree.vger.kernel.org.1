Return-Path: <devicetree+bounces-251327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9925CF1913
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 02:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 557F93007291
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 01:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19F362C15B5;
	Mon,  5 Jan 2026 01:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g/ae0Uv5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hRELJ1ST"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882502C237E
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 01:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767576904; cv=none; b=lyb2FzOFdskrc5ggVqI1qZvyhHr9UJWQAvN71JqW2QfgpdQAH21fz5zrDKqONacvEOPj0Ria8ZtP5gvfWQOAG+Kd5WgvTWxngeHW4BRI+9rezNlp6kp5aodyIxm8EEWtayc2PKp8KtHMkBN1jFbjpytV5gLM8oyzeRLFmDt3cHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767576904; c=relaxed/simple;
	bh=hTCCLMc8hEMqdamm1Emrq7NemtMHweKO10+KLPnBarc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iZh+w9lsQXSlu/ZLJ37j4cziS4m243NQO4FKAINslGYA24HB2CJPDXVg02CzoXgz2VB6J/uRYx0ouIbt3b2Z+o8wbSBv+qZ4j72lHGUlbI2uZsUYsj5Q77b/UsCItJ5xvOZqHM4RLbBG6UITt0KpC7cVr2TXgH78ZvpS1bpuUq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g/ae0Uv5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hRELJ1ST; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 604Lrblb3102299
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 01:35:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+M+ybNxvSNDjtG3n5APnX1dA1AFl2E1EJpnoSSJW4f8=; b=g/ae0Uv54kb6OSiS
	he4HnoD2xmZjP7UMabxBDrez3ke23a/Q3DXZzJ1Klmb/THfnvxzsfR+wHVO1kwms
	2bBOCUYPtXDlySex/0OgC/CFtqc81DxUsqG8FcSVIulRAl5z7eMHV1pEJjJlGFcF
	HRODtN3AaYo3uoNC8Pr9QdDeiM2HjplsFPYv5yE5W6nfq08H3aazC/Lx+Ryfu9sr
	tYS7PLfdJOf/GUHqr1Aqi7K8TdfghQyW1a5okWb/0ZivCkwmXC0Kl8I1WhCYnogO
	cupXR4/oBxn6M8E2DD4kSqB36P4CNsGDO23sQFcfEfmEh449/ecrSZHc9J5BtU+D
	i4BQEg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4betefttu5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:35:00 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a08cbeb87eso221330665ad.3
        for <devicetree@vger.kernel.org>; Sun, 04 Jan 2026 17:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767576899; x=1768181699; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+M+ybNxvSNDjtG3n5APnX1dA1AFl2E1EJpnoSSJW4f8=;
        b=hRELJ1SThIhHL7vKZIxQfn7TSDD1meKPoFPBBjOSLq6SdEXgDgAtaREBiZt0Eof0QN
         CJNFF9ZTDn11WQVm0QgGqS5Vgqkn8K6jIG5z7EkfqqU2Xge4HgetVmw/1yCwgrJD7oqy
         8MN/Bf1FUkPYw9uk2ILtLarEkJKn5XBF+5nzT+FNZiCMtnbeX3vF3J1tk4ngCWAPDoUh
         yqjkXCNYyCx/Pgkz5MSoWMjKj5SWaD/lFcyQGSLpL/SuSZj3Jt4JmAV2wwr1H59AIxRq
         V3r7RdJew6GSUMOVYVudOD0eyof3BUzg1i6v5xJ8FfPX5eufa1E8ANY/2NocfZYWBJN/
         x4vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767576899; x=1768181699;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+M+ybNxvSNDjtG3n5APnX1dA1AFl2E1EJpnoSSJW4f8=;
        b=vC53bjF59bZsze6bF5qRX/NoY7St5bVG6TSgWkNaGiRxlcRF8+k02ggJoTAUkUL6PG
         f8TTwX1ggSYh12lkUvp93oDC2TwCXCbDzHUra7PINYjNt2FAAQhszTeEoM5kltLmBGun
         j231PjfDzPepo2TAyvIWO0DLk4iQzIQOKWI663AvHzzp2RARq6v5kE2KoWkjB4NTK9Ft
         pPIL9zuAvHorUIOBC3QY7mkt2L+Gvzn7hI/dEUib4qhVcmAYYSkLZRXVKq5o06LOItqv
         eU1KN2ojAm3hIhUib4cINiw9vHeLcFvxCbuYrNb6eY4mSxl28S/p1oJIEGWm2IAY09dB
         wkQw==
X-Forwarded-Encrypted: i=1; AJvYcCV4fAX5nj8hbzIZEVFKqxoALvWjg1ssZ+ekB3D8XNKMjG6ZOrbszOlDel9joVgXr4qPmP2B4OkjR0LQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2ayTNISb1At/PE8GtEY0Wb1e3XaOtGsKP27NO0QxRIZKwfIZK
	Ld8W0TgAkSCoZfnXtHGmbgQrb2vsvZRMiaz8N8HnWj6qbD3q5uAWMCtU2yAJI3LqzTSP7SgFPhv
	5AOZtWape+0sWzqEofDCOMeoZ6AUln26BxuspEqonl3TeGoaK9frgRu3Hdx3FKFct
X-Gm-Gg: AY/fxX4r9VK6u9002GpOeqgWfA2Fc9qGndOUKRNjso1tLkGsWZuufvOAPWsG+EZ/Ao0
	sKgjbzPweQAiNZr0J3eHSe6dUoZ/VWmakh0vzjBnmvQYd2kfp7GaAK9nDtts+kBrTLB4tgh0PZ2
	BxAEWGi6uAmpoHknfOQoTOSYne81PCGKY9xbpMhnqjD682aylMMX0K3NY/brHcEWmUAERFrbtDY
	mKLg0uy60qzFNVzAO0zkNu2bRLzlTF1eCa6shCgpEQMc3/V/+FCxITOb9RZKt6wNDveXPgtQAOv
	jk9sLca0OUH8/I7cF20oEhE9LZiFqer7mAlyR3bkBHSHLxYEoveBNyphmUnIYN8bqdVMkcx5/iw
	+vNsN6orWQoDC2SzuoDm6605ICvEGNri2edrEDR6Ezvlys9+yDwK4BtSc3Ehjg5wOhjQ7xOJ0jp
	s=
X-Received: by 2002:a17:903:388d:b0:2a3:bf5f:926d with SMTP id d9443c01a7336-2a3bf5f9334mr63227485ad.24.1767576899180;
        Sun, 04 Jan 2026 17:34:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAClqZ81rnSnWqMwPdpMel/vCPhsQjOohvj6n1Ohyr9fVWD/0RiYfe/Nv6Pf9/l9hQkHh5zA==
X-Received: by 2002:a17:903:388d:b0:2a3:bf5f:926d with SMTP id d9443c01a7336-2a3bf5f9334mr63227195ad.24.1767576898699;
        Sun, 04 Jan 2026 17:34:58 -0800 (PST)
Received: from [10.133.33.149] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5d658sm429166705ad.78.2026.01.04.17.34.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Jan 2026 17:34:58 -0800 (PST)
Message-ID: <b949779e-5b9b-45a8-a505-03168afc057c@oss.qualcomm.com>
Date: Mon, 5 Jan 2026 09:34:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: glymur: add coresight nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251230-add-coresight-nodes-for-glymur-v1-1-103b6d24f1ca@oss.qualcomm.com>
 <785daa0f-c9e7-4e6d-8140-dd16afdf2674@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <785daa0f-c9e7-4e6d-8140-dd16afdf2674@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Hq572kTS c=1 sm=1 tr=0 ts=695b1544 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=A_mDladIzN_DhwBweF8A:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 2nj0OR8N9QyySC7WpQNcyh1Yo9xn-w0j
X-Proofpoint-GUID: 2nj0OR8N9QyySC7WpQNcyh1Yo9xn-w0j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDAxMiBTYWx0ZWRfXygyuvlN+9BOI
 /0zanhU8kjDUjoN39A7teTT2UlL3TMonJnUUgXOjsncvChn/N3tXrzl9Vg0BIC9oGHTGZ32xtlO
 PxRkKfnOtH4Q3QPJRru7xh9rJEJ1ZsSz/OUtvUbaBO5q83b5dYJ9G9LTEjhAjc0nt1bcICWmo3D
 FZcEBOYH8AxXOhusupqiJTMwBloqX4y1w1tdTRpbfyKMAH3ZxBPITQslMVZUf/q6+U004/lAIEc
 ughFsdGiTb2lp9jqsNLcbmuGZKIieeWvWoFX1a/N7yRWV4M1YW8MdwFNVLxvhZSAxNIsyxCnwHI
 3rHriHCxHed65U85elOnNukZvgZhedgpoLbyHsTPQneDaoouqVVvb2OFMOF2tOAy/2BB7ulWgQj
 7RUsMJlEFsvfliUjhZADmvRdBpNagqoFUXYVz8bzcawSTjNkYFbG6AdDM7pEA3bJTbYIqf0Pl31
 FmjdEJaUuA+OD8YEzRQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-04_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 adultscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050012



On 1/2/2026 8:20 PM, Konrad Dybcio wrote:
> On 12/30/25 3:10 AM, Jie Gan wrote:
>> Add CoreSight nodes to enable trace paths like TPDM->ETF/STM->ETF.
>> These devices are part of the AOSS, CDSP, QDSS, PCIe5, TraceNoc and
>> some small subsystems, such as GCC, IPCC, PMU and so on.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
> 
> 0x1121f000 - 0x1121f000 seem to have different/wrong names
> 
> Otherwise lgtm
> 
> Please try to convince git to output a less messy patch

Thanks for checking, will fix it.

Thanks,
Jie

> 
> Konrad


