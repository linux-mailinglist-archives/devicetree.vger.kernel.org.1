Return-Path: <devicetree+bounces-274093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKeXAYFrsWnsugIAu9opvQ
	(envelope-from <devicetree+bounces-274093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:17:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F362644B1
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:17:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF01A3050D5F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:15:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2976F306490;
	Wed, 11 Mar 2026 13:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht4MsTKD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034D02FFDE1;
	Wed, 11 Mar 2026 13:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234940; cv=none; b=P9tK8J8efpAs2GvtmU5AsjFy524GDJ20y3U+cxLXgGJxwq/6hWrStJnz53kCqARCzSqZBsO1XKHGtueNToeBndFf1jrnKD3WDYyoOnn4zDtw2xW2ou8RE9vwvhku+Ds9DRT34oE/WGhXrSB1omAzzO5/7Yr7RKXKJ0pC4AmDGFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234940; c=relaxed/simple;
	bh=gKZw/onhqWjwSGM+LV5eSnocT7BlAjHAUXpS4NXyE/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=loKVSeg1gmjTlzKRRd5fd4CsikeOWmyqQ5bARLEgqB28VXgvba8jxyHkUNbCgcoyXWZNC6ZdI1HOB0AQu5FFWpPbTiQF8816hg1//pOxQyzQ8e4R1dhA08v8MyPTxYjG3+arOgkSEhngDmLi9dMWTLLJ1Dg8aeHmjLzbRaKPNwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht4MsTKD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BC09C4CEF7;
	Wed, 11 Mar 2026 13:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773234939;
	bh=gKZw/onhqWjwSGM+LV5eSnocT7BlAjHAUXpS4NXyE/w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ht4MsTKDZD82fBFjqZ5duLvuB+kjQPhTYgDigFbyVuAkbFY1UTNNsc/skkDXXBDTX
	 xmsEBlnNQyjbvLpO7i3X8XPd4Oqzb1/tf/W+SAqbEf83zEvuk9MxSjiy4OaCNiC2xd
	 WD14jCy5s3wDhpCtV+FOXy+gM5jNXgvapB+bGwJ5o+OdlcpK1nledUmn+Qut7ylkCl
	 2ixIf0jmYQ8ny6w41BFg2rBbleT9+KQWtIY0UUcngqsbX4+0wDrpE8XZNjNVEj168V
	 yy+7uk9cb9nVbVDvUdQ4jT8hzkIov0jDzrZ/YIuxi6porfPSwH4qkxy5T9/vX776T/
	 NmN3X+Me+7GOA==
Date: Wed, 11 Mar 2026 14:15:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Weidong Wang <wangweidong.a@awinic.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
Subject: Re: [PATCH 2/2] ASoC: codecs: aw88166: Support device specific
 firmware
Message-ID: <20260311-glittering-elastic-deer-a2fa58@quoll>
References: <20260310-aw88166-fw-v1-0-2777563bb673@gmail.com>
 <20260310-aw88166-fw-v1-2-2777563bb673@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260310-aw88166-fw-v1-2-2777563bb673@gmail.com>
X-Rspamd-Queue-Id: 50F362644B1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274093-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,awinic.com,perex.cz,suse.com,vger.kernel.org,sobir.in];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 11:43:05PM -0500, Aaron Kling wrote:
> From: Teguh Sobirin <teguh@sobir.in>
> 
> This driver currently loads firmware from a hardcoded path. Support
> loading device specific firmware when provided by the boot firmware.
> 
> Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> Co-authored-by: Aaron Kling <webgeek1234@gmail.com>

There is no such tag.

Also, incomplete DCO chain.

> ---
>  sound/soc/codecs/aw88166.c | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/sound/soc/codecs/aw88166.c b/sound/soc/codecs/aw88166.c
> index daee4de9e3b01fb335975a65456cc79575533d7e..52d33a2f7cb12877138ea5083ad42e2777f8d323 100644
> --- a/sound/soc/codecs/aw88166.c
> +++ b/sound/soc/codecs/aw88166.c
> @@ -1574,18 +1574,22 @@ static int aw88166_dev_init(struct aw88166 *aw88166, struct aw_container *aw_cfg
>  static int aw88166_request_firmware_file(struct aw88166 *aw88166)
>  {
>  	const struct firmware *cont = NULL;
> +	const char *fw_name;
>  	int ret;
>  
>  	aw88166->aw_pa->fw_status = AW88166_DEV_FW_FAILED;
>  
> -	ret = request_firmware(&cont, AW88166_ACF_FILE, aw88166->aw_pa->dev);
> +	if (device_property_read_string(aw88166->aw_pa->dev, "firmware-name", &fw_name) < 0)
> +		fw_name = AW88166_ACF_FILE;
> +
> +	ret = request_firmware(&cont, fw_name, aw88166->aw_pa->dev);
>  	if (ret) {
> -		dev_err(aw88166->aw_pa->dev, "request [%s] failed!\n", AW88166_ACF_FILE);
> +		dev_err(aw88166->aw_pa->dev, "request [%s] failed!\n", fw_name);
>  		return ret;
>  	}
>  
>  	dev_dbg(aw88166->aw_pa->dev, "loaded %s - size: %zu\n",
> -			AW88166_ACF_FILE, cont ? cont->size : 0);
> +			fw_name, cont ? cont->size : 0);
>  
>  	aw88166->aw_cfg = devm_kzalloc(aw88166->aw_pa->dev,
>  			struct_size(aw88166->aw_cfg, data, cont->size), GFP_KERNEL);
> @@ -1599,7 +1603,7 @@ static int aw88166_request_firmware_file(struct aw88166 *aw88166)
>  
>  	ret = aw88395_dev_load_acf_check(aw88166->aw_pa, aw88166->aw_cfg);
>  	if (ret) {
> -		dev_err(aw88166->aw_pa->dev, "load [%s] failed!\n", AW88166_ACF_FILE);
> +		dev_err(aw88166->aw_pa->dev, "load [%s] failed!\n", fw_name);
>  		return ret;
>  	}
>  
> @@ -1802,9 +1806,16 @@ static const struct i2c_device_id aw88166_i2c_id[] = {
>  };
>  MODULE_DEVICE_TABLE(i2c, aw88166_i2c_id);
>  
> +static const struct of_device_id aw88166_of_match[] = {
> +	{ .compatible = "awinic,aw88166" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, aw88166_of_match);

This looks like an unrelated change.

Best regards,
Krzysztof


