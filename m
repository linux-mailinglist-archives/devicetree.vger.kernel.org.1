Return-Path: <devicetree+bounces-223550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B65BB7929
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 18:36:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E85083470D2
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 16:36:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBEB42C21E5;
	Fri,  3 Oct 2025 16:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JGG2VnIR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DFA2C1583
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 16:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759509396; cv=none; b=A/3RxpEpRY19Vb/B4GH+dTlkDlkxLY9ND4DOaHDBA2mWuyQ+/Pw+ka3mOrRaM9DZBe6RGV4LOSsbd4W7SF6tiWl0V/GBZ/BlOPTwXqKBbNxjsv2oU6oFqSX660zmpZrGc3d/EpznrWnoqBYzDl27tE7vXSwCS65iQSl55KZAihQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759509396; c=relaxed/simple;
	bh=ZaijyCJq8RhriFIQ2yguFRQneneiApnJF7GrOU1k4fY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NRLypA2phK/L7PezJOCDrkfb1eu/IFOq9h8kcouMHrBNZ1gUk5p84wjmFnvMjSI7DNdc+Br/lZT0HJ5o13l5WnNhBgUclB+H6cKjJpxJ4AnWF7bbz5SSAD552K39KNY2i0J2D2Dp8Iz8n5E+Ll6LX1/26JMY2Jxfm077X1LFDLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JGG2VnIR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593Bf4fA022686
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 16:36:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QFFx9CZBotui5rMyhpbxkDYfHjf5bD25BY8RnVU5vWA=; b=JGG2VnIR7XTqtlVl
	4IxPMVHIK/X4dPjT47V+B7JtLBInGEUtyQcjwj5PNnwx2Jy3bkfd0UQ6ie7IGu6n
	8NS/Dx2JuD+xZSj+2Wy/vFUsxm9yo2+YnVDsyTE4XmpNN9ipYdcr96Ru9hlDc8wR
	4Mt0q09y1x/4HpJKa8CliFQ1rBTXDPdx2r2WV2Z+8JZtyFbQZumBDRr/bI52wWgj
	Xbi9FsaW4lIZN71RaGgidMcAFXNa3UhDeG7s12PbIkkiK2/QRIgSvvFmz47s5BM7
	Uxw/AW5rAW1fwqsMWeNe6Tt7kwWtm+luOvCQbNPFStewoXpPhpULJiUjuhKVqgJB
	RqqvFA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59nbr8f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 16:36:33 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2699ebc0319so26008125ad.3
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 09:36:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759509393; x=1760114193;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QFFx9CZBotui5rMyhpbxkDYfHjf5bD25BY8RnVU5vWA=;
        b=Myjr+75biCQrJgwUE0L2lERVYMk5/SZSWOAqOMXjE+LfkQ831Zy4o/5ajVHFIIY228
         EHYhm+jqySaui2fdm4kcoZ24KQ/839he+L3hSJ6WS2b0z2wsqjW6ThzHJ4G+F0+Edj79
         MOXZ1tUTZ9qfcI/bJfkXsJGsXrrF5gUuUM76CnhzzqTDNl6FFK35v/4g8s8EQkTMsEf8
         nRh0uNV8Hwnj4E6pr/EXkLT4goG7MZYk9vao5vfiMxH8qvhQOGcR50oditXZzOyyvbHY
         aoaBOUFYtr93gPj/cyzkNDOnxSzUvxAOCmYD0TXPhfJyRIUAI6ad4hA6OCeWzmg+/RM2
         kE1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUPTQjUO1Me/1QBlTqDAfs4RxuAuWDJEHAshWnWboWcnOsme8/vRDDVOvuCgX9eSeGd2yEwpfDBIQjq@vger.kernel.org
X-Gm-Message-State: AOJu0YxJFr3nDIxx56bTGq8SaU6DUB78LCBYz4OiT92R7eG8w4TOcMh+
	LiNslCRUd4fRjpO+XApJhpPscC92iV+pnAgSFXil9saSHoS2s5/TfWrsW3BgsLmuHGylX2yqRyC
	6fq1OUNbyhKynzlQ4YuLBH7QqIGoyh44yao0eDgCpRntUgS7Acr236gY9pd9qbgXw
X-Gm-Gg: ASbGnct1TnNOUoSMuM/oCLiE4+KoueMb5xBH0MHaYZGAbS3BjNbgv13vl8dPkOlpsoJ
	bzPgnIQ4VdFpem85DRs2C0YbQsLX1ikIBXkZMfxpjD9pk/d4DmnspAIAH8cpwSFk0I3CCdD0Awr
	jRG3ym48SrtrLZ1r2meiazY2+vaYhGxiurt4zhDSz2LVhPz+BBLsyFbvioP/kmIJYdzZkHMBe7B
	usTgAC1G8Oq/d/+9dhLL+R3+Xg3PtGKYj1rLfz53EzhJilnaySrUtXxkVJ9xmgvSo26sEKvLY85
	+mFKUT064Np68HOEn0DZMJeA7Q8Iu5T8B68BqiMEhh099WgjGGbXwagsY4gvJ5ASu73CfaJEoVL
	G77w=
