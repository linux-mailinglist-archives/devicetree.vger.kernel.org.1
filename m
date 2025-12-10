Return-Path: <devicetree+bounces-245573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 33344CB28DD
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 10:28:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3062A30052C8
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 09:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E67D30F81F;
	Wed, 10 Dec 2025 09:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Iy7AS/ye";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g4C1fKhX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A70B2727E0
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 09:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765358909; cv=none; b=EckTdzIi9Llm5ZvxJjKlfy47jVXLMxQ3oSibS50zn9rujbDTlmPjRxE6bUoZCOw2+xnZ3SLhI8ZD5CmfqGSksfFuBxYM+omoThOVOFkDHEp1+niwqIH+iX4KLKlujcYp6OzSz6rwuKILi+zy97yF8UkMPaDobjsNkkNwkWN+sQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765358909; c=relaxed/simple;
	bh=K4OCg27MYCnUc+65aa4QT+gLs2XrP3BJQd+qvNtJ9Q4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UReH4gHdAx+gmoy4O0jby9FtF/jqbSOmt05GqXnZpeqsbXeJszRhOblj56w0moWMIC2DOTkgM6il2XWdPJpzAgNpV1aDRb/T907Lhokk+vc3SBx7xD+IOFHavvjaxTmccB9PIpwJ9OiGfTBDyDFSNLPssPzsGsvPQOfcXnMxiFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Iy7AS/ye; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g4C1fKhX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA9GqU22859032
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 09:28:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ePRjDoOI4M0xQx6/poRyTlRkzdYhhno0rSqmTlQaYIE=; b=Iy7AS/yef02qTkFP
	z62uO/LlRW/urYVouTr79/QZsMuJW8u9quCSyOoex7VertA34rLK5q8ZRlC7oNT+
	Ryjxq2IJEnBpip24ULUxd1M6K80ZCV7NwcFLOTyiRUjuRzW9Vn7WBYUO7eK0UMze
	b5FN1xiQRtKv0UrtMe+cqSv9pm6EyYwLkNVc/tReW4b0PSH1RyjSYuC/GRZ+aYN9
	6ZYmNESMlV8Nd5dKEwkWKiKfwI0WJM8p7uOHxSs2wdQs/xeAGKi1Qu2NAKP7Bw5M
	0lwflYOQyPMUg2InOCgNkX0F80bjp8gkev6tXYaCfyfJT1YquRG0Hvm+uFu30Pgi
	mbEWXA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay63fr1et-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 09:28:25 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34374bfbcccso5702986a91.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765358904; x=1765963704; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ePRjDoOI4M0xQx6/poRyTlRkzdYhhno0rSqmTlQaYIE=;
        b=g4C1fKhXB1Qkg1+1Aqrflr4ShAp38PNtpj1ewyi5bcs+aW0Kv1xgqgzciBMK7XV2vS
         uyawNPgNgZ8gssB7htW38MjBn7GyApSEwxi+CtlXNKEi+1jI9yiUQC9KG2ateS/x6yAd
         x/SW7HEsZi3Ft5B4PQPAJmZ2Oi5ESjMirSmOA5kSFp2RHR3n/2LWz1zs8KuGbZxAfkNQ
         yedRgHyLxf+cHomjdAH2okLEKJnAOS8ccioqBalXq0lYa+e648hkB+a8ciwS5VjMFuFt
         QY90nhZMoMqfchyZktSU4M5mTuVmVpZV3JuX8z2L4DZ9nRHCKbNc7lKfEoR7znhzLfyW
         0VNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765358904; x=1765963704;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ePRjDoOI4M0xQx6/poRyTlRkzdYhhno0rSqmTlQaYIE=;
        b=NXrx8srpajmkpL9kwgN5ilclTt8v9hc3jlR+6MXgHGKn99y5AQ75hfQwhrfbZxmNwn
         C630qpbRM6Q8pV+rzzzMC8v6uBCsFVSWoXpAOi+uBd0Ot55vFswYz12pDDaoR162V+7e
         gLwObh0Nm9XnacPLWDCjSbiKu+OZ7XL3sxplfrzpSc6bWdzPL87rTIt/GpY9ZuVgd7xk
         33rUZZUA4S34tiiwa1UrqbiBGt+uwNnvnmPaHM/9xooW6NFNfSKpdNTpjIfbP8jxy+ml
         iqDxaP8pCi78oJIulL6rPygW336d1TcCNtdDNhRRWk/YvDX7IbBKOgj8Pl0MCg2ObXbI
         sGKg==
