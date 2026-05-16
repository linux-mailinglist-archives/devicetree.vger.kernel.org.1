Return-Path: <devicetree+bounces-298726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5xICFwqhCGo4ywMAu9opvQ
	(envelope-from <devicetree+bounces-298726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 18:53:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB2455CB65
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 18:53:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 77E94300D47A
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 16:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273F3380FF2;
	Sat, 16 May 2026 16:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GE8OZ2x5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AA8381AF;
	Sat, 16 May 2026 16:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778950406; cv=none; b=rgu9WgE3+8XY9wXhIth9DxB1fWGWHOdc+sb6TDPplKHt9usEQ6YsxCYZj9fV/EWewr8CjoVqJKpjxC2D4sxZB1wyfv6vJc/TmgmFpkA+qCzxiiQLzHo20OHhbYRE2W3Xp3cOXmATZXn+ROEIqert7vcpfxuaV+jM8dxzMeerIYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778950406; c=relaxed/simple;
	bh=wrhff52eAl8YjWbtMtWFkxRpI8Fqnoxxh3PJ7D+eUhE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TQ1e/GE8Grpq5jQ7UqUTk6wfR+GRi6ygX/OO3+RyaA7qUDGnHp1QGn5nrMqugVDq9SRNgE05EmLJZdTeRZXZY4KlJNmkxdv8bvQXcyijKe51lv0ktn1KcV+0cpd3WsE9k8uJCZe6pJEvXS+LOX1l77+HbVN+Vn9MVZ+LMU51Ii4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GE8OZ2x5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CE89C2BCB8;
	Sat, 16 May 2026 16:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778950405;
	bh=wrhff52eAl8YjWbtMtWFkxRpI8Fqnoxxh3PJ7D+eUhE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=GE8OZ2x5ij1YYITe/H2M8f3bgfCJ8VoL7vwNXgScWWUhvF7iswSD53Vy3kpnpIUB4
	 BZrLNSHqnSzy59WdnGzCc2SidhKNQZ38pvkgRH1wsakBmtS/GiXB7mgD/q2upvMZXx
	 dfTHRRnHFrUvmsag+r2aAG9zrNFo5o4+sIzISQsmLO6R7FSpCEYnZWsCIRIOinJdU9
	 DlsMq7RR3w0VPgXMmdAl8aEq7kvqOahMMc+b0PTgnoC1stF+aOD4nQuDuoNtNnqnBN
	 DJudbfLR74JB8aYtA4deaZaJyHDu9U9My8VcCbycffaLuG3tUOW8x2gOPKZgl/BN12
	 Y1VgIm2oaWXng==
Date: Sat, 16 May 2026 17:53:14 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Liviu Stan <liviu.stan@analog.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "Antoniu Miclaus" <antoniu.miclaus@analog.com>, Francesco Lavra
 <flavra@baylibre.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux@analog.com>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 4/7] iio: temperature: ltc2983: Use
 fwnode_property_present() for optional properties
Message-ID: <20260516175314.3f28a4b7@jic23-huawei>
In-Reply-To: <20260514144712.64374-5-liviu.stan@analog.com>
References: <20260514144712.64374-1-liviu.stan@analog.com>
	<20260514144712.64374-5-liviu.stan@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 9DB2455CB65
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298726-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Action: no action

On Thu, 14 May 2026 17:46:51 +0300
Liviu Stan <liviu.stan@analog.com> wrote:

> Checking fwnode_property_read_u32() return value with if (!ret)
> silently swallows meaningful error codes when a property is present
> but malformed. Use fwnode_property_present() first so that absence
> uses the default while a present but unreadable property returns
> a proper error.
> 
 Fixes: f110f3188e5639c81c457b2b831d40dfe3891bdb ("iio: temperature: Add support for LTC2983")
Same again. Not a fix. It's hardening against unexpected errors.

Also, sashiko calls out an issue with n_wires and default value of 0.
The binding says default is 2.


that was always present but is worth a fix potentially:
https://sashiko.dev/#/patchset/20260514144712.64374-1-liviu.stan%40analog.com

> Signed-off-by: Liviu Stan <liviu.stan@analog.com>

> ---
> Changes in v2:
> - New patch.
> 
>  drivers/iio/temperature/ltc2983.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iio/temperature/ltc2983.c b/drivers/iio/temperature/ltc2983.c
> index f42777c1f3c2..bf435e965c6d 100644
> --- a/drivers/iio/temperature/ltc2983.c
> +++ b/drivers/iio/temperature/ltc2983.c
> @@ -669,8 +669,14 @@ ltc2983_thermocouple_new(const struct fwnode_handle *child, struct ltc2983_data
>  	if (fwnode_property_read_bool(child, "adi,single-ended"))
>  		thermo->sensor_config = LTC2983_THERMOCOUPLE_SGL(1);
>  
> -	ret = fwnode_property_read_u32(child, "adi,sensor-oc-current-microamp", &oc_current);
> -	if (!ret) {
> +	if (fwnode_property_present(child, "adi,sensor-oc-current-microamp")) {
> +		ret = fwnode_property_read_u32(child,
> +					       "adi,sensor-oc-current-microamp",
> +					       &oc_current);
> +		if (ret)
> +			return dev_err_ptr_probe(dev, ret,
> +						 "Failed to read adi,sensor-oc-current-microamp\n");
> +
>  		switch (oc_current) {
>  		case 10:
>  			thermo->sensor_config |=
> @@ -760,8 +766,12 @@ ltc2983_rtd_new(const struct fwnode_handle *child, struct ltc2983_data *st,
>  		return dev_err_ptr_probe(dev, ret,
>  					 "Property reg must be given\n");
>  
> -	ret = fwnode_property_read_u32(child, "adi,number-of-wires", &n_wires);
> -	if (!ret) {
> +	if (fwnode_property_present(child, "adi,number-of-wires")) {
> +		ret = fwnode_property_read_u32(child, "adi,number-of-wires", &n_wires);
> +		if (ret)
> +			return dev_err_ptr_probe(dev, ret,
> +						 "Failed to read adi,number-of-wires\n");
> +
>  		switch (n_wires) {
>  		case 2:
>  			rtd->sensor_config = LTC2983_RTD_N_WIRES(0);


