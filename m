Return-Path: <devicetree+bounces-289734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOxaD+Q76mkhxQIAu9opvQ
	(envelope-from <devicetree+bounces-289734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 17:33:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1CA454758
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 17:33:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85400302AD0A
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 15:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 054DD35BDA8;
	Thu, 23 Apr 2026 15:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="nDVJQ1Aj"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128EC31DDBF;
	Thu, 23 Apr 2026 15:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776958189; cv=none; b=Oz544Y8g+HZJ2bLigFMG9pwCOse5qwRJQR1WnvQNTfPAPi5ugOq25Ut6Hq+HxAe+IYrFSwY7X4CqxY6CnNiqHv7Uf2B25xkH1Pvhz+n7GsKUE1RpDGUjrF128HsTvRT7q3smZgex1brJYgt0wp2xTbC3NbTM+LLbJhfeweTm+ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776958189; c=relaxed/simple;
	bh=BuFMoJ0ysYsrcKqnLlo60KQAjjDHrnpC5kQCUcwHtB0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZNLbgdf5Dx89c8HOD6a+UxjDd65BwX++wmj4YsaZ4Xy++VaVrO6FvWIsSyNArOf7AsF/hLxkp7Xv96xxI7ODffY+2tze4E/3XNvg3uekwdAjhVCxojc/dndrEb9WzRbeFN26d8/Xz2E4TxF+ktg3SJZsArnoQpWdFZayRY9QGW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=nDVJQ1Aj; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Message-ID: <9ac4db6a-b668-4e56-b940-dfb542086b39@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1776958185;
	bh=BuFMoJ0ysYsrcKqnLlo60KQAjjDHrnpC5kQCUcwHtB0=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To;
	b=nDVJQ1AjCE5OlTV9ohw+s+40v3OWIxomoHihxxmKa33UWuI4CKmMPxIRrcc+qoTtr
	 MRafIrq7kiIn0mv+CjEkY4sx+kF/ymbOedcAFtood2+89njXRcH4XIqMUVbaWPC5PJ
	 +TqSnU2f6xdrIxnp2Ut4ZRt7cw3p8hKAmrHyW1y8=
Date: Thu, 23 Apr 2026 17:29:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
Subject: Re: [PATCH v3 4/8] thermal: amlogic: Add support for secure monitor
 calibration readout
To: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
Cc: linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Guillaume La Roque <glaroque@baylibre.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20260421-add-thermal-t7-vim4-v3-0-a2e7215ed003@aliel.fr>
 <20260421-add-thermal-t7-vim4-v3-4-a2e7215ed003@aliel.fr>
 <7aaa7873-9274-48d8-a6fe-cff4239b03b4@oss.qualcomm.com>
 <19d70883-21db-4963-841d-7c00505e0d9e@aliel.fr>
 <8a4dcb94-ab88-4559-9027-49308ad02b73@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <8a4dcb94-ab88-4559-9027-49308ad02b73@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[aliel.fr,quarantine];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289734-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,baylibre.com,kernel.org,intel.com,arm.com,linaro.org,googlemail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aliel.fr:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aliel.fr:dkim,aliel.fr:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2B1CA454758
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/23/26 5:17 PM, Daniel Lezcano wrote:
> On 4/23/26 17:09, Ronald Claveau wrote:
>> Hi Daniel,
>>
>> Thanks for your feedback.
>>
>> On 4/23/26 12:25 PM, Daniel Lezcano wrote:
>>>
>>> Hi Ronald,
>>>
> 
> function1() {
> 
> 
>>>> +    if (pdata->data->use_sm) {
>>>> +        struct device_node *sm_np;
>>>> +        struct of_phandle_args ph_args;
>>>> +
>>>> +        ret = of_parse_phandle_with_fixed_args(pdev->dev.of_node,
>>>> +                               "amlogic,secure-monitor",
>>>> +                               1, 0, &ph_args);
>>>> +        if (ret)
>>>> +            return ret;
>>>> +
>>>> +        sm_np = ph_args.np;
>>>> +        if (!sm_np) {
>>>> +            dev_err(dev,
>>>> +                "Failed to parse secure monitor phandle\n");
>>>> +            return -ENODEV;
>>>> +        }
>>>> +
>>>> +        pdata->sm_fw = meson_sm_get(sm_np);
>>>> +        of_node_put(sm_np);
>>>> +        if (!pdata->sm_fw) {
>>>> +            dev_err(dev, "Failed to get secure monitor firmware\n");
>>>> +            return -EPROBE_DEFER;
>>>> +        }
>>>> +
>>>> +        pdata->tsensor_id = ph_args.args[0];
>>>> +    } 
> 
> }
> 
> function2() {
> 
> else {
>>>> +        pdata->sec_ao_map = syscon_regmap_lookup_by_phandle
>>>> +            (pdev->dev.of_node, "amlogic,ao-secure");
>>>> +        if (IS_ERR(pdata->sec_ao_map)) {
>>>> +            dev_err(dev, "syscon regmap lookup failed.\n");
>>>> +            return PTR_ERR(pdata->sec_ao_map);
>>>> +        }
>>>>        }
> 
> }
> 
>> Sure, I will do that.
>>
>>>>        pdata->tzd = devm_thermal_of_zone_register(&pdev->dev
>>>
>>> The thermal zone is registered before calling
>>> amlogic_thermal_initialize(), thus pdata->trim_info is not initialized.
>>> When a thermal zone is registered the thermal framework reads the
>>> temperature, so it reads an invalid value because:
>>>
>>> devm_thermal_of_zone_register()
>>>   -> thermal_of_zone_register()
>>>     -> thermal_zone_device_register_with_trips()
>>>     -> thermal_zone_device_enable()
>>>        -> __thermal_zone_device_update()
>>>          -> __thermal_zone_get_temp()
>>>            -> amlogic_thermal_get_temp()
>>>               -> amlogic_thermal_code_to_millicelsius()
>>>                   [ Use of uninitialized pdata->trim_info ]
>>>
>>> Right ?
>>>
>>
>> Yes, I will move the initialize before the register.
>>
>>> IIUC, amlogic_thermal_initialize() can be also split and moved the
>>> corresponding blocks to the functions to be created in the comment
>>> above.
>>>
>>
>> The SM and syscon setup will be extracted into two functions.
>> amlogic_thermal_initialize() itself is kept as-is but moved before
>> devm_thermal_of_zone_register().
>> Let me know if you'd prefer a different approach.
> 
> In the initialize function the following chunk is added:
> 
> +    if (pdata->data->use_sm) {
> +        return meson_sm_get_thermal_calib(pdata->sm_fw,
> +                          &pdata->trim_info,
> +                          pdata->tsensor_id);
> +    }
> 
> I was suggesting to move it to function1() and the rest of code from
> initialize in function2()
> 
> That results in amlogic_thermal_initialize() to be dissolved in
> function1() and function2()
> 

Thanks for your answer, that was my second option, I will do that.

-- 
Best regards,
Ronald

