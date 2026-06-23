Return-Path: <devicetree+bounces-315013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id stN+BO33OmqmNQgAu9opvQ
	(envelope-from <devicetree+bounces-315013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 23:17:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 507776BA39B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 23:17:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Fa4Cbcnp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315013-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315013-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D59B302172D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 21:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93831395AE9;
	Tue, 23 Jun 2026 21:17:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3441DE4FB
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 21:17:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782249450; cv=none; b=BWxgA/m2BDVo3I0SqHaAf5QItIwQ7kI1LFHAq0VvQ1CsAiID4Gfg4a4uPwoqL0YDNxo6uxmkPWpiw0bE98GaBAkW/aaOlIXA1/BoZAo09PXriXNm3Ki2ZCnym88kyiTrCpcWuLbXLtVue8EkptP54zvvcLvfRwzwx28MjtXFZns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782249450; c=relaxed/simple;
	bh=AxffFjFtcnRcFZA4baNJBJP6SgMJwWsxnizVJR8Zqd8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=N2TKdEop+iR1uZZ2D+jeHr4FJUvl/5m2aOJfyap6uD3wGJIoYVjeXWf8MjK5lpeH6SFKu8D3YVaVN9FgdB4aCjgukIDXafXNvUWqdvIdhkQWavzlHsxdUxA2QgBFORrqkfcV+gl71LMBbc3Zo1RotF4ztExROdh17KPEAY1pqtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fa4Cbcnp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0F861F000E9;
	Tue, 23 Jun 2026 21:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782249449;
	bh=HfAbN6fdAYRX6OsswoVvBX/7G6OKwb3AQb64yM0V878=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Fa4CbcnpiZFJAWVtr6aZvbdAbXdyVQ63DI9VfL03e1z17uvX+0oSZd3G7CQsx1OhX
	 MhOFTAgTOfcofsNy4ZWRVigtFylGDvMtr7RI+kaN5Rc0cgzWn2t6nU3jjYosJcmQ53
	 PNXsrpNrczSkt1xEWEV24rUix6t/m+tapkw9LbojQmQNagmZpB+W8CKf4Ne88COaFw
	 gAqLmqeZ4RHBKtEFsmjTuhI0CqXvlxEHa7FCQyNJhELyoW5so3KEArCajtKE1sqnCm
	 D7bhKhon0eV+HiGwpaUwbtpTZlCUpFWC1QAM0R/ZRMBjaIokhhoQLCWB4kugHt+H9D
	 kAWTvicJbpqgw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: iio: health: add adi,max86150
Reply-To: sashiko-reviews@lists.linux.dev
To: "Md Shofiqul Islam" <shofiqtest@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260623201124.18271-2-shofiqtest@gmail.com>
References: <20260623174600.17100-1-shofiqtest@gmail.com>
 <20260623201124.18271-1-shofiqtest@gmail.com>
 <20260623201124.18271-2-shofiqtest@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 21:17:28 +0000
Message-Id: <20260623211728.F0F861F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315013-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 507776BA39B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The description for the `interrupts` property explicitly states it =
is an 'Active-low interrupt line', but the example uses `IRQ_TYPE_EDGE_FALL=
ING`.
--

commit 842884bb765a65ccd68dc98c1bab3a30ca22640a
Author: Md Shofiqul Islam <shofiqtest@gmail.com>

dt-bindings: iio: health: add adi,max86150

Add Device Tree binding schema for the Analog Devices MAX86150
integrated ECG and PPG biosensor.

> diff --git a/Documentation/devicetree/bindings/iio/health/adi,max86150.ya=
ml b/Documentation/devicetree/bindings/iio/health/adi,max86150.yaml
> new file mode 100644
> index 0000000000000..c191f4f1525b1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/health/adi,max86150.yaml
> @@ -0,0 +1,78 @@

[ ... ]

> +  interrupts:
> +    maxItems: 1
> +    description: |
> +      Active-low interrupt line.  Asserted when the FIFO almost-full
> +      threshold is reached or when a new PPG sample is ready.

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        heart-rate@5e {
> +            compatible =3D "adi,max86150";
> +            reg =3D <0x5e>;
> +            interrupt-parent =3D <&gpio1>;
> +            interrupts =3D <5 IRQ_TYPE_EDGE_FALLING>;

[Severity: Low]
The property description states this is an "Active-low interrupt line",
which typically corresponds to IRQ_TYPE_LEVEL_LOW. Does the example use
IRQ_TYPE_EDGE_FALLING intentionally, or should it be updated to match the
description to avoid misleading developers who might copy this example?

> +            vdd-supply =3D <&vdd_1v8>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260623201124.1827=
1-1-shofiqtest@gmail.com?part=3D1

