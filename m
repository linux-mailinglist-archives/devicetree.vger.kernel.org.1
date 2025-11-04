Return-Path: <devicetree+bounces-234756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 239EEC30693
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 11:06:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82BE73BC646
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 10:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E0A2C21CD;
	Tue,  4 Nov 2025 10:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MIhjvN2B";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SyQqtGJ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62A5223DF6
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 10:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762250492; cv=none; b=bKnxaGtU8/pbqfo2E5L5aNrZgcQ5JN6DFEPttJU87ZeX/gXF+OYAUz7g/8IX6HZOiLRLxyQZOlwHwSCgJSnW33/DHquaoI6s8UqIDHWN6w5pSzcw7Zv21dFOFFPiREafC4D0NtZZpZ5XwjNcyVZ72vEMe+nzdZDd8E3sRaJOtxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762250492; c=relaxed/simple;
	bh=mXWNv40modumig5JKINFtQaRERKglcatw6zCZg+27iI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XFF2UuhFq9aWQdsLj4s8sr7bBSdcI2moZSfPKMPE2eJTrFFmZ7lvbJcZ/rpgQmr2upxAoNworpUZWJwJr0ma0JRVFMAKKmfAzuGonO9GvbCtdEXHtLb77vyvEYDArzBk4KO2h+ftG2kn5jyq/NsiHjC9dA5WnniZoG/e/c87wGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MIhjvN2B; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SyQqtGJ3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A48ggE51470257
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 10:01:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DJzQWzOR6O3Ekp0j4f2FOsokTUfCPyDM3FAwqjwJS/0=; b=MIhjvN2B6aQE1TAc
	9Aw4C2kvNcPA4mYXG8x0XRwMlW0SWletdkMIfnjqzWig6nDi/NPxvmizjl1Fs+7S
	G190i7EDB9bF1XzaB9MyKJYCKbwTmxrI0d0T/dYQQXtf3IexDgUU/U2Bhhjl5S4K
	u48AaXpsvauM+k0jf5N6VmaG1c1CYkMMxmnaQiF2sBnAC25xoPbN74m51N4bN27Y
	Za3agOpJAWN8z1UEsOEtuZn0oJS+7v0FwTfA1h8KkOyM5aS0bmyAaXUb5u8f8/i2
	1WwhMiQv9PTIp5ZaRpiS0nfhz5Gtp7daazf4W70VRaJCOKuR5/ivFCop/5QKXLr/
	C2Oaxw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70ffjhhc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 10:01:30 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b630753cc38so10158547a12.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 02:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762250489; x=1762855289; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DJzQWzOR6O3Ekp0j4f2FOsokTUfCPyDM3FAwqjwJS/0=;
        b=SyQqtGJ3ZnZYJDj839gEZS+IOr3ZBtqspt8+nQMmutccENJSuoDGS6tE3KQeTHrPvz
         uS/K1mrcyGwsRNKb8NPHdCiUsz3WmN/QsiptD2NWCjeXn8gqVnSmWXVjN2AK9okqlo+A
         V8PXAh+fWcCu07HHvcwji5tAXREuTmQIfeJgh69GcX0B4pxFjqsoy0CcyBRBuMSKP2c9
         krArArr2CenrGC/iXeXTZW3mPGjg6BPMgRamMJFzZCZq/Idn4ZJniSzqIZVxOJlooft3
         IE7XBfgK6zY6Vqy0AbLtsBHxKZGCg1WflPJdyZkZ2MpYlusqlv0bB8B+1gBkz+sGSe4r
         6I/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762250489; x=1762855289;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DJzQWzOR6O3Ekp0j4f2FOsokTUfCPyDM3FAwqjwJS/0=;
        b=ZC3w2PMDT1WzOYb5PGgPUynusJChtM6Gwj0Nyty99trppFXj6OPYlX2Zejv4Y1lDpS
         0LxgGDyx9n8yVpz95ylyQpQnu0exCcw1pwFcuP4vNTuBiXdIOPJMVOrzzuKMYk6uBIjq
         TI9zHh58YqRXsLl0qANV67NCm4oZI0Gd23aD/FPKKHIgKIQMrwXAWNrWA2PfectoNYpj
         qBTHQqTFhClkQKNhNR4mZy/TLwoA0+az+BmxGgfzCG2ok7y11XDT0No3Xz7prhtvsWKr
         pbf75kfE6vtoA1Y5vrC6jobbV1aFm86B/G6mFqxDrYJiIXheJp3QrfNyhJ/OcVidnU1z
         Kstg==
