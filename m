Return-Path: <devicetree+bounces-323309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +xdsBekrT2pYbgIAu9opvQ
	(envelope-from <devicetree+bounces-323309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:04:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5620872CAEC
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:04:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="FODkuui/";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323309-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323309-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 178793021E87
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 05:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 820F932ED3A;
	Thu,  9 Jul 2026 05:04:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404571E633C;
	Thu,  9 Jul 2026 05:04:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783573478; cv=none; b=CbyhnT/TltW5K1MSi8J8OWzi/KmpCplnrOr6FF5AxhKnE8yYaZbfVeWqALQdY+4WmG9BU9SaENedOW6yMU/6u0j8BK8NUN5J+YVgbkFpiuL8V7wBcyfyXU2grQwUONRwhxIZNGLfQzpkugZmvZMGruepdVF+oIaG2HxebP/E/xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783573478; c=relaxed/simple;
	bh=bGv5HTMf8EV9ooKoh2xr5x8q51XWFk+xnPMJ/daoNjM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JX/vy2FXWITv6SWrwmDVjIxxV2nDcXo/HDSkgDnV/0M0W1kKTPYQ1TqqO0lGFM/q35WAsnQLs7BsdcKWFM2JR5sq5ZNqARanGgEibinaAfRe0l7GSK0I3HPc2gV3/28l/wYUB8Cz4Ht/+JW2GdP00PbYFRVdZ3vZgLH8Tr7xXKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FODkuui/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6145C1F000E9;
	Thu,  9 Jul 2026 05:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783573476;
	bh=NRLMW8/ztuPqIVptOR1phI4H7y6JeMsk8PPEzXWGh/Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FODkuui/HJj3FuuAJKMvJCjbW4ewYHBYkc0tZx+m7lJp4L4qCn2hLCn2Z/0ehaimj
	 lq8b6Rs05FW5X9orNo6kDvah3URgtHqgZf9VZumMrJn4L9s8RvdnCm3ShQ/YpM63qu
	 4f+4L21ldRU9iwe5hG1hPsKMBWg5dxv938mQCvt24IWu6hNmWpKJZ9h68WHAUjkrCa
	 NBK9bWNOG5o09wDeoJ3rEx2Cx9NYGgaejFeHJol0naKrJHqCNbkq+1xthosulL8WfY
	 jB+AvBrBQ2VMMWNTOeeKDLnzxE4jxiM8CVVVU5Wf5ID0JMGuVHje7VYiT79Af8WJYi
	 YkKLS+klGLbww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 05/11] Input: samsung-keypad - remove support for
 platform data
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
Cc: linux-input@vger.kernel.org, conor+dt@kernel.org, dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708-samsung-kp-v2-5-3c6ed4c9b3b6@gmail.com>
References: <20260708-samsung-kp-v2-0-3c6ed4c9b3b6@gmail.com>
 <20260708-samsung-kp-v2-5-3c6ed4c9b3b6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 05:04:35 +0000
Message-Id: <20260709050436.6145C1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323309-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5620872CAEC

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Legacy device tree properties for row and column counts are immedi=
ately overwritten and discarded by matrix_keypad_parse_properties(), breaki=
ng backward compatibility.

Pre-existing issues:
- [Critical] Stack variables `row`, `col`, and `key_code` are used uninitia=
lized if property reads fail, potentially leading to out-of-bounds keymap g=
eneration and memory corruption.
- [High] The IRQ handler is requested before hardware clocks are enabled, l=
eading to an external abort (system crash) if an interrupt fires early.
--

--- Patch [5]: [PATCH v2 05/11] Input: samsung-keypad - remove support for =
platform data ---
commit 6b84c0425d2f995a2e30b98f55d0febfc3a74cb7
Author: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Input: samsung-keypad - remove support for platform data

Because there are no more users of samsung_keypad_platdata left in
the kernel remove support for it from the driver. The driver supports
generic device properties so all configuration should be done using
them instead of a custom platform data.

