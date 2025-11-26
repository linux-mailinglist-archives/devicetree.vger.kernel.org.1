Return-Path: <devicetree+bounces-242196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AB8C87D4B
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 03:32:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CA6253549DC
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 02:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86633308F3E;
	Wed, 26 Nov 2025 02:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="txpuY2ZM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B356A230BEC
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 02:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764124368; cv=none; b=b+M3vFy6eTb96NRRFd4WN89oENTFnLjfZCGIw6bZEHFNMWNxMy1k8HBIVWNeSBjdhgOT3R6Fe5ki4QpwIFoMwm0P/AQ2EOXf0SkU6C4nB7gTotLeYZnTPqG3jXtpu4D6lsVE9j5cVySrNHSXHJKx/0l4lxPJ6Fixifd6CSbaIy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764124368; c=relaxed/simple;
	bh=pQngsHEG4NnfhIZkLQVe7DkTOMOLWnWJE7Wzcaz5SsA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AEV9/+7wSQ+8iVIdlo7c56KMsY2VNsM/racNaPO3wpfzu1e5M/tQXaDrJqllTZe3rIXWUJ3ebv0E9BuhdjitjsYFPdwqBlmZal2BT41uw+sIqff2S9GbO7gBw7kW+uJH0LLKTBL5SVyR1sJQ6ST/JeMMQJ3UXT2kuAypkwemVMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=txpuY2ZM; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-343dfb673a8so6092061a91.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 18:32:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764124366; x=1764729166; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=viQFfejLa2fvgnA/CMY2Ia3y/w3OWlv3mFzKSwgxerg=;
        b=txpuY2ZMijKoio/0XlYRGtLMXO8CeXuhH71iJmqTT8hVorqT/OQbenHQX4Mv0YNVwW
         5yCrpb5hJB5fHau3Iba1QdZa6EKnvNLE6nmT0EkX9zTRLBuSKEPMQWcbkntkR7WNlY9v
         UGf7scEjRGqsFCiIqYEkE7bVReEOEhwQVlZM0sfrpJ3p7RiUg0SE7QVmEMkfPuJQmt1w
         T8nKCyNlCPJwP+vh9LR7LNHT4a9wgbHuNWWRDKa9TzqOaxQe29ds0zSlGhdXXEvYNRMH
         I+K6CcDAYvVjTNu2RBIdyOLjcuNDk0AHoO76ZHVnV7vTDw1kOXCrAzWcHYffdEMZXXsQ
         qvwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764124366; x=1764729166;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=viQFfejLa2fvgnA/CMY2Ia3y/w3OWlv3mFzKSwgxerg=;
        b=OZRmRPMNP4e5w9pOGIpVKjZtAsqb2S6BdGeXGX1LfKw4XrD40D8KoEtFjxqvqNP96e
         5HeOSTVvfeo5kA2kbXzKlbBt7c1i6v0JaurTvXiDIYplfZVHEYjzzLgrWPo0hjIL/E4d
         HI10r0ucCUNbh8enln6O7G6jUROCmWVRNV6VbKLrfezUkbXiMCUQnyvraaUuNHkvQURg
         U++Nwuba9K1VJfT587uBZf77eV9UQkKE7mlBGAJwQSZT/cL5H8ZIhCXVwvyq0gExS8gj
         hmQINPZCYqf3/cemTmXsZ6LviQGQs18SL2+8VxExww/92fFH/lJGECsPVA00u0ehi74N
         lykw==
X-Forwarded-Encrypted: i=1; AJvYcCWmCRZXsKcC3XWK1A5JDA0fY9+fpLeifjwsQBZp46hnaSUcOcqMT4M/XH3S6YSRNPWuZbyKzhvz9IGc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6XR3YcnbWNL2b7SIlRd3a+R+qH8lRWpAVlkLdEhWBzBJEwuXN
	MNoIK7gpGrQ2/c7P43kj0U/wkVFFA1inQljcWdvdKoCuQLIqs2BrCNXFcbIuaKzAJA==
