Return-Path: <devicetree+bounces-258146-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFc7KklWcWkNEwAAu9opvQ
	(envelope-from <devicetree+bounces-258146-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:42:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FEF5EF9E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:42:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 97C666270D6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA0CF44E027;
	Wed, 21 Jan 2026 22:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c0AazBor"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC01E44D694
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 22:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769035213; cv=none; b=MVD/SSWEV1NWKntOdRsj0hy0/u7v8v18bzOjNHHjRXTrcxLI4TRrXxyGYlX00tb/xXCFffCbPVw5U9aRuAOf/vFBL989rmAH/NEezsrfxFG+ru3RTFhK4MOCRGIhMNeLYXXFUmFVYRRKmcyvo80+LRe0E9/ft1IXtyV/0nNvJxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769035213; c=relaxed/simple;
	bh=JdgXeLjUwvEesiS0RCBqXWrFZLcAAAi4LcdoGUe7jds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oejRlArtJWPQ3lYV+tStc3bHifBlG9/P5ehzwDwmQM2FzIuPSgcucqbsiLfAbg3xo1QE8TOGrhk6XonILJLSXtXU2YhjUft6g29/soRjZ2/56+nDTmC+9V3RyDcKlUasOfG0BIjByC/g8ws2FV0f4zGHcI8dzByUAGQ367lK/8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c0AazBor; arc=none smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-12339e2e2c1so273524c88.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 14:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769035211; x=1769640011; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8oqHlhFvEc8dTBSDMJ627w8lGEZ+DhUI7JdmSEBy0EU=;
        b=c0AazBortZlYBNSLLhstayLY2lYhRjJopS/CRsrU60C803MFi2EyujexFiSHwa7KDV
         o7HASyJc171k5gNjSeyXlWBk9tyu5g1+1fNz5s0NCKQ6+MP9GfvN4wuaGV/CjkKTzRT1
         q1WUzRqhbPvUVooJtjTx8sa+JaMwCowgoF8q5pWUUNsMEpfrRYv1qFOOKp/ckTZDt79I
         PhyweF5QTel9gsQyF5MEEDvpXAGQksEpjm+HQlFaNXa33whGSahkrvcVj3Kp0F2VzOKi
         zQ1FGxmmtGp3BkGu2fO1PKZWMqGzJbGwrdztZkcy/VkF0FwYcIoaimsA6IGS6Gsk6tOG
         PkKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769035211; x=1769640011;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8oqHlhFvEc8dTBSDMJ627w8lGEZ+DhUI7JdmSEBy0EU=;
        b=cvjZGWM/iOalcF5W3bhxIZVGG4h4drihemUmo0fM5+2tMpS/JrJrywqFHPnRhx1BpS
         hoLhyJ9OI4Sys9PX1IFT1dJKgQ3RAL8CCmwYtXCoTbaQ6xXzzRd8XUjLmn0mDPqUf2w6
         Osk6ah0jsBh9d2wmIu/p9BQPritxl9+5wdqikFh/5YUVpfx6Q4ULr9f9C9KobIszUPz4
         okBqvuIg/DMqpRZ3Tv0Fg2oe/ss4l+TNTjA3Scf3gEePfS5YeWprXneFc8PGgOFIPcb1
         Pu1X39bxomVYVQO+bVANymn+g5bD6bu2bE68OUtvUJLrT+/aQH5edw2nq7N0KFCw1Bln
         mqDA==
X-Forwarded-Encrypted: i=1; AJvYcCXLcQ7y+9kX+LlPm5vrcpo1dok4VgHuWVm3sVaquWLGC/x9O+0cTC1u2H+lfuVzsHwxAkgsC2IG04zm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxbh1xRTtYiB2Ell/UANpWr6MW2Jwx9XDUx0uejjLvDOBOGZEgg
	CjZgZAuBIqbPaDYbyYfjsKP5aHt+U5S97DmHTkaSSlKssx2JZP8kXits
X-Gm-Gg: AZuq6aJHfzuMVpnNqEzHEXJVoNi1JPkLeuxnv6nu5JbXRjE9qmVeBybFgH+Ie7z1mXj
	KahIqNnA8l/UhDRIsgzb7xnHL3E+7Gnvn0UDwiRUTjdQelBT9+OABrqXFrcnJTTkjPfoFjtvHST
	i7NknH63zefHAABLnNYsaImaKcOAIqQZr1t3IYT/9ZKLX41n1VZA7zcQ2i1z2YQ1BaCOW3/daBp
	3xx8HvHe9IvtCW9Xl4gsK1sKUxBynkoKNWV9OkBWqftogpl4Xq9G+AezU04zOP+K+EIPieJb+Mz
	szSTRUbqaVRA/WQBVRfPg2FP4A8He7fUSj2Lok4wiaVWUHzSroUrq8VSgAatdtE2rJ2EG9Ok9Pd
	st3E+LMct6sb7FtH3LMfNWiAMFMB6cLaU5jm2tf/H7hW4Uv+6b+fKm6DmmjBg6L6C150IHmGW82
	hRFJfNvgXzXXt6g43vxzhKuoJBzqXxcxHxSvOr3R+0nJ4zkLe3Bjz/
X-Received: by 2002:a05:7022:a91:b0:11f:19f9:c5f9 with SMTP id a92af1059eb24-12476ab27edmr594415c88.12.1769035210731;
        Wed, 21 Jan 2026 14:40:10 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:abb8:3a31:328a:3594])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6fb72e477sm8717342eec.29.2026.01.21.14.40.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 14:40:10 -0800 (PST)
