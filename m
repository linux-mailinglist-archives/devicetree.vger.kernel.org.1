Return-Path: <devicetree+bounces-318960-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5GJ/OraoRWpADgsAu9opvQ
	(envelope-from <devicetree+bounces-318960-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 01:54:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E47C6F27F0
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 01:54:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WksoGx7e;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318960-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318960-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DDB1C3013A51
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 23:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF103A48E4;
	Wed,  1 Jul 2026 23:54:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1853B32B13E
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 23:54:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782950058; cv=none; b=kAynK9ymVtuYWnXvX48yY1AI54Br0kWQWUtW6FNHDUGAHPI16PTftn8dv48j+Pt39RjR/dgECb94sKmw3s4GAfGCS6xAJUnmLz8lTTHscBIvii67SjskFAw/XRXRiZ8tOC8311fC6VotT1tD5J9ThQ0S5UkaSl9Le4MQzyQwqz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782950058; c=relaxed/simple;
	bh=BjNPVbSEkZtFTbiDHSbqpJmJa36fXcuEyq8WayNnJMs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BZ2fq51JFHbxZxVPHMhfSBAbeNmICA98s8QzZBHU7hSqje5kIzOYBvOZ0Le04OuQrroXLhval767lJgeHy/RnaI+chXWTOwX7aSlk87W/zp9uk6cjxYyit5zw0bc8HXTKNNoKZ2uPHDXDkmPMXr/yO+SbCFR508kqsXMJ5P3qHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WksoGx7e; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72C081F000E9;
	Wed,  1 Jul 2026 23:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950056;
	bh=BjNPVbSEkZtFTbiDHSbqpJmJa36fXcuEyq8WayNnJMs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WksoGx7elF+ncrsyurlh8djLJ+DfnxlegNy77qF1VtjmZ3d02Pz5iIRd0prAM58v5
	 C1Q9r3wwjV/kcO2pj29878ahsR92w6kAAZgWAcOWa70altTNU4/sQwXk2LoVtXsdl8
	 3C3varm9cUmExvFEpYbIQzkRFycBB8CWjD24cb3cUQrd4qYTdxtqD5HoiF/QX2UWhG
	 99X1vVMkNKNfzbJWTA7DROxxn7QOuH2XfBUYf2x1bCYlPwXFCfC/QVz5ABuRh0YNs2
	 zDSb5Oh9FOGpuusaMOoCQc05ri4EjQbHIz0ODA+2U8mqJ4T/ZxgEcbhv7LnfvfHf12
	 n07lGYZz28K3A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 01/38] dt-bindings: phy: rockchip-usbdp: add improved
 ports scheme
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-1-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-1-e31efbb62d2e@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 23:54:15 +0000
Message-Id: <20260701235416.72C081F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318960-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:devicetree@vger.kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,kernel.org,linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2E47C6F27F0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The schema introduces a new `ports` object to link to the USB-C con=
nector but fails to remove or properly restrict the legacy `port` property,=
 creating an ambiguous and conflicting configuration path.
--

Note: Due to recitation restrictions, the standard inline diff quoting form=
at
has been altered. The following is a free-form summary of the review findin=
gs.

commit 097123c73fce6d7ce6f4755a83ce1362c8caefeb
Author: Sebastian Reichel <sebastian.reichel@collabora.com>
dt-bindings: phy: rockchip-usbdp: add improved ports scheme

This commit introduces a proper port scheme for the Rockchip USBDP PHY,
following the Qualcomm QMP USB4-USB3-DP PHY controller binding. It adds an
additional port for the USB-C SBU port to support USB-C DP AltMode.

[Severity: Low]
The schema introduces a new ports object to link to the USB-C connector
but retains the legacy port property without marking it as deprecated.

Since both the legacy port and the new ports properties are present in
the schema properties, could a device tree define both simultaneously and
still pass validation?

Would it be appropriate to add a oneOf exclusion constraint to ensure these
mutually-exclusive graph paradigms cannot be defined at the same time?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-rockchip-u=
sbdp-cleanup-v9-0-e31efbb62d2e@collabora.com?part=3D1