X-Gm-Gg: ASbGnct2SaZPuEv87y3Za9ZPz90V2O2MigCWhq1RlamMCiktC0n5SjIjv2wybcTVfd8
	KgNwm5CAePM/IXwNLzOPIhoSnc3XiSWXeUcqmU+VvKX6axRnGq0COp3BRUL0scJtKkiyoBSKSeW
	spTkM2esWb6APdpBbVz3yEVbJuN1FuTgSByeP3bxZnVSwPlr2PdujsjLphrk8lsipWPyeRDnYl3
	6U/33Vjge/OvK6HGp32wgw+lbd4zlbLczJUmHn3WOtAw5jkisYWs2L5/wj2ykcNrffZEt+38AII
	K1xi73JyAOot+hAaIWEQ3Suu5O7JsEK5tAdDgDrVONGsOKW3dgxEngsbXA42msTenxpHuRW23XI
	9+2CqOifqXyR1tr7QEDwSp4R8KCkhLgpXeLDQQ2TyOMpxFkLSAt/P5MzoGgloF2gLNaZSWi6cZi
	HuXAJhslYM0J9lhaZry3LHu6mtY8mGTGRXLBaueCnZdUi1WyNq8cLq0x0KY/li9LfVB3FOHLzzk
	0IOe6yg/YcQlA==
X-Google-Smtp-Source: AGHT+IGD1s0jwsigC9CKjP4TkneuimTCZulkIKuNhVDm4i5DPzY9T5r6E8+KK5g9yvP0crM19wwRsw==
X-Received: by 2002:a05:7300:230e:b0:2a4:3593:645c with SMTP id 5a478bee46e88-2a71910598amr11369897eec.12.1764124365326;
        Tue, 25 Nov 2025 18:32:45 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e7c:8:c98d:9e96:d0be:bc30? ([2a00:79e0:2e7c:8:c98d:9e96:d0be:bc30])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93e6dbc8sm91444566c88.10.2025.11.25.18.32.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 18:32:44 -0800 (PST)
Message-ID: <0a43b5a2-dc2f-402a-8ec7-1d5c88602ffc@google.com>
Date: Tue, 25 Nov 2025 18:32:43 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] usb: typec: tcpm/tcpci_maxim: deprecate WAR for
 setting charger mode
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 RD Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
References: <20251123-max77759-charger-v1-0-6b2e4b8f7f54@google.com>
 <20251123-max77759-charger-v1-6-6b2e4b8f7f54@google.com>
 <9cad7b42dbfea351fb3b708736bf6f6715bcf694.camel@linaro.org>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <9cad7b42dbfea351fb3b708736bf6f6715bcf694.camel@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 11/24/25 1:09 AM, André Draszik wrote:
