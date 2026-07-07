Return-Path: <devicetree+bounces-321781-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yhTdFMywTGrYoAEAu9opvQ
	(envelope-from <devicetree+bounces-321781-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 09:54:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE044718BD4
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 09:54:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Rm2ESdpV;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321781-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321781-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B93253092806
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 07:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3F99233929;
	Tue,  7 Jul 2026 07:45:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF791C84AB
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 07:45:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783410302; cv=none; b=QoPV4jsBykS4yG9qAFKr5nCVzjQ5+E6IEhge/h/ouX7yaPUV08pnyPaqBVa2qT8t+Q0+7JZWaaf9sAac3DgqXXSz9WMU/wdjZ/OyQ15qrOM2IpbjmT6NMAkZ2UytSfGrIVy6w5jC04Qo72fA9UxCpIVdSxvmtrIYkxxOPciJtqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783410302; c=relaxed/simple;
	bh=8d048qK1ayKFpV5VGkXyZeRdTW+F9fS2vz873FDLuvk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=b+eUoPlISU42c+fJ962hxaSAD/fafGJD04PAM6LI4l1kDKlTQEDJcr0OqpwhbwYX9XtwfQF7jD+DT5wcW3IkdnI/70j1adHj5cAQdwKFzWKJ8Cc7QDyZ4oU9rGIZYjANVJ/lqa0WsnhhHtl+h791rgZJRqPmhmRfcD6HYdHxd60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rm2ESdpV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAF1B1F000E9;
	Tue,  7 Jul 2026 07:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783410301;
	bh=52uMWC1TjayrRxxRf8MpwU6MSpaiscD2RYo0k9Jco84=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Rm2ESdpVHIeES8966A7x6ZwLq6DarURbhyg5zFc0br5U/XpB9quMh0RGHLrQOyD1P
	 od8WIwiaQM1mXPxJ7n9Rfqm09R2waL6NcMt29s78+vruXf5dC1f/G6lGoO27IC3wIg
	 WtdE0i6kS0z3NmMexl9TrNuUxMinQ/pXF7b9opooUZIxuKmjrLk7ggcqT5e7gofif2
	 Sa5KkiKkLzRhiQ9GvdAcvc6qS51gyKHiFx28nn9x+jULQGOldT1FIz+WgIE202MGzZ
	 HOZSHvNHOu8m6UmD8lDivj3muZAaOjPZi4+vmfKJir/yAGJjkgCL7vcU0g62SSAsVm
	 iVoX8i/b66tHg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: sn65dsi83: Add reverse lanes
 property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wojciech Dubowik" <wojciech.dubowik@mt.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260707070244.230546-2-wojciech.dubowik@mt.com>
References: <20260707070244.230546-1-wojciech.dubowik@mt.com>
 <20260707070244.230546-2-wojciech.dubowik@mt.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 07:45:00 +0000
Message-Id: <20260707074500.CAF1B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-321781-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mt.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wojciech.dubowik@mt.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE044718BD4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch introduces a custom vendor-specific boolean property `ti,=
lvds-reverse-lanes` to indicate LVDS lane reversal. This is a device tree a=
nti-pattern because the referenced standard `video-interfaces.yaml` already=
 provides the `data-lanes` property for this exact purpose (e.g., `data-lan=
es =3D <4 3 2 1>;`).
--

--- Patch [1]: [PATCH 1/2] dt-bindings: display: sn65dsi83: Add reverse lan=
es property ---
commit c30eea01a74188461b7e527f71d282d68b885ec2
Author: Wojciech Dubowik <Wojciech.Dubowik@mt.com>

dt-bindings: display: sn65dsi83: Add reverse lanes property

This patch adds a boolean property to reverse the LVDS data lanes order for
endpoints.

> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi8=
3.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
[ ... ]
> @@ -115,6 +115,10 @@ $defs:
>              enum: [100, 200]
>              default: 200
> =20
> +          ti,lvds-reverse-lanes:
> +            description: Reverse the order of LVDS lanes.
> +            type: boolean

[Severity: Low]
Is it necessary to introduce a custom vendor-specific boolean property
for this?

Since video-interfaces.yaml already provides the standard data-lanes proper=
ty
which can be used to describe the exact lane routing, does this hardware
require a distinct property instead of using the standard data-lanes
approach with data-lanes =3D <4 3 2 1>?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707070244.2305=
46-1-wojciech.dubowik@mt.com?part=3D1

