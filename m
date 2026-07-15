Return-Path: <devicetree+bounces-327150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AfftNI+dV2rPXwAAu9opvQ
	(envelope-from <devicetree+bounces-327150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:47:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAD175F8B1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:47:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kqiNt32g;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327150-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-327150-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 02274301586E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:47:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F46395ADE;
	Wed, 15 Jul 2026 14:47:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B425D37C907;
	Wed, 15 Jul 2026 14:47:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784126847; cv=none; b=CSE4HDAMbUo5jeJmICYHSl5AJmTr4KST2tryR4vA5EPauJYfgScE0HOzESqnaS6mrF8353AFQKQM3dt295/rToiUQklhbkE9po3lAEKrprxzFlg1f+xfCaEaKPUkJbeIICspUsv+IphNvgnqaf6xxeNJbTbCOCHv8QMJtUwNtFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784126847; c=relaxed/simple;
	bh=YscZYkhCUK9lKbh0UR9LVRVPfXsPMoB13J4yA8oeHXw=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=XARLI1vhTeigPJic8q2ljVTDtuyNqSn/YL4PqF4KgdrTQ/BcLFQrPvfDS13lSomxOPM7VmqgvFXR5VTOTq/6TnubNj2lhBxlemTHPR0ydKo+KwCJYv/ltznxc2jSlcitVqGR6ndgFGj0ZSqzWAtD9OdmkxkDcrGlVFpNsKtUcKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqiNt32g; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95C551F00A3A;
	Wed, 15 Jul 2026 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784126846;
	bh=WKCdQZKsrJq19Puk4Z79f2jp8rTVwuThYbvhiTw5hmQ=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=kqiNt32gPa/PoX9GShy8W1YmV8pF6kKz4wOcu60yBMF2ICDl4WDu79HTqpL44hXQF
	 ElhZEbqL3uHr1q8cOKH+395w6JtOjHeEp0RUVtgEcCxJSdpiq1Y6TZvhzNaZ9EA1wp
	 O/GFojY9OyFWe5uoupmlJ//lS1bbRf0oSYNFwwoMcZgZgTmSjQNHA9xoDsOGiwx2/z
	 iPqpvBOAiWgQmxJeHIPZ5QB0LO49Gu1t7BJj4N5bhc/65AqiUgphIBRSf5b+hxkwzW
	 yoeW93jnlDzYoNh5rfJ2QYlBVq5umuXK3hHEp/0X1m/E3ihrUvfwNZpBOz7CUOd/y6
	 idv6N/Br6jepg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v2 10/10] arm64: dts: apple: Initial T6030 (M3 Pro)
 device trees
From: Sven Peter <sven@kernel.org>
To: Janne Grunau <j@jannau.net>
Cc: Sven Peter <sven@kernel.org>, Neal Gompa <neal@gompa.dev>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>, 
 Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Andi Shyti <andi.shyti@kernel.org>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Sasha Finkelstein <k@chaosmail.tech>, asahi@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-pwm@vger.kernel.org
In-Reply-To: <20260715-apple-t603x-initial-devices-v2-10-df65b2485710@jannau.net>
References: <20260715-apple-t603x-initial-devices-v2-0-df65b2485710@jannau.net>
 <20260715-apple-t603x-initial-devices-v2-10-df65b2485710@jannau.net>
Date: Wed, 15 Jul 2026 16:46:42 +0200
Message-Id: <178412680286.41818.12702064623332890739.b4-review@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=645; i=sven@kernel.org;
 h=from:subject:message-id; bh=YscZYkhCUK9lKbh0UR9LVRVPfXsPMoB13J4yA8oeHXw=;
 b=owGbwMvMwCXmIlirolUq95LxtFoSQ1b43JLvfZ/MlabzyE9x+BxTfYF3bUkLg3aEYWhi4IyNv
 GrrX37pKGVhEONikBVTZNm+3970ycM3gks3XXoPM4eVCWQIAxenAEzk/U6Gf+qvXnrsVpy/5O3u
 42kMC6wrrttN3l8vn7RuVcSbDcKH10ox/BWw4OGXkPp82lBt+caXm6LF5nw/Ee2l/aWIP2O7bsx
 /f1YA
X-Developer-Key: i=sven@kernel.org; a=openpgp;
 fpr=A1E3E34A2B3C820DBC4955E5993B08092F131F93
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:j@jannau.net,m:sven@kernel.org,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tglx@kernel.org,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:andi.shyti@kernel.org,m:ukleinek@kernel.org,m:k@chaosmail.tech,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-watchdog@vger.kernel.org,m:linux-i2c@vger.kernel.org,m:linux-pwm@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[sven@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-327150-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jannau.net:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6EAD175F8B1
X-Rspamd-Action: no action

On Wed, 15 Jul 2026 11:11:57 +0200, Janne Grunau <j@jannau.net> wrote:
> diff --git a/arch/arm64/boot/dts/apple/t6030.dtsi b/arch/arm64/boot/dts/apple/t6030.dtsi
> new file mode 100644
> index 000000000000..2a0e830e0cc1
> --- /dev/null
> +++ b/arch/arm64/boot/dts/apple/t6030.dtsi
> @@ -0,0 +1,524 @@
> [ ... skip 356 lines ... ]
> +			 */
> +			clocks = <&clkref>, <&clkref>;
> +			clock-names = "uart", "clk_uart_baud0";
> +			power-domains = <&ps_uart0>;
> +			status = "disabled";
> +		};

serial needs to be moved one node up above pmgr_gfx.

Reviewed-by: Sven Peter <sven@kernel.org>

-- 
Sven Peter <sven@kernel.org>

