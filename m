Return-Path: <devicetree+bounces-277001-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBCKMoxeumnFUgIAu9opvQ
	(envelope-from <devicetree+bounces-277001-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:13:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3183D2B79ED
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:13:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31AC330C2DF7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48BD33783CB;
	Wed, 18 Mar 2026 08:04:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D1C377EA4
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773821082; cv=none; b=jQTjfuTUNfsbmOpMeqHiM2Fsuic8O4ORwUoUWlvp6oJzznYpQRr5OzGdiB2ITTH8Qrxd55iSSTmy4VLz7gqaQRfNbNGPDzN1qgPQSFKbhkuLrp7KoT3PbsSFEak8N3VTiKshwBZN0utGo8zTPv0dKodmc/DhQoYm6H09FAzgaf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773821082; c=relaxed/simple;
	bh=vO1KfHU6udCVhdGolP+Vsucc5fEMPxLUN7KgAjXoeyU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kFZReOBHdy/ijhbxcJq6U9UMOVxji5VVrVu8on5HTBaPmx4D5E+mpqhajySzxwJIINa5UQURmqtVnTBhiKgfE9XJ8Ucc4b7fX+a8rL7DzuqhTZhR/wtfTpODSirqS+htcYehjDbwuMFkF/vCMsB2Ct1ni2bxpBKM1yWCPfA3xGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5ffe9a5b128so1704509137.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:04:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773821078; x=1774425878;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=htBo4xRilBo5yz/WWU6Hy0WaZEltY58p9V1wJQpVl2w=;
        b=Eu6m2AL7t+H5hMFXjeZ3xXnRicCQiaKD5Z7nJeAekN5Gw1sOZwsPtvvebVtvLvEhjN
         e4dMyaaxBxjqAEf/SwfJECf0/UBCOGGJ4seij/cy3SiBqbWZG92dhw8GDYgZqxMh72og
         DlRrDbl7YXD27tDR7ZxWsV9n3ZcAn2xseW8ODjUSD7+JwhZTI7kVQCnkcV1BHzsMQ32E
         5N/O2qoi8mVExPugjxVMTfrH9IHLpZUYqHaaknpqIqefBtVsnuFq6kKEGVrUv48/Opdj
         R5haXlwBCTOUayjpisowWGe3xYPVydzKML9laq2aeJJEZYK0HSrJN4M3JI+sihCHN9iN
         kblw==
X-Forwarded-Encrypted: i=1; AJvYcCVveUe/H33I2xzv57jU3tBLWC3LLeNW4IoNFzAJMrwhjCjt14h6fpqCWqsjQ5Fk6Umfs8Rh3EEgfpAX@vger.kernel.org
X-Gm-Message-State: AOJu0YzXWcvqCQdm4CFdU/Q7d8mPEDvTGfN3FRNSL3lGHfoksfRAzJYT
	n5y4jM9Up2mAEAdQFs8uCe04luMhkQSKYbT73Oz7Bl+8jy6pnXtg4wrdkXOOBDl9up8=
X-Gm-Gg: ATEYQzyDIPMWh8FgSpX3cfHJuX63FYhATQBXEplURAyTJTPMT8x+W0T8m0EsmlUE7TF
	3czpS+/Qhdt7ul3WGAvnQsEQGUY62zrKxGaCwm1dr1Ueq2409V13r9d7/SQfOm5nqPLbwtEq2B9
	/ir4zgxKnV9zvePhqHUYyVfVeA1RX7WxdGa6Epr48nBZS+qsOD+4Vfq4iAaU8gnIhKqHbOcunNH
	fuLchGRyGkTCDlKNteAwNjXNzYe61CkZBLXNAvNte0AcjCZZh+iO39nasEoOVpcJDYATDqCSGfo
	sTluBC6zzFlPX3v3fg0f9cj7PDBex3CbWUKw5yFF4MNWfZGZpXT3mUPBooKf4PlFvQxSCP7/GAz
	4ULwp/QrnHEbgewGp5FyDH0VnStXMnYGuhdSfFJ6KqzSr4sv8TFxMuZCtRykRsSBG+tF6QlFn9Q
	8/+C69cB9stB6c4uIZ/XcviIZRm4RaMuWc6yruz6b3lCjl6Vc7W6GZ1NBbVSEG
X-Received: by 2002:a05:6102:3a09:b0:5ff:9d74:969e with SMTP id ada2fe7eead31-6027d2c074emr940022137.18.1773821077605;
        Wed, 18 Mar 2026 01:04:37 -0700 (PDT)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-95102ff5f68sm1029163241.0.2026.03.18.01.04.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 01:04:37 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-950bcf4df06so1034765241.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:04:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUhBnGvZ19x5wEEecdxFFsND3JitgtFtYGT+4WaMcLQGMSmUG3EXIxb3YUA8Y+VtzRZV514SzBHCKjD@vger.kernel.org
X-Received: by 2002:a05:6102:3593:b0:5ff:efdc:e225 with SMTP id
 ada2fe7eead31-6027d0a6617mr1172832137.3.1773821077123; Wed, 18 Mar 2026
 01:04:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317210828.2117631-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20260317210828.2117631-1-andriy.shevchenko@linux.intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 09:04:25 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVOj=C36-iWsRzY6Cr2eFLvpqi7cA_ebziKKdVCo+125A@mail.gmail.com>
X-Gm-Features: AaiRm52fFj4ja3SGclYxUj6sdp11dKwy3IN0zm7jJH3ap-zU4mNmHSvyveljUE0
Message-ID: <CAMuHMdVOj=C36-iWsRzY6Cr2eFLvpqi7cA_ebziKKdVCo+125A@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] device property: Document how to check for the
 property presence
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: linux-acpi@vger.kernel.org, driver-core@lists.linux.dev, 
	linux-kernel@vger.kernel.org, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com,linux.intel.com,linuxfoundation.org,kernel.org,roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-277001-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.942];
	TAGGED_RCPT(0.00)[devicetree];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linux-m68k.org:email,intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,roeck-us.net:email]
