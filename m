Return-Path: <devicetree+bounces-257200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D734AD3C013
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 08:13:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B507D3C4C32
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 07:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E521B381710;
	Tue, 20 Jan 2026 07:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d6uwgG+f";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kWqWs97U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638F22E6CC2
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768892481; cv=none; b=S139QGQkKgcCJfHAfJ0uAdT5kz/O60jh13OU+StyXpOe7YL+I1k2qH6gY/xmFYUkftZOcPPhB8QQ1QUc4tVCRVVAGiw+RulJx9e+Y6uGGTH2uHUsqUCES33GG7s2tAw3bbTlEL2bAeZm65NYYQtazWmzRwY2FjfBg/p38YbAXOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768892481; c=relaxed/simple;
	bh=bGMa/6ddVLfYRJF0rIqLwvjeOCVxfj48Ldcrselv3pk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oHM1nokpfV9eVcmHtBZQ3NlwU3jJSSzdx2KlF6FtjMhntCmVyAXIHsqzqMQEYPzje2HDMxekHX1gL4HdSqRwfqnX1w/NPyOdVZWHgeSf1oojGqCZX8WJh6sC/4HqrxmacwBRpgn3Vzo6aivoOUIwVZ4eU6D+F7KIsqMzz320zFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d6uwgG+f; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kWqWs97U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JKHLcx1661031
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:01:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p2xAUtipZJ+Ss+/MmKgaRxYbW2Pe9wR3jif0xBgZ89s=; b=d6uwgG+fglBm7AlB
	Nzv+pGHgVgJC/xRS0N/12kCBQ+w+eG8qpBdYd1u6xtql7dTjEmxQpkZvFEYWwVii
	5FQVrfrbMbj2P5M3J7rVYBCdcszEMdlvssBmILbvv/RyRRaG5/fbEGravXafw/ZR
	iUdQo+HKIYXSeJX/VzxN1VnfTJ/ntqQUnSUznkrArAM2FjHPpy6uQiXcZeBmaQXE
	BDGm2/Gmx+pZEWQl7bVyDNFhPpdfsbawOg6qzw6SqlwPYyUYGKeWpSN6YT+jvxf/
	qywuJN1w0OBjBZ6hfgpz7xQC/UjnAhBCAbSFMDHNW96zc/l9lJ9N1qi+e5gNQZQe
	43iAQQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjvdtufr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:01:10 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c337375d953so2888196a12.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 23:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768892469; x=1769497269; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p2xAUtipZJ+Ss+/MmKgaRxYbW2Pe9wR3jif0xBgZ89s=;
        b=kWqWs97UZcdX5KsC6qm51R4uuEdUjSmooPzmPRY+mQ5CLAQTNbCnkst+zi/QrHs/Rc
         vG4vjiB74aEo5X/Le1sAoYhkZeTWllFsboKt73Sns71MsyETdzENb7flnzbtF73rektf
         6O24CSurs175yowvfOVpy7e2WbcJ5TyiZ3F3ZZr5fkA/NVfG0ZFzX3a8BOp51m4vZMU6
         +7cgPcbPsYnOUqvj6+aX00t6LhLLk0N/MXNr02FF/0Qfy5GyJhaVk1O/WZQGSQLlg+Eb
         rVp7iUhmAsmuopKLzNadCUWC+Wixr9zQHa0car+LJQPKUdzRdlaG+tR6pQc4UYawTY2e
         KhKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768892469; x=1769497269;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p2xAUtipZJ+Ss+/MmKgaRxYbW2Pe9wR3jif0xBgZ89s=;
        b=ZMrxgxfZmtHrK+ZBLGsOOtfhNrICwyD33wWiiPk4SZQs/fBPSwA8gzyvLwPS5C2Trn
         W0dXgmnooYXPM2TGfcGSdHT5+TGACSia1DAgxoqzI/RIdgmduX46xDMptJi7PI5h3m/M
         Q+LAbEOXnXsxmi4P3yfqUy1/AP8fwGltYCxLzhPCu4+YBap6rpyBdCEqRr2+T6x0xFXv
         jDZAf/a62r8SSS7+iUCcGpBF7XXHiMIiceMfW2+CsViy9gutlrpUzSfltcDniLQ4C3YP
         a3Se3pL6WOACzQYYcsH/x4cD7HIZDg7vNTSBttOFOOzDY8bT2UVtJ0G9GrLVU784gBaY
         yTsA==
X-Forwarded-Encrypted: i=1; AJvYcCVMCeJJ4yj6TzhJX0+SCxzJ3Yfcp/bOxFlQDyclA+/kHlsBKQCVkWLr1DDv6imB1h4tfmN89Sy7y6yy@vger.kernel.org
X-Gm-Message-State: AOJu0YyjahxOrsYC/2+CFuLVST7olL9oZObDbotTrV6lqVN3HNsXD7KC
	mZvVwV3jaEblfy2D19JfULgJH+VlphlV8aQLkzAqthVmO/9aUUgLjHLNb/mCxQGGNZTIyAee+fD
	AKQW1it5Pa2Ccu/l88MMJoVhjKGEcgeGrKxRvS1stS4+TulcClCWrRJ32iCz25iL5cEyzX1LxdZ
	M=
