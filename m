Return-Path: <devicetree+bounces-312638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LOIaHON3MWprkAUAu9opvQ
	(envelope-from <devicetree+bounces-312638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 18:20:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 06520691F76
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 18:20:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=o4+k8NkB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312638-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312638-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26A5830D89B0
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 16:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83C49466B57;
	Tue, 16 Jun 2026 16:04:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8BB466B4A
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 16:04:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781625896; cv=none; b=fkUF8xE0HK9edPXvSJwmUzanEAQuFVtRn7y6mFKNsHbLfkBKnOj5BLdtLkFKS5og5Bom5H/MkicZKbj0hok1EOyD/Z99Nnmd+oHjFBRswm0QtxDOSI7VKj+l0CR5mVqVD+ajxyhCxyWFxICRcqqg6rQPJKmVFHGuk0RVgqK190w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781625896; c=relaxed/simple;
	bh=JTt1BMASzO//6s0s3UfTfNPQ0ZPG1KOklgGV1NBlrY0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S+pZoM8F4mD3fcxtRwEdQ+L2E7oPRDXNkiAzfICERwVbrIN/y7AHYNvVo6RsyfuerjBj2BUFZIzErAQYhbEeve+Q9rVTopVvYZQHFcPs/hasj6WrT6kf+xuoukcERWAArk5+o5+Qor0zPkMEIxeQbAWM76eWV0EMcPV4cMUu7/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=o4+k8NkB; arc=none smtp.client-ip=209.85.216.41
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-36b9d265355so2385229a91.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 09:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781625895; x=1782230695; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u5o8E4nnwz23oQMChItrPyRSqtcUPm5+4qrteQjtd8Y=;
        b=o4+k8NkBF9BBDH5L/o9pOUnIJqW3hTSSTgue1TtfZbVchwl0dAyeA2/vzyPL//4CHN
         9ZM9Eo2QVCBVO7YchNwFEtjVkNiVkaZUi5XkcSFvQHNXm5fth4KjW1iaRoas7dp999Rr
         2jtXsn9jYjgpsWOhOW/VMWrTnfr5lPtjtgYisNVu4027L6glaPxgU1r/5NN2O/A1Gd5J
         j2LwTYCQl0SdKWhI0QVpWxH5oVBO0xkPpUbk6eT2LKUfCavv8XXn3dmAgKP0DzShVqRx
         TfJwjd3sjCkyOn0+neH/LX+KfQQ+06bOllsar6OkXAK9K2tgDXadYzByBf/tdgP2ybZX
         OHtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781625895; x=1782230695;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u5o8E4nnwz23oQMChItrPyRSqtcUPm5+4qrteQjtd8Y=;
        b=WOp3kC0DMJaZn5ASmRulzo9C1O0uwptwlD5lEP/ANAvyzSJf1ZPeW+W0bexYwL2md9
         WUBWZdvHPfkoY4fUIDhFLEZ/sCq6eJSezk4SsqStRO2L49qoVZOT9CH39pqZ/kM7EKdL
         /i4T2K6RX+Vs3ft+qtimeijI5hScssYsJzfGyJPRyRf1K9yi27cn2EJL+4mg9NvXqaL3
         /YFzUDglab9Jpd++WohMnkNoX0j9cmzYpIPK6AOS3aC7dAtA2tdSpbsArfPiwpPM9kmu
         tEbRaZ1ZAcFW9RzABLPz7Bsf4D7gQkXZpj+KXXhQyrcmxeZpQyumnO+BT4LnNz48jHzE
         wMDw==
X-Forwarded-Encrypted: i=1; AFNElJ8Oiq7bNTC63wR8qjyJz5qAVPK3TVy19gVtCKG8+EMvDUw03T6yiHr3YypqycQOzy4I3MkAUOu8dreJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx3NLXidN40LVxfLGQrRFkeXwo71wNGbvwINsWBYoLGI2R8y77
	sO0ckq2DyiqVPbGLirITa6ZefBEEwd71SZsD1o1sGRGDR4dsSOmyLev6
X-Gm-Gg: Acq92OHtXgAK1Zs83BeGX9T3oEu9GhCMxcGpfglvYzhoB3Fq36Q1muVwXzrOKCASguX
	tHRz86MtYS8nLINQx9D7A5TdHevA5DnhMtFwm60yE0tpvjIl9xgNwI6eel1jaZnRD+H4chTqcUF
	R6ytH6WTt+zsTtAmhIqksr0/BSvToRyJ7BY8CMGynqlPOmX3eyHKarG8nUlRLxz/Qxw/Y41KE8/
	aYjZwGkWTFPIHHjk528VBtHD9oyguIgRoup/yOhrkCxEv7M2SjB6RM2D8aZy7YzL9IyCEIRn6fC
	3y0nMNP1qfoDifg8ifAfQAVfF6XNwLc3B/NSzcI8T3fXj4/wNLrQ1niqCtZXoyNIx6xX3T/SQkK
	KaGllRaxroRP3MiqhJO1tULXdGOtUWyUW2s9szz+29j5GlDpf9Ug6e6WiHRijZ1itkKIak9VhQG
	bqgzJtZeWGprJR9YfhhE4gw+vG2dJE/CEL7DbyM7mlnvg60b0=
X-Received: by 2002:a17:90b:3b86:b0:368:a297:bd3d with SMTP id 98e67ed59e1d1-37c930ac615mr128203a91.3.1781625894719;
        Tue, 16 Jun 2026 09:04:54 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37c521aa16fsm3366290a91.4.2026.06.16.09.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 09:04:52 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 16 Jun 2026 09:04:52 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ziming Zhu <zmzhu0630@163.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, Ziming Zhu <ziming.zhu@silergycorp.com>
Subject: Re: [PATCH v4 2/3] hwmon: pmbus: Add support for Silergy SQ24860
Message-ID: <0b3e63c8-1249-48ef-8f96-2309d7177c59@roeck-us.net>
References: <20260612030304.5165-1-zmzhu0630@163.com>
 <20260612030304.5165-3-zmzhu0630@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260612030304.5165-3-zmzhu0630@163.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312638-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zmzhu0630@163.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,m:ziming.zhu@silergycorp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[163.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,roeck-us.net:mid,roeck-us.net:from_mime,silergycorp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 06520691F76

On Fri, Jun 12, 2026 at 11:03:03AM +0800, Ziming Zhu wrote:
> From: Ziming Zhu <ziming.zhu@silergycorp.com>
> 
> Add PMBus hwmon support for the Silergy SQ24860 eFuse.
> 
> The driver reports input voltage, output voltage, auxiliary voltage,
> input current, input power, and temperature. It also exposes peak,
> average, and minimum history attributes, sample count configuration,
> and maps the manufacturer-specific VIREF register to the generic input
> over-current fault limit attribute.
> 
> The IMON resistor value is read from the silergy,rimon-micro-ohms device
> property and used to configure the input current calibration gain.
> 
> Signed-off-by: Ziming Zhu <ziming.zhu@silergycorp.com>

Applied to hwmon-next.

Thanks,
Guenter

