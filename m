Return-Path: <devicetree+bounces-263095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id dtyOKXzNhGk65gMAu9opvQ
	(envelope-from <devicetree+bounces-263095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:03:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B009F5A22
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A7833033FBF
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 16:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2F5E43C058;
	Thu,  5 Feb 2026 16:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nAjG+cM5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6981143C050
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 16:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770310720; cv=none; b=FDsszqVEuqCiKTYFhKDoEDEw65Kp39gFGn8kMYuNf2c3w5gp4Y1tRxwEnAibaIRkGKt3vIv5MPfbAYW7PJvvJzB/C8UHwBvZJJS5rzu2xpeYSm2Ef5DOFZseAJOScLmznD34r5ggM/vIjGKWMzsOFmKOwvtIURPaXivjunun6qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770310720; c=relaxed/simple;
	bh=9T36liE3vZeu4Kv34os7tzR0zDi/0YMbTrV01HUXDok=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=stZZP5dCVi3tkwuB9lFXhZAg668Mn6Geoa5XeTGIdoQ+WixuWAQrv6/KFuM4iDnp17Rk3u4zzFBe9dmnMRCd/ahDKfuc6VnNN5Uj5/E5Cb6jSD7WYN1j5FLm0ZNxSE0BJMM354FmlhliUBA9JzG6x7ZTsc4F6epZuLoYthuW/OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nAjG+cM5; arc=none smtp.client-ip=74.125.82.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-12339e2e2c1so692783c88.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 08:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770310719; x=1770915519; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ExBShuvUs79IPImbMG3qy+Lfwt67zT0KnoLfQrrB88=;
        b=nAjG+cM5oJhAfhWkd3Y5eaIjDUgcn8wUNFfrsHLo7qf0lH8o0Le/eZHlR4kRCGLx34
         0PuSl7OaxD/6sgeAb4xqn/uNZ0H9CAxX6TVlYYu5v3EPOupKHPf9t4qxLAs9x+MxWePP
         CAGUDrc5nnQKwHZZ+tWy7brhJt6FNdLTxN6qSUD1ORAbWocYj8rys/laAW3zpG6t1hVC
         en/ygSyuxI8pjbitGacHup0XmekXd/twUqdgzS8a8G4nia46pK7/EtgpT5ppsDP4wIQh
         RX/Nv5u3EVX1YxTJkB72Y4SvFh1Rzv4dUHl5ddmiBJReqZTbpwmXNJ7Kg7343HELhMJa
         jLHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770310719; x=1770915519;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2ExBShuvUs79IPImbMG3qy+Lfwt67zT0KnoLfQrrB88=;
        b=YbQ57NuY+z8NkguEC44cWqoeNPvWO1m2ENkd5+hncKQuFWSSRxHyGqu1twSo21RhB4
         Ytuf+iNWeIqFfS7QMV7YINl/1xxblNO1yDRlnMWCkyVNSHl4LDAH15+QPRI9hdYXinxZ
         nYnhm5J2qnYrTNPCT2epSlI4TZqjuG435aUiNO9szUjw8fPFdSg4COlgOlSW4ve79KZO
         vuxILXJuCSOfV8ZMeRyoi8IGqFKETIUlLsGWteqKuSjDc3vYdK/d7Dr5qUOFlJfYB4GZ
         1r4iXnJnSZ8TaPWQnA8TSW3ppLL381nRxs3eXTjUe7gg40AhYP6L4eccUEfm5bydP1R/
         re+g==
X-Forwarded-Encrypted: i=1; AJvYcCVOP6if82L7IQOv8Woq3J4jfOWNWufi+y9dLRm/v4cHDIEDMr3s4iaCxsgOoGW8jNGXVdBIYsQN+p2e@vger.kernel.org
X-Gm-Message-State: AOJu0YzBb/PPUx/n77KhdID7Mx6T7wtHB5OT6UGomJ7cBU+mgyRQ3l3M
	zvAse1imdXhqNjecG4/QfxwsNYcejy7EBBRGSP1WQ5Jrio/DZb/p4Qzv
X-Gm-Gg: AZuq6aJ6qyUcKlsrGrI89YqiAM7p8kFmfusZf8k2IXkoGrVeDzgerAaNGTK2QLlajSk
	54fywnNUmnNgeUPBMzgCl0t+aaLvWPqnV0YUJxQOIVVDU9H9qXaHYMwXQ/hC4q5T0Q+jGhTosqq
	eUtlLcfMV89oCEku8AWLv7Mf6FxohehfgdbVGaGTBCWp+AKhQjsm9FFDNBoZmdyrYFpdyeSCuBB
	e3dyUuHJnRuwcqV7WLjST1HqLsglZwi8LrKbA5zkZPhIyxL3JHIFdhSYKpEOGfbGJPkXBrB8DLm
	/sFepCSJ1G5rb8TII6jHYLmyA61hUH9qK/6MTz8m5wlZASORm8F0MvAp1WswZd79WIjWsTupH5m
	nPbS0vuWoGH5QnfYC0SeF9Zt5C6wuo9j+ebbf/q9OVG3ailKZWWTQIvnZMOACMADs8idINWLCMt
	XbsvdkAY9A05zigJlfZxhETbHv
X-Received: by 2002:a05:7022:2491:b0:119:e569:f86c with SMTP id a92af1059eb24-126fc2cea3cmr1708334c88.9.1770310719421;
        Thu, 05 Feb 2026 08:58:39 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b832e4d18fsm3449639eec.13.2026.02.05.08.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 08:58:38 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 5 Feb 2026 08:58:37 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: carl.lee@amd.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Hsu <ythsu0511@gmail.com>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	peter.shen@amd.com, colin.huang2@amd.com
Subject: Re: [PATCH v2 3/3] hwmon: pmbus: mpq8785: force direct mode for VID
 VOUT on MPQ8785/MPQ8786
Message-ID: <07c39c3e-f82d-4ec0-b7fc-6ca9721d246d@roeck-us.net>
References: <20260205-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v2-0-3744cd9b2850@amd.com>
 <20260205-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v2-3-3744cd9b2850@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v2-3-3744cd9b2850@amd.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DMARC_NA(0.00)[roeck-us.net];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,amd.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263095-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: 1B009F5A22
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 06:01:39PM +0800, Carl Lee via B4 Relay wrote:
> From: Carl Lee <carl.lee@amd.com>
> 
> According to MPQ8785/MPQ8786 datasheet, VID mode configuration is
> the same as direct mode configuration. Therefore, when VOUT is
> reported in VID mode, it must be forced to use direct format.
> 

Why "must" ? Yes, the LSB is the same, at least for MPQ8785,
but that doesn't mean that the mode _must_ be overwritten. Maybe
I am missing it, but as far as I can see the datasheet doesn't
say that the VID mode configuration is the same as direct mode
configuration. It says that the _LSB_ is the same for both modes.

I _think_ the problem may be that the output voltages are not really
reported as VID values but as raw voltages, but the datasheet is a bit
vague in that regard. It talks about LSB values but doesn't exactly
say how voltages are reported, and for READ_VIN it is most definitely
wrong ("This bit is in VID mode with 25mv/LSB" doesn't make any sense).

Thanks,
Guenter

> Signed-off-by: Carl Lee <carl.lee@amd.com>
> ---
>  drivers/hwmon/pmbus/mpq8785.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/hwmon/pmbus/mpq8785.c b/drivers/hwmon/pmbus/mpq8785.c
> index f35534836cb8..d6624af076c3 100644
> --- a/drivers/hwmon/pmbus/mpq8785.c
> +++ b/drivers/hwmon/pmbus/mpq8785.c
> @@ -48,6 +48,25 @@ static int mpq8785_identify(struct i2c_client *client,
>  	return 0;
>  };
>  
> +static int mpq8785_read_byte_data(struct i2c_client *client, int page, int reg)
> +{
> +	int ret;
> +
> +	switch (reg) {
> +	case PMBUS_VOUT_MODE:
> +		ret = pmbus_read_byte_data(client, page, reg);
> +		if (ret < 0)
> +			return ret;
> +
> +		if ((ret >> 5) == 1)
> +			return PB_VOUT_MODE_DIRECT;
> +	default:
> +		return -ENODATA;
> +	}
> +
> +	return ret;
> +}
> +
>  static int mpm82504_read_word_data(struct i2c_client *client, int page,
>  				   int phase, int reg)
>  {
> @@ -133,6 +152,7 @@ static int mpq8785_probe(struct i2c_client *client)
>  	case mpq8785:
>  	case mpq8786:
>  		info->identify = mpq8785_identify;
> +		info->read_byte_data = mpq8785_read_byte_data;
>  		break;
>  	default:
>  		return -ENODEV;
> 
> -- 
> 2.34.1
> 
> 

