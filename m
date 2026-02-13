Return-Path: <devicetree+bounces-265345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OH7pMnERj2nAHgEAu9opvQ
	(envelope-from <devicetree+bounces-265345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 12:56:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C646135E53
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 12:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C82830A4FE0
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B30FD35D5FB;
	Fri, 13 Feb 2026 11:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SavJVvS+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A+XgabWZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B4E31B82C
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 11:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770983736; cv=none; b=WBYXyhSWMPwi01zu3HZsrAePjQY27ZDttOSshJ7C8co1T0HLjLQugt0piLOEakJHV1uFV6Au3lPMz8+5fYYitjEKZJBA7M21/ZfyZdP8LVXOBfPPJ41qiRZopwpiEvvSZ/avqxR6XCHmutBV/aP4bFHSeLnIZH2+8iCeLk++YV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770983736; c=relaxed/simple;
	bh=sz/axaANDTa8BKdieIycz4ht/o4pjp6rqdiubmQgERg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BBSv7vRPbi5/GauTBL3bFf50RzIrcmndqFq7RReZZnBM2MXoXkkOVD/2C3w5EEo4Tvgwjx9sY9jvdkvVbdMqmBQXeDSPqtREmYD7wK29adljxerw/J44uZbgdckpctAkqExJOZ1mC2CaVnOZhYISAJP9aazeyND0coR+UKQegnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SavJVvS+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A+XgabWZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DB8RFx2093750
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 11:55:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v8sabKoPnoM50c9RRPi9ukR8JerxJG8+uHFtlCWAJ9U=; b=SavJVvS+nWZRN/Yk
	xCaBBxkSTtRUwhv1hCoXKHSRouId7dEYRODH/jZosZkQZfDEfNWw167+3NRaiZ1m
	YNOMVqmV2ubjxQDvVygRAAdF79ZQ6nA01kbiDLmeLNkRBZQo3johPfF/eHyKlLWL
	aOLSXXxqybZzeqqsYpi3t8CKoSr6KdhNyo1fe4EFo9/yG/SgcQxnf5hpWwB+B5HY
	/V73/aX4s+n9xgdAvLLpnrCK8JDkeS89lWzU4/z6QG/BoIVHD8W0lsbK/ujMbEo+
	7TtM9YDShIpfZrbrixQ1rU+x1C3qrXJwKIuLmjNU0iFSyvrKENq3McbZ4iRr2FRa
	VHXpxA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9k6y3jj5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 11:55:26 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c52d37d346dso660455a12.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 03:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770983726; x=1771588526; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v8sabKoPnoM50c9RRPi9ukR8JerxJG8+uHFtlCWAJ9U=;
        b=A+XgabWZSUcgLcz/ubfIb9COtdIXNo4fXOt2pxbInIeAIJEqImLokeKGB/yIp9CRVZ
         wK9IB+GL1LF2nFhHA7GWSwoNUevjJ32vI2VIyfes6QyAOqXxdM2SZWHavdHF7CJhEJGX
         o0Hjuu+h5mFXiRjRLYvsvmoa6DgjC3cTsD3LSEfHcS/4vjsIyNADCDH5zOE5uLHXPnmG
         n98oxxOduk5JsXx7pxLj839EOC/qV3ccx9CxJFP2rDQvYUobAEDIwjZEW2KO3kp4Mjhf
         lBOA+Sn4uPZviGIxBjDDZxLe/A5JfRsSM+CgxueCLa9D2cfqYWWsuMfbdc0zF85m69Kb
         XDVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770983726; x=1771588526;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v8sabKoPnoM50c9RRPi9ukR8JerxJG8+uHFtlCWAJ9U=;
        b=XojvEs6HXDDrEDmoc4AJetDzqKYfnSkpx65C0zTbDOsk1XnvDIifC5MlJFMFn8k+yD
         e1UVVcDoXo4bASLdi/i0sX+UElB2XMb15EkynCSA3pEn94XlgmqUZsaOAPnGHLdVpm9Y
         Yxi/aPmfPxr/zwtOpF5AwRtheHPDK/1OmXBG/hyBD9y5cnwiekTGAmH/aw+iCkh3WKHS
         zhhYUMKa5MqNab9rnABEwk2KyKQlf03/gzaE8qNwPJTFUg0bVhMGC5GN39+peLiZkbNK
         O31XEYCWE8RTkz3WbtrdT6zsG1AfFS1h0FyPqyvTMx4lh3+SlSxYxlvyFQ3H87AIXX9d
         Nsjg==
X-Forwarded-Encrypted: i=1; AJvYcCVanDZN3o1APU6bYrdVP/Oi0Tke2t40PdLdNBAFIhxAuJvyx12ZGUVa/Bzi2L2C6e/qYAlEm4Qlp9FD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4ppeiom2sZODu6Fs0nufdcE8L4vbmUL4Yuqs16AHqJmSUyzuE
	cKgLWQ9TwXGTMInRq0IfrQ7JkoZkeSG4UkeohqfsUpy4rC8c+REDvfpnhGEMguOrI19SNl8AYaS
	P4ywvSv0bdK8yqIDRjUJA+zYt/GB44OfzVm8UGoHuSwZniFYChkOcXsCSte4yG8So
X-Gm-Gg: AZuq6aIC8DPLPChuO+0ZbBu6vx5fUVO9l/mkwZLSbCEMP3VxNoUbsMFOIuBbHHLuxo6
	gtj1CIPDI7qEKb1+UBnuptnG+4VEEO1Vz8nA6PROg0RSYk4oX8L0w5/eB1sSkEzegCDjgnY8Kmq
	ADlqaKhz3JDJ42PR5ybTYStIL2pIZG26POP9TFHEF12+X5E/AL4n8OcoL6V1uVpgXCEtSUA5RVY
	qVintfXAvMSASxd/JxmbaFAfv7yN/xIXSRpd2DsAIRpPcceshlniNhXxJteIkHqzfKh+Gqwe5TC
	pJ8Et2O7DpO82wIPgk/pe9lc0P0YKx+8jid86p2NNY49trbKktQHKE6bjUP7/zuiiUBpC+6KUiW
	Utttn0y1+rZUOXjgUBgLrWnqRZ71xdkSQP17l4rWseMiigw1G9qgQPDsZow==
X-Received: by 2002:a05:6a20:cfac:b0:394:426b:675e with SMTP id adf61e73a8af0-3946c8651b8mr1702511637.39.1770983725728;
        Fri, 13 Feb 2026 03:55:25 -0800 (PST)
X-Received: by 2002:a05:6a20:cfac:b0:394:426b:675e with SMTP id adf61e73a8af0-3946c8651b8mr1702479637.39.1770983725125;
        Fri, 13 Feb 2026 03:55:25 -0800 (PST)
Received: from [10.217.198.130] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e1969f314sm8095313a12.8.2026.02.13.03.55.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 03:55:24 -0800 (PST)
Message-ID: <fa6ce650-42b8-4090-9c80-7f4e4c85a96e@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 17:25:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: pm7250b: Enable Qualcomm BCL device
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
 <20260206-qcom-bcl-hwmon-v1-3-7b426f0b77a1@oss.qualcomm.com>
 <98ad13d8-82d0-4def-917d-b99cf455c5f1@oss.qualcomm.com>
Content-Language: en-US
From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
In-Reply-To: <98ad13d8-82d0-4def-917d-b99cf455c5f1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NsTcssdJ c=1 sm=1 tr=0 ts=698f112e cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=ACex8TXLvSLCdC7mc1oA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA5MSBTYWx0ZWRfX30bTggNW7I0G
 5ocPYW1wmq7U5lHMTc/smY4h6ETmjbLaYdz+JoXi3JtdA3IP+j3Fd0mI4IlGY+gITjCRNg3RuzY
 DU3zKG2qJveWRHDSzO6O8YeTy/iQ9thwJPErkXcfZ7NyRlOBP1epuDNm7vVgH3ibmXKn07vh7WQ
 Tbq2XVlqiKrfosd7MV6c3cV7BC6/PonvNE4kIGMrgCbSpsME0O9lfxF7LRJUAnFaDJ+rFPHhrbe
 P3sDHZTamHYPbbewVvoLurT5q4PDOE5UD1A7EJT3wjHmUnqeOHcIrCulMxxEyWrhq4XF7e6BRcE
 a5Qq+xOG5zSIdiaFv2oc+eq8w+di2xoveZywwMyYbhg3KpOiZu7bgcixB7OqHWDAVTn+HZSfJk7
 S9Pz6EeI7smgyrByVLrCh+3Zjhwpf0kA4ouPJhXyeecp9FsDUPQEpX87GtzirBC695cUYcth3YL
 J0K4X8eVx4pAj4XPvjw==
X-Proofpoint-GUID: McG2kUx8SdGT4jm43KJDHhOj9fKbOcxc
X-Proofpoint-ORIG-GUID: McG2kUx8SdGT4jm43KJDHhOj9fKbOcxc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_02,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130091
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265345-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manaf.pallikunhi@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6C646135E53
X-Rspamd-Action: no action

Hi Konrad,

On 2/6/2026 2:41 PM, Konrad Dybcio wrote:
> On 2/5/26 10:14 PM, Manaf Meethalavalappu Pallikunhi wrote:
>> Enable Qualcomm BCL hardware devicetree binding configuration
>> for pm7250b.
>>
>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/pm7250b.dtsi | 10 ++++++++++
>>   1 file changed, 10 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>> index 0761e6b5fd8d..69ad76831cde 100644
>> --- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>> @@ -202,6 +202,16 @@ pm7250b_gpios: gpio@c000 {
>>   			interrupt-controller;
>>   			#interrupt-cells = <2>;
>>   		};
>> +
>> +		bcl@1d00 {
>> +			compatible = "qcom,pm7250b-bcl", "qcom,bcl-v1";
>> +			reg = <0x1d00>;
>> +			interrupts = <PM7250B_SID 0x1d 0x0 IRQ_TYPE_EDGE_RISING>,
>> +				     <PM7250B_SID 0x1d 0x1 IRQ_TYPE_EDGE_RISING>;
>> +			interrupt-names = "bcl-max-min",
>> +					  "bcl-critical";
> We should strip the "bcl-" prefix, since these interrupts happen
> to be under the bcl device
Ack
>
>> +			overcurrent-thresholds-milliamp = <5500 6000>;
> Is that something that we expect to change between boards, or is
> that an electrical characteristic of the PM7250B?
Yes,  It can change based on battery used for that board as these 
thresholds will be close below battery OCP spec.
It is not based on pmic spec. Max current threshold support for specific 
pmic bcl is taken care in driver pmic data.


Thanks,
Manaf
>
> Konrad

