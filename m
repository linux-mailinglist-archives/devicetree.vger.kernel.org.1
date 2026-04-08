Return-Path: <devicetree+bounces-285619-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JnCGiYL1mlnAwgAu9opvQ
	(envelope-from <devicetree+bounces-285619-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 10:00:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A123B8A84
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 10:00:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3A09130059BD
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 08:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D07F39B97E;
	Wed,  8 Apr 2026 08:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="WjJJOZDM";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="TLWFPRl/"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC56339B495;
	Wed,  8 Apr 2026 08:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775635231; cv=none; b=AaZl14iFOiiAktW5nDSfXneLVflo+mZSBZbaQK558zPXkLSSiKNwvLx05zjrHJWzCghoLooEaH3nGsB8iXnXJYm2zmGPkNIxciDopKaWK9WUaV7npCNaL+cyU256K4FLe7FvyiL/2AGf9DM2CbNjtpX007ZcN7+loHzvuIDlN54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775635231; c=relaxed/simple;
	bh=zdocJ1O8/ww8z4gyHQWB27Qew7fUhNz1qLp8EhG/90U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jJVMtVzRKeCqfFI59u3Kgkr1MTaPAAr8O2f8eq+/g2GES0FIpwJWAqWaHvqQAvQ1iFX6oVe1rlpb5zdqCz78AlsROPe4uIcMb+X8p/0uQpdZ3WnroPIuVsetdgvqf0idFDhrJ1tzfbNWYaet9lk57CViMQq7yNkruMMpDh+3oSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=WjJJOZDM; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=TLWFPRl/; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1775635222;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8EN/IuRnokUf0WAqH0XL7x6/V8kym8QNk6F6GN9+GJw=;
	b=WjJJOZDM5sKi3dUQXK8OOgeYkErhvvqsk0UwV/MuyNF+6RAZWI/QkPlu2Lwm1I7oSWlKi+
	v8diDnq2itLvqMqcDVJMDgAQggeZfgLSVxl6aEkgxOKdRYmSioiQp6x2SfCOlG59ARFHnU
	OCnR2EssIRQuvYyvg6UYY5M6LiRuEdtWgP8I/UywvtLyaUJl0vOEAf05DquWf35/lwSDyd
	9UhzNrpW3NL3+XAd1fWksZNGLzzK7IXJQlwAlW1Ykkca+CvazUt8e/x1gLO8KW3ioZI5PS
	e3Wnlh/jyhJdBmB8m5BSVZ06ehtvNyWW3Nluso2j+FZPAR5zVBXqnobF2B8gaA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1775635222;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8EN/IuRnokUf0WAqH0XL7x6/V8kym8QNk6F6GN9+GJw=;
	b=TLWFPRl/SnwkO0gCLEyIrz9L6HG9iBlO7DGq/EZH1afdpXKPji5EPIyR7NzoQIJZ5Es7Xr
	Nv4W1nxhcNFkp7Dg==
Date: Wed, 08 Apr 2026 10:00:17 +0200
Subject: [PATCH 3/3] arm64: dts: broadcom: bcm2712: Add the otp nodes to
 firmware
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260408-rpi-otp-driver-v1-3-e02d1dbe6008@linutronix.de>
References: <20260408-rpi-otp-driver-v1-0-e02d1dbe6008@linutronix.de>
In-Reply-To: <20260408-rpi-otp-driver-v1-0-e02d1dbe6008@linutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Gregor Herburger <gregor.herburger@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775635221; l=950;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=zdocJ1O8/ww8z4gyHQWB27Qew7fUhNz1qLp8EhG/90U=;
 b=ojdxNXtZpCybmlkPxFdwFuc1YG0Sw7WdqhtphjO5I9psLadULu3k6LQGUq+ExG7lwbGdM4D8w
 xqsoz16FUxhDeYj7vORstXtVUMH+MvlJU/aRaS/ydLi4uDb8/Hff+Fp
X-Developer-Key: i=gregor.herburger@linutronix.de; a=ed25519;
 pk=u72Lv7+/lS5CC1hmSrb17lv/6CK7HBh4Lvz77PHA5LM=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285619-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,broadcom.com,anholt.net,gmx.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linutronix.de:dkim,linutronix.de:email,linutronix.de:mid]
X-Rspamd-Queue-Id: 79A123B8A84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Raspberry Pi 5 has two OTP registers (private and customer), add these
to the devicetree.

Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
---
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
index b7a6bc34ae1a..676081198213 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
@@ -60,6 +60,14 @@ reset: reset {
 				#reset-cells = <1>;
 			};
 
+			otp_customer: otp-customer {
+				compatible = "raspberrypi,firmware-otp-customer";
+			};
+
+			otp_private: otp-private {
+				compatible = "raspberrypi,firmware-otp-private";
+			};
+
 			power: power {
 				compatible = "raspberrypi,bcm2835-power";
 				firmware = <&firmware>;

-- 
2.47.3


