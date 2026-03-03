Return-Path: <devicetree+bounces-270537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNXhH7bqpmnjZgAAu9opvQ
	(envelope-from <devicetree+bounces-270537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:05:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 436421F1087
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:05:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 77ED03075CEC
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9031C34F494;
	Tue,  3 Mar 2026 13:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="D3KuLE28"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0AE36655D
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772546080; cv=none; b=g7UkQAv+UQxCetNjemWO+P19msYwkOgRQoHrEB6wodGRf7Rd5pAvPYnQVIxuKpKSD4vlFAX+SJ/9aegd92IYkDkRw2VmBuv65w/aCz4Ru6Lzy2KY5gktCQZpcLhGp2TBadmC2kCeg8naFQibEV03eposQacsZmxQnv4nPSj3hyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772546080; c=relaxed/simple;
	bh=pnAvSg9BDIgvscOo7XYPxJbTgoOGDp8Dafxe4N3+xP0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=a3iTrrFEjleiimtFCc+8fr/RrfhDBhU4YRz2/11TAcBgXjXv44IO5Ipqpupt9NyNEbGgxFaSfkLKjkDtmWaN9KnUbxa+GbeUcE3JG/oK5duztcfRAF8iGA09yRNe3HBKwzuUh70Klc684z7S6dulLlDmefn7jPA6zJA+ZZ6JPDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=D3KuLE28; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 2C95F1A2357;
	Tue,  3 Mar 2026 13:54:35 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E56DE5FF29;
	Tue,  3 Mar 2026 13:54:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 41F541036869F;
	Tue,  3 Mar 2026 14:54:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772546073; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=fQOqnaiUmuhsJFXxkLq20Gijmxp0xf6Cu9xnALeENoM=;
	b=D3KuLE28pO0WmToSyf3NBBmA0AudAU0NkrBv5E7LyaNYXuvls+bOehr1RFUUt6lRYNxeCc
	86rEaKEzOkgk1COznuwm31h1x6XvPTv0nM4TsDmmLJCW9esfzzPUtwuHQTKM5QzpvfEIpX
	aA0ldt38PB+TYEuZ7e5yyudwz9MYO49nNp0GO3zzea2D/EjqRSr8EfqaZvd8Btga67fiZI
	gPvOKNbx0H7k2z0B1maRsFwscPhuNbgb3p5s/fH+Q4VRUgFLPoP64Mdophzoy3vybYOYd8
	Zaj/jk5joQ9vrFifh/MTyehB4Y310zoohpAdD8T0BJr3WQka2gxQpdiTMNx27w==
From: Romain Gantois <romain.gantois@bootlin.com>
Subject: [PATCH net-next 0/2] net: sfp: Describe and handle regulators
Date: Tue, 03 Mar 2026 14:54:25 +0100
Message-Id: <20260303-sfp-regulators-v1-0-7101ae34cb84@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABHopmkC/x3MSQqAMAxA0atI1gZq64BeRVw4RA1IlaSKIN7d4
 vIt/n9ASZgUmuQBoYuVdx+RpQmMa+8XQp6iwRpbGmcc6nyg0HJufdhFMauMdWU95IV1EKNDaOb
 7H7bgKaCnO0D3vh9JIDMtagAAAA==
X-Change-ID: 20260303-sfp-regulators-1702369b4523
To: Russell King <linux@armlinux.org.uk>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 436421F1087
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270537-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[armlinux.org.uk,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Action: no action

Hi everyone,

This series describes regulators supplying the VccT and VccR pins of an SFP
cage or soldered-down transceiver.

These regulators can then be turned on only when the SFP device is probed,
thus saving power on systems which only load SFP cage support at certain
times, or load SFP device descriptions via device tree overlays.

Please let me know what you think.

Best Regards,

Romain

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
Romain Gantois (2):
      dt-bindings: net: sff,sfp: Describe power supply pins
      net: sfp: manage receiver and transmitter regulators

 Documentation/devicetree/bindings/net/sff,sfp.yaml | 8 ++++++++
 drivers/net/phy/sfp.c                              | 9 +++++++++
 2 files changed, 17 insertions(+)
---
base-commit: ed0abfe93fd135dac223e87a3c945017b1fa8bfc
change-id: 20260303-sfp-regulators-1702369b4523

Best regards,
-- 
Romain Gantois <romain.gantois@bootlin.com>


