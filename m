Return-Path: <devicetree+bounces-235118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C979CC34B6C
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 10:14:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4F1274FAE89
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 09:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BD042F8BF4;
	Wed,  5 Nov 2025 09:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AoIAx0a/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LVh6vPIl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8582F3C0F
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 09:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762333863; cv=none; b=ujxN9aviEZ4Uu9ziIwfetlznI9xH79y7x5u4/qSXf9+Ajf2QPNDVfUPze4W+3ndx4y5k7IcrBnVsZeURTDKxkl9Aafqg1Id0G1dgdPk0ZxgEScyawp4kqx3jRrJ7arVMGTuIgC0/3Vp7LewgH01kZk4RFIvLcOD89AvLP2mn+TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762333863; c=relaxed/simple;
	bh=ymF0tfM4u2SvWoGHJc2mLhZccjE8NKDBOsISnM4qyPM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=riKCAZX/8Jr2ORMvhsTzsdY9klNj0KkTUuzwxsbfbnnpV0fDlw+kFSGun0tjja8aLrnNcQ20CQRXbLWkoCUqhAKbTbm186hcE2+146088PpEj5jIw3HmZieF3KNGHiQU6DGBsoVHMP7T/pfiJJ8FbxVrcDGQk7OLVUINxtGnX20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AoIAx0a/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LVh6vPIl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A58CQFw2927473
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 09:11:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dCW9tJ4BvEY/1LMn8PhBqu0RVJSBHYZUAH3w68oicgY=; b=AoIAx0a/jq4igDaN
	z/BGuapi5xx78jG2BJVo8GsesdYQEzIJ/xYdtDkTTvR0ieKeCOeq2ZSuFieJXj/d
	egtAlWy3JcKvtpbDMV9U+lI0vZy+7JYeToZI0FAxgF79SuWXcWvDymSUMY2hyT+O
	NRzCOvn4ryeX2pagNXdtt2+om3SgwIBVmoKqMj9XrG4RW+SGlSbBUbeIv+QjyIDZ
	U5CKTPuhE6CbCctVWYtTZoTcxkYdNj0HbjbVJVZLPi+Kx/Plg558+AXi4Res+nEo
	Bz/UN2CuUPMcaLrpJcrh69OjHP3KOz9unifQnqrBx/8B5+oDDuo9mFmtMCrfWqqi
	pZZOHQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7me5tqwj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 09:11:01 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b1be0fdfe1so49491985a.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 01:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762333860; x=1762938660; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dCW9tJ4BvEY/1LMn8PhBqu0RVJSBHYZUAH3w68oicgY=;
        b=LVh6vPIl9mV0Vy5/LPMVtwrfCkacCCbuxzyGsbPiRcf4s6ha7ihKA3iqB6D+dY+nQN
         ZflbmF9nC3Ip4FQjQNMesUVb8Uabu7wTXuqcO8JMzRCCqzAw9gvl6mt5tuFpDqcou0Jh
         SnZgpEaRK6wTF5EtR9uUzC7/pcZlnGWW+3TxYRu3P5S5CMsIp4fB8uTGPEdjOrWoXYLk
         rk6owpaI/38kfKjb47CPYhj3yL205dGwcTtPVf/9oOrsDAwXbELiY3O0HR/p9RH+4PV6
         iZB/TWpVeR0cfX98fALw1iZNoq91stTf/Xs38TGXrR6YZbQKO2Ob/saqCKnTPYP9pZv8
         vedg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762333860; x=1762938660;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dCW9tJ4BvEY/1LMn8PhBqu0RVJSBHYZUAH3w68oicgY=;
        b=EOHQ5gJHhCdO3aNJYnv8NRIXbs1bVE8Iz2Bct5xxUze6a6ZYYFfjDRMAGi8wUdW1Nx
         aNA2CjcVVt9pAW1TC/gFNBABo+bw73ACv4Bee1YaJ5YHC9I+euQWT82TNmf9Y/5zjnKb
         IW3FmBNvCwVCPNLCFzBUX/lbCtuLx0PMLpzUcR0+1wnH5ovH8ZJrtRpj0/L4mhhhqgkt
         JeoS+zmh6VlHCKPSaMV7dCNgba7zq1eC6WEi3Wx6Rfuqhohw0BHaao0ZKJe+4g/xhtY/
         b1BLodxqW6OMFlJGFIoMjzRFwoM9120qc8ZZ8T+Z4wgC2xyriz3dvBameAjWZZVbAFG+
         XE0g==
X-Forwarded-Encrypted: i=1; AJvYcCWmUY+oWbN3YW9YB669N8GtRQIQMyNVCVfh+H07h5WyDQLQ68FOTacoTqECC4+ZJ9fjAqNMt2Ku16KX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx842qkTLLRjmgnx+DNO2vAFiMR/IqrbMdj5PU3RWcQYmaJdvIR
	gMDicMce5inBcLd4e7W+QsfPrPBz4Nrz7oR/mPX351Kbe4X9JSyZRLwsleLoaSUTw5mXahqwR79
	Usxv3wuRd2+EZ5EMg5p1ekjr+RxJ7zBHfkUnWQcnQwZshi+gkn+46nUKJNo2aVKbO
