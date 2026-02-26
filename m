Return-Path: <devicetree+bounces-268868-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLIWMedSoGlLiQQAu9opvQ
	(envelope-from <devicetree+bounces-268868-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:04:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 574631A72F1
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:04:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8F4F030C5F25
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2D053A1CE8;
	Thu, 26 Feb 2026 13:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="zIH1jad7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6C5A3A0EBC
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772113922; cv=none; b=As5CV4l8KQWiblVhnZ+XBHpK3Rm4oMEzP6t0UArLumdUJUDZMjcRetXiakgfiLsgq0DnFTAnq0VsBhBpyG+BBgRHiOJQ7Su4Q/IXf3dD7C21xg2dhaJgbfKxUOjzYhSQiLGfBzUhwi0Cql8+ns/CK1kMdFCxXVz9WFei+mJspq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772113922; c=relaxed/simple;
	bh=aAvohoqVL4/4oU3xOUZc1aVOFyxME7kUfR9rAmlxwxc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rveMynAfMNL4rFQvFmMec4XIisF25nM/vXM57bIlL+JaioiMK6ao6BuKwEoy7KhtvQkF4Lg5oPGhusqm6qZUSVA2jnpSmwIzoW6Du6wnYKn9EzDb1wrVic2ROaud9wYr5ykvZXxnxNN/zQMd4RVAUhRsn7FrSNjs7BntWYjewQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=zIH1jad7; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 6C230C40694;
	Thu, 26 Feb 2026 13:52:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 012CA5FDEB;
	Thu, 26 Feb 2026 13:51:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A683710369399;
	Thu, 26 Feb 2026 14:51:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772113918; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Z0fbtjwj8Vohgi2j3qVMkNCuQXm65PUxqfD/uoYWs5s=;
	b=zIH1jad7ZCXWDCTXpuwSzPxaZtr7bNVJ/wqcZ8MIlSk6O5/NgCecZnojqTeA33rY3iuD1b
	Sz6a9pajc72iNkPf1D+0/z8PLij7cznninOjGBl2DsS40G4mAm0pzRT391MZGox3rSxZ9Z
	BsAE3XOLC05cHaV3yADMui9c5Z9a8rTmbvEXcO6J6Uz1/LZhfh9qklG2CZDC4EqWXbmowr
	kptW5AUEPI/o0le0HLsBYu8gI9HHLtSUzCi9mhhkEg4XMRM4R54lbCZLLTLVGLlF5YAYEN
	uFg6VYIy/WMt+sKG9WzhJZdnAtUbb2sZ9Fhie0mGjTF/B/fI6/XrkNjGQXGA0g==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Thu, 26 Feb 2026 14:51:51 +0100
Subject: [PATCH v2 1/3] misc: ti_fpc202: Depend on GPIOLIB instead of
 selecting it
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-fpc202-leds-v2-1-bc74857869e0@bootlin.com>
References: <20260226-fpc202-leds-v2-0-bc74857869e0@bootlin.com>
In-Reply-To: <20260226-fpc202-leds-v2-0-bc74857869e0@bootlin.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Felix Gu <ustc.gu@gmail.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,bootlin.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268868-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.994];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim,bootlin.com:email]
X-Rspamd-Queue-Id: 574631A72F1
X-Rspamd-Action: no action

Selecting a foreign subsystem such as GPIOLIB may lead to dependency loops.
Use a "depends on" instead.

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 drivers/misc/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 5cc79d1517af5..dcb36e39d7079 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -116,7 +116,7 @@ config RPMB
 config TI_FPC202
 	tristate "TI FPC202 Dual Port Controller"
 	depends on I2C
-	select GPIOLIB
+	depends on GPIOLIB
 	select I2C_ATR
 	help
 	  If you say yes here you get support for the Texas Instruments FPC202

-- 
2.52.0


