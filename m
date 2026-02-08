Return-Path: <devicetree+bounces-263691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id B9o9NziKiGlbqwQAu9opvQ
	(envelope-from <devicetree+bounces-263691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 14:06:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C54108B05
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 14:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E6C963003618
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 13:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 020FF26B764;
	Sun,  8 Feb 2026 13:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J7EhQkTh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97DBB245029
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 13:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770555954; cv=none; b=sQ7FpNt66BVAuDXPo90Dv05M13Yoo50r5VapV8WR+oABxMkhvJJAVBx3zPZOJjFD5npiyiAJyeWBqLa2Prt2qinOLr5+FbtqQ+k/FxgeJEz03ekhv6jC3CL5rGrmyBZBmBXcYqEh3A2H3n+FE7ohJgqryIB6bf8jEekJQhQgMXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770555954; c=relaxed/simple;
	bh=osT0EUva0gXZ1pK88EukUzwSiu7f4mThiV/KwigTGzQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LkseUiRZ2SapQ19qIFxgyZ1qL8r/0k2Zqp4YetK99+J1Y4l8M1aI0Xn5QDEn0ctSh9cxI21oB/u6E3zv6AzKZXC1hfGg9dg2ATwNKMmw3SC7VuRQAVzjAJlwSDEZ8mbFYgzR98uzzScVG04avAeO2pFDOngYNJZIj9Kz6njZIe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J7EhQkTh; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-47ee3a63300so39467875e9.2
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 05:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770555953; x=1771160753; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S6ZaHSw9LpRz01vg6acbUDvWM+cc8+yuVQwbsTXMnoc=;
        b=J7EhQkThA2l+rof3AOzI/crRVbSKPsQ3H1oU5Cl77W8vHcmN64O4AW36/L0bBRuYao
         QA1NJCRLmSI7GzB51Sz1funRAp2CG3svzIxhcwGgnGFkx51hK+drRRm6aEagZYEZvBh8
         FgoJFbogl6kj7vZ88/Qg+r2GfszxFt2Eh5YPT7L2rZbtll8h5oEOuJT2pWOQuBX5dniJ
         W+3ZgdEuSqtruad4O3g75HBhtOWYQFXCfUzp9oyaGfkpmpEyDhmgEvNNSulny1rj5vd3
         xlLpRusLQNtvNGtiDwAr6zWXveOzhbRNtCmvfGKLeQugIS1CWKAk/6BdjmBR/a4ZFE4A
         TzTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770555953; x=1771160753;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S6ZaHSw9LpRz01vg6acbUDvWM+cc8+yuVQwbsTXMnoc=;
        b=MD1yNXCeIzBKYzhuYK/PDrFnHwu9CI4kVDffcCWAZrwrb4kC1DrP42jIkiwQf1djPc
         uoz7xSZ+j8lqc63t7gVncG8AHXe1tpvoOR4ACJ49J3NgGvM63uppWoNdIz5ENBoculjz
         yp0aDQ9T1a3z4MRi2ppGpIKWNoguUF3Kob/4WIubj3e436Gu0a9xAo0lGauAFskJ9zxW
         YOnDq7W8Bw/2nb4xL6IRJA3TMtruiu8nRvi3Pvi2Bywcvfo0qKfJzXIpFdvjmlEpBp/k
         AN3P55Qn2AZvlD9McJShS67yrm4uFgi23Z8nqTa2v1HFKvh9jg1RmmPobGHsw6nyD71E
         L8yg==
X-Forwarded-Encrypted: i=1; AJvYcCUgcxp2wrpeSKQgxrKERa6dzqL/mELysDs4gNwza4mA/xqffxauTwYuoTTcfbVFyisBSWgwVxDedyHZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzRqdU/58n5UyNv8jCoVIo3z7XYLZZjqUillpYfogMPwG3AGxx2
	QNmzb4NXpy9mR37LabZuXeYvMzO72ylgms5BPt+JV/+i4nyvA9lajgwQ
X-Gm-Gg: AZuq6aIFBX8arsfHemS1j75FQE5amFvWOLi2E/s+3mU5kr9FxUddQZHi7X2YSibtFwp
	syAe3RT1pt10W8S5cmwzQKigbfAttRc28qP4bfccyTF+fcSU9pMm6+Fe0x4m8fWVZXdIXt/OpVD
	eTFG/UJHXiR/Z2QG8RenQl9/aS9MH2UwNAOkkoDx9jtpE45wq9+/Vvqh5pD9f6ZjMK57vXfHtb1
	4cQKHTutFgJmUOWz4n8s3f6bRDjmVNdY1trE1CuspcsBMHucHkS0mh0O/36pghKPbsYP/T8qql6
	SAzLheGHWVYpTaJmF8/wxNAkwQWVxA3+Qm7CKgaSJ2cswvHqbwK12wMB+aYiINGYrn7wyriXSsE
	/xRkzugJ/tZlid0RYiMjnPjtrci9PqfO7zEvNlvQ0tXsX3S/zTdh0aGbaVglTEB/LjWoDGIA+Yu
	5jxUtlN/Qj1d8IKsjS3aMgqFw=
X-Received: by 2002:a05:600c:4f54:b0:47d:403e:9cd5 with SMTP id 5b1f17b1804b1-4832020df4emr103964445e9.11.1770555952781;
        Sun, 08 Feb 2026 05:05:52 -0800 (PST)
Received: from [192.168.0.131] ([194.183.54.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296b2110sm19201164f8f.3.2026.02.08.05.05.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Feb 2026 05:05:52 -0800 (PST)
Message-ID: <0033b0b2-1eb3-4486-abe4-62d25f10b22c@gmail.com>
Date: Sun, 8 Feb 2026 14:05:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/12] dt-bindings: leds: document Samsung S2M series
 PMIC RGB LED device
To: Kaustabh Chakraborty <kauschluss@disroot.org>,
 Rob Herring <robh@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Sebastian Reichel <sre@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20260126-s2mu005-pmic-v2-0-78f1a75f547a@disroot.org>
 <20260126-s2mu005-pmic-v2-2-78f1a75f547a@disroot.org>
 <20260206133837.GA157817-robh@kernel.org>
 <DG7XJ6T9I7HU.1UVHH2QWX31O1@disroot.org>
Content-Language: en-US
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
In-Reply-To: <DG7XJ6T9I7HU.1UVHH2QWX31O1@disroot.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263691-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacekanaszewski@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 68C54108B05
X-Rspamd-Action: no action

Hi Kaustabh,

On 2/6/26 14:56, Kaustabh Chakraborty wrote:
> On 2026-02-06 07:38 -06:00, Rob Herring wrote:
>> On Mon, Jan 26, 2026 at 12:37:09AM +0530, Kaustabh Chakraborty wrote:
>>> Certain Samsung S2M series PMICs have a three-channel LED device with
>>> independent brightness control for each channel, typically used as
>>> status indicators in mobile phones. Document the devicetree schema from
>>> this device.
>>>
>>> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
>>> ---
>>>   .../bindings/leds/samsung,s2mu005-rgb.yaml         | 34 ++++++++++++++++++++++
>>>   1 file changed, 34 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/leds/samsung,s2mu005-rgb.yaml b/Documentation/devicetree/bindings/leds/samsung,s2mu005-rgb.yaml
>>> new file mode 100644
>>> index 0000000000000..6806b6d869ff7
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/leds/samsung,s2mu005-rgb.yaml
>>> @@ -0,0 +1,34 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/leds/samsung,s2mu005-rgb.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: RGB LED Controller for Samsung S2M series PMICs
>>> +
>>> +maintainers:
>>> +  - Kaustabh Chakraborty <kauschluss@disroot.org>
>>> +
>>> +description: |
>>> +  The Samsung S2M series PMIC RGB LED is a three-channel LED device with
>>> +  8-bit brightness control for each channel, typically used as status
>>> +  indicators in mobile phones.
>>> +
>>> +  This is a part of device tree bindings for S2M and S5M family of Power
>>> +  Management IC (PMIC).
>>> +
>>> +  See also Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml for
>>> +  additional information and example.
>>> +
>>> +allOf:
>>> +  - $ref: common.yaml#
>>
>> This looks a bit lacking. Don't you need 3 child nodes for each or
>> reference to the multi-color schema?
> 
> 	rgb {
> 		compatible = "samsung,s2mu005-rgb";
> 		label = "notification:rgb:indicator";
> 		color = <LED_COLOR_ID_RGB>;
> 		function = LED_FUNCTION_INDICATOR;
> 		linux,default-trigger = "pattern";
> 	};

Having label together with color and function doesn't make sense.
Please read label documentation in [0].

[0] Documentation/devicetree/bindings/leds/common.yaml

-- 
Best regards,
Jacek Anaszewski


