Return-Path: <devicetree+bounces-307177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hl/WGVdTImqAVAEAu9opvQ
	(envelope-from <devicetree+bounces-307177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 06:40:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B50046450EB
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 06:40:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kKvmEULJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307177-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307177-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC1053006B43
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 04:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D37F339AD51;
	Fri,  5 Jun 2026 04:40:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BDE91C695;
	Fri,  5 Jun 2026 04:40:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780634430; cv=none; b=BuRaE485cmn6PJbchaRVEkkF9LpV6O0AzNesjtfwIDqy/8Kkx0AqqbfsJxEhbloaaP9edKEl1AWc+65FpuGb3TcF0ZlDQwZirmMAKQCbU932/q0d7/WS1ZAUsnkvHkHIkViv8iw171+PZjAqIJVI8YU5EPXUgod1Z8as4qtf8lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780634430; c=relaxed/simple;
	bh=5yyYdbG4LLvfv9ADFGAks93a3lOTTuhBHDmwdoYJJiw=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=bfIxmTeDWNSdBmVku38UDEuOLQyv0DBDYRF0/1jd73DjrjQnAxC69g3anvF0a5HngJ8MMjuV0mG+ouFCHBbvTnDD7nPob9bVjOf1KPrWTDs3dfjsKUr7FgINvlE8UZQ3r58qL2BKLCYf1XgMmuW7nPHBVA4lrsIGh1buReTXwyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKvmEULJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EDED1F00898;
	Fri,  5 Jun 2026 04:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780634429;
	bh=Hfuoa9jIuBFMW7E7dnxe8T1BD0cJPfKif5I8kRk0YR8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=kKvmEULJ7k4W6M7l2R2DdTfBcWiv0oeOJHdyQ8wtW/gqxZP73gQj+0tC3Svu9Os3j
	 Q/Qv/P2Gcq854KBftl+pLJ/1Q2v1sa1usPXvsytOoiDExeIqcXtbNBboJnkXlEOJTS
	 zYH4reXji8g1GXsXRgZ4WIKxQkGn2IV4Kpv8niLVc9r5gS847CUZH5W9kBw87mbcU0
	 Wm5JcEo0lSdnp8lQb+6e5VO7nZ+fZzoI1Ifz01jzEgreWORC9X/CazoozwFsK1OTYU
	 KSrbMbon3ACLkL1RI0YskPiJ9VtAB7/Uf+uZsgbtNI3f4HQK34I8LgyZ1cqBaTJPRj
	 f9XssrQ3bO4cQ==
Date: Thu, 04 Jun 2026 23:40:28 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, cix-kernel-upstream@cixtech.com, sboyd@kernel.org, 
 conor+dt@kernel.org, mturquette@baylibre.com, bmasney@redhat.com, 
 devicetree@vger.kernel.org, p.zabel@pengutronix.de, gary.yang@cixtech.com, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org
To: joakim.zhang@cixtech.com
In-Reply-To: <20260605032225.523669-2-joakim.zhang@cixtech.com>
References: <20260605032225.523669-1-joakim.zhang@cixtech.com>
 <20260605032225.523669-2-joakim.zhang@cixtech.com>
Message-Id: <178063442819.2077907.17839637858773523685.robh@kernel.org>
Subject: Re: [PATCH v2 1/5] dt-bindings: soc: cix,sky1-system-control: add
 audss system control
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307177-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzk+dt@kernel.org,m:cix-kernel-upstream@cixtech.com,m:sboyd@kernel.org,m:conor+dt@kernel.org,m:mturquette@baylibre.com,m:bmasney@redhat.com,m:devicetree@vger.kernel.org,m:p.zabel@pengutronix.de,m:gary.yang@cixtech.com,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-clk@vger.kernel.org,m:joakim.zhang@cixtech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B50046450EB


On Fri, 05 Jun 2026 11:22:21 +0800, joakim.zhang@cixtech.com wrote:
> From: Joakim Zhang <joakim.zhang@cixtech.com>
> 
> The Cix Sky1 Audio Subsystem (AUDSS) groups audio-related clock, reset
> and control registers in a dedicated CRU block. Software reset lines are
> exposed on the syscon parent via #reset-cells, following the same model
> as the existing Sky1 FCH and S5 system control bindings.
> 
> Add the cix,sky1-audss-system-control compatible to
> cix,sky1-system-control.yaml for the MFD/syscon parent node, and define
> AUDSS software reset indices in
> include/dt-bindings/reset/cix,sky1-audss-system-control.h for I2S, HDA,
> DMAC, mailbox, watchdog and timer blocks.
> 
> Signed-off-by: Joakim Zhang <joakim.zhang@cixtech.com>
> ---
>  .../soc/cix/cix,sky1-system-control.yaml      | 39 ++++++++++++++++---
>  .../reset/cix,sky1-audss-system-control.h     | 27 +++++++++++++
>  2 files changed, 61 insertions(+), 5 deletions(-)
>  create mode 100644 include/dt-bindings/reset/cix,sky1-audss-system-control.h
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml: Unresolvable reference: /schemas/clock/cix,sky1-audss-clock.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.example.dtb: system-controller@7110000 (cix,sky1-audss-system-control): clock-controller: False schema does not allow {'compatible': ['cix,sky1-audss-clock'], 'power-domains': [[4294967295, 0]], '#clock-cells': 1, 'clocks': [[4294967295, 0], [4294967295, 1], [4294967295, 2], [4294967295, 3], [4294967295, 4], [4294967295, 5]], 'clock-names': ['audio_clk0', 'audio_clk1', 'audio_clk2', 'audio_clk3', 'audio_clk4', 'audio_clk5'], 'resets': [[4294967295, 0]]}
	from schema $id: http://devicetree.org/schemas/soc/cix/cix,sky1-system-control.yaml
Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.example.dtb: /example-1/system-controller@7110000/clock-controller: failed to match any schema with compatible: ['cix,sky1-audss-clock']

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260605032225.523669-2-joakim.zhang@cixtech.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


