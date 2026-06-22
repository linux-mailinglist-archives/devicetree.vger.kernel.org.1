Return-Path: <devicetree+bounces-314477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AXoHCyhIOWp0pwcAu9opvQ
	(envelope-from <devicetree+bounces-314477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 16:35:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AE05E6B05A6
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 16:35:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lojd9c8F;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314477-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314477-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBB3530315F5
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 14:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACBE53B9DA5;
	Mon, 22 Jun 2026 14:35:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B533ACEF9;
	Mon, 22 Jun 2026 14:35:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782138912; cv=none; b=FrQqS5K3GS1BVAhCnQTk5mK+oeMDDAiKgpdXoyeNUdfuom7l4jby70bOMKvHP0G2ItA1PjJNzUQsSGPmA2nWg6sYd/1X46OLEAyEX1oYdUrBNA8iIUXHRRuGGAILayh0mYLsyU5OZ1K4+ZisL/A/oUESe0Qi3bV+JrLayxGbRt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782138912; c=relaxed/simple;
	bh=HbTEvtfHJvtJMI1UvzoPnhwDnpcBu5HFaS5iDJxt1i0=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=VAD2Usc4XvlRg9V+cG/QWf4ZBgZCM648iODRiyS29V9N9y8TXLv3k1aVt2EA+FcEszui8tWbJUPU9r/siAVDz6hMovU4F7sodK4A00wkCMeWuoOzrt2AZt8MOxLyY/zRRS/QvrIoI8EPbYm3ow9o19ORC8zjVQowdL+cTD/CnoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lojd9c8F; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 139DA1F000E9;
	Mon, 22 Jun 2026 14:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782138911;
	bh=J3VI6K4Teqzsm2sKMe8rHV7pKAq8W0GA/5k5u98EvI0=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=lojd9c8FWt5AS92ts5N/TipcA7rXB2al6ESrLqtsYdS34kdGcyJsgCNYcmYwevK2R
	 5oGCNUhLATdEigGO0hWi4ge2GMvb0CL/bAQF0jxewe1+CVDjVR2ajd9RWcghnih6nu
	 HeB2tkyB6eJfTkQxeG0HslxUCZdWuWufRrEIpw7XeOLC2GfLb+d5Fwf8F6KIyyt0ZM
	 YKBUVgfy/pJVoJU3Yb7BL2j6oMx4EU7a2xlELQ+SoHrbvlN+xmbsBwLjA5W7ZKs9E9
	 m0Y7fxOgP3l/ftUPUo/huFVXj52RJp7cRIjQyCyPpe0WvuTnRua2V3pcjL/pteNrNL
	 /bWFFl6rYgxFw==
Date: Mon, 22 Jun 2026 09:35:10 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: simona.toaca@nxp.com, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 linux-clk@vger.kernel.org, Brian Masney <bmasney@redhat.com>, 
 devicetree@vger.kernel.org, Tero Kristo <kristo@kernel.org>, 
 daniel.baluta@gmail.com, Michael Turquette <mturquette@baylibre.com>, 
 linux-kernel@vger.kernel.org, goledhruva@gmail.com, m-chawdhry@ti.com
To: Bhargav Joshi <j.bhargav.u@gmail.com>
In-Reply-To: <20260621-ti-clockdomain-v1-1-e99a56af98ea@gmail.com>
References: <20260621-ti-clockdomain-v1-1-e99a56af98ea@gmail.com>
Message-Id: <178213891030.2584896.380168466122492657.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: clock: ti,clockdomain: Convert to DT
 schema
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314477-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:simona.toaca@nxp.com,m:krzk+dt@kernel.org,m:sboyd@kernel.org,m:conor+dt@kernel.org,m:linux-clk@vger.kernel.org,m:bmasney@redhat.com,m:devicetree@vger.kernel.org,m:kristo@kernel.org,m:daniel.baluta@gmail.com,m:mturquette@baylibre.com,m:linux-kernel@vger.kernel.org,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:j.bhargav.u@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:danielbaluta@gmail.com,m:jbhargavu@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,vger.kernel.org,redhat.com,gmail.com,baylibre.com,ti.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE05E6B05A6


On Sun, 21 Jun 2026 21:23:35 +0530, Bhargav Joshi wrote:
> Convert TI clockdomain to yaml DT schema. Drop '#clock-cells' from the
> required list as this binding doesn't define a new clock binding type,
> it is used to group existing clock nodes under hardware hierarchy. Most
> existing dts omit '#clock-cells'.
> 
> Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
> ---
>  .../devicetree/bindings/clock/ti/clockdomain.txt   | 25 -------------
>  .../bindings/clock/ti/ti,clockdomain.yaml          | 41 ++++++++++++++++++++++
>  2 files changed, 41 insertions(+), 25 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):
Warning: Documentation/devicetree/bindings/clock/ti/ti,gate-clock.yaml references a file that doesn't exist: Documentation/devicetree/bindings/clock/ti/clockdomain.txt
Documentation/devicetree/bindings/clock/ti/ti,gate-clock.yaml: Documentation/devicetree/bindings/clock/ti/clockdomain.txt

See https://patchwork.kernel.org/project/devicetree/patch/20260621-ti-clockdomain-v1-1-e99a56af98ea@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


