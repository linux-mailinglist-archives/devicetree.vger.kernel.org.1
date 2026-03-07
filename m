Return-Path: <devicetree+bounces-272383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JPuDBXTq2myhAEAu9opvQ
	(envelope-from <devicetree+bounces-272383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 08:26:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4263122A984
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 08:26:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 61B29300D748
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 07:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2287036D4F0;
	Sat,  7 Mar 2026 07:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="F6Cmsd/B"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com [95.215.58.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C03B35A39E
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 07:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772868368; cv=none; b=j+AeukXY9/Pw3xBYtrYGQCV5azNu20RB23pgwXeMm2vbcKsgaByk3ZzcxCFms9LxyUk8r+GU32hlHVzUMHEu/5tE7hXTwIPislJpp+sZqTpRTNgRfGpYyoh32auOdixDXFutqqPkMJmmCOxKaqNQq+HpPyjeum51msCjNWbBJGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772868368; c=relaxed/simple;
	bh=Mzr7y4QH1IzyO44ZlhNV88cM61KS6U7bP9zhV9sW7JY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b0TezCpv/8JyBhWoUmYpDOtpSC9Fg02gDJyr2nYY9eYhYuOfEEB6xmkR7CkY8feIciMy3P0IyCWZIPm90d5bU4kQRQ1NhdTHUjlfhkepCEgv6ardAZ5jepo91KDwwNNjWOdp2fD6KAYQBNXma/7sUPn3W7phNhRCeTDCVd+/G0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=F6Cmsd/B; arc=none smtp.client-ip=95.215.58.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
Message-ID: <1cc6de61-8b56-492e-ab78-e3aa448f58ad@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1772868354;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/2+6NWzTpol+frWt/3c7B3LJfpEfyNZMXCdsBfpvUEw=;
	b=F6Cmsd/BYepDn38XmUEHEczMxHTa1zURkFgn8+XYAvwoAIo14tvO2fl9Fzi31PO3nOsU/L
	d2hbN8PlvzxwKNerfH3vDN1Wv+JVYu3LF0gRjJQ3z8UVNDMiu8Zzpum79j+L1JrFR861Si
	9j07WFQZ4qPZEd5be0waEn2QT1FT2nQuJea4kKu1UJZ1r8c/Gspbv86LUDLE0ejTPml2eo
	aQEt/Thkha2LmzcANcfO9pUjNNZzqmuQ1gCQeVzpzvX832SUrTVKvNfbluVVFv8EZiaJ3h
	x/lHgZbT8nap0ngrW02gfr1c2s/2WP1I0Ol0Q12hbf+lB9yW0sXdpmcWMHeBtA==
Date: Sat, 7 Mar 2026 04:25:44 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 09/12] dt-bindings: input: Document hid-over-spi DT schema
To: Jingyuan Liang <jingyliang@chromium.org>, Jiri Kosina <jikos@kernel.org>,
 Benjamin Tissoires <bentiss@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-input@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 hbarnor@chromium.org, Dmitry Antipov <dmanti@microsoft.com>,
 Jarrett Schultz <jaschultz@microsoft.com>
References: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
 <20260303-send-upstream-v1-9-1515ba218f3d@chromium.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <20260303-send-upstream-v1-9-1515ba218f3d@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: 4263122A984
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[packett.cool,quarantine];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272383-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[chromium.org,kernel.org,lwn.net,goodmis.org,efficios.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[packett.cool:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:dkim,packett.cool:mid]
X-Rspamd-Action: no action


On 3/3/26 3:13 AM, Jingyuan Liang wrote:
> Documentation describes the required and optional properties for
> implementing Device Tree for a Microsoft G6 Touch Digitizer that
> supports HID over SPI Protocol 1.0 specification.
> […]
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - microsoft,g6-touch-digitizer
> +          - const: hid-over-spi
> +      - description: Just "hid-over-spi" alone is allowed, but not recommended.
> […]
> +required:
> +  - compatible
> +  - interrupts
> +  - reset-gpios

Why is reset required? Is it so implausible on some device implementing 
the spec there wouldn't be a reset gpio?

> +  - vdd-supply
Linux makes up a dummy regulator if DT doesn't provide one, so can 
regulators even be required?
> […]
> +        compatible = "hid-over-spi";
Not following your own recommendation from above :)
> +        reg = <0x0>;
> +        interrupts-extended = <&gpio 42 IRQ_TYPE_EDGE_FALLING>;
> +        reset-gpios = <&gpio 27 GPIO_ACTIVE_LOW>;
> +        vdd-supply = <&pm8350c_l3>;
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&ts_d6_reset_assert &ts_d6_int_bias>;

Heh, "reset_assert" is a name implying it would actually set the value 
from the pinctrl properties, which is what had to be done before 
reset-gpios were supported. But now reset-gpios are supported.


Thanks,
~val


P.S. happy to see work on this happen again!