> diff --git a/drivers/input/keyboard/samsung-keypad.c b/drivers/input/keyb=
oard/samsung-keypad.c
> index b9d4ea5f202ae..6f1d766a4134d 100644
> --- a/drivers/input/keyboard/samsung-keypad.c
> +++ b/drivers/input/keyboard/samsung-keypad.c
[ ... ]
> @@ -231,144 +234,77 @@ static void samsung_keypad_close(struct input_dev =
*input_dev)
>  	samsung_keypad_stop(keypad);
>  }
> =20
> -static const struct matrix_keymap_data *
> -samsung_parse_verbose_keymap(struct device *dev)
> +static int samsung_keypad_parse_keymap(struct samsung_keypad *keypad)
>  {
[ ... ]
> +		device_for_each_child_node(dev, child) {
> +			u32 row, col, key_code;
> =20
> -		fwnode_property_read_u32(child, "keypad,row", &row);
> -		fwnode_property_read_u32(child, "keypad,column", &col);
> -		fwnode_property_read_u32(child, "linux,code", &key_code);
> +			fwnode_property_read_u32(child, "keypad,row", &row);
> +			fwnode_property_read_u32(child, "keypad,column", &col);
> +			fwnode_property_read_u32(child, "linux,code", &key_code);
> =20
> -		*keymap++ =3D KEY(row, col, key_code);
> +			*keymap++ =3D KEY(row, col, key_code);

[Severity: Critical]
This is a pre-existing issue, but what happens if the property reads fail?

If the device tree child node is missing properties (like linux,code),
fwnode_property_read_u32() will return an error and leave row, col, and
key_code uninitialized.

Could this stack garbage be packed into the keymap array and subsequently
cause an out-of-bounds bitwise write in matrix_keypad_build_keymap() when it
calls __set_bit(code, input_dev->keybit)?

> +		}
>  	}
> =20
[ ... ]
>  static int samsung_keypad_probe(struct platform_device *pdev)
>  {
[ ... ]
> +	device_property_read_u32(dev, "samsung,keypad-num-rows", &num_rows);
> +	device_property_read_u32(dev, "samsung,keypad-num-columns", &num_cols);
> =20
> -	error =3D matrix_keypad_parse_properties(dev, &num_rows, &num_cols);
> -	if (error)
> -		return ERR_PTR(error);
> -
> -	pdata->rows =3D num_rows;
> -	pdata->cols =3D num_cols;
> -
> -	if (!device_property_present(dev, "linux,keymap")) {
> -		keymap_data =3D samsung_parse_verbose_keymap(dev);
> -		if (IS_ERR(keymap_data))
> -			return ERR_CAST(keymap_data);
> -
> -		pdata->keymap_data =3D keymap_data;
> -	}
> -
> -
> -	pdata->no_autorepeat =3D
> -		device_property_read_bool(dev, "linux,input-no-autorepeat");
> -
> -	pdata->wakeup =3D device_property_read_bool(dev, "wakeup-source") ||
> -			/* legacy name */
> -			device_property_read_bool(dev, "linux,input-wakeup");
> -
> -	return pdata;
> +	error =3D matrix_keypad_parse_properties(dev, &num_rows, &num_cols);
> +	if (error)
> +		return error;

[Severity: High]
Does matrix_keypad_parse_properties() overwrite the legacy properties we ju=
st
read?

Looking at matrix_keypad_parse_properties(), it unconditionally resets the
pointers passed to it:

matrix_keypad_parse_properties() {
	*rows =3D *cols =3D 0;
	device_property_read_u32(dev, "keypad,num-rows", rows);
	device_property_read_u32(dev, "keypad,num-columns", cols);
}

If a device tree uses the legacy bindings (samsung,keypad-num-rows and
samsung,keypad-num-columns) without the modern prefixes, it seems the values
read into num_rows and num_cols will be discarded here.

Since matrix_keypad_parse_properties() will return -EINVAL if the generic
properties are missing, will this cause probe to fail on existing platforms
using the older bindings?

[ ... ]
> @@ -418,7 +373,11 @@ static int samsung_keypad_probe(struct platform_devi=
ce *pdev)
>  		return error;
>  	}

[Severity: High]
This is a pre-existing issue, but is the interrupt handler requested too ea=
rly?

In samsung_keypad_probe(), devm_request_threaded_irq() is called just above
this block before the hardware clocks are fully enabled. During probe,
keypad->stopped is true.

If an interrupt fires immediately (for instance, if the bootloader left the
IP block active), samsung_keypad_irq() will run. While the handler calls
pm_runtime_get_sync(), the runtime resume callback skips enabling the clock
because keypad->stopped is true.

Could this result in the handler attempting an unclocked read:

samsung_keypad_irq() {
	...
	readl(keypad->base + SAMSUNG_KEYIFSTSCLR);
	...
}

and causing a synchronous external abort?

> -	device_init_wakeup(&pdev->dev, pdata->wakeup);
> +	wakeup =3D device_property_read_bool(dev, "wakeup-source") ||
> +		 /* legacy name */
> +		 device_property_read_bool(dev, "linux,input-wakeup");
> +	device_init_wakeup(&pdev->dev, wakeup);
> +
>  	platform_set_drvdata(pdev, keypad);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-samsung-kp=
-v2-0-3c6ed4c9b3b6@gmail.com?part=3D5