X-Forwarded-Encrypted: i=1; AJvYcCVJrERbth+kOUzqR9EeR6Fi1/qzYRza8s18vz2Mgsjlax17LJ6gvMDN9n6EYJQXW6Ou1qGQNNYlmHDh@vger.kernel.org
X-Gm-Message-State: AOJu0YzKozhtTdSZbwNz6KtBToO7tM7+3SGjYWiXuFmrG9XKkBIKBSy1
	9+6nfHohvigNlHRtTSHM/51azOYfzIqxPE6jTLvrE4Psw4HvXwJG7B66DwukdY8OaUCMoaEbiuv
	HvXHnxaAu7BywYUBwBA0N3bCnSvhLSnm3tPEBQyjN9syFe6YIUxgHcvtwOm6oZ8bx
X-Gm-Gg: AY/fxX4portZ3XM7M6uXFh+lT76Azq2IHGLKrHgSgSZ1JqMTd2hojYpsOn/tVMseSfi
	KbHF4Z6EX6XkybEeAZ9WuBhjL7hfEwvCc9/m5xhtIoqtmrLzoR6erkaZkl0UWZL62+SNmhSF/yc
	hu3M5+yDmXU2Rr0bZgrTBGi+kZFDHxNRFB3Ul/hOJXySDQm+YEbnjvH46ege8hIstqVs5DPqTu9
	fT0dqV73DN61W9LSoIKiPrfC2qMigG8NMw+pAdK/PtLbugvsOPh7QT7GfaUTB7GLSvO/eikDfs6
	kf/jQIa3OUqnuwILywbkraabsn3VLOudEMDJqcWdk1UCbDaGTFGJAw7i7OUHpO+/ucIEgBavioz
	oql3BVljJNYS9OABxLXreVSVSCqQ=
X-Received: by 2002:a17:90b:1a86:b0:32e:7340:a7f7 with SMTP id 98e67ed59e1d1-34a72809ed0mr1488050a91.2.1765358904079;
        Wed, 10 Dec 2025 01:28:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1fJ2SaDiClPsts12a3t616CMyvLt2PMe3ATPT8jO3yL3ONV31r+nslz4ADvdqoCpwELFvtA==
X-Received: by 2002:a17:90b:1a86:b0:32e:7340:a7f7 with SMTP id 98e67ed59e1d1-34a72809ed0mr1488030a91.2.1765358903576;
        Wed, 10 Dec 2025 01:28:23 -0800 (PST)
Received: from [10.147.240.173] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a70c4ee35sm1903767a91.15.2025.12.10.01.28.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 01:28:23 -0800 (PST)
Message-ID: <aa4db9a4-fccc-4ff1-ae3d-fe4195f91087@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 14:58:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Enable TPM (ST33)
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251114-enable-tpm-lemans-v1-1-c8d8b580ace7@oss.qualcomm.com>
 <3e54b28e-8ad0-46b0-bf78-3f8be3cbb079@oss.qualcomm.com>
Content-Language: en-US
From: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
In-Reply-To: <3e54b28e-8ad0-46b0-bf78-3f8be3cbb079@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: -OLzozJCf5o5_3am86uR9nhjnCj8Izjd
X-Authority-Analysis: v=2.4 cv=Y6P1cxeN c=1 sm=1 tr=0 ts=69393d39 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=J2L1Qyf_rTYgVfOkadwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: -OLzozJCf5o5_3am86uR9nhjnCj8Izjd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA4MSBTYWx0ZWRfX6LWnHDM+RqVb
 d5/FuSork9P3/ecckltdmWPdKki7O0C0aMgWTjsi/oNMuK10H0jwcHt8gRYfHGK7oZeXlcgi9yd
 nv0J+7tfosOlglNWtJIN9a2CS04PmdqsxP1YfIiWD/P+QEYj1oo9KcJqLcFHrw/sAo9qSsDDjFT
 jnpY1hvcIuRtDjFmnCuRS4c4QO6a7Gzpg3mJJPSdD5D7/sGIZFbEhAso62AwQk4wp+DqDal2m5+
 YZD5YkmT6hmpOC/zq+xMoIaqJwjC1OzKb4Ec/EAuvETNbdpD/Bux+C1W59s7QYgdEecfUzgLNCE
 kXhFt/M1oP5FNHUmRAdYuM7z4pbUbCCivIJfrtwEYpTyb84xiHa7rb1XwV2pAmBAykwvCMlNx4g
 H6clAkE7tw5+NC1jx4PvsEFLUWsyrA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100081

Hi Kernel Reviewers,

I wanted to follow up regarding the patch. It was reviewed but hasn’t 
been applied yet. Please let me know if there’s anything pending on my 
side or any additional changes required.

Thanks

On 11/15/25 03:29, Konrad Dybcio wrote:
> On 11/14/25 11:15 AM, Khalid Faisal Ansari wrote:
>> Enable ST33HTPM TPM over SPI16 on the LeMans IoT EVK by adding the
>> required SPI and TPM nodes.
>>
>> Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad

