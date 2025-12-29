Return-Path: <devicetree+bounces-250169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D83EBCE6A6B
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:10:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4CB4530126B2
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 427FD205E25;
	Mon, 29 Dec 2025 12:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BLoYEx1E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UWB/Dw0P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BDD241696
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767010228; cv=none; b=qYxqYuuOYeTfi646NHoC12p0O5ZiyDSx3vmNUyb/ENIxMYoh31x+/9Lvk6Tm2uecOVbN4uFk4TJCEd24gNjPDRF7xajM0wOhKzfyZSx7vX1qSWNj8zggcbCMfzrBcWyVcdb7FaBMNA/xMvE1leng/nd1tujmhya80zwWfwnmlvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767010228; c=relaxed/simple;
	bh=A8l/+tDY4TSpp5rdRSoRXaPmugwLl49j/YF2EoHHkPY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X5RWrWCnjBM8Vt2ADQYz5mtOaYJeiJjmgqk5/JiF4k58J4IWEPtx4nLm7lC/t7jk1yToaa5g7JxwJCoj+97pOc4p1K4gjR4xR0t9Qrkj13ZkNIP6EzGu2GFS0tHKn9w69ACcoAuCcomnPHm0hs+dadz4E9ygH0p9Nhx1kmwwYFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BLoYEx1E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UWB/Dw0P; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTA30q03313199
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:10:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UmRcezJoOaqIculwtm+fWIvmXsoW/ApmQVfbb+Mg22k=; b=BLoYEx1EISjcIZyy
	fpmNK0s13xsxN5PV8gfPO7I46X+5K4ieea1rJgAHkWBFDVwIEK23juj/Kl21VXPP
	qYJCszqcvo5Rb6VWvMBEbluZ00LlnwGOn+IVOtEbMW6hjRrXvw05dcnS3Xw/PdgY
	licow/pNbO7p+MmSuxt7DO60KBULfKeTSpujplhMM2baZEAiLXS0vGRrCj03n+Cc
	emZ1RW8JOaFkY4y5i86UDyviNdIHmRqVnfMQr/j3GpNMa3EgGTs23KLaDK4eDNPf
	nm+k6XEBwrim4Fw69UwAkHnGp08PgtJKK8CIdCZtrSdZxvBaYnd3w3LMXdicQA7S
	2fRNBA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba8r6c6g4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:10:25 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1aba09639so27019781cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767010224; x=1767615024; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmRcezJoOaqIculwtm+fWIvmXsoW/ApmQVfbb+Mg22k=;
        b=UWB/Dw0P6tYqXlttQ1MpO9ZJ6gtln6lVXXztcdPE3nZ65+43K2Dnminvecf9FK7Y1g
         pizJjMTBt6CajjtzSSvt2WGOEU3DuMV6mIP5r8ce9PP4pOsvV8BUtBZusMS5U9YYS9mO
         i93acPVmuCocPufWSWODVlKOa8Fy8rq6NkOh920ypLN1KcwqHUQT9DZHA+IoESeljbgn
         jZg9te7gASoq8qZzvuAa6hxQwzT2xJG+TllocvDWMclqesVid84N7+qImvq4fxUyTKdA
         u4WtjEiHL+W+DSL200IJ8+s27UXzT/7E5MUiW5lFZ+8Q6MUYKPMtsV1bYRJsVvQzZPJ4
         X2Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767010224; x=1767615024;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UmRcezJoOaqIculwtm+fWIvmXsoW/ApmQVfbb+Mg22k=;
        b=JtOOI7gU9SQcDlZp0QczcFnSQeECS2mux3yaVPkYlA6PqwccHw4FsQrqSwjxiOOlUZ
         AvH2oH4IE/Cq4kvnSXOWbhfI6gQ5z2QPrKOUYzeCdpGGA86vA7cAfUg/YOme67Nmt7D9
         XfqMslS0iNfSX3I6wivb9vq4vv1A0k5oTHFv/de6wC8XpblU/roqbAk/nLxalzQuB3T9
         kkLS1Z9ChXCMzH5TPsaDZWijbb5pnyq9l0+a0Ci21oK2SPJ38G3DZjzP8JCcmFt7dggW
         shD/Cq7QQDXw8Dl2PX3JM1DQZsnNk5EPVb9j65Bl7LQONHHiFSB73h/mizX822rX6pf7
         91Yg==
X-Forwarded-Encrypted: i=1; AJvYcCXy9QNmkOMK3k5MgzXIETKBghp9Zou+oXG1w0FhefHxVA73vAQij3HP57x8YZG0QTmcpHMGnC2/lujO@vger.kernel.org
X-Gm-Message-State: AOJu0YyE9BgyNngAhkIQ720sJnQ/5xUZT3VUWOiB2kHjaoDLP2n2vGN+
	49Mpei2MWMWKPDS+YIeEHNCSqyBQo86WfhtjMi8UzjJq7Oz3EgK4kmU9YzoCta+cT1LpJI9xgOd
	BqfX59l5WeXoTNx0tkxrsaseiAfoZMF2lq9PQJSN5DZXAXXKgqOE0JF7gHvD7wQdf