X-Forwarded-Encrypted: i=1; AJvYcCWckQPkkZPXLM7THpIFebuhPjIE2IcMpC8DCph8scRFpu/DSfK9a4In3xMwCPlLsMoZddSVEyafFZ83@vger.kernel.org
X-Gm-Message-State: AOJu0YwfUzmHxsGuWcSiK2qhyLoAwpRDXJ4Uc02vb5+WHWtcsPpo+gdE
	JkBg4Ieevsay5uFt5fEaZfGF5l3XmPd5qj3QcRZx/GCDRMVSHrLxtMJv4dNDHQp52Dk/3P2RTdC
	yHXszxXumpLFFvPQn7Es9BfgDYmEsCfGR8NcZgnMiJEs0gZYC3rJcLxyIrCSOtLCl
X-Gm-Gg: ASbGnctKW4FMuIRPGaXYC0l2AJjmjOUTG35HyeeEcg2PhzhzeIIJotycu693w29ZWXi
	xT4M5A3XpXf4IN2miu+hNJR5TKO71DdzUZbGR/DdXL6RzL1eJgLyA7ZUhyKMVyHaAuuI6d+/wMM
	sB+kAHvgvGPwGLm1N8dyRCiOgOQsPH6a8JwIV2LQregJOgEiV5tK7K6FvkRiAJC9KqoDX5hS0EL
	zuSNZKcp9Vuz6Ha3TK/0ZgmRUnl2+AJymXZJtmPmc/LplooylF7YIUEReWsV65cdIYYPiYdkVsr
	y2I9+nuApbyGtRR3jUretc+ucy9Mbo0z/Ho+j5/ASN2Gb2AYevkhqg603x78TPNCfwktnJpr3Ia
	tJ6yqMBu5kJaqHkdPCLBaUwfToPJFx5M=
X-Received: by 2002:a05:6a21:3285:b0:33a:f317:58ac with SMTP id adf61e73a8af0-348cd220befmr21612581637.59.1762250489159;
        Tue, 04 Nov 2025 02:01:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHB4RE2v5o9PQxrRjGLqqNiGcngkai+DRbzDVobX/iG4IY3nTqNwUmoAcJeexpEu8oStStt+A==
X-Received: by 2002:a05:6a21:3285:b0:33a:f317:58ac with SMTP id adf61e73a8af0-348cd220befmr21612524637.59.1762250488510;
        Tue, 04 Nov 2025 02:01:28 -0800 (PST)
Received: from [10.204.86.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba1f87a710asm1849643a12.30.2025.11.04.02.01.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 02:01:27 -0800 (PST)
Message-ID: <d20b8fac-9676-41e8-a32d-006af74f4c44@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 15:31:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/20] arm64: dts: qcom: kaanapali: Add remoteprocs for
 Kaanapali SoC
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Alexey Klimov <alexey.klimov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-7-3fdbc4b9e1b1@oss.qualcomm.com>
 <DD6B62STZOTG.L12V3DGNDZUZ@linaro.org>
 <bace46c5-e912-4003-812b-c654673be43e@oss.qualcomm.com>
Content-Language: en-US
From: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
In-Reply-To: <bace46c5-e912-4003-812b-c654673be43e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=esbSD4pX c=1 sm=1 tr=0 ts=6909cefa cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8
 a=bsKYn6jhUO5kCu_E1qoA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: pQriTJ0E2HyDgyA-kqVkAvAH8MNDkxvD
X-Proofpoint-ORIG-GUID: pQriTJ0E2HyDgyA-kqVkAvAH8MNDkxvD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA4MSBTYWx0ZWRfX9bY0pSKcQeEt
 PWktdPdOJ3blZA3584YZ+/InpKyDv5aJGffcTgfjxUOa1fSHr8d0pojTa9Wz7exW2K2txkTgare
 6pDpsX0XaKtye6yW+Re+sKzUIo40a/GACecGrlb6MNsM6NEr0cHs9hldJ0Pjbgkdlr/IZ5ULpgJ
 KYDtxJrxYzQ5/+OxlAUfSKXDLaleatXTuVhQjp3Yi905JL4jV6Er2xj2ilDksm8CQdq+SFPrlEK
 viieI1jj6iqWtboI1uHkdyyQhEHq82W37rKptoYT9CaHZR4Q5iKzN65u7YFm6f2eGWR0HfoMxHB
 TiBDcRBsYVNF8bdzAxQYZlg3PI7ZmDREfXIa2jEqmS9yR9Id+e0o5jCMGvm4guhXBQ06ILYz5OD
 /zLgLuKZPMMkOFO+cUtZ3c4I94tViA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1011 priorityscore=1501 adultscore=0 phishscore=0
 bulkscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040081