Date: Wed, 21 Jan 2026 14:40:07 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>, 
	Benjamin Tissoires <bentiss@kernel.org>, Jiri Kosina <jikos@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dianders@chromium.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 RESEND 2/2] HID: i2c-hid: elan: Add parade-tc3408
 timing
Message-ID: <ffqvva5kgyh25mpquackob7fnlaxseu5stgevneqynwa7m77b3@totpb762p6te>
References: <20260108063524.742464-1-yelangyan@huaqin.corp-partner.google.com>
 <20260108063524.742464-3-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260108063524.742464-3-yelangyan@huaqin.corp-partner.google.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TAGGED_FROM(0.00)[bounces-258146-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:email,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 76FEF5EF9E
X-Rspamd-Action: no action

On Thu, Jan 08, 2026 at 02:35:24PM +0800, Langyan Ye wrote:
> Parade-tc3408 requires reset to pull down time greater than 10ms,
> so the configuration post_power_delay_ms is 10, and the chipset
> initial time is required to be greater than 300ms,
> so the post_gpio_reset_on_delay_ms is set to 300.
> 
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Jiri, Benjamin, another I2C hid with bindings...

> ---
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/hid/i2c-hid/i2c-hid-of-elan.c b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
> index 0215f217f6d8..2a6548fd234a 100644
> --- a/drivers/hid/i2c-hid/i2c-hid-of-elan.c
> +++ b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
> @@ -188,11 +188,19 @@ static const struct elan_i2c_hid_chip_data ilitek_ili2901_chip_data = {
>  	.main_supply_name = "vcc33",
>  };
>  
> +static const struct elan_i2c_hid_chip_data parade_tc3408_chip_data = {
> +	.post_power_delay_ms = 10,
> +	.post_gpio_reset_on_delay_ms = 300,
> +	.hid_descriptor_address = 0x0001,
> +	.main_supply_name = "vcc33",
> +};
> +
>  static const struct of_device_id elan_i2c_hid_of_match[] = {
>  	{ .compatible = "elan,ekth6915", .data = &elan_ekth6915_chip_data },
>  	{ .compatible = "elan,ekth6a12nay", .data = &elan_ekth6a12nay_chip_data },
>  	{ .compatible = "ilitek,ili9882t", .data = &ilitek_ili9882t_chip_data },
>  	{ .compatible = "ilitek,ili2901", .data = &ilitek_ili2901_chip_data },
> +	{ .compatible = "parade,tc3408", .data = &parade_tc3408_chip_data },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, elan_i2c_hid_of_match);

-- 
Dmitry

