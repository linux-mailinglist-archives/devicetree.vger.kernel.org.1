Return-Path: <devicetree+bounces-224419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3FEBC3BDE
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:00:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E8DB5352235
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7973C233145;
	Wed,  8 Oct 2025 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RccIbxiO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC30019D8BC
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759910433; cv=none; b=dJJtb+ADTiA2cNj46B5rftqdfq7ZkA+fMQasx11h0R1LREFkFvT3zeNAToee2wJE4NSTWwS7O6sPNut7fpB1h/ro0Mgwoi/UkwFp6THMIqupxMa+lKzL94WnsGeH8rsAhFijFP1vyRTMiJjLsJPgWtLPIEobHDDhyiMkTKUDXFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759910433; c=relaxed/simple;
	bh=/5xitTXiQ5eDNNCs1sAfErPkBv/6ZwwQcRGoSXhHsn0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TQvmciZxpASbDIQ+mO5J2Xbl7p2cu6DN6mz5qdPi5CNL2lTdm9vqZiqZTcvIARzssbNL//ns5yt7LZskQODhW20ptmHAxCTTcSgfGopVNuJP8bo9zUBfg+5I/2ZahToIliASWGFIfWRSCt9mZ2KGi/ftJzTL2VAtsO/mCttSmLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RccIbxiO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5987aVnK012334
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 08:00:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OFBsMtCW5P8eEthAK5JuEKPN/rQgShEl32y8lMaMUYM=; b=RccIbxiO+wSUrXG7
	riqHQZmZIfzrflvAq8w10eOLfSbRctyQIO8oJIp77PiBK7lL5oh9R58DALB7pqPB
	L4TeCUX42QRRomR5XzSxnjtrIAiPpN7u6cQ07cftrynrZMR6olXl3BTPW4DYR+Ho
	4L5E5vY8rcnz4+vNi//Q88dh/lKKovR0AEHa2o2ftO0CoR7hlLSM4sqoKi81uA4/
	nhktj/GYKZcw/AuwfOoJIb0gRrUjTMQqKDmMpL7v0RHopgPx3MGWnpFdsMLV1Yi/
	mFz4Zh1qEg3OUJu96jaZgEK9emn0uok6n9Mu53c09fMBl/J1M37sAQAB0DadNPwC
	taV/zA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgsry8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 08:00:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-795ac54d6f8so15614176d6.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:00:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759910430; x=1760515230;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OFBsMtCW5P8eEthAK5JuEKPN/rQgShEl32y8lMaMUYM=;
        b=N74Qus5o4nrzLwBqqsuYGVSJoNozdxwTbajtwIpUFpqzxrNbMsUaI6pCQNQ8Ygk5F1
         qbofvW5raDX+GZsLqy9c7lrSJswFo/BMnjcG0Wsr5gHxdYN4c1lXqCLb4PyxERBoiJzB
         y4N/56afRjNWp+DJjrDnDNmm0+2WYtesA+yyI96UmsYxGqYH2Gdv5laE6ZZQKLH/zKNr
         yCtLeBpcJ7+n+Qb3qQKXfGFBOSj74+whujv4TjjxZvaQQii2uRixYi+3N2BO4jTo/RoM
         VtLz9JaLDAlvli1+NCLYfEFWaXExCEsQBZ5hdBwcHaxpxbAFQUfZZowl6RsHLe7GUEk0
         s2lA==
X-Forwarded-Encrypted: i=1; AJvYcCXtAxaRFbiSA9m1pfgSyEOtTdrzjd8DybQFN9iG7a81Ib2xjESRNxK2VmBDF5mSJRiLlVBPtTo8AMbU@vger.kernel.org
X-Gm-Message-State: AOJu0YwK8b/r/Nq8290EYCAOXMuMkQvHsq6Os/EVBEXZkc3O2wrbNm7Z
	PidVM8NSckEdGYnbZrjnTSRetH/eirWPnMXNJH4QqqEjytxBCpZfVm8w1LlOO69/TsmLtzvP4Ed
	4BkWaVE3Y2vodyyuTDYIKrFhWgVi+knqYICSlYTU7Uj6VeJ+42aEuLPsLFqE8vQNv
