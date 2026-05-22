Return-Path: <devicetree+bounces-301827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDqQN5NZEGqDWgYAu9opvQ
	(envelope-from <devicetree+bounces-301827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 15:26:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BC45B521F
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 15:26:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 013CD305D5A0
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A791394E80;
	Fri, 22 May 2026 13:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNly+OPs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E61394464;
	Fri, 22 May 2026 13:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779455203; cv=none; b=LsYWP4ZR2VwDBpQsreixBBGtEtwozS2Ie0IeU9RHB4eCfz9mZXBqqC7+PL8fN3M+GOI3TBknx2+JKNMceMCfT8krUc0tlePBq1EGmmYMufnkc+mUyJ0L/OSuIYoEaIj1G3kGLInh22n+a4WjdNG9nLfhxj6D9edKatAjtxuSJs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779455203; c=relaxed/simple;
	bh=2WbdneWWhB4Wm5BcBlVigSrwJyY/JjXPmR1DRmFFbHM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BxFb7R9R0Sd3KOe4kqXYgb96WvnHgctGoj0vAQqEND0ykWt6vWdD8H8O9anlDKeFxPLheL35iPvY2yQjq9Xu5QaRfw2awlDla3ASko4yX4OvjJCzIPDEh8nsU2mjge0l4tmVNH8/Zvtv6/QWtdEObxMe6VkRnvMGYMYMZ3j9tJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNly+OPs; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CB991F000E9;
	Fri, 22 May 2026 13:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779455201;
	bh=G708PB8YMR214JCN4+Lb7UbmZHjKq4QNdddngSh54Ig=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=UNly+OPsECLxhinblKtg95cAdGyWjY7PvVg6w3pZOO9EPNeLc/D6VUo0/m6nXCWwe
	 k8OijatmL3Pw6fp60PYq0hYfBa6R94JTY2KGtjbocRAtG+qT/MrBsVTlHOSuvrvrpU
	 8VRzOgav5MHSZUdEXz3gWFTwBmxnik2umhSyEg9hR14I46w2AbhzEVdc6SguGqCEkW
	 v13P99L6Fs0n3KQZZElkLBkRNugo7LeCSf/itkcr8w8om86gfUMFEMCQ229GKmUVZ2
	 nC5QBkjCXn00cb63rxZleGSe3e6SJuzvLe79xJSRweN632L7o0/rfbRBf1yYkQv3I3
	 gN2lpwtHwST2Q==
Date: Fri, 22 May 2026 14:06:31 +0100
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
Subject: Re: [PATCH v3 5/8] iio: temperature: ltc2983: Fix n_wires default
 bypassing rotation check
Message-ID: <20260522140631.537875e4@jic23-huawei>
In-Reply-To: <20260521164323.770626-6-liviu.stan@analog.com>
References: <20260521164323.770626-1-liviu.stan@analog.com>
	<20260521164323.770626-6-liviu.stan@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301827-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 62BC45B521F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 21 May 2026 19:42:58 +0300
Liviu Stan <liviu.stan@analog.com> wrote:

> When adi,number-of-wires is absent, n_wires is left at 0. The binding
> documents a default of 2 wires, matching the hardware default. However
> the current-rotate validation checks n_wires == 2 || n_wires == 3, so
> with n_wires = 0 the guard is bypassed and adi,current-rotate is accepted
> for a 2-wire RTD.
> 
> Initialize n_wires = 2 to match the binding default and ensure the
> rotation check fires correctly when the property is absent.
> 
> Fixes: f110f3188e56 ("iio: temperature: Add support for LTC2983")
> Signed-off-by: Liviu Stan <liviu.stan@analog.com>
This should be the first patch in the series so it is obvious that it
is easily backported without the rest + I might pick up via the fixes-togreg
tree.

Jonathan

> ---
> Changes in v3:
> - New patch
> 
>  drivers/iio/temperature/ltc2983.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/temperature/ltc2983.c b/drivers/iio/temperature/ltc2983.c
> index 10f423fbe9cc..326f843f4271 100644
> --- a/drivers/iio/temperature/ltc2983.c
> +++ b/drivers/iio/temperature/ltc2983.c
> @@ -749,7 +749,7 @@ ltc2983_rtd_new(const struct fwnode_handle *child, struct ltc2983_data *st,
>  	struct ltc2983_rtd *rtd;
>  	int ret = 0;
>  	struct device *dev = &st->spi->dev;
> -	u32 excitation_current = 0, n_wires = 0;
> +	u32 excitation_current = 0, n_wires = 2;
>  
>  	rtd = devm_kzalloc(dev, sizeof(*rtd), GFP_KERNEL);
>  	if (!rtd)