X-Gm-Gg: ASbGncteNz+AVqnJ3utZ7fmVwePPZQvn3Rj3+uxOX4KtrVyRAZpMX6rlMM9tc7JUrKv
	Is6lAqB0F333g6GyjlHGQXzT70xMJ1uRz+7VJ7O7GY23yJgEPNHrD1TWKNdD6diZvCeNgcrvhsJ
	j2DKTXv7GYTBWJTs0am7gRrxf+yWPFBOHZYDlh/0v03/wosHYBcC531uf3rsIVhkzL4wIkMjhI6
	WOSbbw/IS6MbmxingMOfG4lAX9HcbhKJkxZYG9w3tI7Dwqu4Xe4I+yj1jXXKxSWEpVk5kA366SW
	U2pLWLpEbKUuWcZyMWdvYJu9gQ8d1CZDtQmF7nMAUU6x74M1VRE99mR12P8l+uZ7nYKbaL7byFl
	kgoaZAoE1uBWiYVJgt4fnjC1D7PDl3E7tGXch9MNHCqSEOyCqutYAhd68
X-Received: by 2002:ac8:584f:0:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ed7212be7cmr24340191cf.2.1762333860129;
        Wed, 05 Nov 2025 01:11:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGWnlIzLWzdXzrCXM2fscuvqw2ZiRnNJleeX0g9kOp0j8ErvOz8HDHza8o5lI+lsGnLS5XxaA==
X-Received: by 2002:ac8:584f:0:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ed7212be7cmr24339861cf.2.1762333859590;
        Wed, 05 Nov 2025 01:10:59 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723fa038e0sm438025266b.54.2025.11.05.01.10.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 01:10:58 -0800 (PST)
Message-ID: <2c9c3a85-3702-45a0-81bc-f6464f8f02b5@oss.qualcomm.com>
Date: Wed, 5 Nov 2025 10:10:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 01/14] dt-bindings: remoteproc: qcom,pas: Add iommus
 property
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
 <20251104-kvm_rproc_v6-v6-1-7017b0adc24e@oss.qualcomm.com>
 <0608ca9b-083c-4929-a4e5-7d76b2590637@kernel.org>
 <20251105083402.dvm2w7ezp7spgtz6@hu-mojha-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251105083402.dvm2w7ezp7spgtz6@hu-mojha-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Lno-sYCdxYYI2gKBLD-Pfyj_nv-YrS2O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA2NyBTYWx0ZWRfX4BxG2XRe9IBs
 DxhmbWgWT1PwfF2WhbQrmWXo7eKMey5tsunpMsHEg1boh9YRJDAHtDDqoCncOsb94g8KuBsUSvq
 X16euxDU3meGZqTNwz/iyMQzrzPKBEfeey4SuJCNM9Yz5EnizhZq/65qGC/LSx8jax85bJC9WAT
 FrKSClr4Wup0sEAXBKgy/Y6OHXdpk/QAxIc5LaWXr637BeIziUTzUvJczBlg2Nrpa3WOc0wzOyI
 I3NoaosLRdOHefFINIp7KLMm46J1FCgCu31LLgi+z1WZ0vo+qkHOCwmxD7VT0ITaoUuOrLkD3hF
 gR55zxHIvBSDYWR3Z5V4LyKf/gUWtn+zGIwtHe+bRDGFjW3x6drkwxcYAzWNalDl+RDrpYmoHX1
 I4VywRvmPEbJ6L/lUFQPw6Q1SpCpyA==
X-Proofpoint-ORIG-GUID: Lno-sYCdxYYI2gKBLD-Pfyj_nv-YrS2O
X-Authority-Analysis: v=2.4 cv=IpsTsb/g c=1 sm=1 tr=0 ts=690b14a5 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Vp2ZucIk61sbSZnEYCoA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_03,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 suspectscore=0 impostorscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511050067

On 11/5/25 9:34 AM, Mukesh Ojha wrote:
> On Wed, Nov 05, 2025 at 08:17:14AM +0100, Krzysztof Kozlowski wrote:
>> On 04/11/2025 08:35, Mukesh Ojha wrote:
>>> Most Qualcomm platforms feature Gunyah hypervisor which handles IOMMU
>>
>> I don't think that's true. Washn't Gunyah something new? Like since
>> SM8550? Look how many Qualcomm platforms we have in the arm/qcom.yaml
>> bindings - for sure most of them are not post SM8550.
> 
> 
> I should have rephrased it, thanks 
> 
> "Qualcomm platform which feature QHEE based hypervisor or a module in Gunyah
>  ... "
> 
>>
>>> configuration for remote processor and when it is not present, the
>>> operating system must perform these configurations instead and for that
>>> firmware stream should be presented to the operating system. Hence, add
>>> iommus property as optional property for PAS supported devices.
>>
>> So which platforms actually need to do this?
> 
> As I said above, almost every platform which features QHEE or Gunyah
> hypervisor that support PAS based remoteproc subsystem should have this.

For added context, QHEE (pre-Gunyah hyp) has been with us almost forever

Konrad

