Return-Path: <devicetree+bounces-217247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E321B571CE
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:43:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C05E1885306
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 018EF2D6E74;
	Mon, 15 Sep 2025 07:43:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com [54.254.200.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504C92D6E67
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.128
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757922210; cv=none; b=Crkql57o70v5cm0Q3evA1c20Qz7ydnE/LzjqTKHcqR9qJfClKpzU6r8fEwuLxBwE1Srh2xM7ceGKVfWWn8qTFEnYrPcPyy97ogZJur+putaJu5rbX8cbtdmJ4vhMGJGhJc/0FH5uX5HFZj35r5oUnAGA2fooArdLawKGDjHhDCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757922210; c=relaxed/simple;
	bh=ggQUGLC8JTmMpWJqdkIhB62AvhBLfqcOms9LrrS7BiU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RoOtuQQX0BybpL2yqu19Jjcej+5cprX+keBeZKYqtGjmAB1jxJ79tkRyUM8aFhOr/q8nUnO75Q92puOLM12VfkDNJWR5CSvx3uPQRwHeLt9Znc6QxLQ+pehwPhZkCt2HiyX0rnF9wSJkvXn8uMS/7YTLOsafiAB+QU4n5vSu3V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1757922169ta20c0c63
X-QQ-Originating-IP: QRDqi4pNaU/sJUftpijW7H04pC9TQ/4M0p4TfS49pf8=
Received: from [127.0.0.1] ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 15 Sep 2025 15:42:47 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17166322424909041935
Message-ID: <CC5FA2116C20A69E+a2b123b5-1b78-444e-a886-3d3beb6e0ead@radxa.com>
Date: Mon, 15 Sep 2025 15:42:47 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH DNM v2 5/5] arm64: dts: qcom: qcs6490-radxa-dragon-q6a:
 Enable USB 3.0 and HDMI ports
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>,
 Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
 Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250914-radxa-dragon-q6a-v2-0-045f7e92b3bb@radxa.com>
 <20250914-radxa-dragon-q6a-v2-5-045f7e92b3bb@radxa.com>
 <b3c169b5-607c-40ae-9ca1-0977b6f526c2@oss.qualcomm.com>
Content-Language: en-US
From: Xilin Wu <sophon@radxa.com>
In-Reply-To: <b3c169b5-607c-40ae-9ca1-0977b6f526c2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NRN3UPsLzYKVJIVdz3PuG+yYunbdHt7BxOwAl7XlyylfCayDL/bbpBg5
	c1zp6UUQUiaORqcisAkHQep9xpFkz7cc7X5/hLC9vGSot2WTnV+53Odx3c5fsry8Sp90/hH
	k/ouyDO6b5COy+5HVl+DxcljBjLJkjdgBJmJeIqTKvfZhAPM01J7HVkUzdRAI0hrlOzMyFu
	oDJ9L8gYkr/MCJFSMy3mvx6SKxwbpz2KAm13/hgQrGzvlh9Wdd7nRWNe7EbGHQ5ILfvS1N4
	vcjTMIOleH2/kbWsmjsNF/KRMxsnOXPG1do10hoTMozzDUz57QMpUcvSL1gLB23iqlPPIT3
	+OJ9RZGCMeYttvYxLK7PRJ8C7mVd9Uj4GaBMiyAR9iZONuOOruwvXsaP++9XJdXou+oKrRp
	N0MYmnV69dmNzXpEB2CY8P0I8AACo8lk+S9wLbC9lpLMgEq3HndfdE9P2yJSlOiG8ca/OrL
	R5DrZKGiqGfe3p8+X7Ubv0hPtziDGRNsKDfHEqAZ5icpxa2GE6L4/UKE6rLmmHdlcpwqgxB
	r/aqlr/Kj8mSl8bDkicie94XdEgksFvKQLe7vK2IsELYBMV/1UPjTWPDlKXehr5mffAN7qV
	KdL596N8Y23jQWCXnuXq8OD8uJc7TUHbDgH/G7LJllUDEAfP9AP2KivKDqnSVtEFjmsp3je
	Rajagw+xXTZMOtvdfdMd3OBKfJaYBcy3trjU3ZzqC2j9X0sawM6HtBe2mY3kQJKJuOlAwAX
	OVOnNr0iDcsdPytYleDLMG4n8MQW24sGMkuVzw9D22ZYEBmpSQJvYyYsLCRL0//yknKmMbF
	scN/6EzfxZFfnaw1dyqO0IeKoCTjcQ8Y68rbEQb5AwVGifTLH2xDKtenwxOd8JWp1BuQTXj
	BQHa3zEfvbIFzlXyzn4YnIP8PBRE2obJ8v/kHOaIEa+i+SzFNIuWKah+NiaiJJDkTyynPnF
	tjEa5+x5lqymlpLri37+Cpdq1I9glYmEZQmVtGiOQvHoLDl0wsH7FZMfDZckjKRPHa/EKEs
	rlTMCcriUoZ1rH9UC9I2l2kdyqJvvXDEdF9z9ej86fKkJxo2bI
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

On 9/15/2025 3:27 PM, Konrad Dybcio wrote:
> On 9/14/25 5:57 PM, Xilin Wu wrote:
>> This board doesn't feature a regular Type-C port. The usb_1_qmpphy's
>> RX1/TX1 pair is statically connected to the USB-A port, while its RX0/TX0
>> pair is connected to the RA620 DP-to-HDMI bridge.
>>
>> Add and enable the nodes for the features to work.
>>
>> Signed-off-by: Xilin Wu <sophon@radxa.com>
>>
>> ---
>>
>> This change depends on the following patch series:
>> https://lore.kernel.org/all/20250908-topic-x1e80100-hdmi-v3-4-c53b0f2bc2fb@linaro.org/
>> ---
>>   .../boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts     | 152 +++++++++++++++++++++
>>   1 file changed, 152 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>> index 3bf85d68c97891db1f1f0b84fb5649803948e06f..12bc9a0fcfbfeaabf6ede351f96c61193a8261c0 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>> @@ -78,6 +78,71 @@ chosen {
>>   		stdout-path = "serial0:115200n8";
>>   	};
>>   
>> +	usb3_con: connector {
>> +		compatible = "usb-a-connector";
> 
> Looking at https://docs.radxa.com/en/dragon/q6a, I see two of these.
> 
> I suppose there's a (dumb) hub inbetween - check sdm850-lenovo-yoga-c630
> for reference if that's the case
> 
> Konrad
> 

There are actually four USB-A ports, but only one of them is USB 3.0, 
and is directly connected to the SoC.

The other three USB 2.0 ports are connected to an always-on USB hub, 
which is then connected to the second USB controller.

-- 
Best regards,
Xilin Wu <sophon@radxa.com>