X-Gm-Gg: AY/fxX6YP1kPlJvEmUQ6FYy5GBMPVwxqP74Ke9gLDPmDb6JndM/JUBZmRmDBUtgvbKL
	ala8500GT3Yokwt5xo6bng6zabmjvlLOJp9k/YT/l/bcnXF9Xbvzj7Drdo/B/MKG+/1g/DUbDJ1
	pQTYiIrvTNN2MWZaTuHghJCZdTuqpQfAIKiDLsJkuvUhNL0ZxPIZPld1DA87XX6oztNtoDjSRdp
	lslzcNDWRNpR8Sf3+9MtWhDlIygTSj8oTw0I1eVdJf5JJ3DjFcQh+s4pU81sg+5n4FA0TDVn58W
	gSeXr0wkT7m3Eff5afP/k0mpq/8x4KHU8QSW4vcdSHwDld8AmfTfd+wpowewAroQ6ZmfENu5vzG
	GMdq48hnwtCv41UUS0cdooBaSDhEfycIjuxuukcJfzk9hJhb3MfEFGFLmpi+0DyPeAg==
X-Received: by 2002:a05:622a:1920:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4f4abce1e37mr308986351cf.2.1767010224108;
        Mon, 29 Dec 2025 04:10:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFMKnFdxvstgWTORVPMJFQFOVOtZCz+Jhu7xlTUqWcjCXkeMyACTrlFS4i7qyXEw5yTNfv1NQ==
X-Received: by 2002:a05:622a:1920:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4f4abce1e37mr308986151cf.2.1767010223711;
        Mon, 29 Dec 2025 04:10:23 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a60500sm3289805666b.13.2025.12.29.04.10.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:10:23 -0800 (PST)
Message-ID: <fab117be-d9a1-4f4a-b91d-e808c50960e2@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:10:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: qcom: sm8750: Fix BAM DMA probing
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gaurav Kashyap <quic_gaurkash@quicinc.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: stable@vger.kernel.org
References: <20251229115734.205744-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251229115734.205744-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Raidyltv c=1 sm=1 tr=0 ts=69526fb1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=HqMmv6ACb4lSiKHDWTEA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: MKjuC7xJOXizK--q-I9_fno-hUC51QbS
X-Proofpoint-GUID: MKjuC7xJOXizK--q-I9_fno-hUC51QbS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExMiBTYWx0ZWRfXyylyRsnaPWEI
 x998ZJg9i0Rtl8w9u0NOPbl6VcTviIrD0qdVtEpePUks3/duLv2Ff3TJAPxK4IpPx5j06ZnKZ7I
 pGoHeYlXVM96v9nfARVKDMOIKpJH2iwTf20EJKz/zp9npvGET3QvfTu5gx7z0LJbmxGWgEPdZkj
 5UoBxqHcwx/jRk04wDDygx2ufOAf2aapoxnLKgCgUUr/oVkn1I4JnZPVtM6QpZ5XKDI47++SUvB
 dS2z3E1b2/Je3tG4T8vM5MHi/oow0WQaGStFMUe4p/aXq29risvegrWvuEENlJJA3e1+4JRnwnb
 Z5esPM6UOfLguw9OjTNDQ7t1zUW1xVRpgfJYoOw2jTNCX3CALcwEcKoRqq5ddHMRztBvoACHZlt
 5M5XoHR9IFOQhx+pFW6qQMq1EzUeYCMHpTFHApJSglDYlvqIr7dxw3MImhN5pBiLDEYCilsn3hL
 ZG5axshBxEB9DdSqY8w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_03,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290112

On 12/29/25 12:57 PM, Krzysztof Kozlowski wrote:
> Bindings always required "qcom,num-ees" and "num-channels" properties,
> as reported by dtbs_check:
> 
>   sm8750-mtp.dtb: dma-controller@1dc4000 (qcom,bam-v1.7.4): 'anyOf' conditional failed, one must be fixed:
>     'qcom,powered-remotely' is a required property
>     'num-channels' is a required property
>     'qcom,num-ees' is a required property
>     'clocks' is a required property
>     'clock-names' is a required property
> 
> However since commit 5068b5254812 ("dmaengine: qcom: bam_dma: Fix DT
> error handling for num-channels/ees") missing properties are actually
> fatal and BAM does not probe:
> 
>   bam-dma-engine 1dc4000.dma-controller: num-channels unspecified in dt
>   bam-dma-engine 1dc4000.dma-controller: probe with driver bam-dma-engine failed with error -22
> 
> Fixes: eeb0f3e4ea67 ("arm64: dts: qcom: sm8750: Add QCrypto nodes")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

