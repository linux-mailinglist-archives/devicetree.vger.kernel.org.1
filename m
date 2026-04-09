Return-Path: <devicetree+bounces-286281-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YG05NfMV2GmFXQgAu9opvQ
	(envelope-from <devicetree+bounces-286281-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 23:11:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3C33CFD20
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 23:11:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64DB030305D2
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 21:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD466375AAB;
	Thu,  9 Apr 2026 21:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="KSBHuaOe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-244121.protonmail.ch (mail-244121.protonmail.ch [109.224.244.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 802B9374185
	for <devicetree@vger.kernel.org>; Thu,  9 Apr 2026 21:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775768881; cv=none; b=jmL7ezV7N82ASl6yrM3m990gJI+p163WuQeJbmmyOixpaShLmxfz3RGmRwWEA5QmCWAyjhbuBbMXhuEEOXdgbIYnJZIg13hFfBXZdkTtrzdM6NI5NSvRLIaMRtQXbhm3OwElQS0WWpywIWsWZk6TTMrXAOafffrVTnlh8Wgys5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775768881; c=relaxed/simple;
	bh=1pxZBrLmy2pMWIo0LdsENmdYtsvl8jy8EOqABhANfgE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SfN2hCfnalXOKx6XukUCdHp8VscmIm/+SrYE9hPXDQqJp2n9CTHMq8nU11EPbsysHNmAZwKe7GGom8uGcvqqZeI1FgK+rg2Ul8WhbnyMkG1S/4pVguJhMk8QXhOIOzPH79cjPN4fXgW4o8IOMFFTBhajsRsr2po+v0HTYPtWVKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=KSBHuaOe; arc=none smtp.client-ip=109.224.244.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1775768878; x=1776028078;
	bh=1pxZBrLmy2pMWIo0LdsENmdYtsvl8jy8EOqABhANfgE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=KSBHuaOeuOGUAYf9I+42K6s2n7ZmMStQOE0W+V48xxOm+3NFiR22Ff81ZsLT6Z/+2
	 qkeQtrsEYU+xt8U/LSLc9wKU+DKpPZRw2G5DDzDpT/cP7d9Oj5wVmhT+Ib2AjZuHXm
	 uwkh55NmTkg6qTQWpJV/0lQHlSlYmNCE7ESFnJHv7k8NxJE6ndYcov7hbcKVkD6Yi4
	 dWzydMIzHwO5QjOsBQB3tnpPW17Z1eOC2CBL85qlQBBmEFgRPChL4ADX6UB1LCb5TW
	 P8fJdl2vXsECCTmYCQq2+X7KKnaWiuPJAX4tMy39dyDuhBwaE+5qW9/qObMj631Kpv
	 A1ZkaqBPCqd1w==
Date: Thu, 09 Apr 2026 21:07:52 +0000
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Hardik Phalet <hardik.phalet@pm.me>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Brigham Campbell <me@brighamcampbell.com>, Shuah Khan <skhan@linuxfoundation.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, Hardik Phalet <hardik.phalet@pm.me>
Subject: [PATCH v2 4/4] MAINTAINERS: Add entry for QST QMC5883P magnetometer driver
Message-ID: <20260409210639.3197576-5-hardik.phalet@pm.me>
In-Reply-To: <20260409210639.3197576-1-hardik.phalet@pm.me>
References: <20260409210639.3197576-1-hardik.phalet@pm.me>
Feedback-ID: 166659585:user:proton
X-Pm-Message-ID: bcd1d8ec985241d919eb7e370ca903db6e73bbdd
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286281-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:dkim,pm.me:email,pm.me:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3D3C33CFD20
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



