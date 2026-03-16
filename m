Return-Path: <devicetree+bounces-276290-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMTGNr8muGnhZgEAu9opvQ
	(envelope-from <devicetree+bounces-276290-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:50:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A052A29CC3E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A5EDB3050ED8
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D766D3A543E;
	Mon, 16 Mar 2026 15:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LIp015W9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DF23A1E70
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 15:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773676067; cv=none; b=PsnlFUpK0bvWkAJSmevB9YHr2CWP/lzhInjyRHr98uN/HUF77izIteFy6o/apefRe8rP3R4ybokXGCOuHtx2ffVoBLC+tHmyHcBHeqfpGGObkZ1/gWLAI8lrxy3TtUPgnBYjrcEv2YTb4relETHERaukCpzBFkv44TCk6H2c9gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773676067; c=relaxed/simple;
	bh=mt7njM8AMm3366rY9bZXkt/iQj9L9Y+U9ts2fzBUnT8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q+zAv87hcUN44qFd5uQ3RL0UMwo0XAIPKhOsvcqlYGLFOHG6bkfSR43Tja/RMBYCzf2g4ZSKR9R1pwvm5ZZ1wrtSyrZU7ShOu2J0fJcWf1QiwlnSgSiM9mMlgme80q1brnbrc73rsPp6mTZf8Vq0089iFx/G61AILg8zmHyDqWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LIp015W9; arc=none smtp.client-ip=74.125.82.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2bd9a485bd6so3012060eec.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773676064; x=1774280864; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KIbl9qFxJrmkiuonu3RjguYUay2gXS+vKFLd6XX8oOc=;
        b=LIp015W9YoJTicgjk8ovsupZRgmsJQjS/JWd+D3F2zRM8dRflWQ9O8pcbzHALWr6ay
         9cQF+ZcnVTSrsFqHkIIHNFqWfZaEq+1lgy4XIbG6ieETcUgYajTiN4QvZh2gaT3qucd1
         Zg4H3IUGbStHSpwJPOJLvOHPdeSScVPe6T+wSdv4BbLUcLgpGd9yzKuMFr7BhgbrKOSQ
         NH/CGbu2DnWSeBqhTQnok+jjBh6NuXn7lnBMsNk5bp+JwKbGPddB69ZM5hIGyYZyF3fM
         5nwh/APwOD+TjBxorMJ++ysRR9ltIxDKNlrjea7DuZtZcquUMscD4y+bJg7qqjc2QWxu
         h0Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773676064; x=1774280864;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KIbl9qFxJrmkiuonu3RjguYUay2gXS+vKFLd6XX8oOc=;
        b=WVP6tWrZ/WP6jeX3n60YMZkb6a7aIdAqRnBY6FI/+emSg3e6lCkagLizM3MqJflBJi
         ToMqA/d862PJn0o4toaNbnJkall1TOCf/+72vN4ElffbFZDKsOgL+TCfPr8DWM0oxyQ0
         VPB9TKhL48szzm3mAGX6uS3BW7dbS6CsKXJtPBYhH/5mZwuPOQIckxLIasxKE6/u6qoC
         1h7DOZgZ6yqZQlBk0P6nktqs8RHrMpOPSMB0riAOz5fM4NWb8FReBOu1jGBqzznV/VwF
         nzDEX4DQSl/FvsSMtiGlot9MZA0uBnPIpc4d+gd10hRDl+vehZRb5SkWDodEmgcw3tZT
         iq0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVoixtfCxiOA/4jkyEv67XGYkEpFAK5U3HmFImvwb0iWtiRUO/yYj7bBdTLF7lExIK9eu7eYgn4Yehb@vger.kernel.org
X-Gm-Message-State: AOJu0YwsnLKxhKU0zuVquped5KQgqah3zaU+G2VwVVuX5hCjShQUcCfX
	KMt3W4bFrTzD7VqZbuu8ZnuWpDp1Ck1vw3Py8GE6d1e5B1UJ/90xl0Tb
X-Gm-Gg: ATEYQzwFmwiz/AaMu0xE/+/kTSukZGFVDjZa63Mot5Wdc+DK9HBCbSYxwhvCYdVmXgk
	TKqIbOzl8WtamGZLCqVIxc2XGg039mw68apmblTXglfuv2Rf0JkRNpEoWz1MjTp3NzkqlRdyisr
	8wkK1MsRmYJ7PJOJc2ChT3U5QOt5lpRA8BcdXJDC9EDS56DoeYbamglmWW1IoWGmK73d8r94lzD
	2BqBexKlnS3bEMAXf3a8g7xp5EuUovbu4kCBK1XWI7jwCsvu9ik3hG33JjYnmhHSu+ZkeiNIamR
	lFSVbxzw3AHW3JWLha65N0HXwd+rMk0PfMlUupIbdRATLjFUtmAMt+/c1i6fzyOImFoteHUgkPj
	Wabl3g3XHiufm6iBnUtTcBUP0+VjUN7awiTAI165UzzteKHOryMBjEUxwplwrU0kJAb5YTzuW6e
	Z2rQ9G3ZC9lH9QjR7RqWbwFX2PueY6vc29r+rH
X-Received: by 2002:a05:7300:c9e:b0:2ba:6b03:909b with SMTP id 5a478bee46e88-2bea558f037mr6495235eec.19.1773676064417;
        Mon, 16 Mar 2026 08:47:44 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c0b1fc876csm9911380eec.29.2026.03.16.08.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 08:47:43 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 16 Mar 2026 08:47:35 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Dawei Liu <dawei.liu.jy@renesas.com>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, corbet@lwn.net,
	skhan@linuxfoundation.org, geert+renesas@glider.be,
	magnus.damm@gmail.com, grant.peltier.jg@renesas.com
Subject: Re: [PATCH 1/2] hwmon/pmbus: (isl68137) Add support for Renesas
 RAA228942 and RAA228943
Message-ID: <35c39de7-773a-4f94-b495-97eb25555a71@roeck-us.net>
References: <20260316053541.3903-1-dawei.liu.jy@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260316053541.3903-1-dawei.liu.jy@renesas.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-276290-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,lwn.net,linuxfoundation.org,glider.be,gmail.com,renesas.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: A052A29CC3E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 01:35:40PM +0800, Dawei Liu wrote:
> Both RAA228942 and RAA228943 are digital dual-output
> 16-Phase(X+Y ≤ 16) PWM controllers
> 
> Signed-off-by: Dawei Liu <dawei.liu.jy@renesas.com>
> ---
>  Documentation/hwmon/isl68137.rst | 20 ++++++++++++++++++++
>  drivers/hwmon/pmbus/isl68137.c   |  6 ++++++
>  2 files changed, 26 insertions(+)
> 
> diff --git a/Documentation/hwmon/isl68137.rst b/Documentation/hwmon/isl68137.rst
> index e77f582c2..0ce20d091 100644
> --- a/Documentation/hwmon/isl68137.rst
> +++ b/Documentation/hwmon/isl68137.rst
> @@ -394,6 +394,26 @@ Supported chips:
>  
>        Provided by Renesas upon request and NDA
>  
> +  * Renesas RAA228942
> +
> +    Prefix: 'raa228942'
> +
> +    Addresses scanned: -
> +
> +    Datasheet:
> +
> +      Provided by Renesas upon request and NDA
> +
> +  * Renesas RAA228943
> +
> +    Prefix: 'raa228943'
> +
> +    Addresses scanned: -
> +
> +    Datasheet:
> +
> +      Provided by Renesas upon request and NDA
> +
>    * Renesas RAA229001
>  
>      Prefix: 'raa229001'
> diff --git a/drivers/hwmon/pmbus/isl68137.c b/drivers/hwmon/pmbus/isl68137.c
> index 78cff9712..da2484d42 100644
> --- a/drivers/hwmon/pmbus/isl68137.c
> +++ b/drivers/hwmon/pmbus/isl68137.c
> @@ -63,6 +63,8 @@ enum chips {
>  	raa228228,
>  	raa228244,
>  	raa228246,
> +	raa228942,
> +	raa228943,

AI:

  Is it necessary to add these entries to enum chips?
  Looking at the rest of the driver, this enum does not appear to be used
  anywhere. The device data mapping seems to rely on the variants enum
  (e.g., raa_dmpvr2_2rail_nontc) instead.

It has a point. 

Guenter

>  	raa229001,
>  	raa229004,
>  	raa229141,
> @@ -478,6 +480,8 @@ static const struct i2c_device_id raa_dmpvr_id[] = {
>  	{"raa228228", raa_dmpvr2_2rail_nontc},
>  	{"raa228244", raa_dmpvr2_2rail_nontc},
>  	{"raa228246", raa_dmpvr2_2rail_nontc},
> +	{"raa228942", raa_dmpvr2_2rail_nontc},
> +	{"raa228943", raa_dmpvr2_2rail_nontc},
>  	{"raa229001", raa_dmpvr2_2rail},
>  	{"raa229004", raa_dmpvr2_2rail},
>  	{"raa229141", raa_dmpvr2_2rail_pmbus},
> @@ -529,6 +533,8 @@ static const struct of_device_id isl68137_of_match[] = {
>  	{ .compatible = "renesas,raa228228", .data = (void *)raa_dmpvr2_2rail_nontc },
>  	{ .compatible = "renesas,raa228244", .data = (void *)raa_dmpvr2_2rail_nontc },
>  	{ .compatible = "renesas,raa228246", .data = (void *)raa_dmpvr2_2rail_nontc },
> +	{ .compatible = "renesas,raa228942", .data = (void *)raa_dmpvr2_2rail_nontc },
> +	{ .compatible = "renesas,raa228943", .data = (void *)raa_dmpvr2_2rail_nontc },
>  	{ .compatible = "renesas,raa229001", .data = (void *)raa_dmpvr2_2rail },
>  	{ .compatible = "renesas,raa229004", .data = (void *)raa_dmpvr2_2rail },
>  	{ .compatible = "renesas,raa229621", .data = (void *)raa_dmpvr2_2rail },

