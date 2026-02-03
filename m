Return-Path: <devicetree+bounces-262411-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FL3C2legmnTTAMAu9opvQ
	(envelope-from <devicetree+bounces-262411-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 21:45:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F080DE9B6
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 21:45:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 78F58306AF26
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 20:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EA5427FD62;
	Tue,  3 Feb 2026 20:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OMO8mzeq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07192A1BF
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 20:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770151526; cv=none; b=XDxWk+VJ48CTedQF50ZxDwzl5Hx/6umL3Gjb01FLVcAZvxmTsWVZrvgfv/a5aRdjibMnC/dsZb5E4TOugxZ4cLzNT8+XA96wRbiIEArMeTgnPHqOD95hdYoC03TOAgj2Z6ka8OMOEcIF0QNbBB8jrA2v2UYGLvO+SL3Yx6Q/4WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770151526; c=relaxed/simple;
	bh=JRBnZ+8tjOilMeZJMOzCmDnmZL1fwuQqpAz7EJltbms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V65rhc0gUTIsBpYCBWm2VKIcXQuu9cZMF27UWoDcB0Q88ID0S+nJAyNNvJUrb6fspGni9BpFuCAGsvW7rCHo4tOyI2osRAz5+NNBf3MLz9VHCYVM69o+OC4/GWD7WA2y/qmynwB55WPiE7HsvAt70qh0Kk1V7x7chovG9oXFDeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OMO8mzeq; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c6541e35fc0so3462704a12.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 12:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770151524; x=1770756324; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SY6DYLnqRnlkJ6nNpwpLKHnvyItg1y7t+nOJ7MRScBQ=;
        b=OMO8mzeqrPH2Iho15bxaFba0CIj/FzxXX9jhgdFpPX30XknXQVNnN+qBoKiSXcuQNW
         0JTQIgujgXWjoCm7PupI7ag6OsUWVj2O/6yiH4VBZv6AYKGMRM2wtxOmW66nkqTgRfI3
         zVGlqknXFjFnOM0JBNDLGVOvRxdfvyqCm5L0/1O/DGg78N5oxuRrYAkgek4Tm13BtiHO
         5TFXMv5kiw6Ufqk/AcTvMR7a9jPfROw5dfVvxSMAjDF8KJASvfNrt0iGHks/lBFDfvbX
         EGk0yfH7xwQY3NbmlgHqn58IB5kQtl0rFOKIz1YetLamT719nDZYjnK68K1bJv/4Ao2e
         LosQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770151524; x=1770756324;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SY6DYLnqRnlkJ6nNpwpLKHnvyItg1y7t+nOJ7MRScBQ=;
        b=qOc939twZj2E/6qV4DtsXHxV50sO6JyHk0oy6VA1a00W/BgciaWMJtuotE/gOxgJvm
         JbLuULMWqgvCXk1NB7O/hc//Hl1D1vKK1+n+0JwkS7/x5ealM+CRjNzSUyRppVv5Ypl+
         W6V4gUivuN6boPtA8f3LoJNfaBN8vsP9lr3PEieIIMwE56g7e3PuVEH4TEK0Jqio17do
         N90p/CTubwGDtzylzdVP25p1X64wFzCdFmeKFLQWjOCTr1TGQwImcMZgBKq3+BpnOACR
         2rgwDmSk+VJZRZ6UXeFBUa1t3vNjGxKw2FymPpZsc8R5HZl6SKNZWjRapAXZfXXGQBLd
         XbUA==
X-Forwarded-Encrypted: i=1; AJvYcCX1XGCDEXn51wWvVw/eXx7XLV3GLahN3MFNvQgkAAe/ZUP+pobxkWfq3GzExzY3LLDOlUEq4F8Z1J5p@vger.kernel.org
X-Gm-Message-State: AOJu0YyNz0j5i/l4CzLmHzCJDum6hPWP4jST8wlPdt17+BU0G2hBkuLl
	cNfHLZB8LC8wOvbO7SmPgSaa4tDuTPrSh/zyHNC4Aje436tFVsAI0fzL
X-Gm-Gg: AZuq6aICIq+zbvlWHSHAr9vjKw1zlhRJR73A5TLwsdoSXnl1Frv1ujV6AYm2gt68CYu
	s0YT/vIPdhieMOJHj/HxZKFX47CovUmrSdKzwLgwcbDqrYp8fyZX/W8DTCIfyvLXAZs5DI1B9Yw
	ROtrCdDEYomLDGlPwUexm1+Js0KlV0cDHoDXZp4znj9t3vMnzFtLvABT82hApmDCTk1QhY00CH2
	yNOvPs1mgaUMHDN3kGxvBTtwTYj0aTP2H11qJzqYcSEHdmw53hlAycad97TvovByU0v1cTdsQBV
	1YxFmHis1Qvu/xBxqJa6ozSLtlFqL1inyQx0Fy4KAW1a/vJq7KPODDxBtexYIp2ZuCfnUiMCvnc
	bHmif0Ds9px1rMD1VqM3e1BcuS0xtdLAjauEI0H4ewL9vONZOovr8bDdyt5zNrixFCZ1AgYZC2X
	Q2+6VXEm9YJygBdHfw7h/Jj0mDU2Pv2z9WCSE=
X-Received: by 2002:a05:6a21:718b:b0:393:7575:a8c7 with SMTP id adf61e73a8af0-3937575c9b3mr85990637.19.1770151524247;
        Tue, 03 Feb 2026 12:45:24 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6c8515f36esm175662a12.29.2026.02.03.12.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 12:45:23 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 3 Feb 2026 12:45:22 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: victor.duicu@microchip.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net, marius.cristea@microchip.com,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v3 2/2] hwmon: add support for MCP998X
Message-ID: <99479712-9847-4113-8092-b87f1298a6da@roeck-us.net>
References: <20260127151823.9728-1-victor.duicu@microchip.com>
 <20260127151823.9728-3-victor.duicu@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127151823.9728-3-victor.duicu@microchip.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-262411-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DMARC_NA(0.00)[roeck-us.net];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: 9F080DE9B6
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 05:18:22PM +0200, victor.duicu@microchip.com wrote:
> From: Victor Duicu <victor.duicu@microchip.com>
> 
> This is the driver for Microchip MCP998X/33 and MCP998XD/33D
> Multichannel Automotive Temperature Monitor Family.
> 
> Signed-off-by: Victor Duicu <victor.duicu@microchip.com>

Gemini is having fun. Another good point.

> +#define MCP9982_HIGH_LIMIT_DEFAULT		21000

AI:
The default high limit of 21 degrees C is extremely low and likely to cause
immediate alarms on many systems (e.g., room temperature is often > 21C,
and inside a case it is almost certainly higher). Standard practice is to
leave limits as configured by BIOS/firmware, or set them to the chip's
maximum rating if unconfigured. Overwriting them unconditionally to 21C
is a regression in expected behavior and usability.

Me: I would not call this a regression, but Gemini does have a point.
Why such a low high limit ? At the very least that warrants an
explanation/comment.

Thanks,
Guenter

