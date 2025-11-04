Return-Path: <devicetree+bounces-234736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D33C301E2
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 10:00:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 432C73456F5
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 09:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A904529E0F7;
	Tue,  4 Nov 2025 09:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ezN95ukD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZcotNVSx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E0B2BE7C3
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 09:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762246806; cv=none; b=k9a2izM4Uz2ElQysjmFHbFoSpP1X5b4Emg7ERbKrFT5/tlcio2oHo+Ykx0fUVC8frwDWLq4Pyjxq4rEne651peRC/uiOf3EWgGO11INd0m+pdk60GpyHfHdDxTBnRPsgud5TBjh6Ps05BwF1rAzjkxyt4P+24rWJp04/WGAbKKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762246806; c=relaxed/simple;
	bh=VJU336hhaZ8Y/i6Xvn0BgBPS0c+fzGU7RnkAwGDvQ9Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JIlntiaND4jh6/BJWmbP+WI4mcRbDvMBTF5WrZMxf37b+tTMmjeWyHB+/tZVvSBp19u1MMdy5DcK9oZYU/twu32lQRv8uelRF2AnB6ZJgUnx9yKux8VZts/P1DNfY/fEj8HHfV1AyiuISSQ0Xp8Y0VGt9J3zCNy8K1dimCFJyeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ezN95ukD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZcotNVSx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A48g1PH1539201
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 09:00:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FrTRTlMklQUT47bJopQ4g/PDBm+i0TkfnULzFf7+la0=; b=ezN95ukDqw+8IbFR
	PcQuVwcQj0+UzlvaaxgBudiKztG3cga3573GcFZ1A41xwcIi19gw+ZpMKSHjXM2i
	WxQwNpH68VdoArv8fwrPQv/q0ieyFNOt1n+jISkPHZC3IoHhrDEyVpefAOqdwhCm
	J26iHFQcfs9o7G30fqp0aJ/WYQ75dSF8S6ObX9cwWIBF8ky1YBoxyQDw6Z6epak6
	2z+QddTdI1ll4LSeIh4a6UB89JhhPi6I2PISBp+br4lyMdg2w1lFzwTHrYOWTQN8
	JbLKMZpAwrAY4ITt261F91uwf2VUXF/MV2MnlL3n6Igr9p5+KuEb/eb3D/dCl6AQ
	KO55Gg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a78eqs1mm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 09:00:02 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b62da7602a0so4382683a12.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 01:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762246802; x=1762851602; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FrTRTlMklQUT47bJopQ4g/PDBm+i0TkfnULzFf7+la0=;
        b=ZcotNVSxhsC4WfCMBdY1D8WLi5o6I7HavW57zx0F5NOdYjngfIOj4J33TT6ynFzNW1
         V1hB+8L5FijnoJKQvA45NBoOHA0+RPCmw1ccY24qGROTw19IUCoGnWibaFW70W4Z3tmg
         i2aeTS7qGie9W81izdKGe9q5MZG4xP+vHXxRIJZkOJGVYQ7v0D9T1YqXtlTowGjIxklw
         tQ8B2vQNclD0EFWvoQ5e6tbTwcinHuT66ad+HTZ8HsTRbh08D/T0Sf7UqV081YRK8cWl
         3ohdpxDKUW5gH9DkH0OhvbPyqra6Ww0S2B5ez9RYH+yODrKwr5+KNPyR/u23R1j5tEsc
         jXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762246802; x=1762851602;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FrTRTlMklQUT47bJopQ4g/PDBm+i0TkfnULzFf7+la0=;
        b=WcTIMPY2A6/yol54hrSavcQDVzlLuYtdbaHE+hEJ0ZYbdBRkMUhQMRwIIprn+8Rq1o
         tvIQfi9OFpY5JiOHAAB01wvq1bV8XvRMLbccLVnmUF1heRI3zxSUgqkjHakJjaWX4ybU
         LE257ZTS6cRbJoIv9Fvy1pJeyC6byls711m6aLUdZSTvR4ljbwfp+elj7UPtGuInA+WH
         hT/c9MOApGFumOjjVFVuLUE7cFIs459K5F5OeaTi5W3thTe7m/DW4GQaSjNo0dYtrYTU
         EoyoTdmLjYCbEtzTVb2DsW9wY4AHTeuz6tysQXGF6zj/SJIzYaMgeEvl24orCNek7ozL
         MAMA==
