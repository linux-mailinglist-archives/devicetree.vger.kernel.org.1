Return-Path: <devicetree+bounces-278184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIACLyccvWnG6QIAu9opvQ
	(envelope-from <devicetree+bounces-278184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:06:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1B52D876E
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F1A1D30210CF
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D97E03603C8;
	Fri, 20 Mar 2026 10:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NBS2DpqK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EAC355F3E
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774001026; cv=none; b=pyPgrKB30u1SecT6TXCRcMg3wwdun2BWssPh3619PqlTzO6pnpQqIJWvST73pmMpB+dWbCzaFEYPE9GJPK6IjH8yn3aqm3tNOLaBl9NFsMQ3kt51wPkiaOPmdN4vPlFPuxVvxqpF97GuSfYCcnHmwuh4GLjH6EX4MIvJEVhQjaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774001026; c=relaxed/simple;
	bh=56ptuFV6vKuqQtRYvbY1Sa1x02snZLdIibVK2WtkLD4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XhePaZMQ+nbEKNAZXDhU3fNpqc+UczcSUiUVs6QBLwC3S8S3nJMe4656EQ8h8nwR0M9oWqZJpc7/K9Nok810nAMUeSCBaES5FmAOwopaeyeKIC0Js6ZxlvqVLzcO1958twkO457hyNOR1CFwHciXMjqHWGgE6xbR1suOJBilp4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NBS2DpqK; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-486507134e4so21908155e9.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 03:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774001024; x=1774605824; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8PECkdzxQUdMWnA4pDWLZe22ZFUxdMUPX+0kBZcNa+Q=;
        b=NBS2DpqKvwzvDrt/G6WWQ2lEzIu/q2rwtTeY+WusxH0Q5Yc/U1iW0+chUHILsKfKXw
         t/e0PLsYPq+JxEsRUA6n0Zqce4X3Jjml+T85PkAS+RUL9uqZ4gzm8bseM+DHnB/OD/3F
         eYgAR3VtvgFCWB28xj6euUxfFNyJl4Poe00CWU+NTf+8kIqXU9VNKrEmQTw++eg5f0nI
         h/iY2RhpYyjbIETT7CJJg8ONMC9OVQt+OEjeuxoP7kAY6N83Difz6cFu629BFDEDEoDa
         +iFLRJMNOzr05Bo/cYSah1DIRMU4KthZy23N5fYarUIGzdSCIOaLEeYxYH6ZPoR+EIgR
         fVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774001024; x=1774605824;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8PECkdzxQUdMWnA4pDWLZe22ZFUxdMUPX+0kBZcNa+Q=;
        b=CX2XkaqB6FtuR3x7jPIE1+qwr0SJKTTnxA4fKo9xaDWVK3RGG+cRaJWUSglI1DvFSt
         UQNi3AXyyjiwKn40P+i8UoB0TfGzlbH4wEjiOgQWwhulTUvlVwmtYhcGvcVbbWRGagdH
         Lby2w2jGWPaT+cfNW705o1WIoRMqdS81OOPWB+im1d+dJSQckWgw9x/ITLaHbm7Uhss7
         BLz1tD5bby3+4H7zzLvL+og2gV17ff3DAaEGs4HfjnnHiiWqwPlmqC3uf35YhoCHW6H1
         mkZzhZ6ZpVQPbY81hFWCxqUm63QOd6z7+/Af/vbkg3NBWak70ZS+g70xONDI65WY46Ww
         t0Hw==
X-Forwarded-Encrypted: i=1; AJvYcCXGAv5CfCUsr+NKEC3A4qQpI0Qk3d1DYTTVBg9K+YLIFT//X6erADNB3ZBgrjM7Zo5Whol4Z6S8J21H@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/ayP3uvIA8IAjaCTqvqMo8Q31EzMPZ97jzYJCM1SshGL9qR6k
	hbPj+aG2vzXIz6FJwiCojujqvGdrGXlLervUTY1kFn69mT0qOlLRSEtp1tM6ngent/U=
X-Gm-Gg: ATEYQzzJm9OYECSrjNSr3gSrORXppOdYd6vhffqTd+p4FRKBTf6JaMrqXcdg1mOpMPG
	mLaTI4Y0KGdb2BQrv99rlW7IthpA0ddgpmkzkLIyZJFoEMQ/+d4AgzFP8K1SpEli4KbapphU1xE
	wlXmVhC93j3QfrnELtgkTeYlWVpvAbWDlKaFMR4hhZq2OePy6i8nVy2qwy06v+PmnPRzGHXcVHs
	qkWDYw4DNdbdfmuOVAhVVQ3bB51d6+TIwDwnuIgUDP9ANdQUplf+0KbOdwL4oWOgaPGA79aQ/eH
	HHfs56gQrc76yn4HVmxobN6Iw9ROvr6DvjBuQhoQcGK+duKDvK+meM4GoNq4JlKGyaHa4dRzzbC
	ryUUsmkcVkiQ2KcnyYhBaWP3o+93Kc+R8BVGT5FSE9cVapbiGZxEBCqzj+MKea+tFZ99lNDjlgO
	7/rIMIxAbfvSY+hczRK8T9zof6uz+uSpLB4k0d
X-Received: by 2002:a05:600c:820e:b0:483:7903:c3b1 with SMTP id 5b1f17b1804b1-486fee12c91mr37811065e9.20.1774001023684;
        Fri, 20 Mar 2026 03:03:43 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.207.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff1db4aesm15557435e9.7.2026.03.20.03.03.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 03:03:42 -0700 (PDT)
Message-ID: <90dc434a-42a7-4719-8006-0b141d281ac7@linaro.org>
Date: Fri, 20 Mar 2026 10:03:41 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] usb: typec: qcom: Add support for per port VBUS
 detection
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Alexander Koskovich <akoskovich@pm.me>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260312-qcom-typec-shared-vbus-v2-1-99ed9e500947@pm.me>
 <1fd9048c-b0c0-451a-a6f7-e5474352d118@oss.qualcomm.com>
 <pvmxnx7fmcdli5qoanmo62mmoxd2vslh2ujbka4cfmxyo4hxl6@dueec5hukqi5>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <pvmxnx7fmcdli5qoanmo62mmoxd2vslh2ujbka4cfmxyo4hxl6@dueec5hukqi5>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278184-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pm.me:email]
