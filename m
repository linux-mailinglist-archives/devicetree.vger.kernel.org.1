Return-Path: <devicetree+bounces-298196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INysEFMDB2qVqgIAu9opvQ
	(envelope-from <devicetree+bounces-298196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:28:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4C654E706
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:28:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00C66301185C
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7525646AF0B;
	Fri, 15 May 2026 11:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+6mUQ7K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5296246AEE0
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 11:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778843034; cv=none; b=eyitu287K0kR7cTPBRzzJiAG6NlH66m/VLdHGNwHpi1cNccX94P/Db0bGNGtDx8vLz+b5vpCNeZw2T3OCvsHYTbx9m951as0zRm8Ti4YZllhIIyZPv+IHjh4GbENKHhluQAukOei+IZauPL8NmZVS/ZGI9dG+duFo+vscyCPGOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778843034; c=relaxed/simple;
	bh=17UL+rO//Pn0zZTLnxBMJ4OwuoY8QnqZ5efcU6m3p2c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qFNzaq7hp0E3fbF85EKZiJ0iFv9JzyRvu/d3vq625ofsYwjmG59S7Xek1egbFS6Kp0wM8/eIDuzlA/VhewlysTLH+7gO2Mb8EvSdlZNqKB1xHzxLD/Wl099bKU70mRA8wWoz/Tr2mM1yOkiZSh3g+KUaFiXqVRYRK7VpGRazjlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+6mUQ7K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C76B1C2BCB7;
	Fri, 15 May 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778843034;
	bh=17UL+rO//Pn0zZTLnxBMJ4OwuoY8QnqZ5efcU6m3p2c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=g+6mUQ7KY2nu5HoArPmd7o3MaB+9ijI6VrwcWb11BOcwogg/C8i3vMZTq9SgMpbx7
	 gxODjIhB9hKO3Zj8zCcAeQD5TmnaA7MUZdzokZYtdb+WHb6PecB0JpXCTw8fVKAJBZ
	 QsBL0WupmvAKNO1W/RduQYx3kO8yCpE8CMSqp+LOjNZaiINiM8H25WfAasBtEOtVtb
	 GEsVzELQFvHRxAtBOvzNODa9d6It3JIRvC6XV6DEqnr8iz+Fee3wi6m5W3lVgy5QuA
	 Csu6C9tCxLykZJUfCKqx1LFHzTZF0mjTRUtZyVCDn6AjbBAcoNhi5W/BzM+WO2hr6N
	 YBwOkkJ5EJUkQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 09/11] Documentation: leds: document pattern behavior
 of Samsung S2M series PMIC RGB LEDs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kaustabh Chakraborty" <kauschluss@disroot.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260515-s2mu005-pmic-v6-9-1979106992d4@disroot.org>
References: <20260515-s2mu005-pmic-v6-9-1979106992d4@disroot.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 11:03:53 +0000
Message-Id: <20260515110353.C76B1C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 8F4C654E706
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298196-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,disroot.org:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Commit message incorrectly states hardware patterns are defined by =
led-class-multicolor
--

commit 1b79c23516198cfccba5ce3380153d7da6c041cb
Author: Kaustabh Chakraborty <kauschluss@disroot.org>

Documentation: leds: document pattern behavior of Samsung S2M series PMIC R=
GB LEDs

This commit adds documentation describing the hardware pattern behavior for=
 the
Samsung S2M series PMIC RGB LED driver. It details how the hw_pattern attri=
bute
parses brightness levels and durations, and specifies that only indefinitely
repeating patterns are supported.

> Add documentation to describe how hardware patterns (as defined by the
> documentation of led-class-multicolor) are parsed and implemented by the

This isn't a bug, but does the led-class-multicolor documentation actually
define hardware patterns?=20

The Documentation/leds/leds-class-multicolor.rst file covers the multicolor
class grouping and brightness control, but doesn't appear to mention hardwa=
re
patterns or the hw_pattern attribute. Hardware patterns seem to be defined
by the pattern trigger documentation (leds-trigger-pattern), which is corre=
ctly
referenced in the newly added documentation.=20

Could the commit message be updated to mention the correct documentation fi=
le?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-s2mu005-pm=
ic-v6-0-1979106992d4@disroot.org?part=3D9

