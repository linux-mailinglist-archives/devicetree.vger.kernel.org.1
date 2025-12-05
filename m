Return-Path: <devicetree+bounces-244624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A66CA7291
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 11:30:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 799BB305845C
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 10:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB2903191A7;
	Fri,  5 Dec 2025 10:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mCOxCEN7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gcgAUTGM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E302AD2B
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 10:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764930519; cv=none; b=GDOzD2hMVPAJ85C6LJAh6IED5wlSKtMtX25dFEAW4dc31vIz/WmaYut1o2D5QqU/o+vscUpMzrAIJOwk6/79AVbPb7SK23gjdTKCtIHuj5qXb/SUVsc4Jq9ZnjRUlfwvX7MsuHX2T0BJtEPnkI4BDoZvwIiLPAuKj8qKxjq6eRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764930519; c=relaxed/simple;
	bh=VR0Q6kRHJjyqtS0YWd2mnMmsBA+zV25BNyU4CKObA2M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R3kJYnm0a/cGfhCd00kkkLRVc3EqFUSTM/V5w3ZXi1EasYQxuAapyBhNuzo1kJ+YtRIQqRHHS+vX+RM1G3TRbQFeYZBvtN7nWHSYQnpgGlc7L1hMT6sxwM8Sg/3uKzkwHT2GID6Il8ZW34pQVk/q+EkwxMH+9Hd4cBkb8mgbpfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mCOxCEN7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gcgAUTGM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5AORH3067633
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 10:28:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bw1Xc8CHATvVlK6Z+Yz7S+p44t+3pweTxoq99SZydic=; b=mCOxCEN7cGq4kAvN
	J7I0jh8wWHhCc8JnBvUT0z4NjitL+oQAvHl8Co3CpqyqOO+qeZaJvTLT9pjYegzn
	z/K0dCtX6Iv3reNGn+G+tZgjweL+oO5QKyc1uKApHdYRppxbf3p950hmZOUf2VT3
	I6Kd3vMPn50X1oO1AzVIR6ZrTDuoMIqFFTU4VWX6wcGr7rWhdWo/RL8ecPJMBLWq
	kUyghP8/oPPW4j/TKFlcFL9og1PcbFw/wHH9qxd6Z/mB+pBJlWWSDNx4zTvtMtNt
	ObLzLmNX9lDUe3YrP+KR/x0faCmYlzg7k7YXzV54E9zxEMF9jZNdbWyk50oTWJKF
	joKOIQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auwm4g0as-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 10:28:25 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34188ba5990so4670498a91.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 02:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764930504; x=1765535304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bw1Xc8CHATvVlK6Z+Yz7S+p44t+3pweTxoq99SZydic=;
        b=gcgAUTGMsnWK59k6geRbi1V+/5NPbCDh0DjrOpRUNcr00zCRw45OllBku2/2+OtTF8
         5E+u0ERGWXr8mW8TGhxzGfJ6+RF+oQ70h8M3ljpfxnrxXXlkgamOaBVIXZHJsiumDQo5
         a+y/7UMhTp0SRRRbpgW9k9k1gW8qf+//lzxOYQtsBNVi+cdDpgmloJ7oBP1hamYkr5z/
         6wdZbD2P+RNlu4xOVIL42a/54pq3lqodh+/v0f0PXJbfFH8Uc5KCxF3Hnyz0yI4/TUWa
         K384cNGpw1mUVChcu6BBg1AdKWEMmIn20HlTbyOBzmRDNERLb9dF+N4i9qLU2/qcytig
         /i2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764930504; x=1765535304;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bw1Xc8CHATvVlK6Z+Yz7S+p44t+3pweTxoq99SZydic=;
        b=ju1vmZ8Cs8aIlaCyhJjNiUju/WZXn14dUTCFfnogWL+ebcxaYvg4MYpeAhRO562jU5
         yREPCnjgRE8ia1BhYCZNJJc1DVUzscLyeF/rlGrtBiYsT9c3R12jgQmk8TNbtPdOr1MF
         a12Byok09CyOt9QOvCTTUZdKVo/ppOr3NhOYiJIXVYADj6+aLdZWWSI3E0bKaLsOpzdk
         NyV7DxR76p9FpomE0pNfOXllWIWB8Adu1joE8B0lFu9xZ9uiB7samNpz9gWQMyE2yTfQ
         GU91+6d/yoY3wf51XL6KBCls4wKJUG+LvK0io6OoKwuz7EGbQaNE1IXGoXj+sFG0qr/5
         6PzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdjW+db3SNaNiDHsa9vshVcTvzje4MWYgkoIBmtpdOPb2DuJzrTt0Wfvxvpiop9f7DkRwaL6WU06Uw@vger.kernel.org
