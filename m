Return-Path: <devicetree+bounces-268077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNheJhYYnmmcTQQAu9opvQ
	(envelope-from <devicetree+bounces-268077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 22:28:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1070418CC30
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 22:28:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F3194307C41F
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 21:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92CB433D4F3;
	Tue, 24 Feb 2026 21:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3CBYaaxe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f68.google.com (mail-dl1-f68.google.com [74.125.82.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EA12E2DFB
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 21:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771968530; cv=none; b=Qk9s7VAeI2TuZ9It9SrdjUFRPf49vyLyFfpoB4xAdc9LbBsKardi6aR5v2xqsQK7H/pVueZn7FQTHUZpYxSERHSFaqmJ3c1v70NsXKLWrUXpJrgZA/9qQCIFnLLu3yroz2JySdc7M7QszlyyjXzs5wBOIvrxwE1+5FBCVn20kcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771968530; c=relaxed/simple;
	bh=htTvdtaSYWfRahiauDhevYDzpS+gGQW68oZKpwXdYA8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GxZjS0/DW/8ky9E8gO2sO1QGMv2FTbt9r392HRlkDKTSUvVcw0AZL9rQ43U4hdaQZw9wgUoEym99PsEQA/XRZLq83KrewuDZhoys5Xgt1BJSVhET1zcZeHyF4CoZzqWa7gNWRS652mTuQqUoj9rzx/1f8ZJMa8X2963yqfwSW58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=3CBYaaxe; arc=none smtp.client-ip=74.125.82.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-dl1-f68.google.com with SMTP id a92af1059eb24-1271195d2a7so3508140c88.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1771968528; x=1772573328; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yDayGCTx715bDzSgsBZo6/sacRFjwz6HQIrmD08ogXA=;
        b=3CBYaaxerIG9p2ZCYSHXTQ3uqCQLkFJHwuibcdwVooSAEZCOC5+YALSm47xkLnIUd2
         zHJ8YID7my43p0XoBnOUcHZRXLvdFJk2bva1c0FA+GfFF8DxWzi5yGwuH68libltVMbZ
         tS3U+OtgoUNSVST3q/q+/HChHN0PPQ0roDsdmPR8DNpsUULm7/U37kb6AeW7AMrz2SPz
         inrb+O/rrLvZFw3HZbZQsMRc9xWm9PqtePSGr4PutrbW3s07aKmathtHpEBArvneQV5J
         fKtdI/mP86r+EBL6whcNNVvbs44C3xJscikgQjiKVyH2j8QU9G+ADl4GhK6wGFqy+RQS
         4l2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771968528; x=1772573328;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yDayGCTx715bDzSgsBZo6/sacRFjwz6HQIrmD08ogXA=;
        b=TaJmqHDbe+CgPsnYIiRT7aTShYVklntlPnL+qURCYBcqL/HbkaPzBJMHdLv/zK5h1G
         s5LfbLierXjvdHn3jnU7WYjoVqlES8cUtFxPXKQ7VhR0fcj3ZJMq/9ubUD/1+XtAdLQ+
         zulw1Zdp2W/YlcPeUWM0pvnCoQ2st3PFmHoSk95VKNyqEqhtO/juVhejHSzz9+D5UOVk
         O1upBIZAykGSs1sK9h/60b3B9+cMNO1K2im0+WjsmSVLx0XBgyjlu/xgqwi6u+geP7S7
         5hSymWJxaGhIOTfdIJTi1Jj/L2FZGzYJF4xWMmyjhbv8vKqw1CZwgcglt/RvqgFcdOvU
         888A==
X-Forwarded-Encrypted: i=1; AJvYcCXQyCQXLz8sBnKDA/F/1o/XVtqiheLTw7Q8d/JUothsJv4lNgieDlg3z/4qDNcwzyd/NnDR5sozO5Ya@vger.kernel.org
X-Gm-Message-State: AOJu0YzwKno50HntLI1jh4i7sw65Mx2QRCI0nfyFMoWyoTw/EXTuDEqM
	zK8efB4F9Pgc2l7E9Z6Md1sh0uLOf9PQXDnzFcfeQB6w6sIgnvW0rdtmeweCVBt6Qg==
X-Gm-Gg: AZuq6aLZrxXU+rjARsDQbVYkKtlh7Qg5SVy1hz9s9zI8G+7VnZ70VjjJAZcFr2k6hQz
	L+pr+RSiEjiSXa2JrOsQQxATyGxfO6YU3kcdenFwMCL2xvo6R2MT1HBN43eI/zXTcglKGCkF+jv
	/Y3mg5BDAg1xlN8PlV6U8rQVOqrgOz7Su1hR9Gtuqz44mcZrSsc0NYuL25cN7/M832lxKkgnxy2
	aUMw/3JXjdfBeST2JsC/g8nV1b88RyhXrYekjidOCYXcf2L8hzQRI1nItCVRU3cofqrpu1823wY
	18ZIyNFZrVecg9El1kCvYNYRXE8JGGYAI216yHk6aAXXZ/PfWhY1bN+JSofpGMOCeiWHFnJeC7S
	49XpY1+QyWt41cympWemDc3qS1vkHGZ/Eto6AiAx/5QUKYb8HuvLxfY45rQpeZDTPP+KmQMGhzu
	uc1jlAwIBB3+QdY2lmA4afeGS8w9UB/f/KwiEzJzql0mTirtGRu6FNbcDrH2wLp9pt+FK76a5UO
	+XpkInm/JfcIAsav8hzopaR8w==
X-Received: by 2002:a05:7022:1285:b0:127:33c5:5390 with SMTP id a92af1059eb24-12781e0aac0mr52023c88.11.1771968527891;
        Tue, 24 Feb 2026 13:28:47 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e7c:8:665e:550c:2a20:8866? ([2a00:79e0:2e7c:8:665e:550c:2a20:8866])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af207d6sm12385902c88.5.2026.02.24.13.28.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 13:28:47 -0800 (PST)
Message-ID: <fa253e2f-bdb5-4ad0-9308-ba2f9bb97596@google.com>
Date: Tue, 24 Feb 2026 13:28:39 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: exynos: gs101-pixel-common: add supply and
 regulator properties
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Badhri Jagan Sridharan <badhri@google.com>
References: <20260224-max77759-charger-dts-v1-1-b443545c04aa@google.com>
 <48d5eb8e-834f-4e87-a59c-d05add0dfda7@kernel.org>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <48d5eb8e-834f-4e87-a59c-d05add0dfda7@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268077-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amitsd@google.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.66:email,0.0.0.25:email]
X-Rspamd-Queue-Id: 1070418CC30
X-Rspamd-Action: no action


On 2/23/26 11:01 PM, Krzysztof Kozlowski wrote:
> On 24/02/2026 06:03, Amit Sunil Dhamne via B4 Relay wrote:
>> From: Amit Sunil Dhamne <amitsd@google.com>
>>
>> Add power supply and regulator properties to the MAX77759 pmic. The
>> usb-typec device will reference the regulator provided by the pmic as
>> it supplies vbus to the typec device when operating in power source mode.
>>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> ---
>> This patch depends on the patchset [1].
>> [1] https://lore.kernel.org/all/20260224-max77759-charger-v8-0-eb86bd570e9c@google.com/
>> ---
>>   arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
>> index 93892adaa679..2cc00d34dda8 100644
>> --- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
>> +++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
>> @@ -142,12 +142,13 @@ &hsi2c_12 {
>>   	status = "okay";
>>   	/* TODO: add the devices once drivers exist */
>>   
>> -	usb-typec@25 {
>> +	maxtcpci: usb-typec@25 {
>>   		compatible = "maxim,max77759-tcpci", "maxim,max33359";
>>   		reg = <0x25>;
>>   		interrupts-extended = <&gpa8 2 IRQ_TYPE_LEVEL_LOW>;
>>   		pinctrl-0 = <&typec_int>;
>>   		pinctrl-names = "default";
>> +		vbus-supply = <&chgin_otg_reg>;
>>   
>>   		connector {
>>   			compatible = "usb-c-connector";
>> @@ -236,6 +237,11 @@ pmic@66 {
>>   		interrupt-controller;
>>   		#interrupt-cells = <2>;
>>   
>> +		power-supplies = <&maxtcpci>;
> Missing blank line. Please follow DTS coding style.

Sorry, will fix.


BR,

Amit

>
>> +		chgin_otg_reg: chgin-otg-regulator {
>> +			regulator-name = "chgin-otg";
>> +		};
>> +
>>   		gpio {
>>   			compatible = "maxim,max77759-gpio";
>>   
>>
>> ---
>> base-commit: 8bf22c33e7a172fbc72464f4cc484d23a6b412ba
>> change-id: 20260224-max77759-charger-dts-23493398e77c
>>
>> Best regards,
>
> Best regards,
> Krzysztof

