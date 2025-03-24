Return-Path: <devicetree+bounces-160301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2C7A6E3B2
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 20:39:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4751A7A4C05
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 19:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31C2119DF77;
	Mon, 24 Mar 2025 19:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SV2G+xjz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923C8199EA2
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 19:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742845121; cv=none; b=K6JxwUM+ic5BnW+QBMqAo9rCj9+siq8utrY0VgYWTDFTcPSEtmoxuac1Rkk+bDrMHIR9b753Ojzj8wCMdvFirHUAdheocfJcZ1RbVQuiOdJyzj9Y4aYSLdcUppbdVraoh6Fnn88mYrvA4cnm4RwgSKJQltF/Zh8gHa8+8GvUGWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742845121; c=relaxed/simple;
	bh=4TbwOMFFW2L9RmtSQzodlika8dBceIxgXMCTOy84pzo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oqGuUhHMjNgyPkYrP6CONwJAJxgLuwEXp6PheAKDqZRrs4rJQSkzy2hLMEzmbUU01zhJHSm05ovGFPVudaD7S04NTWAX5B97b0uiMG3t4nVFmYqJPeEvDxmcIF8xAd2r7pNeghZ1oSlKUMdC81P2d4gEnqtXezLJAJqqQknbm08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SV2G+xjz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52O9PNXQ021988
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 19:38:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aBh0fL/SicSEiTLTToe6kTlPeRIK9uUeY0ZMC5k7GRk=; b=SV2G+xjzZHxqvTcV
	Uln9/t2qQ+MPUJWnSBQcMk11cpkRmQgY82s/zU0iyjmsXiAW1DonHsPb+QfR3wiM
	bPyYE3Ockz9J+JDOflQKElsV9JxXsm05dYEEcs3b/eC4+M+N2tARXMuPAeqbjhsQ
	kBlI4bydY7t4KVsC1G1JyPHHe7HuQn6K587P5BTAO9J6+8FTXsHNRM5Cpv38Exxd
	DilPvi5fycyX/qB3dJWcqYIrhsKL8z3dYaCPU2Bq5Gl7clOOyuRJfM9v4euGIIdm
	j+FXEmfxU3XIFyNQSSp/0G02wGUDYjKNRHhYBk0cCcuNjMvfPTW8xcdUiVC7WLwX
	EXcGPQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hpcp5acq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 19:38:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-475127bacd0so4998861cf.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:38:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742845117; x=1743449917;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aBh0fL/SicSEiTLTToe6kTlPeRIK9uUeY0ZMC5k7GRk=;
        b=lorS95FFu+bmHZTGsBKXv8lV4eCqFrxcJ1QVch2GBf5uruxGcqW3L9moqaH5C9dm7r
         F6c6TjXZ4BNaySiwDIZ0rI2Lrly5gyO9nIK4Al2i2oM1QjU49nwyA7jM7sJJiOfgleYI
         tiWNDNOmxcg9aVbp26rAeS5GsJFtMqEg6syBceKF7YSfg/EkA7ZwMeTmLYmYKaYVJQ7B
         7qh003SRFGU2fJESkX35V6P6hA/Yh+WnkBzDusr198EmTn+LAZEYrM5g8aKBsUsqSVLA
         +a6R4fTcxx/a+CrmWADp8UtjzOtRyjTCkYEs5uBN14829c+kMbo0X7QmeE8Rz99XKTRC
         M2VQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGihgKmWYJok+9WXgbW6IWtylzt53fNQmWubkclYSu1pYzOUMPbGxqT1dY/Mkdpx93dSjfdSP+vOwT@vger.kernel.org
X-Gm-Message-State: AOJu0YwB5U3nalnwqEUslCrVItxlcNg6D7Ueds7r3X167SF1VTI7oyne
	3zg0Ntj2mOw9w7EyV/bGQXYRYleYQ8WonEj5i7YKMUBC1HXCRtQhRSoGeWmsF2ltv+TWIAtwd4F
	93IJOq2ZvhUECuRnV78c0I7dIcoXaPAAvF3Pi/yfD1UB1g4ykHtMSYENrmWv2