> Hi Amit,
>
> On Sun, 2025-11-23 at 08:35 +0000, Amit Sunil Dhamne via B4 Relay wrote:
>> From: Amit Sunil Dhamne <amitsd@google.com>
>>
>> TCPCI maxim driver directly writes to the charger's register space to
>> set charger mode depending on the power role. As MAX77759 chg driver
>> exists, this WAR is not required.
>>
>> Instead, use a regulator interface to set OTG Boost mode.
>>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> ---
>>   drivers/usb/typec/tcpm/tcpci_maxim.h      |  1 +
>>   drivers/usb/typec/tcpm/tcpci_maxim_core.c | 48 +++++++++++++++++++++----------
>>   2 files changed, 34 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/usb/typec/tcpm/tcpci_maxim.h b/drivers/usb/typec/tcpm/tcpci_maxim.h
>> index b33540a42a95..6c82a61efe46 100644
>> --- a/drivers/usb/typec/tcpm/tcpci_maxim.h
>> +++ b/drivers/usb/typec/tcpm/tcpci_maxim.h
>> @@ -60,6 +60,7 @@ struct max_tcpci_chip {
>>   	struct tcpm_port *port;
>>   	enum contamiant_state contaminant_state;
>>   	bool veto_vconn_swap;
>> +	struct regulator *otg_reg;
>>   };
>>   
>>   static inline int max_tcpci_read16(struct max_tcpci_chip *chip, unsigned int reg, u16 *val)
>> diff --git a/drivers/usb/typec/tcpm/tcpci_maxim_core.c b/drivers/usb/typec/tcpm/tcpci_maxim_core.c
>> index 19f638650796..6d819a762fa1 100644
>> --- a/drivers/usb/typec/tcpm/tcpci_maxim_core.c
>> +++ b/drivers/usb/typec/tcpm/tcpci_maxim_core.c
>> @@ -10,6 +10,7 @@
>>   #include <linux/kernel.h>
>>   #include <linux/module.h>
>>   #include <linux/regmap.h>
>> +#include <linux/regulator/consumer.h>
>>   #include <linux/usb/pd.h>
>>   #include <linux/usb/tcpci.h>
>>   #include <linux/usb/tcpm.h>
>> @@ -202,32 +203,49 @@ static void process_rx(struct max_tcpci_chip *chip, u16 status)
>>   	tcpm_pd_receive(chip->port, &msg, rx_type);
>>   }
>>   
>> +static int get_otg_regulator_handle(struct max_tcpci_chip *chip)
>> +{
>> +	if (IS_ERR_OR_NULL(chip->otg_reg)) {
>> +		chip->otg_reg = devm_regulator_get_exclusive(chip->dev,
>> +							     "otg-vbus");
>> +		if (IS_ERR_OR_NULL(chip->otg_reg)) {
>> +			dev_err(chip->dev,
>> +				"Failed to get otg regulator handle");
>> +			return -ENODEV;
>> +		}
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>   static int max_tcpci_set_vbus(struct tcpci *tcpci, struct tcpci_data *tdata, bool source, bool sink)
>>   {
>>   	struct max_tcpci_chip *chip = tdata_to_max_tcpci(tdata);
>> -	u8 buffer_source[2] = {MAX_BUCK_BOOST_OP, MAX_BUCK_BOOST_SOURCE};
>> -	u8 buffer_sink[2] = {MAX_BUCK_BOOST_OP, MAX_BUCK_BOOST_SINK};
>> -	u8 buffer_none[2] = {MAX_BUCK_BOOST_OP, MAX_BUCK_BOOST_OFF};
> You should also remove the corresponding #defines at the top of this file.

Ack!


>
>> -	struct i2c_client *i2c = chip->client;
>>   	int ret;
>>   
>> -	struct i2c_msg msgs[] = {
>> -		{
>> -			.addr = MAX_BUCK_BOOST_SID,
>> -			.flags = i2c->flags & I2C_M_TEN,
>> -			.len = 2,
>> -			.buf = source ? buffer_source : sink ? buffer_sink : buffer_none,
>> -		},
>> -	};
>> -
>>   	if (source && sink) {
>>   		dev_err(chip->dev, "Both source and sink set\n");
>>   		return -EINVAL;
>>   	}
>>   
>> -	ret = i2c_transfer(i2c->adapter, msgs, 1);
>> +	ret = get_otg_regulator_handle(chip);
>> +	if (ret) {
>> +		/*
>> +		 * Regulator is not necessary for sink only applications. Return
>> +		 * success in cases where sink mode is being modified.
>> +		 */
>> +		return source ? ret : 1;
>> +	}
>> +
>> +	if (source) {
>> +		if (!regulator_is_enabled(chip->otg_reg))
>> +			ret = regulator_enable(chip->otg_reg);
>> +	} else {
>> +		if (regulator_is_enabled(chip->otg_reg))
>> +			ret = regulator_disable(chip->otg_reg);
>> +	}
> Given otg_reg is the fake regulator created by a previous patch in this
> series, this means that the regulator API is really used to configure two
> out of 16 possible charger modes here. That doesn't look right.


I understand the concern, but I believe the regulator framework is the 
correct interface here for three reasons:

1.  The TCPCI driver's responsibility is only to signal the intent to 
source VBUS (OTG) or not. It should not be aware of the specific 
register values or mode bits of the companion charger chip. The charger 
driver (via the regulator enable op) is responsible for translating that 
intent into the correct hardware-specific register value (e.g., 
selecting the correct OTG mode).

2. While the charger supports multiple modes, sourcing VBUS via OTG and 
sinking VBUS (charging) are mutually exclusive states on Type-C and 
there are no modes to support both. If complex scenarios arise (like 
wireless charging + USB OTG), the logic to select the specific register 
mode belongs in the charger driver (the regulator provider), not the 
TCPCI consumer. Now say theoretically, we support wireless charging and 
want to turn it on (sink) while USB OTG mode (source) is on. The charger 
driver would set an appropriate mode based on this info (wireless 
power-supply on, USB otg regulator on, so select XX mode). We can game 
this for any 10 of the *valid* modes (refer [1]) supported by the chip 
and this would work. Using a regulator framework here will not pose a 
restriction on the number of charger modes now or in the future.

3. This design pattern is standard in the kernel from my study. Drivers 
such as bq24190_charger and rt9471 expose USB OTG functionality via the 
regulator framework.

[1] 
https://android.googlesource.com/kernel/google-modules/bms/+/refs/heads/android-gs-raviole-mainline/max77759_regs.h#52

BR,

Amit

>
> Cheers,
> Andre'