X-Gm-Message-State: AOJu0YxXUDT++6sWfWWjVM9GBz6e7WsmcTvul22BMXHtLjaM+Xv5jT6f
	JMNEy49aiUuPGK0IjtcxO6pzrnPR/7XcJSMdAQ2dme75Uf49Y3RCxFNhXxuaf6A5xGznfLMLh6a
	VZ/83nGlceEVeexs2xtY8N+IJD1s9s8DROzqVCfmwE2uRGKFxjasp8LsIrbe3SOq6
X-Gm-Gg: ASbGncsv0VJnE41cI+tYh6zIfi15ulJFQ3vbrHYgydpdB/AM5v3PqGzqX7U8NecTXJw
	xwNXkRcxi4c5SJl4OHbxL22dNGYdhZp/O9VRJdBlki6OIMTxc1GBT4iRZbkiOY1HZb4RhOB2H4i
	HqVMu1027dDRY/HkSYGC56w21bFNno6OGLsNfSoJstF4EThldDxzKx4Gjd+iS6SK0e13ETMKxPn
	GVDJoOShs3EPeBUMyWDrMo/BnSncrgljVoPzjrFWUkKUKfAXvITLi+3xwLdazaZ262rbOYv9Gi+
	tEQLrXx91Bi+7QdqZ3krqSPFEkxYyLE4LB7EuHiK2dsvxVHJ6xczramPIfXNDvOZcoe9jdirBpV
	9ly8hbknYi54UiwFHNsoiK6X15l3QgcHKfaJQOJub
X-Received: by 2002:a17:90b:3d8a:b0:347:5ddd:b2d1 with SMTP id 98e67ed59e1d1-34947f09f3fmr7029298a91.27.1764930504183;
        Fri, 05 Dec 2025 02:28:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGsSenzPpMf7TX2muIPjv/l7qSlqukZ1BTk3pMaO8P8iH7CeDbR8hW0XUJaE0xRdPrkG9h/Qg==
X-Received: by 2002:a17:90b:3d8a:b0:347:5ddd:b2d1 with SMTP id 98e67ed59e1d1-34947f09f3fmr7029284a91.27.1764930503741;
        Fri, 05 Dec 2025 02:28:23 -0800 (PST)
Received: from [192.168.29.116] ([49.37.148.233])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3494f38a235sm4293259a91.2.2025.12.05.02.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 02:28:23 -0800 (PST)
Message-ID: <31d09e5d-7dd7-407d-af25-c5d1e5c9c431@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 15:58:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: x1e80100: Add crypto engine
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Val Packett <val@packett.cool>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Udit Tiwari <quic_utiwari@quicinc.com>,
        Neeraj Soni <quic_neersoni@quicinc.com>
References: <20251127-crypto_dt_node_x1e80100-v3-1-29722003fe83@oss.qualcomm.com>
 <08284b5f-a6b4-42f7-95f5-28161ddcd356@oss.qualcomm.com>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <08284b5f-a6b4-42f7-95f5-28161ddcd356@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=T92BjvKQ c=1 sm=1 tr=0 ts=6932b3c9 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=v+kbWGyw1T97G6+vs1uYIQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=QEzaw7COleC6pDHmt4MA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: F-50Heu-0pVScHhpbiZ9ctRr6ftwBCY2