X-Rspamd-Queue-Id: 3183D2B79ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

CC devicetree

On Tue, 17 Mar 2026 at 22:08, Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
> Currently it's unclear if one may or may not rely on the error codes
> returned from the property getters to check for the property presence.
> Clarify this by mass updating kernel-doc for fwnode_property_*() and
> device_property_*() where it's applicable.
>
> Reported-by: Guenter Roeck <linux@roeck-us.net>
> Closes: 4b24f1f4-b395-467a-81b7-1334a2d48845@roeck-us.net

Missing "https://lore.kernel.org/" prefix.

> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/base/property.c | 38 +++++++++++++++++++++++++++++++++++---
>  1 file changed, 35 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/base/property.c b/drivers/base/property.c
> index 8d9a34be57fb..bffa0070ab13 100644
> --- a/drivers/base/property.c
> +++ b/drivers/base/property.c
> @@ -38,6 +38,8 @@ EXPORT_SYMBOL_GPL(__dev_fwnode_const);
>   * @propname: Name of the property
>   *
>   * Check if property @propname is present in the device firmware description.
> + * This function is the correct way to check that given property is present
> + * in the device firmware description.
>   *
>   * Return: true if property @propname is present. Otherwise, returns false.
>   */
> @@ -52,6 +54,10 @@ EXPORT_SYMBOL_GPL(device_property_present);
>   * @fwnode: Firmware node whose property to check
>   * @propname: Name of the property
>   *
> + * Check if property @propname is present in the firmware node description.
> + * This function is the correct way to check that given property is present
> + * in the firmware node description.
> + *
>   * Return: true if property @propname is present. Otherwise, returns false.
>   */
>  bool fwnode_property_present(const struct fwnode_handle *fwnode,
> @@ -75,9 +81,9 @@ EXPORT_SYMBOL_GPL(fwnode_property_present);
>   * @dev: Device whose property is being checked
>   * @propname: Name of the property
>   *
> - * Return if property @propname is true or false in the device firmware description.
> + * Use device_property_present() to check for the property presence.
>   *
> - * Return: true if property @propname is present. Otherwise, returns false.
> + * Return: if property @propname is true or false in the device firmware description.
>   */
>  bool device_property_read_bool(const struct device *dev, const char *propname)
>  {
> @@ -90,7 +96,9 @@ EXPORT_SYMBOL_GPL(device_property_read_bool);
>   * @fwnode: Firmware node whose property to check
>   * @propname: Name of the property
>   *
> - * Return if property @propname is true or false in the firmware description.
> + * Use fwnode_property_present() to check for the property presence.
> + *
> + * Return: if property @propname is true or false in the firmware node description.
>   */
>  bool fwnode_property_read_bool(const struct fwnode_handle *fwnode,
>                              const char *propname)
> @@ -121,6 +129,8 @@ EXPORT_SYMBOL_GPL(fwnode_property_read_bool);
>   * It's recommended to call device_property_count_u8() instead of calling
>   * this function with @val equals %NULL and @nval equals 0.
>   *
> + * In order to check for the property presence, use device_property_present().
> + *
>   * Return: number of values if @val was %NULL,
>   *         %0 if the property was found (success),
>   *        %-EINVAL if given arguments are not valid,
> @@ -149,6 +159,8 @@ EXPORT_SYMBOL_GPL(device_property_read_u8_array);
>   * It's recommended to call device_property_count_u16() instead of calling
>   * this function with @val equals %NULL and @nval equals 0.
>   *
> + * In order to check for the property presence, use device_property_present().
> + *
>   * Return: number of values if @val was %NULL,
>   *         %0 if the property was found (success),
>   *        %-EINVAL if given arguments are not valid,
> @@ -177,6 +189,8 @@ EXPORT_SYMBOL_GPL(device_property_read_u16_array);
>   * It's recommended to call device_property_count_u32() instead of calling
>   * this function with @val equals %NULL and @nval equals 0.
>   *
> + * In order to check for the property presence, use device_property_present().
> + *
>   * Return: number of values if @val was %NULL,
>   *         %0 if the property was found (success),
>   *        %-EINVAL if given arguments are not valid,
> @@ -205,6 +219,8 @@ EXPORT_SYMBOL_GPL(device_property_read_u32_array);
>   * It's recommended to call device_property_count_u64() instead of calling
>   * this function with @val equals %NULL and @nval equals 0.
>   *
> + * In order to check for the property presence, use device_property_present().
> + *
>   * Return: number of values if @val was %NULL,
>   *         %0 if the property was found (success),
>   *        %-EINVAL if given arguments are not valid,
> @@ -233,6 +249,8 @@ EXPORT_SYMBOL_GPL(device_property_read_u64_array);
>   * It's recommended to call device_property_string_array_count() instead of calling
>   * this function with @val equals %NULL and @nval equals 0.
>   *
> + * In order to check for the property presence, use device_property_present().
> + *
>   * Return: number of values read on success if @val is non-NULL,
>   *        number of values available on success if @val is NULL,
>   *        %-EINVAL if given arguments are not valid,
> @@ -257,6 +275,8 @@ EXPORT_SYMBOL_GPL(device_property_read_string_array);
>   * Function reads property @propname from the device firmware description and
>   * stores the value into @val if found. The value is checked to be a string.
>   *
> + * In order to check for the property presence, use device_property_present().
> + *
>   * Return: %0 if the property was found (success),
>   *        %-EINVAL if given arguments are not valid,
>   *        %-ENODATA if the property does not have a value,
> @@ -324,6 +344,8 @@ static int fwnode_property_read_int_array(const struct fwnode_handle *fwnode,
>   * It's recommended to call fwnode_property_count_u8() instead of calling
>   * this function with @val equals %NULL and @nval equals 0.
>   *
> + * In order to check for the property presence, use fwnode_property_present().
> + *
>   * Return: number of values if @val was %NULL,
>   *         %0 if the property was found (success),
>   *        %-EINVAL if given arguments are not valid,
> @@ -353,6 +375,8 @@ EXPORT_SYMBOL_GPL(fwnode_property_read_u8_array);
>   * It's recommended to call fwnode_property_count_u16() instead of calling
>   * this function with @val equals %NULL and @nval equals 0.
>   *
> + * In order to check for the property presence, use fwnode_property_present().
> + *
>   * Return: number of values if @val was %NULL,
>   *         %0 if the property was found (success),
>   *        %-EINVAL if given arguments are not valid,
> @@ -382,6 +406,8 @@ EXPORT_SYMBOL_GPL(fwnode_property_read_u16_array);
>   * It's recommended to call fwnode_property_count_u32() instead of calling
>   * this function with @val equals %NULL and @nval equals 0.
>   *
> + * In order to check for the property presence, use fwnode_property_present().
> + *
>   * Return: number of values if @val was %NULL,
>   *         %0 if the property was found (success),
>   *        %-EINVAL if given arguments are not valid,
> @@ -411,6 +437,8 @@ EXPORT_SYMBOL_GPL(fwnode_property_read_u32_array);
>   * It's recommended to call fwnode_property_count_u64() instead of calling
>   * this function with @val equals %NULL and @nval equals 0.
>   *
> + * In order to check for the property presence, use fwnode_property_present().
> + *
>   * Return: number of values if @val was %NULL,
>   *         %0 if the property was found (success),
>   *        %-EINVAL if given arguments are not valid,
> @@ -440,6 +468,8 @@ EXPORT_SYMBOL_GPL(fwnode_property_read_u64_array);
>   * It's recommended to call fwnode_property_string_array_count() instead of calling
>   * this function with @val equals %NULL and @nval equals 0.
>   *
> + * In order to check for the property presence, use fwnode_property_present().
> + *
>   * Return: number of values read on success if @val is non-NULL,
>   *        number of values available on success if @val is NULL,
>   *        %-EINVAL if given arguments are not valid,
> @@ -476,6 +506,8 @@ EXPORT_SYMBOL_GPL(fwnode_property_read_string_array);
>   * Read property @propname from the given firmware node and store the value into
>   * @val if found.  The value is checked to be a string.
>   *
> + * In order to check for the property presence, use fwnode_property_present().
> + *
>   * Return: %0 if the property was found (success),
>   *        %-EINVAL if given arguments are not valid,
>   *        %-ENODATA if the property does not have a value,
> --
> 2.50.1

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

