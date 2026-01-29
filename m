Return-Path: <devicetree+bounces-260786-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UF/aFi0ke2nXBgIAu9opvQ
	(envelope-from <devicetree+bounces-260786-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:11:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B65ADF3C
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 589523003818
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 09:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D588376BE6;
	Thu, 29 Jan 2026 09:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i5OXmsek"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4050C37647A
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 09:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769677864; cv=none; b=Y5y5ce+UafAtuE30rcW9JrvT3u7wUkekSCyDPylcLYO8wlyCuo2tmDDA3lLUlo5ITrRTBs2jWms9JG8mNiWN/DFDGwSvCcMxE3RsH00EE5HpY0fPUt1ndvGcZqtxawrobKMtKG+JW6t6HHgjQNbn+/BNg9h0csA20m4QKKHa2ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769677864; c=relaxed/simple;
	bh=AYOs/LhIpS1QbFW/wJR/DWvbUY+aRCU/JaMpxZiwGvY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oCt7+tTa8TXszNAGsDvj96OIPwY0aFDF0m4jOlOTeYawmBQAl3JzIgnFzg1yxfWtdNNgMB7DxQOsPEa7izAdUG5Io4eqUuOXwm6ZfsKNpfwmoNStQRBQl9W207nC0YzRtahZ2SmS7w7J/UEpkfz2T4LUCToCvm5suC+jBz5e51E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i5OXmsek; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a7b23dd036so3376655ad.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 01:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769677862; x=1770282662; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RsxZVDoaeUk3c8W7bg+2od0RNsPRBc+p9ugPkxBtaco=;
        b=i5OXmsekJSdR2g84RTSWxhvUk6wTInLncSXswQNKB0ZpysJfBA5l/O/CFNbrqRQIGQ
         OvUz4U0a/4iQ9v/mfrz5oJokWqCsps/gFlytwU59V487mP8jrCIN7SOec15aui80vdcA
         FCiQmLQmbhtaPTlr3JXChwpasw0uDzc/pqclQwXGk4V5CaBXN/NzAPI48xBak6afiwCi
         SrQir2DsUhQFCbNkkiPYGzNqmI5YHNAdwZq9sX2lF63QEQa6123gZ7m9rqhYTJzkrIve
         FKXjN+sWGVKbCjbrwNmpY/1ewCLovl65XpvYeWx3tpk/RPUUhmqp2FQBPJMw7nHhSPk+
         HTTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769677862; x=1770282662;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RsxZVDoaeUk3c8W7bg+2od0RNsPRBc+p9ugPkxBtaco=;
        b=jm/u+MXAeAM/nGUpxdht/q9Qadd6+WX3VO/2guta3g5SIfLj967GaqauHTlzTZ5y9C
         Yg79NpT68PjnkRXy6CUKm9QWQTePbUrfERwnTqLLKZPIxtonVq2A7LjwjcPzUMj5f2tU
         jKY/0941pZESZx8WwC3ruj0K4xMbu7TVmsjgSQM+gLz6gt+/AXTKDA1/IO5yQX3lbXtb
         3F3Az0RGDlO8FdjdJc9K2qR6dsbUQKa2AvzoKmXkIihrQCMVFEsCTobKNUD8tW3NJ197
         djYV7eON7MHtaQuHr42clO7j19mOneJlhoVDPQg8dREn+YrKcwiaQyDzX3k5dFxoyNJB
         MHHg==
X-Forwarded-Encrypted: i=1; AJvYcCXvPZl9TDO1+Pe9cYTjrn5ubvFTrmjWfqzuSXqEa1Bm/udZwX1PW9jAdwRSLpMcKQ3BJMfKX7xiVRLX@vger.kernel.org
X-Gm-Message-State: AOJu0YxsWYQ3jeaE81ZQAn3+RfYjB1AQOepzrpA1zl06I0tCzVo2F7S6
	fMbK2/HavhxHesPT4JzhIdgjmyJbWvc3J7KI+RBnHMsDZCaLA2skW+jYOGcC1w==
X-Gm-Gg: AZuq6aKLnrAif+E6/lkEKcLuJD32oexQ8wt2yE9YoApSMYfz2MjKB9rktbMNaO9sa98
	4uGrpQ74qblEM8mrUln6Mg0YwkmlK8RDWfl9XsXvA57oQywSbyCIEMlmq249/7JQGQApWgRo7Si
	RkIO8hSigPmrhUVR+8O9ogWJidD3vsYzmVDPEDea5nlZvvqXkhCkT7K1pHrDNkiAL7Oty2WQOCo
	5krc636X28ecptYaDeWzqkeUmzCOLUnHt10qBBX0g7mNtY+n1kvZvXRGVS3MLZdz1ked+tOZ6C0
	jqfyfd8azIteKJi1JaOesGRXoTymbwotWj4m+pHkfZYjqw9Om0YirULhTmIBf726JOkuk12yoKO
	nwiiKVpeA8I6YAplF0pK75sizlp24URFXBzmlbA2cFGSLJqIhq4v5178PJynTrGDTJYvpY5u15D
	PRVQsG3jG9XW64ySDnJdVgaCrL+UuSFhapyw==
X-Received: by 2002:a17:902:ce8e:b0:29e:a615:f508 with SMTP id d9443c01a7336-2a870e34a96mr80533085ad.28.1769677862376;
        Thu, 29 Jan 2026 01:11:02 -0800 (PST)
Received: from [172.16.20.12] ([136.226.253.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b415b01sm43645235ad.40.2026.01.29.01.10.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 01:11:01 -0800 (PST)
Message-ID: <2c59e43f-aee1-4ddb-88dc-1bbf6287c926@gmail.com>
Date: Thu, 29 Jan 2026 14:41:25 +0530
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
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <5c5oalpne2xedc42yomtur3lo7vvdyncgs7yd46xw4nvi6pzbd@vcjz3wsyjd3c>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-260786-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E0B65ADF3C
X-Rspamd-Action: no action



On 16-01-2026 13:24, Dmitry Baryshkov wrote:
> On Fri, Jan 16, 2026 at 11:25:50AM +0530, tessolveupstream@gmail.com wrote:
>>
>>
>> On 15-01-2026 07:54, Jie Gan wrote:
>>>
>>>
>>> On 1/14/2026 6:00 PM, Sudarshan Shetty wrote:
>>>> Add the device tree for the QCS615-based Talos EVK platform. The
>>>> platform is composed of a System-on-Module following the SMARC
>>>> standard, and a Carrier Board.
>>>>
>>>> The Carrier Board supports several display configurations, HDMI and
>>>> LVDS. Both configurations use the same base hardware, with the display
>>>> selection controlled by a DIP switch.
>>>>
>>>> Use a DTBO file, talos-evk-lvds-auo,g133han01.dtso, which defines an
>>>> overlay that disables HDMI and adds LVDS. The DTs file talos-evk
>>>> can describe the HDMI display configurations.
>>>>
>>>> The initial device tree includes support for:
>>>> - CPU and memory
>>>> - UART
>>>> - GPIOs
>>>> - Regulators
>>>> - PMIC
>>>> - Early console
>>>> - AT24MAC602 EEPROM
>>>> - MCP2515 SPI to CAN
>>>> - ADV7535 DSI-to-HDMI bridge
>>>> - DisplayPort interface
>>>> - SN65DSI84ZXHR DSI-to-LVDS bridge
>>>> - Wi-Fi/BT
>>>>
> 
>>>> +
>>>> +&usb_1 {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>> +&usb_1_dwc3 {
>>>> +    dr_mode = "host";
>>>> +};
>>>> +
>>>> +&usb_hsphy_1 {
>>>> +    vdd-supply = <&vreg_l5a>;
>>>> +    vdda-pll-supply = <&vreg_l12a>;
>>>> +    vdda-phy-dpdm-supply = <&vreg_l13a>;
>>>> +
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>> +&usb_2 {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>> +&usb_2_dwc3 {
>>>> +    dr_mode = "host";
>>>> +};
>>>
>>> Both usb devices have been configured to host mode, do we need adb?
>>> The adb only work with usb peripheral mode.
>>>
>>
>> This topic was discussed previously, and the fix was implemented 
>> based on that discussion.
>> For reference, I’m sharing the earlier communication in the 
>> links below.
>>
>> https://lore.kernel.org/all/qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr/T/#meaa464a4e6992b36b5d8d41ddc691ee4ea36b1ce
>>
>> https://lore.kernel.org/all/20251014120223.1914790-1-tessolveupstream@gmail.com/T/#t
> 
> Neither of these links is relevant to the question.
> 

In our hardware design, the USB0 controller is a USB 3.0-capable 
controller whose high‑speed (HS) differential lines are routed through 
a mechanical switch.

a) During EDL (flashing) mode:
   The HS lines are explicitly routed to the Micro‑USB port. 
   This allows the SoC to enter "device mode" for firmware flashing.

b) After EDL completes (normal operation):
   The mechanical switch is driven to route the HS signals to the on‑
   board USB 3.0 hub.
   The hub connects to four Type-A ports, all designed for host mode 
   only.
   The Micro-USB connector is now electrically disconnected.

Why host-only mode: Once the switch routes to the hub, there's no 
electrical path back to the Micro-USB port. The USB controller can 
only talk to the hub and its downstream Type-A ports, which are wired 
for host mode only. Device mode is physically impossible in this 
configuration.
Therefore, USB0 must be configured as host-only in the device tree, 
since device mode cannot work after the system boots.
 
The USB1 controller supports USB 2.0 and has its data lines directly 
routed to a Type-A connector. This hardware design restricts the 
controller to host-only operation, preventing any peripheral/device 
mode functionality.
> 