X-Gm-Gg: ASbGnctTRULnezW+bBAuVPJ9rTM6fJ3yrzlWpdGPknWcjdqJ6W0lVk9SrBCptUJaaeh
	i8hODYF4jqgrGrYZ2T92fjE978j0Gkz/kdh4edQ39BBxTbaOgVL5F3PAT4hrOCRu06S9SO1/rvd
	JW2UnlUnl+8dBHxVcoKrLxVrzv8gS8OneOP/Ps/x4xKPwxwG9J7ioGLk6SfNGZ8gxdlWUrMoFaa
	gQmLExgixGXYv5PDNSzdIWxiCNBNVV9ZQUPwf32qbssuq+X8/Ov6SZA3e+Kduatf5g2zLAupKee
	MugPKAqZ+0Xt7W3l0JW0PFoMebGDnnelg94M6Ubf8lw5K6qO7Wmmj+u9aL6MD8pxzlU0mzTT1dy
	7y6esEWrfYgYTL/P+2EHAEfNY52Y=
X-Received: by 2002:a05:6214:240c:b0:81f:3abf:dc1f with SMTP id 6a1803df08f44-87b2ef94b05mr19467856d6.8.1759910429994;
        Wed, 08 Oct 2025 01:00:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFI7CFIzMjiswdfQ2gg99EIIpUQZ3va0hQlGmy6utcIOqmtXbh7OWljL6IiZ8lPAjtXu1zVkQ==
X-Received: by 2002:a05:6214:240c:b0:81f:3abf:dc1f with SMTP id 6a1803df08f44-87b2ef94b05mr19467286d6.8.1759910429070;
        Wed, 08 Oct 2025 01:00:29 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63788112bbdsm14092770a12.41.2025.10.08.01.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 01:00:28 -0700 (PDT)
Message-ID: <73e72e48-bc8e-4f92-b486-43a5f1f4afb0@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 10:00:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
 <4d586f0f-c336-4bf6-81cb-c7c7b07fb3c5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4d586f0f-c336-4bf6-81cb-c7c7b07fb3c5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX3EukT3ElAulc
 p0Le7O5NM28/3SRZ4ErL8p5wPAtZCSVC24dKrSMVdjKAJ5hbJhTjRscUgD/KmQ9l/fOfcPNiPl2
 DPQ0aTjKOC7f0oQS/Gq336aoq7tRBRv/+by7bHAJxK4tbw3oFoN9VGRcpm3/GMGA5IEJscOKHnb
 BWS9XyNmRswdzQPTIMHqveLmromoBqF501HhSXdTQXOKuHqYi5G57CBIhPC5AxCKuQwDtMtzlwO
 /2O41rt4b/6XXX2ua4qwvZItn7ZbI2IpL2EaGzaXqNQYaHHgk7hKfaTGzEwjK1yL+qMk1s5vYXe
 3aOStgDXDNHG+sdXYLaUyLbkALX+wyVycjBMo6yud1uLQz+0TkIFkgWC5gRKPxau8WT3bgaO1g5
 GZ6glWvwCJgpxIiBxzZGVWY34kUajQ==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e61a1f cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=w91pQayDMOQRg3Yv5IMA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: ksx7UukH1xC010Pgg_fR-STdiSlRW5Ke
X-Proofpoint-ORIG-GUID: ksx7UukH1xC010Pgg_fR-STdiSlRW5Ke
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 10/8/25 6:41 AM, Krishna Chaitanya Chundru wrote:
> 
> 
> On 10/2/2025 5:07 AM, Bjorn Andersson wrote:
>> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
>>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
>>> and x2 lane.
>>>
>>
>> I tried to boot the upstream kernel (next-20250925 defconfig) on my
>> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
>> is crashing during boot as PCIe is being probed.
>>
>> Is this a known problem? Is there any workaround/changes in flight that
>> I'm missing?
>>
> Hi Bjorn,
> 
> we need this fix for the PCIe to work properly. Please try it once.
> https://lore.kernel.org/all/20251008-sm8750-v1-1-daeadfcae980@oss.qualcomm.com/

This surely shouldn't cause/fix any issues, no?

Konrad