X-Gm-Gg: ASbGncvlm5wtEDuig/55ZQCynV/r3m1AABks3kCTM+yhlIjKk5aENwVsTfD9U1/EkY8
	Puatyetkdfx1jlP+OAebfyJl/9lJ1OumEOjkuskV0EIPc8sk4B/K/pSvdL6cp9iUMXtwoM6aulf
	EXW7ZwrsjR/6JjgeOWlBBs+gMW32eI/+IPhNW/33K9g/3Fm3Tqi8zdHOKnILQjlaysMzQ44kSCW
	RXF8fVDJ8FUcpN8804/zpMcaxfIIs+Td6fw9HmjLQhLsJ3Tnviwklnr1DBQmVvRXJwlmi8Dz2w0
	/hRsqi6OHm3SnbCoFiJMp7K9NXvjyokPbFW1oDv1EBtzEfID4b9hKUGIslAuoVwMr27FQQ==
X-Received: by 2002:a05:622a:20c:b0:472:6bd:f620 with SMTP id d75a77b69052e-4771dd6623cmr79162971cf.5.1742845117130;
        Mon, 24 Mar 2025 12:38:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUwpN0XViT79nt7EFVGN3T7ufvhnHE1eIv6lYeU8pz/Y+KkxCyTSyNNdkbCp0+cFJ6e/LYgw==
X-Received: by 2002:a05:622a:20c:b0:472:6bd:f620 with SMTP id d75a77b69052e-4771dd6623cmr79162661cf.5.1742845116568;
        Mon, 24 Mar 2025 12:38:36 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebccfb12aesm6940821a12.46.2025.03.24.12.38.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 12:38:35 -0700 (PDT)
Message-ID: <9602e069-71c0-4feb-9c36-f1bf01c15a6f@oss.qualcomm.com>
Date: Mon, 24 Mar 2025 20:38:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/6] arm64: dts: qcom: ipq5018: Enable PCIe
To: George Moussalem <george.moussalem@outlook.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        20250317100029.881286-2-quic_varada@quicinc.com,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>
 <5seajsw64e7mber5yga3ezcnvip3e4o2wylg3uhvaiu5pob47i@ea3rnxqrigcx>
 <DS7PR19MB8883D7102C8A7BE2A87B77009DA42@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DS7PR19MB8883D7102C8A7BE2A87B77009DA42@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: jDcATZFxBG1XrtWFOGijM_-jzy76sSws
X-Proofpoint-ORIG-GUID: jDcATZFxBG1XrtWFOGijM_-jzy76sSws
X-Authority-Analysis: v=2.4 cv=PLYP+eqC c=1 sm=1 tr=0 ts=67e1b4be cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=DTJ1r2SVFqceE989MfgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_06,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 mlxscore=0 impostorscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 mlxlogscore=561 adultscore=0 malwarescore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240140

On 3/24/25 9:06 AM, George Moussalem wrote:
> 
> 
> On 3/21/25 18:13, Dmitry Baryshkov wrote:
>> On Fri, Mar 21, 2025 at 04:14:44PM +0400, George Moussalem via B4 Relay wrote:
>>> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
>>>
>>> Enable the PCIe controller and PHY nodes for RDP 432-c2.
>>>
>>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 40 ++++++++++++++++++++++++++
>>>   1 file changed, 40 insertions(+)
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>
>> Minor question below.
>>
>>> +
>>> +&pcie0_phy {
>>> +    status = "okay";
>>
>> If you have schematics, are you sure that there are no supplies for the
>> PCIe PHY / PCIe PLLs on this board?
> 
> I don't have the schematics, but none of the boards I've personally tested (mostly Linksys devices) require any supply. I've also checked the downstream board files documented on codelinaro for ipq5018, and none mention a supply.

It looks like on the reference board it's connected to an essentially
always-on supply, I'd expect that to be the case on yours as well

Konrad

