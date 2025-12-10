Return-Path: <devicetree+bounces-245538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34980CB1F1E
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 06:14:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DB292302551B
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 05:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6E472FB0BA;
	Wed, 10 Dec 2025 05:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="daS5lex7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f5tJvu1k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33F721CC64
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 05:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765343650; cv=none; b=tVSFhJXf1j8ZcQUlA5bu7HG6TstY5VDAnPn92tcoFLBaiAW8m7WPT0B3xCyREh6lXD58C/yPdpawDCaHOUMUbcwfTCpw4yXYc/RigRoUXp9njEA8fZ+VEorTpaaAadpOipzyn+23tHa5kJphbvi2nZFsumy8n5amIeFdUx8S/qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765343650; c=relaxed/simple;
	bh=m8/5Q9oj6QKjaJr6myeDzfCdrnili52mlNx46FQEDs8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gUfrVQPqz/5+1t0hq2fDP/mb2tM+RRf65+YO0/lwagG3Zzq2FxulHF6XcAeduONYpBzsn8KTY0Rnk98iskIN+rU+NpyT9t8gNFYkYjejna5mzDQS5noDPy3EoPNfmYg/Q4IRENQSB9Bo+5xX07s70mAmgKz6OKqLB9bbc+IG3+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=daS5lex7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f5tJvu1k; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA4XeWT1390929
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 05:14:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HDmAzDw/NTzSeLdl5cqVPBOU+h83cMXzhf/1QBYfTgw=; b=daS5lex78x0DSkQi
	AlQv7bavsmzadNoLPvHlLjhFlRTIePrJ5kaaFCdWXW3iZiFA0hD+FeYloe+1vMSy
	uADlhDTav5LSmzDS+8pdHQHgkdm2AOwBKmfBDpk85u6gectdhCBqBbAGr3QeS5EM
	+McHzorp3mtvU0OFfwajvf8X4kSZRigm9UfQ3fdmZUy3oRqstAlNRpdlOUrpAr6G
	2rRC1yxYHLCEoXjjvF3mX6w57VvaykY+RmmZvuvpw+g1PXyxBZn2SQXKRdYpE8wR
	nv0jG+oHl28an3gIscIKF0RfFWIvp/Z2HnAXv4Tiam+OHd2NYEyfp+5rjZHhBmZB
	gorHzA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay1xp0355-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 05:14:06 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7d5564057d0so17011536b3a.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 21:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765343646; x=1765948446; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HDmAzDw/NTzSeLdl5cqVPBOU+h83cMXzhf/1QBYfTgw=;
        b=f5tJvu1kwUH0Cxd/cQ3/voMcz/AR8tTzNKMq3jejBjtgqWiMYDUvE8NUrwvJ/BAaT1
         8fShrQt1z1yvqzK8BUAEmxvNEQgwkgRFAe72mkzNt/qI8ApAciOlvJQGe7PJdHpIt7lY
         15MvWWwAGET0akEyR60rCBldkzdc9gzRQSG/Mnv3foNvhPUER/qM8Out9UxLxpmapegI
         QyFBi5E00YaYUF52J6l+jg5MDBsCxcp7PuRyWE4X67CdsgtkRFLaQR7Zcv93U3STIzgD
         PUyF+XS3WXy2GbY6sNy055hP3+nNHfGH5rABBnvvGZLGmAQQWeLoNrcq5aT30vz4xMa3
         N8Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765343646; x=1765948446;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HDmAzDw/NTzSeLdl5cqVPBOU+h83cMXzhf/1QBYfTgw=;
        b=s/2V72jsxGzomdSrG1Ij/iBqYTPOW8nhi8gFex7YijUXsbzgiTJd/ZmstvaAySKrZX
         UBaCqAx3tNbt6vMODIGi8zoLdoNE9lTAyI5HqdrPW8AW7I1G9gUU2WdTLvxwgi9UqxmJ
         MW4uXk4RGBhrgB9yv7gJbvfkrr7lExddtvRVKM2AcCCrvdInVfpn9AmgzwrtQRg07w9e
         jmrXSakJ4/35H+3mEpCPFRool9L1bODPZGrRvf22Cl9ap+rAsKrsoThGNF4mAiHhCud2
         uFc/081XUwlfaxDT3I5r1RM1tDgmKMJoUl28So46EDE0U/s4v7bP4/B4bQsVoNfNXUUT
         +rrw==
