Return-Path: <devicetree+bounces-267962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPVJJf/FnWkRSAQAu9opvQ
	(envelope-from <devicetree+bounces-267962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:38:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF3F18927F
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:38:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9B85630882FA
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E863289E13;
	Tue, 24 Feb 2026 15:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b+fF2w7R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com [74.125.82.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4244D27E1DC
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 15:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771947415; cv=none; b=H8kChBEwKuUEc9cde0lw6mhe3lRZpsll3S8OmKO/7kb6/aeceyoiNOPJEONIa1avl95f1LJqvpJHcUP9W3yt/mssAAM5RF20/h9134HZWqWP1tH9kU+KXR4RtXcX3WjivcAcgUzDK/sOJj3Pn5vLrYRlnjhgl2ceu+Nm73w2rfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771947415; c=relaxed/simple;
	bh=rLpX/y2Cl/jQl3ZNkpEcClUh7P3N6PP6tj7DaIZfki0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W0NWsUOLwDfkpNKY03JJIxJCdHvh+IXQ/786TzcIDS6kqu/K9O9Ox94So5km+zVlTgCyaNdkXDyTbHA6jh2QuAYGcXGfxb5FB7eg9z6TVU3o5BFhd+JsXau2VbWK2HhF1gMds9kMqQYK/NAni7yL6NghG8DevmWoz3R/GHLSydo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b+fF2w7R; arc=none smtp.client-ip=74.125.82.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-1274204434bso4332676c88.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771947413; x=1772552213; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+oqiWdRSzTyx05kcW6bZuttjxv+FJl1Sh32tunh5LQ0=;
        b=b+fF2w7RLKLYMakxOETa3NS+Ja/MFAWN4XqHZapcTdypTyBdp8MCvBfpNa5M9tTzCC
         So9UjflVigJ9BnQ6C35khnMI84JmnnddlWe1duXCaTyS26WGZnDQwsribNRs6Wbyjo1P
         daXSiLQQhhLl9jmhS3rYC8Ixev+rxJSQprrEtkaJFh6iSEOAyjnfgIaBSwpkHTekVALa
         a/JUrIDgEddjLXhr5HTBma6Wff1w7CV99jlpXiue+7rjDbDbCGU9aUM1vngnZQ0+CY/q
         2rFuZBqsitB6FdRryzOa6hthbs2t2Z0xW0i0tvxC2VeKE7tBSXPAl1xYWK5ltbK7vAf/
         fW8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771947413; x=1772552213;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+oqiWdRSzTyx05kcW6bZuttjxv+FJl1Sh32tunh5LQ0=;
        b=Gin2Pvd49tbW8+oZ03X6z2krVyl7af+J74Yc/Q7c1fCf9zz/95nSola66pnBWBe03j
         jGqlE7xWc2Y1ysoPrC+EFmNA2lYTG7ALfbaIUrbKap8IL61oXFXofz4ZB3sUtbKSEAPr
         Pp9N4r8XJi+wiM8UkRgl2vH9l7Sq7p8jcnsRmS19Ha4d9OLkqVxVFs+HVitJloFzUf75
         yavbjQLQ/Kk9Pw0O2IJMxTq4CYfMcKZ+VP9fDf+dgTEPoOpxHWKJule7meVwgRO3GVu+
         O0OaYQu5Y81snXH77moLJdpAlrgbjJJmSrNq2mDhYQVHd+Qc42ID9+4rzgaSl5F6fziQ
         /pVw==
X-Forwarded-Encrypted: i=1; AJvYcCUV7soPsbcuHRdNm06FhzC+rrXhJeJ9tIjTC+xufsKVX7RC/tMd+GpK6Y0vq2FX7mTWpzh9H3KnmUWl@vger.kernel.org
X-Gm-Message-State: AOJu0YxM3ECLJ02uQdqJnR0j6R6VBo6nJN/z9TyF2E9d/VPN8k7K3P9a
	wLP3AYS5Llbnk6VW5CuHwrA3rosYsEjtVr7g8vYK4qNvciRrgi4Zr1i2
X-Gm-Gg: ATEYQzwSYb/lk9hKka0UALvBVwZj+rDEbiXiYq8OhoITnUH9smlu+ts3EwaIpcenO5q
	LnoMTy7/fVAGz75YOSA6ZVhovUuWOclzAkjgPgV+b/9qDZjmeFLtTkGXbGH6xJ1XgNH6wXjzyrG
	0AdCLBNibGjrRDJofYwagjGZaCpa36kpc9eBZFLSpIo+/huvEDzwQz+/UIFWFaQB9JpvbgCQneo
	iMSxyn2qkVWwcfBnw9SQ7ZHXsU3DbOQ7aswpPXctaoRu31zsVFTHl3vuzG/8TtrJ4NCZRrtQUtd
	UPHjDczQCESCLRaocJlRDWk+x4Le5T7uSEGS2ACBC6+iNm7fARFiH5NwYA/7d60fS19sr17BDCi
	bOlihZxXrOG0CzVJBOkw5XNruMvOCcX7czq1pPD0u3EUmrpJQuY/3N4jf7YIjrUgYdbxFTgYbYP
	FPzfJTc6+6Tq4fH3pS0mRBtvCTq7VBmHyrtEuZ
X-Received: by 2002:a05:693c:6301:b0:2ba:6f16:10cf with SMTP id 5a478bee46e88-2bdbc5239bfmr124449eec.14.1771947413298;
        Tue, 24 Feb 2026 07:36:53 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7daa3d77sm6823262eec.13.2026.02.24.07.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 07:36:52 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 24 Feb 2026 07:36:52 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: ASHISH YADAV <ashishyadav78@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: Re: [PATCH v3 3/3] hwmon:(pmbus/xdpe1a2g7b) Add support for
 xdpe1a2g5b/7b controllers
Message-ID: <cc5db8cc-bec1-4244-8d1c-c1fc5a79bc9a@roeck-us.net>
References: <20260223050804.4287-1-Ashish.Yadav@infineon.com>
 <20260223050804.4287-4-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223050804.4287-4-Ashish.Yadav@infineon.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267962-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0FF3F18927F
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 10:38:04AM +0530, ASHISH YADAV wrote:
> From: Ashish Yadav <ashish.yadav@infineon.com>
> 
> Add the pmbus driver for Infineon Digital Multi-phase XDPE1A2G5B and
> XDPE1A2G7B controllers.
> 
> Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>

Applied.

Thanks,
Guenter