X-Forwarded-Encrypted: i=1; AJvYcCXjiloTqMKLwbRL9OP8AgM/JABW7KTzdRHu+EiK+YYU7E/fZDyyf+LNksRuQdPyz1iavxs1u97ZyTgM@vger.kernel.org
X-Gm-Message-State: AOJu0YygwVvTUL7JXuk5g8cYosVVyVVx100wzIqVctQb8ao9ri3xy+Vm
	w/eiZ+XrsZYAaQgwmfHfjSHBAJ+8XeXYnp9SFOLp+z/lpRGFgqBMrMKFZxd7dcIpmPukp9FO1Ln
	+ve9MycF15+myQDxMn9owpsdZWNFD52Wh6vjI30qUzjiAHEWgrQ3Da5A0CYindDst
X-Gm-Gg: ASbGncve6iINWDktUWXY63xPHErkY4n6TN+rzBpv+ZoHytLqVFnqtlyPD/+5nOL0svk
	2AQd3CjdXV9Q6XbUuWqzWnqMHpSYmm7F0NhkCBROMYY2R55vHzAxFimn7houwC3U2Ap8FsTtY+j
	7Ug3y/URen8Yi8wrPlvvULFrTuwZMVtr0mwKrVhV8+cKCQqQx/g+wdI6bdlsfWl1h/XBZyT69Sl
	+l7L+JhaWr5S0nrnCgzGx/sGnXc0fPJVFO0bbG1+FcGc0hCXKhi0P8qud0puzkUrim9FOT4v8QI
	IDCyQuFjhGci+1aR1+CFOBvgjeZEVQFqXjnj9agc/kse0jWZkvOexVmG/69ZcPzK4KH6ACGbH4I
	k73KCukdShHE6bFh/FBA5GxIiXpJUdXm9ZgjS5TnQ4s5HsBSHW2ijd6zIkkd0jkR4oIrsGg==
X-Received: by 2002:a05:6a21:99a7:b0:342:5ba7:dfa1 with SMTP id adf61e73a8af0-348cc2da1e6mr22678007637.42.1762246801949;
        Tue, 04 Nov 2025 01:00:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEXLLh9ZpMe31D/zrlefkNxbOKYpTy3/NGJojCkBE/8HyKDsARgDlkuua4gZSMzgowveEGglw==
X-Received: by 2002:a05:6a21:99a7:b0:342:5ba7:dfa1 with SMTP id adf61e73a8af0-348cc2da1e6mr22677970637.42.1762246801383;
        Tue, 04 Nov 2025 01:00:01 -0800 (PST)
Received: from [10.133.33.122] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7acd3246e70sm2158624b3a.5.2025.11.04.00.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 01:00:00 -0800 (PST)
Message-ID: <bace46c5-e912-4003-812b-c654673be43e@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 16:59:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/20] arm64: dts: qcom: kaanapali: Add remoteprocs for
 Kaanapali SoC
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, kumari.pallavi@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-7-3fdbc4b9e1b1@oss.qualcomm.com>
 <DD6B62STZOTG.L12V3DGNDZUZ@linaro.org>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <DD6B62STZOTG.L12V3DGNDZUZ@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA3MyBTYWx0ZWRfX6HT+6LdmpI8n
 24WDswGEtTD7Lm4pUYNC/tBpCZyhj3mPDsNjJD/82c348qOeZH2WekVMji/JnJ5Aribj4m0Lc34
 W7KU02nCbNYfFd3LCBtPOHqU6zYdZizh11qOOjRlMpAcQRmNHy+OQixjkrJyjt9YvHOW2rZn0dj
 WxYX/hk0Snr9/I7H6hOi2rhLNlr1HHwdBfvuGSOwtKHKl9zWFqXiC7bn9pcuZCQH9ez/SjhzWgF
 8U/bytANCzLkOS2LNcJrbDLNq7OIlunS6rPiWj2VjDIVm+QmfrXEG97mu4dbBt9FIJd9nfxfDyp
 xYyQ3ouMpTwV1144bUkxFR61xRWftWkasqJZrhXnNaBHOpWbKrnlcW8iPqiUMGB35mXzbA4QMh3
 Jws+6JPUtX2aV/Dv3bV5m2kUqqwn2g==