X-Gm-Gg: AY/fxX5r848N6aEAykP6o1sMZeZxSIWOkBCy1bJCtV4vy779h/5tDLIviemCtNoQkhl
	K1LSwQyYWnqpHym6tVddR4PlFtf+NTcy7c2h6Y0KbvKhatDQghX3hlk+q45jPu/u2hyR71YntTe
	6SgIxaSRsodlTL5cX71KPuxskbK6vwfyATq438lgkeNCc7fnj6S9nV9EAmGqP8gZZgTJLDtKitp
	GK2dKhBgr7r+JzylqcoMI0q2bLQaf020AoWkxYAa/sTr74VweRheR3AaHDUge/hthOSZaR5cP8C
	489N6CV9vLV41ovkS94XyYK0au/CP2zgLz3ZT9xQe0LnUjt4VUYtGf/WYT4mGRvT4OK1X3Yg0pZ
	JGwkSLzrh90iWw1/hr3frKqb0EwFTuxuFeTBSCX0gvYFaewmAbjxLkze2vwa9SBw8DMRmXd84DL
	QFj7k=
X-Received: by 2002:a05:6a21:328c:b0:384:d0fc:f517 with SMTP id adf61e73a8af0-38e00d1574emr12171085637.51.1768892468933;
        Mon, 19 Jan 2026 23:01:08 -0800 (PST)
X-Received: by 2002:a05:6a21:328c:b0:384:d0fc:f517 with SMTP id adf61e73a8af0-38e00d1574emr12171038637.51.1768892468396;
        Mon, 19 Jan 2026 23:01:08 -0800 (PST)
Received: from [10.133.33.151] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193dbebasm115232895ad.55.2026.01.19.23.01.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 23:01:08 -0800 (PST)
Message-ID: <32e19d85-3683-4be5-9bbf-6f99ffac9563@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 15:01:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
 <20260116104136.2922032-4-yijie.yang@oss.qualcomm.com>
 <060a29a8-6fe0-4981-9f1f-398eac8adbd0@oss.qualcomm.com>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <060a29a8-6fe0-4981-9f1f-398eac8adbd0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0PXgWYjC3pSHuP1CGlOX7swfedpHQN63
X-Authority-Analysis: v=2.4 cv=U92fzOru c=1 sm=1 tr=0 ts=696f2836 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QzM_0Rd7tq1qCQHlR2cA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: 0PXgWYjC3pSHuP1CGlOX7swfedpHQN63
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA1NyBTYWx0ZWRfX5ao/FX65TR+X
 ofJwyM10qHjhKSL3QTi/4ZI50FwYIDwD8cdRKFskfyNKu3Sdp4IGAc9Em1yY1++Qxc1P2oFsIhN
 H0NgJAubwYq3Xrre9kQcj8mB02VpU9y6pga6hJKGqEcHY2um+CCTrijo4FnyCSTStVhESBKYfB9
 Ctbu0LhKWvY3l8PUICfYMt3xwcv3A73mpAbux9XUlGUkMNXj4oiKiz3yvi2fn517MyVKnT6qUnn
 Aw7nLksmGH7RUarQX8/HsosOEKPWaWpiZiKbionnQJR7gWWxD45pz5E1Yg6zRcywo1s8FcVmdmx
 52PCHG282PxG8HjOsm3ItXn4iqB54SgJmBGEmeaomzpcwgoJmYrIZg4MtpXwKVxiEjwO6Mu789O
 ugivBw1yhPuWwB6MzlFDAn9/TEH7i4k9iGpEPnNisrIX+MZo5MNSR64t6bMevDai6UHq97CE+9M
 jWAg7DFEf16G2SY73xQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_01,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 spamscore=0 bulkscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200057



On 1/19/2026 9:53 PM, Konrad Dybcio wrote:
> On 1/16/26 11:41 AM, YijieYang wrote:
>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>
>> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
>> the Purwa IoT SoM and a carrier board. Together, they form a complete
>> embedded system capable of booting to UART.
>>
>> PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
>> Meanwhile, USB0 bypasses the SBU selector FSUSB42.
>>
>> Make the following peripherals on the carrier board enabled:
>> - UART
>> - On-board regulators
>> - USB Type-C mux
>> - Pinctrl
>> - Embedded USB (EUSB) repeaters
>> - NVMe
>> - pmic-glink
>> - USB DisplayPorts
>> - Bluetooth
>> - WLAN
>> - Audio
>> - PCIe ports for PCIe3 through PCIe6a
>> - TPM
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
> 
> [...]
> 
> 
>> +&spi11 {
>> +	status = "okay";
>> +
>> +	tpm@0 {
>> +		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
>> +		reg = <0>;
>> +		spi-max-frequency = <20000000>;
>> +	};
>> +};
>> +
>>   &smb2360_0 {
>>   	status = "okay";
>>   };
>> @@ -1171,16 +1217,6 @@ &smb2360_2_eusb2_repeater {
>>   	vdd3-supply = <&vreg_l8b_3p0>;
>>   };
>>   
>> -&spi11 {
>> -	status = "okay";
>> -
>> -	tpm@0 {
>> -		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
>> -		reg = <0>;
>> -		spi-max-frequency = <20000000>;
>> -	};
>> -};
> 
> Not sure if anyone commented on this already, please keep it where
> it was (it was properly sorted in the original file), then we're just
> left with the USB changes
> 

Will update.


> Konrad

-- 
Best Regards,
Yijie


