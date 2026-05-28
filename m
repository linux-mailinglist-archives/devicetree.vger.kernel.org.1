Return-Path: <devicetree+bounces-303961-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEZfDrmFGGq6kggAu9opvQ
	(envelope-from <devicetree+bounces-303961-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 20:13:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 871735F6247
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 20:13:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC1173006B46
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 18:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE1D83FF1BC;
	Thu, 28 May 2026 18:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwg02qyX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9103FC5D9
	for <devicetree@vger.kernel.org>; Thu, 28 May 2026 18:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779991845; cv=none; b=T+A/VqIzxBU7Ic4VYRnZP6/P0g/6XxcDFqtJfWe5lBGGyj8p5yHUNhEdo0Q2/PYQO/wNO/aeX6y/uM9m63hoMZfmrMesSuKhF/YiQsWvvMq/tScvxgfSB4BSWYBOCOSuq1G7oVFx623TYTQFbId8k3md2mIxiA//9AcRxIgg7r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779991845; c=relaxed/simple;
	bh=B3EmYrjDHbx6LqCvnBSQB5cT1GXmGtuBMMbLJyNVc2M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aewrwt/l0V4y3gzBKMbRRe/v5OOCrKISZQEYbGaFVEQ01DJB/QjxZ51IfqWmTMMJrIOv/tTb6JjHqSDz7EqbzhgelL8i4coCsvvndypKVKev4IOSjDtrYOJZM65PJ5HgoSzTNxDzTTh0g8Y9y7vH6W/WXKk5moLK8iFAWs7iw40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwg02qyX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BA8C1F000E9;
	Thu, 28 May 2026 18:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779991844;
	bh=B3EmYrjDHbx6LqCvnBSQB5cT1GXmGtuBMMbLJyNVc2M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jwg02qyXLuk3RyL+EiN2nVIsmuGcqv1OhArmWJkQZPL+ENhLHojCpOWfoFnwGz2+N
	 XC4I+w5G07S6twMg20JMFNnar9IDvrohhBpHWOvdp5mQyCutQMH5KhuPa+5dDtGtLj
	 pfeP6tPecZbQYVh/6tvbxozzFiEoH+VVVF/8tSsEI3OdA7ZYhjXiqGN6Z1Zx27dBhu
	 Aecm85pa/dE6oqul0Z832yilw/NzNcyJC3h6exaUFZQgp6BbdIBiRAURcv+QtJN3w3
	 d2uosYHh2DVIc3ydiyxqzGmInV5zKBna3bzk9+qG8USSmSkgnQh5jO5frwQF+hLe4N
	 RpbvcB/Odf5Vg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/4] ASoC: dt-bindings: Add Airoha AN7581 AFE with
 WM8960 Codec schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260528174840.28644-3-ansuelsmth@gmail.com>
References: <20260528174840.28644-3-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 May 2026 18:10:44 +0000
Message-Id: <20260528181044.6BA8C1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303961-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 871735F6247
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Typo in the commit message: 'WM9860' instead of 'WM8960'.
--

commit 2e862912f90e2fbb165cf085da96b1e3501d00ef
Author: Christian Marangi <ansuelsmth@gmail.com>

ASoC: dt-bindings: Add Airoha AN7581 AFE with WM8960 Codec schema

This commit adds a YAML schema for the Airoha AN7581 AFE with the specific
WM8960 i2c codec. It provides an example of how to define and connect the
AFE driver with the codec for full functionality.

> This gives example on how to define and connect the AFE driver with the
> WM9860 for full functionality.

[Severity: Low]
This isn't a bug, but there is a typo in the commit message where the codec
is referenced as WM9860 instead of WM8960.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260528174840.2864=
4-1-ansuelsmth@gmail.com?part=3D2