X-Authority-Analysis: v=2.4 cv=fofRpV4f c=1 sm=1 tr=0 ts=6909c093 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=R5xm6WvEqxduZyTZtAkA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: QREWaX8zvb8aEie2vLtlU59JoyCsK7cc
X-Proofpoint-GUID: QREWaX8zvb8aEie2vLtlU59JoyCsK7cc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040073



On 10/1/2025 1:24 AM, Alexey Klimov wrote:
> On Thu Sep 25, 2025 at 1:17 AM BST, Jingyi Wang wrote:
>> Add remoteproc PAS loader for ADSP, CDSP, MPSS and SoCCP with
>> its SMP2P and fastrpc nodes.
>>
>> Written with help from Kumari Pallavi(added fastrpc).
> 
> Co-developed-by tag then maybe?
> 
> Also I don't see this name in email addresses.
> 

Hi Alexey, 

We got review comments to merge dt changes in one patch, we are still discussing on
how to organize next version, I think we can add the Co-developed-by tag if remoteproc
is sent as a single patch in next version, "Written with" description will be used
to avoid SOB chain too long.

Thanks,
Jingyi

>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 484 ++++++++++++++++++++++++++++++++
>>  1 file changed, 484 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>> index 08ab267bf9a7..c3b38fd851c5 100644
>> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>> @@ -438,6 +438,121 @@ rmtfs_mem: rmtfs@d7c00000 {
>>  		};
>>  	};
> 
> [...]
> 
>> +		remoteproc_adsp: remoteproc@6800000 {
>> +			compatible = "qcom,kaanapali-adsp-pas", "qcom,sm8550-adsp-pas";
>> +			reg = <0x0 0x06800000 0x0 0x10000>;
>> +
>> +			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
>> +					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
>> +					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
>> +					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
>> +					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>,
>> +					      <&smp2p_adsp_in 7 IRQ_TYPE_EDGE_RISING>;
>> +			interrupt-names = "wdog",
>> +					  "fatal",
>> +					  "ready",
>> +					  "handover",
>> +					  "stop-ack",
>> +					  "shutdown-ack";
>> +
>> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
>> +			clock-names = "xo";
>> +
>> +			interconnects = <&lpass_lpicx_noc MASTER_LPASS_PROC QCOM_ICC_TAG_ALWAYS
>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
>> +
>> +			power-domains = <&rpmhpd RPMHPD_LCX>,
>> +					<&rpmhpd RPMHPD_LMX>;
>> +			power-domain-names = "lcx",
>> +					     "lmx";
>> +
>> +			memory-region = <&adspslpi_mem>, <&q6_adsp_dtb_mem>;
>> +
>> +			qcom,qmp = <&aoss_qmp>;
>> +
>> +			qcom,smem-states = <&smp2p_adsp_out 0>;
>> +			qcom,smem-state-names = "stop";
>> +
>> +			status = "disabled";
>> +
>> +			remoteproc_adsp_glink: glink-edge {
>> +				interrupts-extended = <&ipcc IPCC_MPROC_LPASS
>> +							     IPCC_MPROC_SIGNAL_GLINK_QMP
>> +							     IRQ_TYPE_EDGE_RISING>;
>> +
>> +				mboxes = <&ipcc IPCC_MPROC_LPASS
>> +						IPCC_MPROC_SIGNAL_GLINK_QMP>;
>> +
>> +				qcom,remote-pid = <2>;
>> +
>> +				label = "lpass";
>> +
>> +				fastrpc {
>> +					compatible = "qcom,fastrpc";
>> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
>> +					label = "adsp";
>> +					#address-cells = <1>;
>> +					#size-cells = <0>;
>> +
>> +					compute-cb@3 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <3>;
>> +
>> +						iommus = <&apps_smmu 0x1003 0x80>,
>> +							 <&apps_smmu 0x1043 0x20>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@4 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <4>;
>> +
>> +						iommus = <&apps_smmu 0x1004 0x80>,
>> +							 <&apps_smmu 0x1044 0x20>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@5 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <5>;
>> +
>> +						iommus = <&apps_smmu 0x1005 0x80>,
>> +							 <&apps_smmu 0x1045 0x20>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@6 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <6>;
>> +
>> +						iommus = <&apps_smmu 0x1006 0x80>,
>> +							 <&apps_smmu 0x1046 0x20>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@7 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <7>;
>> +
>> +						iommus = <&apps_smmu 0x1007 0x40>,
>> +							 <&apps_smmu 0x1067 0x0>,
>> +							 <&apps_smmu 0x1087 0x0>;
>> +						dma-coherent;
>> +					};
>> +				};
>> +			};
>> +		};
> 
> Fastrpc nodes here. Was this tested? If yes, then how?
> Or was it just copied from somewhere from downstream?
> 
> The same questions basically go for cdsp fastrpc too.
> 