On 11/4/2025 2:29 PM, Jingyi Wang wrote:
> 
> 
> On 10/1/2025 1:24 AM, Alexey Klimov wrote:
>> On Thu Sep 25, 2025 at 1:17 AM BST, Jingyi Wang wrote:
>>> Add remoteproc PAS loader for ADSP, CDSP, MPSS and SoCCP with
>>> its SMP2P and fastrpc nodes.
>>>
>>> Written with help from Kumari Pallavi(added fastrpc).
>>
>> Co-developed-by tag then maybe?
>>
>> Also I don't see this name in email addresses.
>>
> 
> Hi Alexey,
> 
> We got review comments to merge dt changes in one patch, we are still discussing on
> how to organize next version, I think we can add the Co-developed-by tag if remoteproc
> is sent as a single patch in next version, "Written with" description will be used
> to avoid SOB chain too long.
> 
> Thanks,
> Jingyi
> 
>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/kaanapali.dtsi | 484 ++++++++++++++++++++++++++++++++
>>>   1 file changed, 484 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>>> index 08ab267bf9a7..c3b38fd851c5 100644
>>> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>>> @@ -438,6 +438,121 @@ rmtfs_mem: rmtfs@d7c00000 {
>>>   		};
>>>   	};
>>
>> [...]
>>
>>> +		remoteproc_adsp: remoteproc@6800000 {
>>> +			compatible = "qcom,kaanapali-adsp-pas", "qcom,sm8550-adsp-pas";
>>> +			reg = <0x0 0x06800000 0x0 0x10000>;
>>> +
>>> +			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
>>> +					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
>>> +					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
>>> +					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
>>> +					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>,
>>> +					      <&smp2p_adsp_in 7 IRQ_TYPE_EDGE_RISING>;
>>> +			interrupt-names = "wdog",
>>> +					  "fatal",
>>> +					  "ready",
>>> +					  "handover",
>>> +					  "stop-ack",
>>> +					  "shutdown-ack";
>>> +
>>> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
>>> +			clock-names = "xo";
>>> +
>>> +			interconnects = <&lpass_lpicx_noc MASTER_LPASS_PROC QCOM_ICC_TAG_ALWAYS
>>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
>>> +
>>> +			power-domains = <&rpmhpd RPMHPD_LCX>,
>>> +					<&rpmhpd RPMHPD_LMX>;
>>> +			power-domain-names = "lcx",
>>> +					     "lmx";
>>> +
>>> +			memory-region = <&adspslpi_mem>, <&q6_adsp_dtb_mem>;
>>> +
>>> +			qcom,qmp = <&aoss_qmp>;
>>> +
>>> +			qcom,smem-states = <&smp2p_adsp_out 0>;
>>> +			qcom,smem-state-names = "stop";
>>> +
>>> +			status = "disabled";
>>> +
>>> +			remoteproc_adsp_glink: glink-edge {
>>> +				interrupts-extended = <&ipcc IPCC_MPROC_LPASS
>>> +							     IPCC_MPROC_SIGNAL_GLINK_QMP
>>> +							     IRQ_TYPE_EDGE_RISING>;
>>> +
>>> +				mboxes = <&ipcc IPCC_MPROC_LPASS
>>> +						IPCC_MPROC_SIGNAL_GLINK_QMP>;
>>> +
>>> +				qcom,remote-pid = <2>;
>>> +
>>> +				label = "lpass";
>>> +
>>> +				fastrpc {
>>> +					compatible = "qcom,fastrpc";
>>> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
>>> +					label = "adsp";
>>> +					#address-cells = <1>;
>>> +					#size-cells = <0>;
>>> +
>>> +					compute-cb@3 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <3>;
>>> +
>>> +						iommus = <&apps_smmu 0x1003 0x80>,
>>> +							 <&apps_smmu 0x1043 0x20>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@4 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <4>;
>>> +
>>> +						iommus = <&apps_smmu 0x1004 0x80>,
>>> +							 <&apps_smmu 0x1044 0x20>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@5 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <5>;
>>> +
>>> +						iommus = <&apps_smmu 0x1005 0x80>,
>>> +							 <&apps_smmu 0x1045 0x20>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@6 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <6>;
>>> +
>>> +						iommus = <&apps_smmu 0x1006 0x80>,
>>> +							 <&apps_smmu 0x1046 0x20>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@7 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <7>;
>>> +
>>> +						iommus = <&apps_smmu 0x1007 0x40>,
>>> +							 <&apps_smmu 0x1067 0x0>,
>>> +							 <&apps_smmu 0x1087 0x0>;
>>> +						dma-coherent;
>>> +					};
>>> +				};
>>> +			};
>>> +		};
>>
>> Fastrpc nodes here. Was this tested? If yes, then how?
>> Or was it just copied from somewhere from downstream?
>>
>> The same questions basically go for cdsp fastrpc too.
>>
> 
> +Kumari, could you please comment on this?
> 

