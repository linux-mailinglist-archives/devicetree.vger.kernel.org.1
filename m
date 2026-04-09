Return-Path: <devicetree+bounces-286238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEO3DP/S12mrTAgAu9opvQ
	(envelope-from <devicetree+bounces-286238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 18:25:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5723CDA5A
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 18:25:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D4D78302D77C
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 16:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E6F3E123D;
	Thu,  9 Apr 2026 16:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="iRToTGEC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106121.protonmail.ch (mail-106121.protonmail.ch [79.135.106.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 904053E122E
	for <devicetree@vger.kernel.org>; Thu,  9 Apr 2026 16:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775751878; cv=none; b=unNfQULP/qq/xzcMOCghxBAsvmZFsf9qsfr4xN+ZcOX2dcP4I9zhr9wyJ6TKOUSlpY5MooY1Q/45cyN6n+oXZ60tKCFjoBIa9PV79fWLizrQ7I6lPr0s6wYaj/vssNRicb8eoNxd9JZPRsBte5ZNyV8usN2CM6OdGDLXM9ig2uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775751878; c=relaxed/simple;
	bh=1pxZBrLmy2pMWIo0LdsENmdYtsvl8jy8EOqABhANfgE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rYueetRbiyNh1dKfCxRDZfuktYoY4DFiYrxPhoT1Zv0rg6uuO6UO0dWc1UQluIUS3/BbWGmoWeteFMgHjqPF+5KSnP5i9g5AQMIKS4GC0khG2/kpapeqkgs4RldIKqhXTqgcxLmXtt6BvaYyrLav2cPQsHNMdOuXy/RdEEoWk64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=iRToTGEC; arc=none smtp.client-ip=79.135.106.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1775751875; x=1776011075;
	bh=1pxZBrLmy2pMWIo0LdsENmdYtsvl8jy8EOqABhANfgE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=iRToTGECnVE+8mvp2PylT9VBlBWBKMJjXAgcYtlTlbO5Mm5I+/1nHDD2S9Oh8e4ac
	 rbHnmucn39RU3PveCgaHiRTWygCvfh43J2km94FCqkFSreqdtphlB/TQAksSr26aej
	 p6g9QToDUQxQKm2yTMW/z314tUqJ7sRqtZKG01mShW1BW7bdbiOVbM6PBjVJCOB6wu
	 WL1dyxVbgVkEXLVb5yqYjhgcjPWa/02x2ouKqvfMfrnxf9EG8GIQUKuJZVIjV0hlyd
	 1ac/8SQ9oNTWirsIufvtt6ps6LmlG8f9z1+kqbOADDhl+uBR4n+2S6u6ybL2iI1xsX
	 JGwceMQsaKv2Q==
Date: Thu, 09 Apr 2026 16:24:28 +0000
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Hardik Phalet <hardik.phalet@pm.me>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Brigham Campbell <me@brighamcampbell.com>, Shuah Khan <skhan@linuxfoundation.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, Hardik Phalet <hardik.phalet@pm.me>
Subject: [PATCH 4/4] MAINTAINERS: Add entry for QST QMC5883P magnetometer driver
Message-ID: <20260409162308.2590385-5-hardik.phalet@pm.me>
In-Reply-To: <20260409162308.2590385-1-hardik.phalet@pm.me>
References: <20260409162308.2590385-1-hardik.phalet@pm.me>
Feedback-ID: 166659585:user:proton
X-Pm-Message-ID: 2b7baa0548efb5feb749682b4d124577346ff50a
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286238-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hardik.phalet@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:dkim,pm.me:email,pm.me:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EA5723CDA5A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a MAINTAINERS entry for the QST QMC5883P staging IIO driver,
covering the driver source and its device tree binding.

Signed-off-by: Hardik Phalet <hardik.phalet@pm.me>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a92290fffa16..d0b9bfceb283 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20274,6 +20274,13 @@ F:=09Documentation/networking/device_drivers/ether=
net/freescale/dpaa2/overview.rst
 F:=09drivers/bus/fsl-mc/
 F:=09include/uapi/linux/fsl_mc.h
=20
+QST QMC5883P MAGNETOMETER DRIVER
+M:=09Hardik Phalet <hardik.phalet@pm.me>
+L:=09linux-iio@vger.kernel.org
+S:=09Maintained
+F:=09Documentation/devicetree/bindings/iio/magnetometer/qst,qmc5883p.yaml
+F:=09drivers/staging/iio/magnetometer/
+
 QT1010 MEDIA DRIVER
 L:=09linux-media@vger.kernel.org
 S:=09Orphan
--=20
2.53.0



