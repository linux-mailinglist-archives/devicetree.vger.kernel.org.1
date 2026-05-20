Return-Path: <devicetree+bounces-300502-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJgTJKuMDWoIzQUAu9opvQ
	(envelope-from <devicetree+bounces-300502-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:27:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A4458BBD7
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:27:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8A337302DC4B
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 10:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23D9B3D8900;
	Wed, 20 May 2026 10:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKLDCqta"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2593D8114;
	Wed, 20 May 2026 10:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779272697; cv=none; b=CXBmyXZL00li4/YHvqPRC0DbX+p1A5YwfHpfsZpqeB/40iNRSn4crruWsvcKBbXg64Jk7lDf+lYNmP/392s1ICnOxvcdJ7Oy8SO4WGxjFOK6HL/wLwsorv495dwoi2YxfaR3ivPEZlntwa7yFaDEhuduqS4cr1VndbeRu2CVs5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779272697; c=relaxed/simple;
	bh=Kf9H4+Yj0u9YhotYy9wiJDpzBvEf1F37heOkprUMTkM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CHO6oZVLLeAolbbhJhtPhshTW60LLw+qzKH9Yj8eXNmsvI4Y3yqH30sEkMCT2eQTBkxGelNmIt1TuWW/qfhdTvEH0QTivspg9sqSWAs+kyKI0hHgvQHzW/uh7ygCU+gwc8L1dvor8tL8uKwOu7AjCXrhdIPNs/7gmew0utG6/GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKLDCqta; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 395481F000E9;
	Wed, 20 May 2026 10:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779272687;
	bh=Y4rdOQ18U0Csxbf5sPupL4tUuoi+9+87zmrht4kEkJE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=oKLDCqtaswAz9XMOOCiUVjwniqYwcLyRTWQ4tj89JDwScq785b60mN5ING4FBX9G0
	 uXIPi5T0SUeS4GWTo4zMiFcOmYgWJ6eFAjQETElD/dzC2TSNQfpufdjmUXCoye35/S
	 hGifxXyuahquCNasR4A57+p4MxrgA4lW+NQYa6pmivElrdtijM7PjXGd7XLRbw34H9
	 bVDh2Im/4OrJswnKPlkRP+J8UjINsj6Ju39XqxfNYxU/68HS4EOOiHZRIYsm7IKnj0
	 tmLlvfGcf8Q5C70BRgG8fNmby8ldpG1ad6dc3J+AxSo7Nog1D/6V6spstknySxenIx
	 8JEyoHCP2uQAA==
Date: Wed, 20 May 2026 11:24:38 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Andreas Klinger <ak@it-klinger.de>, Andy
 Shevchenko <andy@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v9 08/11] iio: adc: hx711: split variable assignments in
 hx711_read and hx711_reset
Message-ID: <20260520112438.4b396652@jic23-huawei>
In-Reply-To: <20260518220228.63322-9-piyushpatle228@gmail.com>
References: <20260518220228.63322-1-piyushpatle228@gmail.com>
	<20260518220228.63322-9-piyushpatle228@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300502-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,intel.com:email]
X-Rspamd-Queue-Id: 94A4458BBD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 19 May 2026 03:32:24 +0530
Piyush Patle <piyushpatle228@gmail.com> wrote:

> Separate the initial value assignments from the declarations in
> hx711_read() and hx711_reset().
> 
> This is a small preparatory cleanup before the later loop-iterator and
> variant-specific changes adjust the local variable layout in these
> functions.
> 
> No functional change.
> 
> Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> ---
> No change from v8.
>  drivers/iio/adc/hx711.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/hx711.c b/drivers/iio/adc/hx711.c
> index 30e1ce321747..9e5cafa1e307 100644
> --- a/drivers/iio/adc/hx711.c
> +++ b/drivers/iio/adc/hx711.c
> @@ -159,9 +159,10 @@ static int hx711_read(struct hx711_data *hx711_data, int trailing_pulses)
>  {
>  	int i, ret;
>  	int value = 0;
> -	int val = gpiod_get_value(hx711_data->gpiod_dout);
> +	int val;
>  
>  	/* we double check if it's really down */
> +	val = gpiod_get_value(hx711_data->gpiod_dout);
>  	if (val)
>  		return -EIO;
>  
> @@ -204,7 +205,9 @@ static int hx711_wait_for_ready(struct hx711_data *hx711_data)
>  
>  static int hx711_reset(struct hx711_data *hx711_data)
>  {
> -	int val = hx711_wait_for_ready(hx711_data);
> +	int val;
> +
> +	val = hx711_wait_for_ready(hx711_data);
> 

Trivial but no blank line here. We want that error
check closely associated with the thing that set val.

>  	if (val) {
>  		/*


