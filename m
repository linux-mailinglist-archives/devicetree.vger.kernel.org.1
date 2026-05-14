Return-Path: <devicetree+bounces-297802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wO8jBPAqBmorfwIAu9opvQ
	(envelope-from <devicetree+bounces-297802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 22:05:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B49546A14
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 22:05:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6065E300228F
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 20:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFC8A3A7F6E;
	Thu, 14 May 2026 20:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1nzyodd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB1A386553
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 20:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778789101; cv=none; b=rJKubbo2ZUj4mM74wzlzeTU60TAFy3gnAyyhA1ZTy42mjvIz2LiKoUAawe6+Ygd8KDTaOoWCmhdrzbBroMrF/KI66S3IsZIm5PxEKLBozPHSByR5dhIgnD4J5SbjZz57LttnU04MK8leCObmRSPOS2df0aXiMshagnOXkl0MXLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778789101; c=relaxed/simple;
	bh=hBeHxHIAAZ2oj2VpiZycs1kCQfEEM1m5xo3KdgF6sG0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=utRJO9xwxThwWrQgG9YN1ftVSopCw5uM6h0qKNL+BRiNmSXW67+wDicLDpV8AfLXWfIeJR7kXLiJdrGGB6GcfLwOPnRsdagOUZD61Tvpx6/AQNrQvSEGxScF8gaDNFXIZLCjNSisaFSn6+eG10iDPC4MQRYP4ksa5zzPFcmaNSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1nzyodd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFF38C2BCB3;
	Thu, 14 May 2026 20:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778789101;
	bh=hBeHxHIAAZ2oj2VpiZycs1kCQfEEM1m5xo3KdgF6sG0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=c1nzyoddplt/r89jxtkh2ZtlGZVNccvGcONF6HoccJ5syetk5pie/MWUF4+5mqbEd
	 hDsDJCoGvH4vTcG4+n1WPxRRWpUPxAThSnXwi/0SJF6wwZfaROZuFgSatGVJoFclfb
	 8PcwHnSr/lvY69Qpf3mKbw/lArnQ9nD0BoNBJJyRqtlHcHOHG1I0zUg9sUqZ55nHON
	 0ETZe80lHsAhbXE9rSSAQ2+4IN4Azy2x6NDhkdzUVlLLwUpEZ/Q/EmNjyR61spFLjP
	 xns9RZNErY3LfDtsm3zScukIIgwnkj1cLn9Y24MqUYaIwEyCPTnHlUOS0myrG/jcTy
	 UwtiVxJtqae+g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/4] mfd: max77620: convert poweroff support to sys-off
 API
Reply-To: sashiko-reviews@lists.linux.dev
To: "Diogo Ivo" <diogo.ivo@tecnico.ulisboa.pt>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260514-smaug-poweroff-v1-2-30f9a4688966@tecnico.ulisboa.pt>
References: <20260514-smaug-poweroff-v1-2-30f9a4688966@tecnico.ulisboa.pt>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 20:05:00 +0000
Message-Id: <20260514200500.DFF38C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 78B49546A14
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297802-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,ulisboa.pt:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] max77620_pm_power_off() acquires a mutex inside an atomic context =
(RCU read-side critical section and disabled IRQs), leading to a potential =
deadlock during system power-off.
--

commit b3bd2ca1c0c28ed17c99ae76d84c114260a5a844
Author: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>

mfd: max77620: convert poweroff support to sys-off API

This commit converts max77620_pm_power_off() to the sys-off callback protot=
ype
and registers it with the sys-off API when the device tree marks the PMIC as
a system power controller. It also removes the global max77620_scratch poin=
ter
by passing the chip instance through the callback data.

> diff --git a/drivers/mfd/max77620.c b/drivers/mfd/max77620.c
> --- a/drivers/mfd/max77620.c
> +++ b/drivers/mfd/max77620.c
[ ... ]
> @@ -484,13 +483,15 @@ static int max77620_read_es_version(struct max77620=
_chip *chip)
>  	return ret;
>  }
> =20
> -static void max77620_pm_power_off(void)
> +static int max77620_pm_power_off(struct sys_off_data *data)
>  {
> -	struct max77620_chip *chip =3D max77620_scratch;
> +	struct max77620_chip *chip =3D data->cb_data;
> =20
>  	regmap_update_bits(chip->rmap, MAX77620_REG_ONOFFCNFG1,
>  			   MAX77620_ONOFFCNFG1_SFT_RST,
>  			   MAX77620_ONOFFCNFG1_SFT_RST);
> +
> +	return NOTIFY_DONE;
>  }
[ ... ]
> @@ -573,10 +573,14 @@ static int max77620_probe(struct i2c_client *client)
>  		return ret;
>  	}
> =20
> -	pm_off =3D of_device_is_system_power_controller(client->dev.of_node);
> -	if (pm_off && !pm_power_off) {
> -		max77620_scratch =3D chip;
> -		pm_power_off =3D max77620_pm_power_off;
> +	if (of_device_is_system_power_controller(client->dev.of_node)) {
> +		ret =3D devm_register_sys_off_handler(&client->dev,
> +						    SYS_OFF_MODE_POWER_OFF,

Does this code risk deadlocking during system power-off?

Handlers registered with SYS_OFF_MODE_POWER_OFF execute via an atomic
notifier call chain inside do_kernel_power_off() holding rcu_read_lock(),
and with local IRQs completely disabled.

However, the max77620_pm_power_off() callback invokes regmap_update_bits()
on an I2C regmap, which relies on a standard mutex.

If another CPU held this PMIC regmap mutex when smp_send_stop() was issued,
attempting to acquire it here will hang the power-off sequence indefinitely.

Would it be safer to register this handler using
SYS_OFF_MODE_POWER_OFF_PREPARE instead? That mode uses a blocking notifier
call chain and executes before CPUs are stopped and IRQs are disabled.

> +						    SYS_OFF_PRIO_DEFAULT,
> +						    max77620_pm_power_off, chip);
> +		if (ret)
> +			return dev_err_probe(&client->dev, ret,
> +					"failed to register power-off handler\n");
>  	}
> =20
>  	return 0;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-smaug-powe=
roff-v1-0-30f9a4688966@tecnico.ulisboa.pt?part=3D2

