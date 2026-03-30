Return-Path: <devicetree+bounces-282494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBB9JBCCymkW9gUAu9opvQ
	(envelope-from <devicetree+bounces-282494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 16:00:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A1435C7C2
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 16:00:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5FE793081FFC
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 13:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D95B73D75B7;
	Mon, 30 Mar 2026 13:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="SaQpQPuO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595553D6CC9;
	Mon, 30 Mar 2026 13:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774878266; cv=none; b=lyR/juPGj8hTa2Q4ej0rp8wcQdnqwHCSUoa3IiizmjeQBhDhJJg3RUjiXW2YgV51/6KylQXIYtBYxLcijYfuqk+SJ60ecX04/m+41HR2llsEAzXnH8vnsFDTDmXaTs4N4HKvf5TyVTvhGSDdONqg9CQrMlQpAL2DyJl3kuYen0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774878266; c=relaxed/simple;
	bh=8MNJ+Bv8ub/FB+MlzfuB1FeinooVr5Q/BD0cOEEfkQs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lpoZ4/iRpAW23V5uNGsCmqlkcB6GLYv2BuVYYykjOodrRzmWWYxmXnPY6IOnLzIceSgagwnbIohJ+dC3RAi4b+MF3B9tP0yf/dBJk5ZjvRJeddGGW8mPK/wJBzUHVobWQDKZvSOMONJYlMGPsKN0WTTHisqIxib0652yLV8cZ4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=SaQpQPuO; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 345D9C5877C;
	Mon, 30 Mar 2026 13:44:54 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 18AFE5FFA8;
	Mon, 30 Mar 2026 13:44:24 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B756B104505CF;
	Mon, 30 Mar 2026 15:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774878263; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=akodHWaK7HBoRiEufEd2ype+lPOoEWK24aZSCPGAgS0=;
	b=SaQpQPuOuZPVNi/q4U+sw84KswebIOIl/burexQ7dqTQ+TCUvsw2vWUXAQyXODcZSTMQD/
	fXaOq1/sh2HXG7MoUGcCfXVcO1pVIvy0z4VJ50Ucx/RTgZ+06fQ0kHDTZbfAYqWhScf6tr
	RfL3J1e5/fIUKdMtrEvrhr6WqddppJc8WeJJ0iCra7fXwRBIev+Kj1PppuPOEYSLVC7J+9
	+1fDVNr7QUHR3Nc2n1xinmT7OLsgYKm5Axvl+hqimtm0W+MPIBMJgwwCQlGT8O2sOjUfTh
	dEQi6LxlZ7uv7HzJDe0hmvj0xh5hFcAtVgFdRXr5HRxvhip++KEg2jzJhP5sGA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 30 Mar 2026 15:44:01 +0200
Subject: [PATCH v2 04/11] ARM: dts: ti: omap4: Add pbias SIM regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260330-omap4-fix-usb-support-v2-4-1c1e11b190dc@bootlin.com>
References: <20260330-omap4-fix-usb-support-v2-0-1c1e11b190dc@bootlin.com>
In-Reply-To: <20260330-omap4-fix-usb-support-v2-0-1c1e11b190dc@bootlin.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282494-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,kemnade.info,baylibre.com,kernel.org,atomide.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.richard@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: 54A1435C7C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the pbias SIM regulator node for OMAP4.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 arch/arm/boot/dts/ti/omap/omap4-l4.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
index 4881dd674393..6904a84a1700 100644
--- a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
@@ -697,6 +697,12 @@ pbias_mmc_reg: pbias_mmc_omap4 {
 						regulator-min-microvolt = <1800000>;
 						regulator-max-microvolt = <3000000>;
 					};
+
+					pbias_sim_reg: pbias_sim_omap4 {
+						regulator-name = "pbias_sim_omap4";
+						regulator-min-microvolt = <1800000>;
+						regulator-max-microvolt = <3000000>;
+					};
 				};
 			};
 		};

-- 
2.53.0


