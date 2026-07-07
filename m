Return-Path: <devicetree+bounces-321998-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U5j2FvLxTGqpsQEAu9opvQ
	(envelope-from <devicetree+bounces-321998-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 14:32:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA0971B633
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 14:32:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QMBbYqke;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321998-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321998-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A30E1304AC2F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 12:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A73240A949;
	Tue,  7 Jul 2026 12:32:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F5A40A945;
	Tue,  7 Jul 2026 12:32:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783427549; cv=none; b=EkmbBYXb1zlXGlj91GJmJ0ttHeLeryTP5gOmqdukCssAdbw8Byqu/M/i0jFON1XYJBlMYhgUNjwFlvfhe8PAI04SP+hjAEOgGEfz0W+JXTp+DMmk+S7gyphZem7DxtXDCRPUXums8r9a8perGzbgZb/6v987XTdFdi9xko0KE9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783427549; c=relaxed/simple;
	bh=HV2SsxHq+6tgEa9oZO51D7/aOQp1bEf2QodElJmBEQ0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FoigfcJDK2GB/4hU8UBS88r4YFW89xCbuahpzTEuSrGVZSoDfl8QgDThkDQ9hsvXErB3FqUeGTGMm7r+G3RgcY9T7JTIuXZFZAAKJGnsisMmzl/OxZ4L6grr6S4M4ZomitRwH88KdhZktA4/ImC8Ci2Eb039AgW9YllEIUEC+3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMBbYqke; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B820E1F000E9;
	Tue,  7 Jul 2026 12:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783427548;
	bh=HV2SsxHq+6tgEa9oZO51D7/aOQp1bEf2QodElJmBEQ0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QMBbYqkevkm0rMcPe84z5FWEwaeE2VC47/5triC7F3gmE26YkkOeoa6r23GDBNgA9
	 +Hk0s3YHdjsA8b5lAE+MMAZNgytNwzrutha0QJ2w1VSwESk5Z3r2bQVk5ealUJ3ET1
	 94e7HUujQRmcGF1P4m5hzPTkrzkUsmiJ7H8lBd3flyABr1fS+oyA8kVcW3o/vNS1PI
	 NzeYm3Eu1JWA7Cb783TPgdPkdiX0wdiB+SBcEBoIrLvMopVKl+WmtrTojy9PM3Y2Pj
	 5UwiY9uUQ4VL4itz6BzrU46Ww0p7uD5Q75mVLGtTwt5OL5wJxjsYsqSa7Vf+Xr6Aif
	 5QjCw+ZzRmeUw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: trivial-devices: Add adi max20912 and
 max20916
Reply-To: sashiko-reviews@lists.linux.dev
To: "Fred Chen" <fredchen.openbmc@gmail.com>
Cc: robh@kernel.org, linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260707122701.751878-2-fredchen.openbmc@gmail.com>
References: <20260707122701.751878-1-fredchen.openbmc@gmail.com>
 <20260707122701.751878-2-fredchen.openbmc@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 12:32:27 +0000
Message-Id: <20260707123227.B820E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fredchen.openbmc@gmail.com,m:robh@kernel.org,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:fredchenopenbmc@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-321998-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
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
X-Rspamd-Queue-Id: 0CA0971B633

> Add device tree bindings for Analog Devices MAX20912 and MAX20916
> Dual-Output Voltage Regulator.
>=20
> Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707122701.7518=
78-1-fredchen.openbmc@gmail.com?part=3D1