X-Rspamd-Queue-Id: 2A1B52D876E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 19/03/2026 19:57, Dmitry Baryshkov wrote:
> On Thu, Mar 19, 2026 at 02:26:00PM +0100, Konrad Dybcio wrote:
>> On 3/12/26 7:16 AM, Alexander Koskovich wrote:
>>> This is required for devices (e.g. ASUS ROG Phone 3) where more than
>>> one USB port can act as a sink and both share a single USBIN input on
>>> the PMIC.
>>>
>>> Because the PM8150B uses USBIN to determine VBUS presence, a charger
>>> connected to one port causes the PMIC to falsely detect VBUS on the
>>> other port, preventing it from entering source mode.
>>>
>>> For example, plugging a charger into one port prevents using the other
>>> port for a flash drive.
>>>
>>> Fix this by adding support for the vbus-gpios connector binding so the
>>> driver can use an external GPIO for per-port VBUS presence detection
>>> instead of the shared USBIN register.
>>>
>>> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
>>> ---
>>> Changes in v2:
>>> - Dropped RFC prefix
>>> - Remove redundant vbus-detect-gpios, instead use existing vbus-gpios from usb-connector (Dmitry)
>>> - Updated cover to better describe scenario where this change is relevant
>>> - Update comment for EN_TRY_SRC to make more sense
>>> - Skip vSafe5V poll too not just vSafe0V
>>> - return gpiod_get_value_cansleep (Konrad)
>>> - regmap_update_bits -> regmap_set_bits (Konrad)
>>> - Get vbus-gpios per connector (Konrad)
>>> - Add bracket to if (IS_ERR(pmic_typec_port->vbus_detect_gpio)) (Bryan)
>>> - Link to v1: https://lore.kernel.org/r/20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me
>>> ---
>>>   drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c | 53 +++++++++++++++++++++-
>>>   1 file changed, 52 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
>>> index 8051eaa46991..a8f6687a3522 100644
>>> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
>>> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
>>> @@ -5,6 +5,7 @@
>>>   
>>>   #include <linux/delay.h>
>>>   #include <linux/err.h>
>>> +#include <linux/gpio/consumer.h>
>>>   #include <linux/interrupt.h>
>>>   #include <linux/kernel.h>
>>>   #include <linux/mod_devicetable.h>
>>> @@ -176,6 +177,8 @@ struct pmic_typec_port {
>>>   	bool				vbus_enabled;
>>>   	struct mutex			vbus_lock;		/* VBUS state serialization */
>>>   
>>> +	struct gpio_desc		*vbus_detect_gpio;
>>
>> I'd like for this to include the word 'secondary', since it's not obvious
>> that if an external GPIO is at play, we have two ports connected in this
>> uhh non-standard fashion
>>
>> perhaps just secondary_vbus_detect_gpio
> 
> In theory it can be used even if we have one port.
> 

That's true.

Its quite common in OTG devices to have VBUS detect GPIOs.

---
bod

