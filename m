Return-Path: <devicetree+bounces-262116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAxqHG++gWm7JAMAu9opvQ
	(envelope-from <devicetree+bounces-262116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:22:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C28C0D6BE3
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:22:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA7A73088CA3
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90773396D20;
	Tue,  3 Feb 2026 09:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QMMteIUE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ntys7MDY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40E9396D26
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770110502; cv=none; b=gRG62FmdEw0JH9YDchiYKcqNizcmQrEXFsg1OxBCdGa/t7NdFCJvrkJA0lv8bJOABKW7dMO6GYQue2WEI98D1xW0zQlgzsOHGnrDop63r59BNkBREX3XsQ87ovI8R4+tfgQQm2O95KCuxb64tyZSJBj4CRBcHKh44eliqMoPqDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770110502; c=relaxed/simple;
	bh=QbVYNk8ieZxDeZlQka9Svgis9VIJkaJ986RjTtdzstY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WkUE6yW998SGos/NVE4wLl/G025oYtlLkGDRlOpFSx3qzCYWcCYAI5RfhLr9hx7/eiGdE7dVgNPmo6yCz6n1zc92PlJi2u0iXM+btN41v1EGqOva5YZP7GgT3ybM7SOKt29wEKELAyz86lX+Gu88gA8KoVZIa/+3KBA+x8NLtsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QMMteIUE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ntys7MDY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6134aM3b2106161
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 09:21:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IHm4dM0QI2K14G4EL0BsDWSd1o09XdFREKzlzEhP/VE=; b=QMMteIUEXlNIrjZo
	xiigf7grTLTI5fxPRfMeZnZvvIbOEeR6ekEmMawxR4dscTk+2yLI+rmqs3Rc/8Nv
	kXcYtVVWYfOXlv8lUh4V1bEukNTlDEpFXCIJ6gXvDPtY8zBIS8OPIJZEJgesPO1i
	1TweAWSAz5TMSbWEDMDzfEWB5Z7I6UaF0/u62Wzl5wpzt3N23FgI4yQHduHGrAOp
	iaqQysABezez/ii0tzJL6Lq+9VpDnWq4eMpOkboEQMGdzZpVnDng582J0BNiTtvR
	tDJj6vdlRg7cGYErySKiMaoZSeNfY7TU+etntI6GdXqHxu5YKbK+WoJnkj3X0aSK
	aBFHzg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2t5ebvrb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 09:21:40 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c536c9d2f7so156213185a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770110499; x=1770715299; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IHm4dM0QI2K14G4EL0BsDWSd1o09XdFREKzlzEhP/VE=;
        b=Ntys7MDYGDcncuYDAtOOQ1mWnIdYg33ghQmHqXDtBh2Y61mpVah1gT1U9dqeaXUBXm
         0KcCvpfoHfRCkIQYiWzMLZu7C4tPu/jX4QhmZ6GQcSy8kOOt2/w1B5KXe3n6GEczhcyI
         nAVsMqb6KxIWAg3xAFwPZ8AiN9A3lSfc+pxmFQDRNIBO7wJAHELx3+U0pElgZwVYDJO1
         PzsFUdhbXpUSf8sK+jAec5q3dVH6aESYlRuwq72BkY+QCqc9CbSBNMqbiOmYugWUnzR9
         TvBLZOfyKZIyFit3Srm4oYoo0KMhxp0pNMcUnmhZFnrX/Srt9030QNrbi0McXiKRe0ty
         mVlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770110499; x=1770715299;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IHm4dM0QI2K14G4EL0BsDWSd1o09XdFREKzlzEhP/VE=;
        b=hX3HDbPLoy4RWnHn0ew60tTOzr9c9G0ZxEAS68HyRUxLDCfNFL1S42TksJnLNcWBqB
         7IFgd89G6ByhRqq7eaauGSLDLnM5SS0LECiTuMKKkV07UqNgKw/lw13z06ZWYvl6SQ5V
         iHso7wkUtO2sx5cO88YsIn6LkPsh0JT2zRXErJFVb4jLrgBBYSgJt7NxityX1Jh0uUTd
         QsDa2q43GQEr3GiFUBsFcZoBN51aD0PpFpWHk9530CedY3R3MhbClibFZ6jsS1uMbNDD
         V0HsVUgWjXQSrCaqxB/y5uvV85fWEmPtr5bYgPx6sKRQKj7PJ76Cj820xtbsuHrmEvcQ
         w5Lw==
X-Forwarded-Encrypted: i=1; AJvYcCU8J1rOZD74hfnEXYpMd5rio0PA5/xLX2izML97+5S/nr9DUllchvj+f4kpqskJpv7wdPzN81sE5V9w@vger.kernel.org
X-Gm-Message-State: AOJu0YwDBKQSvAhQaQ+BuOeCwLIAgsB7JfzRd4fGVOoNtTQNIMgOUOIc
	ysv2p/yKDy2WVKsBm1Gjzfjx2JRnkGBzgj35EslirzGaE+w9fyFPmI1UYxVHxjbsEVj/tIA7zoU
	dHaQ8t22u+CH+sFxXnGze3PChnSA8xWysrM/kyENFoadsrIdp5iXVdKcY771hldHL
X-Gm-Gg: AZuq6aLYaocjEDXx17pcERoCromv+BVIF84mC9OR2AX2stmHe9DUQyKsXQlF7zTAo9r
	EgVWJy7ON/ToIocSLeP7haTsmtKEcSbHYgga3oViGu7aq1BB5i18fJ+Nnk/bb2uwSDGn4sv+RU+
	9vliSfgFKrc69BKcaBoPQEu8I6GO4t3OThY9G6SYRd2s5WdOjdri157fbmM3iiOZHT1XqkUU8qL
	IZ0PH1232jLAvJjETK5MRyH7btWqNDNghgTSO0G2RYuhVhXGMpHmC+YxxbCz1DIXJIYqgck6kzj
	c4Is1UCkE5AZSUZoUhbJ3/qnDowew49nRTCMehPpNct9gXy4o2y7TOyYq6cScBun7Womsrrl5Rs
	t9g/jwXOGU5QIfZBM1nVY2yOpC5xWWTiFw4daHG4qcgAV2uyZmgxR88skLFd9I/VGlMk=
X-Received: by 2002:a05:620a:1908:b0:8c7:17af:7ae with SMTP id af79cd13be357-8c9eb2f98acmr1359478785a.7.1770110499057;
        Tue, 03 Feb 2026 01:21:39 -0800 (PST)
X-Received: by 2002:a05:620a:1908:b0:8c7:17af:7ae with SMTP id af79cd13be357-8c9eb2f98acmr1359476385a.7.1770110498410;
        Tue, 03 Feb 2026 01:21:38 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbefc655csm986203666b.19.2026.02.03.01.21.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 01:21:37 -0800 (PST)
Message-ID: <91e91f5e-93af-466b-92f7-b2e88dc8d73f@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 10:21:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for
 PCIe1
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260203-industrial-mezzanine-pcie-v2-0-8579ed6bf931@oss.qualcomm.com>
 <20260203-industrial-mezzanine-pcie-v2-2-8579ed6bf931@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260203-industrial-mezzanine-pcie-v2-2-8579ed6bf931@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3MyBTYWx0ZWRfXzwDxXCloFd8D
 00ZPAztR6I/BEFTT1n6B/fXT2oGDCSxm64d7VEkX6Rodig+ngFyEza7nM+LT63fvU1Zss9iMw1G
 RRw18VMCzi0vRAjOGufURw4f8y3IGwAtpI0BGRuFdRMQmN16YxuNTvLi93LPb2iTumDINILdbvw
 7PUt01YRecWdTZKjp0sRkbVqcxSgHB+lcKwIDaDcYPUA+UWEH8pDgDuMv6YEvLcdeQFwpCGqFeI
 V8m24CfE/9b8VaLqejTe55j3IjvfcHyaDs3gDxeC8m9vqmzrom/TBoE0MVZFtGl4pMVCgOuqgKg
 nwCihQUso8RA25PwnamQNstyXj8IwPxJU/Bzx+AJqDlRERCc7y3FtoWSRXo54ft+I2DfLArb5Pk
 sgDVWjFX82pxJIPbB1RuiuCklL4W3ezX+8tJ2ZrutJtXK1w2xOABtAXXnxZKrFw6XRNPUbugIn0
 ZCpecd+uSRh1KGiSJog==
X-Proofpoint-GUID: DZd1bJh5-8-gq_aIoNGkq_vw2yi6AdxE
X-Authority-Analysis: v=2.4 cv=NOfYOk6g c=1 sm=1 tr=0 ts=6981be24 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=9kIy5wuRr3uUqB62-wcA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: DZd1bJh5-8-gq_aIoNGkq_vw2yi6AdxE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_02,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030073
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.3:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,0.0.0.1:email,0.0.0.2:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262116-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C28C0D6BE3
X-Rspamd-Action: no action

On 2/3/26 5:31 AM, Sushrut Shree Trivedi wrote:
> Add a node for the second TC9563 PCIe switch on PCIe1, which is connected
> in cascade to the first TC9563 switch via the former's downstream port.
> 
> Two embedded Ethernet devices are present on one of the downstream
> ports of this second switch as well. All the ports present in the
> node represent the downstream ports and embedded endpoints.
> 
> The second TC9563 is powered up via the same LDO regulators as the first
> one, and these can be controlled via two GPIOs, which are already present
> as fixed regulators. This TC9563 can also be configured through I2C.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
>  .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 96 ++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       | 12 +--
>  2 files changed, 102 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> index 89bbcab0908d..1744c9c8bd50 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> @@ -146,6 +146,91 @@ pcie0_switch0_eth1: pci@0,1 {
>  	};
>  };
>  
> +&pcie1 {
> +	iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
> +		<0x100 &apps_smmu 0x1c81 0x1>,

Please set your tab width to 8 and align the '<'s

[...]

> +&pcie1_switch0_dsp1 {
> +	pcie1_switch1_usp: pcie@0,0 {

This label is unused

[...]

> +		pcie1_switch1_dsp1: pcie@1,0 {
> +			reg = <0x40800 0x0 0x0 0x0 0x0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			device_type = "pci";
> +			ranges;
> +		};
> +
> +		pcie1_switch1_dsp2: pcie@2,0 {
> +			reg = <0x41000 0x0 0x0 0x0 0x0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			device_type = "pci";
> +			ranges;
> +		};
> +
> +	        pcie1_switch1_dsp3: pcie@3,0 {

And so are all three of these

> +			reg = <0x41800 0x0 0x0 0x0 0x0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			ranges;
> +
> +			pcie1_switch1_eth0: pci@0,0 {
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				device_type = "pci";
> +				ranges;
> +			};
> +
> +			pcie1_switch1_eth1: pci@0,1 {

These two are unused as well

[...]

> +		pcie1_switch0_dsp1: pcie@1,0 {

This one is in use

>  			reg = <0x20800 0x0 0x0 0x0 0x0>;
>  			#address-cells = <3>;
>  			#size-cells = <2>;
> @@ -862,7 +862,7 @@ pcie@1,0 {
>  			bus-range = <0x3 0xff>;
>  		};
>  
> -		pcie@2,0 {
> +		pcie1_switch0_dsp2: pcie@2,0 {
>  			reg = <0x21000 0x0 0x0 0x0 0x0>;
>  			#address-cells = <3>;
>  			#size-cells = <2>;
> @@ -872,7 +872,7 @@ pcie@2,0 {
>  			bus-range = <0x4 0xff>;
>  		};
>  
> -		pcie@3,0 {
> +		pcie1_switch0_dsp3: pcie@3,0 {

But these two aren't. Plus the DSP3 seems to be hardwired to eth
so it seems like that won't ever change. DSP2 will understandably
be useful, since any derivative of this mezz could attach more
devices



>  			reg = <0x21800 0x0 0x0 0x0 0x0>;
>  			#address-cells = <3>;
>  			#size-cells = <2>;
> @@ -880,7 +880,7 @@ pcie@3,0 {
>  			ranges;
>  			bus-range = <0x5 0xff>;
>  
> -			pci@0,0 {
> +			pcie1_switch0_eth0: pci@0,0 {
>  				reg = <0x50000 0x0 0x0 0x0 0x0>;
>  				#address-cells = <3>;
>  				#size-cells = <2>;
> @@ -888,7 +888,7 @@ pci@0,0 {
>  				ranges;
>  			};
>  
> -			pci@0,1 {
> +			pcie1_switch0_eth1: pci@0,1 {

These two are again unused

Konrad

