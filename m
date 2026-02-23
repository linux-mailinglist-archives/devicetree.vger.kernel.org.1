Return-Path: <devicetree+bounces-267413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yImaGCRVnGnJEAQAu9opvQ
	(envelope-from <devicetree+bounces-267413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:24:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1ED176C56
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:24:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6589B30A0890
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 613ED1DFE22;
	Mon, 23 Feb 2026 13:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XQ9fJ9Ex";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Yrz2nV32"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E3718D658
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771852871; cv=none; b=ju2EsweL5xWCxUprLtO5dpJ640+yRDEqdXsZ40hYvyi1TJ38XPZKHsXIjsO44YAoON655432R9eXgeltq1wWH+cA2KU5lMq8OnfXXiJC+IVs2eRPUk5z1kTp2YubttKgZvYunUdXHCig6DZDJVGuF/i9g6JzmdintF1iprDBMTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771852871; c=relaxed/simple;
	bh=9OTkrw80oktO22w0uVEhhcTou6BTPF/sj5rutEaSw+I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Uh8KOMvwgE3Jh9N9Wz7uSIHH/zS1z6yAea8g2DfQXm6cmXixP+ekJXZdGSx3Wc1qvQoNaQWRkTZovdvkdqQlmGGULF/TIC9kO5uj9KiAdx+k1/dMXOprKHcqPdwse80JS3MEMUyA+CX+dEQZeUbu3gNwpmL7Kp6d6lLWlAQUeEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XQ9fJ9Ex; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yrz2nV32; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NAWJW13733258
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:21:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cUs2dNQrFhhZKJ8x0qt0CveP16jH+B+EkOSIm51sjNQ=; b=XQ9fJ9ExUFNOgDe8
	1qsTH4MeyvjroRoZZCmD24bSUnAmYeI2zhWSltpNZvSqErnu17QbTU+s2ig1GKpD
	D+sCN5INLtvH7hJkVA4PzheuGZpSTcXZPCafQvOrbRh6O/gYC8D1THPlLj5VDiIW
	8Y0J257UyDhfEG6ggoVYpMn/04nO2TGV0fryyrpD8NpAvTdUyJ6IsQy40zq7+IXR
	BCq60yDH2FnEMinhLNEvM2Dhc7Y9YQAUhCiF5VYJcQLGukni6OPcVvtw1k8LtW6W
	uLmLMWPy+CyRJb1wNRIF1kHwDpWCP7rQXUjtJlQQxdGUMhuEEuvq0DW8NV21iwSC
	WJsXpg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn7t8drd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:21:08 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89496f5086dso50295846d6.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:21:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771852868; x=1772457668; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cUs2dNQrFhhZKJ8x0qt0CveP16jH+B+EkOSIm51sjNQ=;
        b=Yrz2nV32CYmrglJFcPfH55DX0gKzl4Ms/jMIaom+ON3+mX/KCt541vtUdmD0CnHsYj
         FzWlz0HVmIkABUfbuv+TQ1NrIFMTNgFonK5w/7hMNVRjCdP98a7ZYWJDPErxfvuKvit9
         lWlcsE4ym0y04/QUfXMjKk3t5nsdThPpn5WObi5+XCvPoERQFtYo0K0SKIIYgSAhVi0Y
         uobzqEfTLTmsTzOiFEpWIl5n9fAMYwWQmqh0idSmaTIDpN1WmrM5s8lX2IVLnQw1Tm2N
         QHdLOEgsUIHmufa3Op7xsTdZ0MiGU9cYz89J6a/o6iIbXE1mnlwTqyruFm3/5xcjEnL8
         KCvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771852868; x=1772457668;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cUs2dNQrFhhZKJ8x0qt0CveP16jH+B+EkOSIm51sjNQ=;
        b=RxCTWnUhOaJMoangBKhzjMnrj9tjuEVu56fr/uYRbbtYQ/pRBadaTX7pIfVokPj2EF
         De4F3uV+fSW5RXUDZ7iQowGU4YZKJjIPUgwnNTt3nKlgbCLaYS/5S95Vb51znN33gbXt
         r8N94vbjENBpRp0K1yLhulCDoHh5x+OvOo4LF46Ulcr2tVNWQRbMgvRjBqEjOZR/8taX
         Uw1oIDX8gymMJ5oqWSJHRqBRsw/EGTOZSgH//UMQxGM2e08IybgTIMevDE5W7kaGiNC/
         3uyFxuRx8DdT6ncqnqlhpXQ4GuztiqKV7dO50rGXbZQshwNUiVOHheUgkjf8+i9VbNxR
         C2Zw==
X-Forwarded-Encrypted: i=1; AJvYcCXjB4hPB4PTHxZmI2Jurnrg7A87EhqDldHL4UMIV5OsTit8SusQ14bPPEUewcMq97T3CgyYMhzO3hU8@vger.kernel.org
X-Gm-Message-State: AOJu0YwABw6zvFngFX0AeGaSguOJyyN5tQ7Xe9m2xQP6FtG3+fw7I2sJ
	da7NMvr5c18cYyM8UviQSEAAGKL8HW1Dis2bpnYaTDnl1Y/QWxgQmMADLdPrcd7W5ZyRd/kxfq6
	qd3bnr/06Yu3gNL09Cve7nkJgjmucktLAf0SUN+XTRWJyS4VSHOPX3PNsvqHQSVJ1
X-Gm-Gg: AZuq6aKpu2pJWdD4RKtbsu8nIZNan2XTGH/3NaMszX2OCBes/WvmHgu3ui3suzpYJCp
	kl8F224WbpUhzQAX9nqoWMDFXa2R59nQeeXtrpXFv0y/9qKWBOmqzOzoaIDwl8kMKvxOrn7X/1m
	RMHAgBz9HIcIz0wcDWAm6fQIVB7rE3m39VrlbFbJQ7mCsGIto4RbfSxMUa5OjxRCc19ILg6+uB1
	KLZRO/lANaNsS7WNSjgVypVklC8V+Yq+FQ6I5XjVCvf4N4jFZod4dNcT4QBoiALjP3inTs2B0ta
	HXk5THea6KZaQNrWUlU88BgOZgdGAQBCcLHgQKL580vqGxA2kCz8H/bHRmuu1athuTibxVjggJm
	g2DWxKHWytB/JHlYtDY7G5k4+Bz3Wk/mi3J6cp7MFIL/+wj6dDatQHRkad2Vp+g/sJ4FGRXtMzq
	oarSk=
X-Received: by 2002:a05:620a:4544:b0:8cb:3df5:4b70 with SMTP id af79cd13be357-8cb8ca1a960mr841647885a.2.1771852868196;
        Mon, 23 Feb 2026 05:21:08 -0800 (PST)
X-Received: by 2002:a05:620a:4544:b0:8cb:3df5:4b70 with SMTP id af79cd13be357-8cb8ca1a960mr841644585a.2.1771852867633;
        Mon, 23 Feb 2026 05:21:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65eab9b5a2bsm2628993a12.15.2026.02.23.05.21.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 05:21:06 -0800 (PST)
Message-ID: <8d658491-bc1c-410a-97f5-bde1a00764b2@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:21:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sm8750: Add GPU clock & IOMMU
 nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20260220-gpucc_sm8750_v2-v3-0-6c5408564c3c@oss.qualcomm.com>
 <20260220-gpucc_sm8750_v2-v3-3-6c5408564c3c@oss.qualcomm.com>
 <7dbc0e99-cffb-403a-be7a-27d1b47712fd@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7dbc0e99-cffb-403a-be7a-27d1b47712fd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=c5OmgB9l c=1 sm=1 tr=0 ts=699c5444 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=6F_KMvjuWJjJSnLB6NgA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: gwqZIki-chMw5kLiGwR2KMiSrklBfwHq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDExNCBTYWx0ZWRfXx/bSTOZFWFQ7
 1dR2Ogqu7L4Qc5iT/MX9Is3W6mk3/4XTWG52h4Ligynvl3KeUNyknc6Rp6IE+Yw4aBqNvpfDsmB
 F1pRQlKUwmBggUfigzoCyTZavHuWa6AibhA2tguROaCAW9jIbMU/q1w7+95uoc8TxZd9ESIfrZS
 YMSiT/5buZiSJuZ7Z1oo4G9yzSUXdxdH5Q05BAChRmjV3wcnAu8bFB1oWu5LLwzD1yfkBqsqN0B
 1/UapcoON8rkqxF+YUffTidqk1BjTF4RI7jTeW8bw2x62NwMLiRm5hXjB9BkD97+YuaYj3t9xiQ
 SLK6mF4SNCL+UFJAFp+b+rZB4fNSRsywRtAN1rM1fZX9/6Cq/99p1guVcK/RHPIurEUkumTn8jS
 E00xaABVZoH6/sEw0sBYaV4gBMinRQxZMRhpuaaxeYOxQx4Qm35fHSsvUjmFBwu/1QUVSwwJPjS
 aGnQSrCgIgy1EXmCrnw==
X-Proofpoint-ORIG-GUID: gwqZIki-chMw5kLiGwR2KMiSrklBfwHq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230114
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-267413-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aaf0000:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0A1ED176C56
X-Rspamd-Action: no action

On 2/21/26 7:22 PM, Akhil P Oommen wrote:
> On 2/20/2026 11:24 AM, Taniya Das wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Add the GPU_CC and GX_CC (brand new! as far as we're concerned, this
>> is simply a separate block housing the GX GDSC) nodes, required to
>> power up the graphics-related hardware.
>>
>> Make use of it by enabling the associated IOMMU as well. The GPU itself
>> needs some more work and will be enabled later.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 64 ++++++++++++++++++++++++++++++++++++
>>  1 file changed, 64 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> index f56b1f889b857a28859910f5c4465c8ce3473b00..0cc931d0bc96e9563ce4e7989ecd4ba50bd424f8 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> @@ -4,7 +4,9 @@
>>   */
>>  
>>  #include <dt-bindings/clock/qcom,rpmh.h>
>> +#include <dt-bindings/clock/qcom,kaanapali-gxclkctl.h>
>>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
>> +#include <dt-bindings/clock/qcom,sm8750-gpucc.h>
>>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
>>  #include <dt-bindings/clock/qcom,sm8750-videocc.h>
>>  #include <dt-bindings/dma/qcom-gpi.h>
>> @@ -3001,6 +3003,30 @@ videocc: clock-controller@aaf0000 {
>>  			#power-domain-cells = <1>;
>>  		};
>>  
>> +		gxclkctl: clock-controller@3d64000 {
>> +			compatible = "qcom,sm8750-gxclkctl";
>> +			reg = <0x0 0x03d64000 0x0 0x6000>;
>> +
>> +			power-domains = <&rpmhpd RPMHPD_GFX>,
>> +					<&rpmhpd RPMHPD_GMXC>,
>> +					<&gpucc GPU_CC_CX_GDSC>;
>> +
>> +			#power-domain-cells = <1>;
>> +		};
>> +
>> +		gpucc: clock-controller@3d90000 {
>> +			compatible = "qcom,sm8750-gpucc";
>> +			reg = <0x0 0x03d90000 0x0 0x9800>;
>> +
>> +			clocks = <&bi_tcxo_div2>,
>> +				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
>> +				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
>> +
>> +			#clock-cells = <1>;
>> +			#reset-cells = <1>;
>> +			#power-domain-cells = <1>;
> 
> On Pakala and newer GPUs, we need to scale GMU (which is connected to
> the CX GDSC) freq. Is this DT description sufficient to allow scaling of
> GMU OPP?

No, certainly not.

I see that GPU_CC on this one is exclusively powered by VDD_CX, with
some MXA backing, so the natural course of action would be to add a
RPMHPD_CX power-domains handle here. Then, voting on the CX_GDSC will
propagate the performance state to RPMHPD_CX.

Taniya, I see there's also some MXA backing. Do we need to scale it,
or is "just ON" fine here?

Konrad

