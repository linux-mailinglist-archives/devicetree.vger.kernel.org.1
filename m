Return-Path: <devicetree+bounces-273830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0H22D7X5sGkRpQIAu9opvQ
	(envelope-from <devicetree+bounces-273830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:12:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E5625C456
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:12:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 429953163605
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E95532B9A1;
	Wed, 11 Mar 2026 05:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GKUKrTYE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC95C24886E
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 05:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773205860; cv=none; b=Ac8y2lmgpxea/vRSBtzW9lYK7eFRTrpGiGYANxV8lUFsG+3qlR16za2o1uapFLjDVJVJcsX7690YAgqAfLGn830eH/f3c8x7iV9IJ7JIunNt1/97GNt4xbHc+KOfkrFZ2yBrZbOXYvTfEPtIjTA5MDL052dAzqZl5ijKrgCPTrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773205860; c=relaxed/simple;
	bh=OM4qA659h1ZDbIWPqTMqRO8/S3PkK0dlLyNE7bPqJZ8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PrMlZzIAFikC0bXUOtmzd7D4TwfQiRrBaxyLE6x7nFjMYYtPL9NwEUCjc8/U3vzdQGgx69op3ZkAheFTZA/TTYGMt1tm8ihMAY3679jBjO3TjWY2Kqnh413DE1YBZL7Vax5ioUD5B8iYeMzPhIxQUAzMS0IcycxZS/AXPAqLYik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GKUKrTYE; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2bd9a485bd6so11050067eec.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 22:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773205857; x=1773810657; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E3laUE6i6y3qJpg501FXVY7DCFbmQnP9JAUpAN9WyI0=;
        b=GKUKrTYEqjQdIPgmyYvWEYRBWj3tU/hpD3Nk0rEAO3N+gW3OagHoKuVdrN4JkqepOk
         DBhQdAV02T0TXRjG35ZwjYV/4ptxybnGDZbWFG9THQb2Q8SuRl7Z3tEsJ3AykRKi4hxJ
         q57vQZ+CQf8912pEkeoXrdb8MHSi74LXT28sshqaVshthB2wEdK3+4KIsUmHfp08PVWJ
         cavsoA5UySyUvJNiqPcFkaNgfwaBU/u4gq+oT1+cl5Ro/RQsicVoKXgu/dlj2KeuQJ/F
         oebkBMAza259swq00IPQ7gSld4YoWHguiF9YFyeZNHMbVBfCDBTIDHwJhA9FH13ew7Rh
         P2LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773205857; x=1773810657;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E3laUE6i6y3qJpg501FXVY7DCFbmQnP9JAUpAN9WyI0=;
        b=VPmfROELJdnRUfwW/vmeviYzJiwdcimpc6DcubOGIkwPklc5MMbQihX704eGyVfu/x
         IEEIcvXZB/PPqArkJUCKRmoRYEgTymFoF1TaRap6WRrZ4Ak8/sqm9wWjeyAo77ZBdVWm
         0ME6w4roa9aw82efZTmA4pGSUDJ/Buyo5/q2AqH/C1kUm6m5uhGmHidtK94Mxn+g6WXA
         nMvzeinqy2iE/G1Mhy9hJYRSRx5kHZfpxqQO0GDO7ivDJZ0JW/c4UB41wjlt7WZh9pch
         l3Uj1qVhOZhydGk3CLKxPbo5YNl5O1mW1vhV2ZP8XjkSZZAe1y2vuXV6oyeG+mZNRbFK
         st8w==
X-Forwarded-Encrypted: i=1; AJvYcCUFUpdZBSV7lWAHxMdva/6Z3Gx2LZ+LH16j58U8EC07hXgCDQeGho9vXMJYMLNJRb4Ix2pZaJiv6n5o@vger.kernel.org
X-Gm-Message-State: AOJu0YzfWgQTwtBuwC2Mq5N2eOHQ7/Z8I+FXOGObX3OUC9BrBREXx1NF
	CJTwElpTNvWRPscP9chEerrWO5jQZALUn3U+9Wnv5TU5Wkk+hrBDld2U
X-Gm-Gg: ATEYQzxXZ34xR41h1nxtVpYwZ8HyepBvQsW/4+m/3wt7NIBqUAL95WZ6hTmK24hxFfk
	pszSmowOTXN1Va3XiCmdlSqqhPeqS5dBGZAgQm3D8/X2A2l0Kyl6mZDzAw2Rw9CmuTCAwmi1kAb
	oGHWllK7bToAlKnq1A5wNebhQwu2/9xaExHYNSEPZmJE/zWp/lohXEgTQpqAF/BCJyp8IXIBOi7
	UQzo85uU0nuMSW4IA6JlL5pm5CQ46ayb4l8n/PGUSL251dPiWrYqGzN8C/lupbDAJAZOsejbO5l
	WDcYAl/TFrbLOsyHmpxJrNRjG1QmbFTbLhipQK9Nq2QJYJ1+qyP2iBra64rVDBktcoVUHbD3E9C
	gPAoK30+oIdo0dEZ5gQLsN5xuHy70WFTfGMtEos6UxCFvgRYg+ZdiQh2vdUgEEZWCPeXzxuzt/u
	wryfre0hDTfgfVmWX6tqgRaOQpVXKFFKiQlpXWjJ8uDonvf3GrCTzQf7Y/t4a9Sssr
X-Received: by 2002:a05:7301:2b05:b0:2ba:7b71:4f4 with SMTP id 5a478bee46e88-2be8a586373mr512287eec.32.1773205856884;
        Tue, 10 Mar 2026 22:10:56 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:6e17:9d84:ffa0:986b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be8a8550d5sm1192398eec.12.2026.03.10.22.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 22:10:56 -0700 (PDT)
Date: Tue, 10 Mar 2026 22:10:53 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Jingyuan Liang <jingyliang@chromium.org>
Cc: Jiri Kosina <jikos@kernel.org>, 
	Benjamin Tissoires <bentiss@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, hbarnor@chromium.org, Jarrett Schultz <jaschultz@microsoft.com>, 
	Dmitry Antipov <dmanti@microsoft.com>
Subject: Re: [PATCH 01/12] Documentation: Correction in HID output_report
 callback description.
Message-ID: <abD5HV7TeNHtq8hi@google.com>
References: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
 <20260303-send-upstream-v1-1-1515ba218f3d@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-send-upstream-v1-1-1515ba218f3d@chromium.org>
X-Rspamd-Queue-Id: B4E5625C456
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-273830-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,chromium.org:email]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 06:12:53AM +0000, Jingyuan Liang wrote:
> From: Jarrett Schultz <jaschultz@microsoft.com>
> 
> Originally output_report callback was described as must-be asynchronous,
> but that is not the case in some implementations, namely i2c-hid.
> Correct the documentation to say that it may be asynchronous.
> 
> Signed-off-by: Dmitry Antipov <dmanti@microsoft.com>
> Signed-off-by: Jingyuan Liang <jingyliang@chromium.org>
> ---
>  Documentation/hid/hid-transport.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/hid/hid-transport.rst b/Documentation/hid/hid-transport.rst
> index 6f1692da296c..2008cf432af1 100644
> --- a/Documentation/hid/hid-transport.rst
> +++ b/Documentation/hid/hid-transport.rst
> @@ -327,8 +327,8 @@ The available HID callbacks are:
>  
>     Send raw output report via intr channel. Used by some HID device drivers
>     which require high throughput for outgoing requests on the intr channel. This
> -   must not cause SET_REPORT calls! This must be implemented as asynchronous
> -   output report on the intr channel!
> +   must not cause SET_REPORT calls! This call might be asynchronous, so the
> +   caller should not expect an immediate response!

Reviewed-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Thanks.

-- 
Dmitry

