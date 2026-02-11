Return-Path: <devicetree+bounces-264595-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGy0IPIHjGl5fAAAu9opvQ
	(envelope-from <devicetree+bounces-264595-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:39:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B166E121392
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:39:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36C7F301944A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 04:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28D713542CB;
	Wed, 11 Feb 2026 04:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W8C6iAeh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED24A20010A
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 04:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770784751; cv=none; b=sdMY9DtNLvkMw2/Tc7zsbLBHo4Wf4rZQkXTs7W0tE3QOR7Y1841t/x8n4p5lRF2Sqgb/m0g4FNmCuvO80S8cDeGAwUoU0Tf36OXCR7HZTtE3uGbGbH4wK09sFNutYU7GOpWsIfmgH1+WFqZL4mhdCJH7Vo5wa9exGaHsu+vxMhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770784751; c=relaxed/simple;
	bh=GmV3/8os27+VDc7hRFwfdSxvPO0Dri934t1jCbcEIPM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jHOa8ZkS0716xWV8N8bkfM0zm9nTHawr7/qZ+E8fIhhGlbSmC7NTp9wtfQLKoLxzppFxOvZhJX8s93kFPf6q123apITXlt5dB6jpgjsttDo/chO/mCTxl/9yCHd7XPjhz1GwAvmuvgALJ94TfP2owAeBU+bMCeFX7Tv0P4wUdEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W8C6iAeh; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-82318702afbso4444110b3a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 20:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770784749; x=1771389549; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RYskh5BzGqN670gcx9isWJs2ERD0SiYbFu/I54K8Bvo=;
        b=W8C6iAehA8HkoeUvBrOJb8R1TdjC1wexV6EpLvNdIR+PKZSQWmFR+73SUZHS2Co7V6
         J5w9KXkbABUjfWlN/tSrnkBaeunB7iyiR555SE29tS5ZMcPWDE88x8nK4kRsL/+D4iRy
         5H3g/DA1hr/VPONda8AYjYNhqs0hOAsgdHQDuSmxSndJMHuc7sYuNUS6IpBpP9PaLXjz
         7pNQ9Ekd0BIBdkdJWCzY64WDPVbjVqBf/zl/IPSejGscQV9laej2R0lqC+oK9Ug+ax39
         7IQGL9Z0o4nb7sUIL8dDxlQAvp1McDuy/6ci97zhk6GrkGkAuKbqCnRk9yZA3IADj8Oy
         GFYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770784749; x=1771389549;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RYskh5BzGqN670gcx9isWJs2ERD0SiYbFu/I54K8Bvo=;
        b=thrMUd7sLBSPuixtqYUps3WL6u/FiAf3p6ePSax6UXT0rMMPLcPRWzBT2hhTuNybwV
         Rgs26yDuY7kI+v02Ge6k47IZFGW2Rw/P97Qa9BFWsRBkI/P0mrCAP+dLjokHKjGGlOzh
         i5KxHIejrySm6qtVFv1Mi6w6OYidibpIgcebPZ9l5kLZIHSC9mYkQs7/9PQAyjeHGVm+
         3ma0hR6MelMd9RWuQQWIQDbGD2qsA2uQmh6JE4/MCNL+a3x4WNie3hgQs/QpOdd+6iGF
         +mKUWbVKiY4aC1xaWTKpeer97UGMVGkum1iahcTXyFcHN2VD/ytAOuMIfaFKjhRaOoCh
         6nGQ==
X-Forwarded-Encrypted: i=1; AJvYcCU90YEm/sYhsGfYk501NJyWiGj+Egqs/fNbjh5LO1HwHojB+XZdfL7UcR2uueJUnTiRm3bm9tCv9t2Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxswbZuwgFKiQkX3OTnOozmBAa4p80No9DUz6AuBghsfo4DQc4p
	tUb70t/eQ9CVawsLc86k9p4HHSzmPtkhtW88l8hARYHsKZUdsw6gY5md
X-Gm-Gg: AZuq6aKJVY2Dd5s7zPjJGX/vaVOPKWZNVz3GmxZ2t6g4ZsZdieU9TPYXg4oYxx8LwuM
	s+QpUxm6XZOBCfRb/prfYrEgYhg7CpBEkOeZMjmo7s6LYLtR9Mc1Yv6LHu9zPXgnEHkzB+8OKmf
	eUFRIkrRrkDYc5v96IHAZyPGyvI6+ulGm/6rVzShe0ZGFvCUs/MGySEts8nschc5ebKEmVY1xY6
	ptwew8Zlg+ozbR65Q7M7s3zUJIIhy9IvOb6sa8fh+NWoe1O7DrXehfsV7Xrdngg6JgLEnwC826F
	mfqNu/5X9kTGmGBxx+U+uAY91KF1rLdlI6gBc5UGcT3iW/ygz+iCHfbusbmWuke0a3Oyqe/jKlZ
	NSxZQCVNKDxwnPrqi9e42szW+fq/BMbeVXAp5uzSjvjSfezbDMpCiUAqS7fF9t3JqBROL7tcDfs
	9EDwSUJJgzcsXT2O72ftVrU8Vf5Ko8ITkrHGs36LCYk8LO+A==
X-Received: by 2002:a05:6a00:37c4:b0:81f:9b09:ad02 with SMTP id d2e1a72fcca58-8249ae2c08cmr1158819b3a.1.1770784749153;
        Tue, 10 Feb 2026 20:39:09 -0800 (PST)
Received: from [172.16.20.12] ([136.226.253.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e7d78dcsm608232b3a.31.2026.02.10.20.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 20:39:08 -0800 (PST)
Message-ID: <bb726457-84ff-4f37-be65-2ac9e2a37293@gmail.com>
Date: Wed, 11 Feb 2026 10:09:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 3/3] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jie Gan <jie.gan@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260114100043.1310164-1-tessolveupstream@gmail.com>
 <20260114100043.1310164-4-tessolveupstream@gmail.com>
 <5102252a-0f50-4ee9-97b4-a90859a33b2b@oss.qualcomm.com>
 <128a5f86-dd3f-4e5e-a55f-3c8b5993779b@gmail.com>
 <5c5oalpne2xedc42yomtur3lo7vvdyncgs7yd46xw4nvi6pzbd@vcjz3wsyjd3c>
 <2c59e43f-aee1-4ddb-88dc-1bbf6287c926@gmail.com>
 <tvqu2yzmx2ctdrrn24vkrebc6sw2352wej24yuufy4cncrh3jv@rgggoufxwymn>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <tvqu2yzmx2ctdrrn24vkrebc6sw2352wej24yuufy4cncrh3jv@rgggoufxwymn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264595-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NO_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B166E121392
X-Rspamd-Action: no action



On 04-02-2026 08:28, Dmitry Baryshkov wrote:
> On Thu, Jan 29, 2026 at 02:41:25PM +0530, tessolveupstream@gmail.com wrote:
>>
>>
>> On 16-01-2026 13:24, Dmitry Baryshkov wrote:
>>> On Fri, Jan 16, 2026 at 11:25:50AM +0530, tessolveupstream@gmail.com wrote:
>>>>
>>>>
>>>> On 15-01-2026 07:54, Jie Gan wrote:
>>>>>
>>>>>
>>>>> On 1/14/2026 6:00 PM, Sudarshan Shetty wrote:
>>>>>> Add the device tree for the QCS615-based Talos EVK platform. The
>>>>>> platform is composed of a System-on-Module following the SMARC
>>>>>> standard, and a Carrier Board.
>>>>>>
>>>>>> The Carrier Board supports several display configurations, HDMI and
>>>>>> LVDS. Both configurations use the same base hardware, with the display
>>>>>> selection controlled by a DIP switch.
>>>>>>
>>>>>> Use a DTBO file, talos-evk-lvds-auo,g133han01.dtso, which defines an
>>>>>> overlay that disables HDMI and adds LVDS. The DTs file talos-evk
>>>>>> can describe the HDMI display configurations.
>>>>>>
>>>>>> The initial device tree includes support for:
>>>>>> - CPU and memory
>>>>>> - UART
>>>>>> - GPIOs
>>>>>> - Regulators
>>>>>> - PMIC
>>>>>> - Early console
>>>>>> - AT24MAC602 EEPROM
>>>>>> - MCP2515 SPI to CAN
>>>>>> - ADV7535 DSI-to-HDMI bridge
>>>>>> - DisplayPort interface
>>>>>> - SN65DSI84ZXHR DSI-to-LVDS bridge
>>>>>> - Wi-Fi/BT
>>>>>>
>>>
>>>>>> +
>>>>>> +&usb_1 {
>>>>>> +    status = "okay";
>>>>>> +};
>>>>>> +
>>>>>> +&usb_1_dwc3 {
>>>>>> +    dr_mode = "host";
>>>>>> +};
>>>>>> +
>>>>>> +&usb_hsphy_1 {
>>>>>> +    vdd-supply = <&vreg_l5a>;
>>>>>> +    vdda-pll-supply = <&vreg_l12a>;
>>>>>> +    vdda-phy-dpdm-supply = <&vreg_l13a>;
>>>>>> +
>>>>>> +    status = "okay";
>>>>>> +};
>>>>>> +
>>>>>> +&usb_2 {
>>>>>> +    status = "okay";
>>>>>> +};
>>>>>> +
>>>>>> +&usb_2_dwc3 {
>>>>>> +    dr_mode = "host";
>>>>>> +};
>>>>>
>>>>> Both usb devices have been configured to host mode, do we need adb?
>>>>> The adb only work with usb peripheral mode.
>>>>>
>>>>
>>>> This topic was discussed previously, and the fix was implemented 
>>>> based on that discussion.
>>>> For reference, I’m sharing the earlier communication in the 
>>>> links below.
>>>>
>>>> https://lore.kernel.org/all/qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr/T/#meaa464a4e6992b36b5d8d41ddc691ee4ea36b1ce
>>>>
>>>> https://lore.kernel.org/all/20251014120223.1914790-1-tessolveupstream@gmail.com/T/#t
>>>
>>> Neither of these links is relevant to the question.
>>>
>>
>> In our hardware design, the USB0 controller is a USB 3.0-capable 
>> controller whose high‑speed (HS) differential lines are routed through 
>> a mechanical switch.
>>
>> a) During EDL (flashing) mode:
>>    The HS lines are explicitly routed to the Micro‑USB port. 
>>    This allows the SoC to enter "device mode" for firmware flashing.
>>
>> b) After EDL completes (normal operation):
>>    The mechanical switch is driven to route the HS signals to the on‑
>>    board USB 3.0 hub.
>>    The hub connects to four Type-A ports, all designed for host mode 
>>    only.
>>    The Micro-USB connector is now electrically disconnected.
>>
>> Why host-only mode: Once the switch routes to the hub, there's no 
>> electrical path back to the Micro-USB port. The USB controller can 
>> only talk to the hub and its downstream Type-A ports, which are wired 
>> for host mode only. Device mode is physically impossible in this 
>> configuration.
>> Therefore, USB0 must be configured as host-only in the device tree, 
>> since device mode cannot work after the system boots.
>>  
>> The USB1 controller supports USB 2.0 and has its data lines directly 
>> routed to a Type-A connector. This hardware design restricts the 
>> controller to host-only operation, preventing any peripheral/device 
>> mode functionality.
> 
> Please add a comment regarding EDL-mode DIP switch and describe the
> onboard HUB in the DT. Additionally consider adding the USB-peripheral
> overlay, corresponding to the EDL-mode configuration as some labs will
> not trigger the DIP switch at runtime and settle with the
> peripheral-only setting for the USB controller.
> 

Okay, got it. Will take care in the next patch.