I verified the CDSP and ADSP nodes by running the tests available at 
https://github.com/qualcomm/fastrpc/tree/development/test. Upon 
successful execution, the message "All tests completed successfully" is 
displayed.

>>
>> [..]
>>
>>> +				label = "cdsp";
>>> +
>>> +				fastrpc {
>>> +					compatible = "qcom,fastrpc";
>>> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
>>> +					label = "cdsp";
>>> +					#address-cells = <1>;
>>> +					#size-cells = <0>;
>>> +
>>> +					compute-cb@1 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <1>;
>>> +						iommus = <&apps_smmu 0x19c1 0x0>,
>>> +							 <&apps_smmu 0x1961 0x0>,
>>> +							 <&apps_smmu 0x0c21 0x0>,
>>> +							 <&apps_smmu 0x0c01 0x40>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@2 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <2>;
>>> +						iommus = <&apps_smmu 0x1962 0x0>,
>>> +							 <&apps_smmu 0x0c02 0x20>,
>>> +							 <&apps_smmu 0x0c42 0x0>,
>>> +							 <&apps_smmu 0x19c2 0x0>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@3 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <3>;
>>> +						iommus = <&apps_smmu 0x1963 0x0>,
>>> +							 <&apps_smmu 0x0c23 0x0>,
>>> +							 <&apps_smmu 0x0c03 0x40>,
>>> +							 <&apps_smmu 0x19c3 0x0>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@4 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <4>;
>>> +						iommus = <&apps_smmu 0x1964 0x0>,
>>> +							 <&apps_smmu 0x0c44 0x0>,
>>> +							 <&apps_smmu 0x0c04 0x20>,
>>> +							 <&apps_smmu 0x19c4 0x0>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@5 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <5>;
>>> +						iommus = <&apps_smmu 0x1965 0x0>,
>>> +							 <&apps_smmu 0x0c45 0x0>,
>>> +							 <&apps_smmu 0x0c05 0x20>,
>>> +							 <&apps_smmu 0x19c5 0x0>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@6 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <6>;
>>> +						iommus = <&apps_smmu 0x1966 0x0>,
>>> +							 <&apps_smmu 0x0c06 0x20>,
>>> +							 <&apps_smmu 0x0c46 0x0>,
>>> +							 <&apps_smmu 0x19c6 0x0>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@7 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <7>;
>>> +						iommus = <&apps_smmu 0x1967 0x0>,
>>> +							 <&apps_smmu 0x0c27 0x0>,
>>> +							 <&apps_smmu 0x0c07 0x40>,
>>> +							 <&apps_smmu 0x19c7 0x0>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@8 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <8>;
>>> +						iommus = <&apps_smmu 0x1968 0x0>,
>>> +							 <&apps_smmu 0x0c08 0x20>,
>>> +							 <&apps_smmu 0x0c48 0x0>,
>>> +							 <&apps_smmu 0x19c8 0x0>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					/* note: secure cb9 in downstream */
>>> +
>>> +					compute-cb@12 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <12>;
>>> +						iommus = <&apps_smmu 0x196c 0x0>,
>>> +							 <&apps_smmu 0x0c2c 0x00>,
>>> +							 <&apps_smmu 0x0c0c 0x40>,
>>> +							 <&apps_smmu 0x19cc 0x0>;
>>> +						dma-coherent;
>>> +					};
>>> +
>>> +					compute-cb@13 {
>>> +						compatible = "qcom,fastrpc-compute-cb";
>>> +						reg = <13>;
>>> +						iommus = <&apps_smmu 0x196d 0x0>,
>>> +							 <&apps_smmu 0x0c0d 0x40>,
>>> +							 <&apps_smmu 0x0c2e 0x0>,
>>> +							 <&apps_smmu 0x0c2d 0x0>,
>>> +							 <&apps_smmu 0x19cd 0x0>;
>>> +						dma-coherent;
>>> +					};
>>> +				};
>>> +			};
>>> +		};
>>> +
>>
>> Best regards,
>> Alexey
>>
> 

Thanks,
Pallavi