X-Forwarded-Encrypted: i=1; AJvYcCWKkDst9LgGyfnkqLqsLA6iPk0S5mvQrJIdH955qKFFXOXR0gnwrV5OSD9pscnxUgRTILifo8XotDGd@vger.kernel.org
X-Gm-Message-State: AOJu0YzCkwoekl+hec+Il95u8zVhCm+P7p1hIZSu/bLB8J58Y94hlzH1
	QSRU63b7xsLENqYrHx535/A2wSQgKl1nqoW0HzptrK0ZOCQF4N3Xb0x8AG6gacVXJXiUIjxXjU9
	sMjCf39B/QcrEVyasBlEQ7OYzLlqWPllMtafeNcaglDQYcurnrqowN9MdFKBZOIbb
X-Gm-Gg: ASbGncspr1aRHZJUdKX+lz/SPAELKP/4DikZeQOty79K6cN8g3SH+ADT8DI2rohUQYh
	tjFfq8vqD3KUlfmBSl5iAR54Vfn7WbwYLND7Y3Xt/tDUXKNwR27h5Wq5IFo3vyv9IOBIpag7gei
	Kb3LfksO40YKYl2FHclXT8pdrmvx2AwG2h9wHyI8NyKtOSv9AQsUA2KUhVXqg2LuuuANyFIBcnb
	rkiZTWp8XCUrOybhs1QcfeyXr0Y66zpVihjTsNDanZRWHd9g3jsfhgweUtT2NKCcL+R0IIlWJWD
	d1E1hkuYDSRC71P9tjrXCyEfincuCCIfWyjmHhfMann19sTvi+fUk1Rm39W8/RBwXdEErGdYX4T
	FbzvLMblHq5H6hdBUNJfkaq1xiy/7Gn2w/cQRpno=
X-Received: by 2002:a05:6a20:72aa:b0:342:d58b:5617 with SMTP id adf61e73a8af0-366e2eb7cf7mr1142779637.60.1765343646329;
        Tue, 09 Dec 2025 21:14:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESM+rglN05tsWYnDaLNLQd07cRZWkYXxjSC7huoB8xpIG8ftfeblN8gYxyf1dgn0Xg3wo+wQ==
X-Received: by 2002:a05:6a20:72aa:b0:342:d58b:5617 with SMTP id adf61e73a8af0-366e2eb7cf7mr1142753637.60.1765343645894;
        Tue, 09 Dec 2025 21:14:05 -0800 (PST)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae99f01csm167844105ad.48.2025.12.09.21.14.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 21:14:04 -0800 (PST)
Message-ID: <f41c3d9e-2597-4c33-96c1-0eeba41dc803@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 10:43:59 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] arm64: dts: qcom: x1e80100: Add crypto engine
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Val Packett <val@packett.cool>,
        Stephan Gerhold
 <stephan.gerhold@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Udit Tiwari <quic_utiwari@quicinc.com>,
        Neeraj Soni <quic_neersoni@quicinc.com>