X-Received: by 2002:a17:903:1ae8:b0:27d:69bd:cc65 with SMTP id d9443c01a7336-28e9a64897cmr46059325ad.45.1759509392635;
        Fri, 03 Oct 2025 09:36:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJKibX9WYsF7u8gjX03v+K3SueAafEPiiU1G1b/DGIlI/MZLepk+3L3tyJUhRRTfutSX8MKQ==
X-Received: by 2002:a17:903:1ae8:b0:27d:69bd:cc65 with SMTP id d9443c01a7336-28e9a64897cmr46058975ad.45.1759509392120;
        Fri, 03 Oct 2025 09:36:32 -0700 (PDT)
Received: from [192.168.1.3] ([223.230.61.38])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1b878bsm54868735ad.81.2025.10.03.09.36.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 09:36:31 -0700 (PDT)
Message-ID: <b1698759-ef46-43c2-9e86-4bfe3736f731@oss.qualcomm.com>
Date: Fri, 3 Oct 2025 22:06:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Add OTG support for primary
 USB controller
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20251002172946.589061-1-krishna.kurapati@oss.qualcomm.com>
 <ee0adfa3-f042-4d2a-adf0-2c5d84d79cd8@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <ee0adfa3-f042-4d2a-adf0-2c5d84d79cd8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PKXa7GjKMNVBOkqWDrn9Sl3SymUEx9-E
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68dffb92 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=QA6PZsKgKftjOHn1obVSzQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Hw8d4qyt-kRrifida1AA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: PKXa7GjKMNVBOkqWDrn9Sl3SymUEx9-E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX1xWc8UhJxZuR
 3p6ZUo2X2NR4eirk1clrF8RxqWnWaUPArbTLv9Pu0R+jLcCtJxEJfb7WDJJEoaMIYSUf4bE46bn
 R7kIrZ4aRA6eFq8rhJg171U8S09rWOfUa3qCSH5gm5wKY4gE8w0tcgHNwSocTI/Hhl8my/6kbOj
 ia9685X7t4j6cUBkaEXBrkB1s05u4Nrh6yWWgs6hvIgoyZ1xERR2g+zUWdfcgejmfRHgDtniG54
 zZxKvachhc2m6lkPsxdYu8/yG6wURm2pHFudTbgDZMyyEYh8di/FVMGA8/HcftMZa8OsmhHnyW9
 u2Bqrge3g8AdQNhVgb0pjcrAnAyNtdbTZpjr+2CzCOOywaUzDjy52id//oO4wL4UxdWZPDxF0kh
 ip4soydU1BLb+wPG36y8JV4aaGMRsQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_05,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001



On 10/3/2025 6:57 PM, Konrad Dybcio wrote:
> On 10/2/25 7:29 PM, Krishna Kurapati wrote:
>> Enable OTG support for primary USB controller on EVK Platform. Add
>> HD3SS3220 Type-C port controller present between Type-C port and SoC
>> that provides role switch notifications to controller.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>> Link to driver and binding changes:
>> https://lore.kernel.org/all/20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com/
>>
>>   arch/arm64/boot/dts/qcom/lemans-evk.dts | 122 +++++++++++++++++++++++-
>>   1 file changed, 121 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
>> index c7dc9b8f4457..0b6d8d2d19d6 100644
>> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
>> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
>> @@ -37,6 +37,32 @@ chosen {
>>   		stdout-path = "serial0:115200n8";
>>   	};
>>   
>> +	connector0 {
>> +		compatible = "usb-c-connector";
>> +		label = "USB0-Type-C";
> 
> Are there other, non-type-C ports labeled USB0 onboard?
> 

There is another Type-C port connected to secondary controller.
There is one Micro USB Port connected to tertiary controller.

>> +		data-role = "dual";
> 
> power-role = "xxx"
> 

ACK. Will add it.

> [...]
> 
>> +	vbus_supply_regulator_0: vbus-supply-regulator-0 {
> 
> the suffix suggests there are going to be more - is that the case?
> 

The second Typec port would have another connector added. So another 
vbus node would be added.

> [...]
> 
>>   &usb_0 {
>> -	dr_mode = "peripheral";
>> +	dr_mode = "otg";
> 
> otg is default, you can probably drop it
> 

ACK.

Regards,
Krishna,