X-Proofpoint-ORIG-GUID: F-50Heu-0pVScHhpbiZ9ctRr6ftwBCY2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA3NiBTYWx0ZWRfX5lgZ/iFY0ZSu
 tLEdUvYXLJHfCjvs5rKWOCOK/+4pnfKUt3+FqaxYz1G/v0zNIv1Rq2fckj+qJOGw8yxk6qRreZo
 ZihuGyxeaFDkT0C9Zrj04+T7Db7XvwrSk1a8ufdWKVzcnRYyhcyY39sBSKcgrJK+6jovfnLx6y8
 T64vJXbTir4pagwc7T3jHbPqaiIyKdMSH443O9S7ka378/4eM0kUfsPYPZvmz35BIyoeRBhmbj/
 ztUtQmEMxcB4ezadMJbmNexLoL/neM0U8ujmf+f2r3EK4Zem/otu8iRdipcHBVAMXpXkcZmrRGj
 xNYoQpYWQh6vGQR+QiG3GQwDMwTF4XM3WanNpPgFC6SwHcZ/HVvVxDzWxrxirmFnnv0mODHPokl
 8abl2KRZlMyviaugBbdWRKCsguPV1g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_03,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050076

Hi Konrad,

On 12/4/2025 7:14 PM, Konrad Dybcio wrote:
> On 11/27/25 10:43 AM, Harshal Dev wrote:
>> On X Elite, there is a crypto engine IP block similar to ones found on
>> SM8x50 platforms.
>>
>> Describe the crypto engine and its BAM.
>>
>> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
>> ---
>> The dt-binding schema update for the x1e80100 compatible is here
>> (already merged):
>>
>> https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
>> ---
>> Changes in v3:
>> - Fixed num-channels and qcom,num-ees properties by updating them to 20 and 4 respectively.
>> - Link to v2: https://lore.kernel.org/all/20250221-x1e80100-crypto-v2-1-413ecf68dcd7@linaro.org
>> Changes in v2:
>> - Added EE and channels numbers in BAM node, like Stephan suggested.
>> - Added v1.7.4 compatible as well.
>> - Link to v1: https://lore.kernel.org/r/20250213-x1e80100-crypto-v1-1-f93afdd4025a@linaro.org
>> ---
>>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 24 ++++++++++++++++++++++++
>>  1 file changed, 24 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> index 51576d9c935d..a1cadcce98e1 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> @@ -3033,6 +3033,30 @@ usb_1_ss2_qmpphy_dp_in: endpoint {
>>  			};
>>  		};
>>  
>> +		cryptobam: dma-controller@1dc4000 {
>> +			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
>> +			reg = <0x0 0x01dc4000 0x0 0x28000>;
>> +			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
>> +			#dma-cells = <1>;
>> +			iommus = <&apps_smmu 0x480 0x0000>,
>> +				 <&apps_smmu 0x481 0x0000>;
> 
> Just 0x0 is good

Acknowledge.

> 
>> +			qcom,ee = <0>;
>> +			qcom,controlled-remotely;
>> +			num-channels = <20>;
>> +			qcom,num-ees = <4>;
>> +		};
>> +
>> +		crypto: crypto@1dfa000 {
>> +			compatible = "qcom,x1e80100-qce", "qcom,sm8150-qce", "qcom,qce";
>> +			reg = <0x0 0x01dfa000 0x0 0x6000>;
>> +			dmas = <&cryptobam 4>, <&cryptobam 5>;
>> +			dma-names = "rx", "tx";
> 
> one a line, please

I did not quite get this comment, could you please clarify a bit more? :)

> 
>> +			iommus = <&apps_smmu 0x480 0x0000>,
>> +				 <&apps_smmu 0x481 0x0000>;
>> +			interconnects = <&aggre2_noc MASTER_CRYPTO 0 &mc_virt SLAVE_EBI1 0>;
> 
> 0 -> QCOM_ICC_TAG_ALWAYS

Acknowledge.

Regards,
Harshal

> 
> Konrad


