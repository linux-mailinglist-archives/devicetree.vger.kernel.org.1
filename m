Return-Path: <devicetree+bounces-264963-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHhrNzCgjWnv5QAAu9opvQ
	(envelope-from <devicetree+bounces-264963-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:41:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D18612BF63
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:41:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0F3D308F634
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 294A82E093B;
	Thu, 12 Feb 2026 09:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BLFKUfgL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fg/iScmp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845C52DCC04
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770889251; cv=none; b=W9V6o9x/zJTYKJuSc2w+O+1NJPDFqLlBNRWB1M05X3TZFTYAHN92fcO7Cb/cexUoJSp9sUyHKUJoqwCcIJaOu9vGadyJQ7qg10Q7khIeIPrrsIGvyzPniG6mJXi9fLkpACEEOeZSEsnATqe2tORiSL4hBnIs7oOz4ercYGJazaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770889251; c=relaxed/simple;
	bh=DQisYY74wdl4cGO4QoBMLBavLcu17Hj0tKHIb35OESY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Px+cLkXDbThY66BgRCaT37PK4/Ne2FJEULbc/xxKe5GcbEbpr7vNV7YA0pF7qwqlfzo8kyJxqSVbXZwBDiew3gkwWfb6ajViI87Y6FCCKoI7jUN4g2fdgckcecwMW8OtkRCE9d+JzH7dsrwTzGwsLWG6BpTl9IQSo+0UQu2tBAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BLFKUfgL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fg/iScmp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3RpZk3615924
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:40:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/ojlUGTeTMNltryQw4T5zfpIgsLBD4Mti3f6D/F6k/o=; b=BLFKUfgL9opZH62/
	x5Dj80Kvn7gViUArULZxJVvtcQcWVcolgGG79g2L0Qvocnu8M3V/2Yebvt47mk1f
	Wsx51x6Hwz9rwkzsEo3O5wVmowhKJ+Lh3odbzpxAyBNZe9IGxosTPHemQDLOF46J
	F7ruU85P63vqRKT/prkYZQ3zcQfYhthDtE39hasihwj7IXZyG/hwBqGV/hijX+SK
	KLe3NRN2JsEijj2K2vz4W828D7EWf5ynsULc7ayTHnZNFasQ8xlvIiCd42v7oB5V
	R3PRIKnFFNHd77VVIuLZE8Fs2x/YOZhlbiAfO3cbZhLPaf8OWa/Gfyn8cOyOLDMg
	/nTBjg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8ydn2bec-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:40:47 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c710279d57so263914385a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 01:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770889247; x=1771494047; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ojlUGTeTMNltryQw4T5zfpIgsLBD4Mti3f6D/F6k/o=;
        b=fg/iScmpB+HFMN4boRZnT+ks7kDep7VRaOTFguGYeipXsbmYH1k+9I2Nw64Dr0D+lv
         YTZXrWsdb+lTVa/EryulbWpNcSy+QmlZUbe7NCrbRND4Ke2xhF1uaQJ59jhjeX3q9HWk
         /UYX0FngTGCEe18aqBH1dhslcMND25Qsc+1k0D1Bz6kGoK547JMwY4GoqT0MvFp7AA4Q
         51wcsN3ksgw8n6czplbJtgPRjBy2LFzr7B7Xi0vxFlnZqLCA32H8/gI6RltrlPoKiNhZ
         +UkSTobDc3zm6QWKyLliqa2f38azLgggCKICJjby/5CqX9Nd3c6dX7KhDtv7axq3Tn+3
         E+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770889247; x=1771494047;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ojlUGTeTMNltryQw4T5zfpIgsLBD4Mti3f6D/F6k/o=;
        b=En/j/8VjdX3jn7Phf9txn9PvcmcIqaaOdfIsr3Gtrs3C6mhfqB9BsIVkM1LP8iTz8l
         gtuQIAi3mUCIn4EKGSW3WuaWFyHYnwqkQCb3VWnHHguhL1Zaz9KaU9dTP33io2iakpUc
         FYn1nmJ9nMrseV7j/FZRiSlWltPhWPPHZqaEixJe/QrcjdqkceSrMfhJmb8GkNdhX/VX
         1FuosWpVRmSa+iAr/c4/tEnKCkz9T5blwEluurueT7X4uiVyqm6jxUlhXi4HJKbvDX6l
         GcJzEx/5TmqqyCdEuGWVghaXDh6AmhdVVqoZ1wSCmUC61BDc4ZKh8ekgo7Gv+Bw1yR0U
         +sTw==
X-Forwarded-Encrypted: i=1; AJvYcCWRJdmHlXNeXA4MEFvn3xis5sqy2+XKfrA1wfrEPgzaC2p5HSTi/2pwE2o6ElhL0J5vl80NQM+5tHLd@vger.kernel.org
X-Gm-Message-State: AOJu0Ywnt30n1c8iKOXUu1ZX9q/jMFRVRJUIMdTVTw2gUxgYaILp6At0
	oOBA1aF0FJMb5TH/0HZlg2bvM8eJE3asKkp+DEjgKNF/+bnrDoB/1JTBeJmrlcSAgsMG3LGrvfo
	i+WSuEth5Jn0wGj7ISXbPZlPN5l4ePzkiAPUtV3oslXBzpglxIZs/3687yseFN08j
X-Gm-Gg: AZuq6aIGDTRl22IM2xW8Vupe/IDNQDRNmTKtt7FfGiVvKedDYCuK8UeuG49rr1k42+P
	tdMidzS04hq5WBvDYbf7/oS5/pstL5TRA1HSrlcv4s/wBmWrgpGTwjWWy1rLMPpK2vV/+0s1uN4
	JJFNaPJgmSin4qt5HC0fvMsQxFAZdT+Gi2wg9HAZSqk9z01zVqpeyMmIYir0RnMrigeomETZSBz
	Hcc9yvVpdLk0bBlDgnFdegEhJVEMUbIMsj86nslyW6Bj+s5fnmCGjSijuQYVLgEB5p5B0gq2Pro
	KHyEHcSs/hHRDDMRXag8fzDbWtt7suYbISQWVfbiFQ4t5xh7bvOCQ+YlZjNBn6cXjzmaCih3xJR
	9o4091LdISgJA/N2NWyVkwB3clEMz2Q/Krapty0NeDsEoiCWsy4zgcpbpUKdJRj61PgsiAyU9B2
	H5Ges=
X-Received: by 2002:a05:620a:31a4:b0:8b9:fa81:5282 with SMTP id af79cd13be357-8cb33093755mr203912985a.3.1770889246780;
        Thu, 12 Feb 2026 01:40:46 -0800 (PST)
X-Received: by 2002:a05:620a:31a4:b0:8b9:fa81:5282 with SMTP id af79cd13be357-8cb33093755mr203911285a.3.1770889246270;
        Thu, 12 Feb 2026 01:40:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f93c86e14sm42073066b.52.2026.02.12.01.40.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 01:40:43 -0800 (PST)
Message-ID: <3bdf5c83-bdc8-403b-957a-052afe27b99b@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 10:40:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qrb2210-arduino-imola: describe DSI /
 DP bridge
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Riccardo Mereu <r.mereu@arduino.cc>,
        Martino Facchin <m.facchin@arduino.cc>
References: <20260211-uno-q-anx7625-v1-1-677bbcf63668@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260211-uno-q-anx7625-v1-1-677bbcf63668@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NLHYOk6g c=1 sm=1 tr=0 ts=698da01f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=blDNVBN9pVeKv7Pv1pMA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: YaWjAr2xetrRCunbzRN7eBwlFrDrhUVO
X-Proofpoint-ORIG-GUID: YaWjAr2xetrRCunbzRN7eBwlFrDrhUVO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA3MCBTYWx0ZWRfX1O3FZJ+HF8oQ
 /RD0vEe5caGd+0W4G3DXucgySTFpIyFm4DUOcFigd+0D5AqUjlGuQ4Yvi1P/OzlQ/LYCeals8Ks
 ECHppUKS0i9okkVl5hSQWxueoOWcimhAiKHkm2CcbXE0eCMAMwgIdu/fwQmXLTT6McykvcUji+9
 xz5cykK1JaPjMh9unyvUdgNP3p7noxIpnz4yQ3GFA1rTkGklL3bYc8lEx6+N2tq/CxxrWzv/I/U
 abUzvIHQK7ryae33Yh4vJINrxAMxEyKLIkz97uI2EZRKzj7fbTRv/yybaTpdxVYqDFCKRYg1BR2
 KgQIiaaoJu0Ef6a7jFnrvrdcyf7BRkMCtZGfvRmc3X5QVOPh4fimYdKf4J5TqwpbKKWoYbSkm2G
 rlAJrAngrRBal1wyRS/6yctMSRAOP2dShi1ceGyhznxoNwVqOVXiLpEv7wwpUoVkEiS/8pRj76L
 DNNp9rg1fDosPydk4zw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-264963-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,arduino.cc:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.0:email,0.0.0.58:email,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4D18612BF63
X-Rspamd-Action: no action

On 2/11/26 10:28 AM, Dmitry Baryshkov wrote:
> Aruino Uno-Q uses Analogix ANX7625 DSI-to-DP bridge to convert DSI
> signals to the connected USB-C DisplayPort dongles. Decribe the chip,
> USB-C connector and routing of USB and display signals.
> 
> Co-developed-by: Martino Facchin <m.facchin@arduino.cc>
> Signed-off-by: Martino Facchin <m.facchin@arduino.cc>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

>  #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/usb/pd.h>
>  #include "agatti.dtsi"
>  #include "pm4125.dtsi"
>  
> @@ -109,6 +110,16 @@ multi-led {
>  		leds = <&ledr>, <&ledg>, <&ledb>;
>  	};
>  
> +	vreg_anx_30: regulator-anx-30 {
> +		/* ANX7625 VDD3 */

This comment is only mildly useful given the anx7625 node consumes it
via a reference in "vdd33-supply"

[...]

> +	anx7625: encoder@58 {
> +		compatible = "analogix,anx7625";
> +		reg = <0x58>;
> +		interrupts-extended = <&tlmm 81 IRQ_TYPE_EDGE_FALLING>;
> +		vdd10-supply = <&pm4125_l11>;
> +		vdd18-supply = <&pm4125_l15>;
> +		vdd33-supply = <&vreg_anx_30>;
> +		analogix,audio-enable;
> +		analogix,lane0-swing = /bits/ 8 <0x14 0x54 0x64 0x74>;
> +		analogix,lane1-swing = /bits/ 8 <0x14 0x54 0x64 0x74>;
> +
> +		pinctrl-0 = <&anx7625_int_pin>, <&anx7625_cable_det_pin>;

no mode-orientation/switch?


> +
> +		connector {
> +			compatible = "usb-c-connector";
> +			power-role = "sink";
> +			data-role = "dual";
> +			try-power-role = "sink";
> +
> +			pd-revision = /bits/ 8 <0x03 0x00 0x00 0x00>;
> +			op-sink-microwatt = <15000000>;
> +			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
> +				     PDO_VAR(5000, 20000, 3000)>;

nice!

> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;

Please add a \n between the last prop and the following subnodes

lg otherwise

Konrad