References: <20251208-crypto_dt_node_x1e80100-v4-1-f5d03bb2c501@oss.qualcomm.com>
 <2cf32f08-99e9-48c2-ad0f-2e579d50f7a9@oss.qualcomm.com>
 <e51d4fd8-80bf-4774-ba93-66d9a6761654@oss.qualcomm.com>
 <vvbtsf4qw7c7ymshxjdxlprtw3s3fctldvpw6zw4h5ny43wmju@ln7ecfh7y34j>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <vvbtsf4qw7c7ymshxjdxlprtw3s3fctldvpw6zw4h5ny43wmju@ln7ecfh7y34j>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA0MiBTYWx0ZWRfX8vZa/j0We11X
 cO8RwP06SQJYfP64+oFK+r0sLkvZ5mieRvjlghNRwoC7MBTQf3oqBP/4ISoSfdgxr7VvuJ1k4zF
 HU/ABDphmnZ3dkDTP1rar2NBGRgwp/IqYmXxxz0eAbED8sKbgnJoDkHBCBkX7ed0isBH6KZlsdJ
 7TNoPR+cDrsTTF14SUAUFE0ckCTcyicywY8hzoKtx74dMp9v+VQtZYM+z67uL02T0zYK7n3SiP6
 /s9pc51dXzbLSK+9boVFFBtBPecPgcampFvjIblWy9KTPkztoZvXTTKynSoE8LMr5CMavHcnwx4
 IeS2TxidWxoyTAGEW+HWNRjRX/wK9uk2Arp3cTPDVwHngNT2xTpTgcFLS3Z2Fz/D5RSQdAGR4Zr
 oT/TaeNDoPC6xD/RYK0dGW4qVVwf0Q==
X-Proofpoint-ORIG-GUID: vrFD22iHzSpObihgAPl4251YsjkVXYgX
X-Proofpoint-GUID: vrFD22iHzSpObihgAPl4251YsjkVXYgX
X-Authority-Analysis: v=2.4 cv=A/Zh/qWG c=1 sm=1 tr=0 ts=6939019e cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Sq2XzeuoxLYqJEPbuLIA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100042



On 12/9/2025 1:09 PM, Dmitry Baryshkov wrote:
> On Tue, Dec 09, 2025 at 12:57:29PM +0530, Harshal Dev wrote:
>> Hi,
>>
>> On 12/8/2025 9:26 PM, Konrad Dybcio wrote:
>>> On 12/8/25 1:32 PM, Harshal Dev wrote:
>>>> On X Elite, there is a crypto engine IP block similar to ones found on
>>>> SM8x50 platforms.
>>>>
>>>> Describe the crypto engine and its BAM.
>>>>
>>>> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
>>>> ---
>>>> The dt-binding schema update for the x1e80100 compatible is here
>>>> (already merged):
>>>>     
>>>> https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
>>>> ---
>>>
>>>
>>>> +		cryptobam: dma-controller@1dc4000 {
>>>> +			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
>>>> +			reg = <0x0 0x01dc4000 0x0 0x28000>;
>>>> +			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
>>>> +			#dma-cells = <1>;
>>>> +			iommus = <&apps_smmu 0x480 0x0>,
>>>> +				 <&apps_smmu 0x481 0x0>;
>>>> +			qcom,ee = <0>;
>>>> +			qcom,controlled-remotely;
>>>> +			num-channels = <20>;
>>>> +			qcom,num-ees = <4>;
>>>> +		};
>>>> +
>>>> +		crypto: crypto@1dfa000 {
>>>> +			compatible = "qcom,x1e80100-qce", "qcom,sm8150-qce", "qcom,qce";
>>>> +			reg = <0x0 0x01dfa000 0x0 0x6000>;
>>>> +			dmas = <&cryptobam 4>, <&cryptobam 5>;
>>>> +			dma-names = "rx",
>>>> +				    "tx";
>>>> +			iommus = <&apps_smmu 0x480 0x0>,
>>>> +				 <&apps_smmu 0x481 0x0>;
>>>> +			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
>>>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
>>>> +			interconnect-names = "memory";
>>>> +		};
>>>> +
>>>>  		cnoc_main: interconnect@1500000 {
>>>
>>> Right as I hit enter for the rb message, I noticed the nodes you're
>>> adding are not sorted - please sort them wrt the unit address (@foo)
>>> and retain my tag then
>>>
>>
>> Not sure if I understand you Konrad.. I believe the nodes are already sorted
>> since address (crypto) @1dfa000 > address (cryptobam) @1dc4000? Do let me know what
>> I'm missing.
> 
> 0x01dfa000 > 0x1500000, so no, your nodes are not properly sorted.
> 

Thank you for spotting this folks. I realize that the sorting was correct in v1 of the patch
from Abel. I will revert back to that.

Thanks!
Harshal

>>
>> Thanks,
>> Harshal
>>  
>>> Konrad
>>
> 