+Kumari, could you please comment on this?

> 
> [..]
> 
>> +				label = "cdsp";
>> +
>> +				fastrpc {
>> +					compatible = "qcom,fastrpc";
>> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
>> +					label = "cdsp";
>> +					#address-cells = <1>;
>> +					#size-cells = <0>;
>> +
>> +					compute-cb@1 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <1>;
>> +						iommus = <&apps_smmu 0x19c1 0x0>,
>> +							 <&apps_smmu 0x1961 0x0>,
>> +							 <&apps_smmu 0x0c21 0x0>,
>> +							 <&apps_smmu 0x0c01 0x40>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@2 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <2>;
>> +						iommus = <&apps_smmu 0x1962 0x0>,
>> +							 <&apps_smmu 0x0c02 0x20>,
>> +							 <&apps_smmu 0x0c42 0x0>,
>> +							 <&apps_smmu 0x19c2 0x0>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@3 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <3>;
>> +						iommus = <&apps_smmu 0x1963 0x0>,
>> +							 <&apps_smmu 0x0c23 0x0>,
>> +							 <&apps_smmu 0x0c03 0x40>,
>> +							 <&apps_smmu 0x19c3 0x0>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@4 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <4>;
>> +						iommus = <&apps_smmu 0x1964 0x0>,
>> +							 <&apps_smmu 0x0c44 0x0>,
>> +							 <&apps_smmu 0x0c04 0x20>,
>> +							 <&apps_smmu 0x19c4 0x0>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@5 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <5>;
>> +						iommus = <&apps_smmu 0x1965 0x0>,
>> +							 <&apps_smmu 0x0c45 0x0>,
>> +							 <&apps_smmu 0x0c05 0x20>,
>> +							 <&apps_smmu 0x19c5 0x0>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@6 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <6>;
>> +						iommus = <&apps_smmu 0x1966 0x0>,
>> +							 <&apps_smmu 0x0c06 0x20>,
>> +							 <&apps_smmu 0x0c46 0x0>,
>> +							 <&apps_smmu 0x19c6 0x0>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@7 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <7>;
>> +						iommus = <&apps_smmu 0x1967 0x0>,
>> +							 <&apps_smmu 0x0c27 0x0>,
>> +							 <&apps_smmu 0x0c07 0x40>,
>> +							 <&apps_smmu 0x19c7 0x0>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@8 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <8>;
>> +						iommus = <&apps_smmu 0x1968 0x0>,
>> +							 <&apps_smmu 0x0c08 0x20>,
>> +							 <&apps_smmu 0x0c48 0x0>,
>> +							 <&apps_smmu 0x19c8 0x0>;
>> +						dma-coherent;
>> +					};
>> +
>> +					/* note: secure cb9 in downstream */
>> +
>> +					compute-cb@12 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <12>;
>> +						iommus = <&apps_smmu 0x196c 0x0>,
>> +							 <&apps_smmu 0x0c2c 0x00>,
>> +							 <&apps_smmu 0x0c0c 0x40>,
>> +							 <&apps_smmu 0x19cc 0x0>;
>> +						dma-coherent;
>> +					};
>> +
>> +					compute-cb@13 {
>> +						compatible = "qcom,fastrpc-compute-cb";
>> +						reg = <13>;
>> +						iommus = <&apps_smmu 0x196d 0x0>,
>> +							 <&apps_smmu 0x0c0d 0x40>,
>> +							 <&apps_smmu 0x0c2e 0x0>,
>> +							 <&apps_smmu 0x0c2d 0x0>,
>> +							 <&apps_smmu 0x19cd 0x0>;
>> +						dma-coherent;
>> +					};
>> +				};
>> +			};
>> +		};
>> +
> 
> Best regards,
> Alexey
> 


