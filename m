Return-Path: <devicetree+bounces-262582-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JP8HNAcg2l/hwMAu9opvQ
	(envelope-from <devicetree+bounces-262582-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 11:17:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AFEE460B
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 11:17:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EDBB9302C640
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 10:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4F333D7D69;
	Wed,  4 Feb 2026 10:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="e0fIHaCq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78EEB39C65C
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 10:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770200205; cv=none; b=Dc+OgOALasq+e4+GL+e7ZzW43EPxCPPRTDT1vPDqU0CnRg2IdVz561iQHChXz62X9vqasdiacJzMFRLNSOGmsieIMSGEt810Xi3WmuE1UU/By6BAtD9V/jb1qcr1YOVMNi0yJpBrCta9gBeLbgOsWlsBUbHXv0SDbiETOTwIh5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770200205; c=relaxed/simple;
	bh=uLD61vUmSUDY++cQNlzWrzskh/oONOepWiSjgVQbDnw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=X1uQj1dvWo+h+8daZZOMB01KnGe+Na3c9KxEORFKRhtaA1kq2QFW+iCYOKyANAoXu4LXZKjEwZPSzmu1SPZooFhT6nTQIIzngx1UC6qKEn0uBheqEcwlLJlfx9poCPqG0j/y6kGOSmfRgeJy9xjZYVKnpGPcxBMeRyvY8ZlDiso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=e0fIHaCq; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B57FD3F877
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 10:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1770200202;
	bh=rhq5MsBYR4UI9R+em7ufyvAl7BxW0y3xSf9zAXEJwxs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
	b=e0fIHaCqgCn9xlXR93Nwq7gRyfXf7v/XkpyiieZUfbVb42K7gHBGLFijrqWELK4y1
	 RpjQ5unXB/003cY/rfNTys+73/wRWttz8gikixSHMLdX64pMsbvpby9u0TX1A+az2a
	 RQiTLNAXpldg0g8izct/UQE7ipPkQDKUWsPTYvYW/G/bFdJ9gL5bcmLm+TWOVKMmW5
	 icwDR33pjRoVO/JqlIh7uSlQUWsUMTjdRnBhMWFB/xOrMDcEQwBegU2/rIBbaBbXSY
	 for35bKHhIsZwQTxxi4GYjsfZd98qjp7Sr1VdqJxEFVLf74jylRAlQXXBJ2SXZO/3C
	 1afW/90/4LoMBCMmx5s1tnSTHxXHnZafhEH7s3a1GcpMR0sLcngY+nmrSMI017gU1F
	 hhaJh+iXK851/63uhoEN/kUAd4NkpO1kE+urek80EpE0slLYphkir5D15EUn1XbH/t
	 dJuO4XVVfVQx+jLR/AlJvSGumflBJLEBAoXwZXkvDr0JVm+VwSBs6xCd10/3KXeyxg
	 ChuIx2107uCgmkck2YEAAN0x2VLlKXlbkNL8ctJA45lgh6ueeXQmVC9woYYXJuyAaG
	 jggddYUwyT/AeG8RM1umnEbCIlhbd2tv0ScteieSFK8nIzQ+Wd1Nv78+8YhieHKh/c
	 aJ8BFfRObvyAHZdgpuVFuUuk=
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-42fdbba545fso592625f8f.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 02:16:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770200202; x=1770805002;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rhq5MsBYR4UI9R+em7ufyvAl7BxW0y3xSf9zAXEJwxs=;
        b=HBh/smqK4LzRK3+WXskJAuvvzF9yi93An5IG0NkV+1rYW08vbXTLblf+dHhP5Y4hjG
         Q1GwPmoWXM7WeBKiSGAfUd/kR5WA+RG0hAGNx3BhEPOT4LGWyZLrJELfHmEx4ZdZ+olE
         X6fWyS7Wyn/W/UqnXSscyo4F0iDm8Xv3fTN4ADUG3fn8mxy6cOj2C0goMUcZopGOhjrl
         I+PjPjcRmqGuRJxbPVwkP9wZnpjKtzsWwvaAOagAeopqJDhL3a6N/WlxQHZrgsErOwwL
         hCaHrmXygKGawKfrAwi0gyADPzezumY7XuLrTLQjN7wIKK+tdWQb8Yj/zza1Lv+0EFQz
         SerA==
X-Forwarded-Encrypted: i=1; AJvYcCVw2CKfUe/S9LwHkGHkXYiQuj0nFwV8MLn/QFjIs7bdhZxlqGc/tanKM6UlviSe54ma+Tk46IU39pra@vger.kernel.org
X-Gm-Message-State: AOJu0YwSr3t9IuB4t37xKJFlXeCr/25fdKHI2AyAYj+DQY1+/WGegbkD
	kzWbBndRQeAOBFsD+X5aZYYYWAV0nU96bVJd6s3TkkxiocY0fXCxodtSyPn8WfMAes9ensJppbD
	yFi3dumi6oRxOvM0MdhUPayBBhfCiYyKPZOLC4XwRCKg87F51ZUkOvX+RT+PhtUvmSx+R6QGfLs
	4mnlM=
X-Gm-Gg: AZuq6aLI4rVkT/mwT0ZDCDxe+u+/k4mMs7XeWp04zg5YRrvxbkv73r7NO+A/NAPL2iA
	QDM8uhWNif/4pAvlIvIWBLTxcDaQiymCaTvpe0hT9AFfYRA1QLch1M/nJWXt97jLelYzEkIC4dz
	UwO8+ZyO8vkxTxD2xKXYrslSnB8Yg2De2Ijs81EEQ+0/wxU+h+TGZv8x8QTdU8HJDD3RtmnhccH
	YZr9RoZbA7eBk0dLeF21kxSX305mXjTJwM2DwfDH1EmcvqPSViVX6o/xBGumK3VIsq+9RNH6xWR
	c34rvsjX0ywMIU7rwBPTYb32y5O22guEMjpUegBH12jx39FrAXxlF52OuRc6evAndYB0kBvuZG7
	QlrTaRpQqof7aooVeqXDIYMY5I9Jf3/EV0L6YHoutZEDtljtzxmwfinQv4E9JVFYpoCEHGg5kY7
	Zu
X-Received: by 2002:a05:600c:4f4c:b0:47d:6c36:a125 with SMTP id 5b1f17b1804b1-4830eb6712emr32297745e9.17.1770200202220;
        Wed, 04 Feb 2026 02:16:42 -0800 (PST)
X-Received: by 2002:a05:600c:4f4c:b0:47d:6c36:a125 with SMTP id 5b1f17b1804b1-4830eb6712emr32297395e9.17.1770200201768;
        Wed, 04 Feb 2026 02:16:41 -0800 (PST)
Received: from workstation5 (ip-005-147-080-091.um06.pools.vodafone-ip.de. [5.147.80.91])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48310880598sm30132295e9.0.2026.02.04.02.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 02:16:41 -0800 (PST)
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
To: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	E Shattow <e@freeshell.de>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Subject: [PATCH 1/1] riscv: dts: starfive: Milk-V Mars CM Lite broken-cd
Date: Wed,  4 Feb 2026 11:16:02 +0100
Message-ID: <20260204101602.30184-1-heinrich.schuchardt@canonical.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262582-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[canonical.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heinrich.schuchardt@canonical.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:email,canonical.com:dkim,canonical.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F1AFEE460B
X-Rspamd-Action: no action

The card detect GPIO depends on support by the base board.

Detecting an SD-card did not work for me with a Milk-V Mars CM Lite
mounted on an Waveshare CM4-IO-BASE-A board.

According to [1] SD_SDIO0_CD_GPIO41 is connected to pin 76 reserved.
The Raspberry Pi Compute Module 4 IO Board documentation marks that pin as
reserved. The Raspberry Pi Compute Module 5 IO Board documentation
marks the pin as VBAT.

Remove the cd-gpios definition and add broken-cd.

[1]  https://github.com/milkv-mars/mars-files/blob/main/Mars-CM_Hardware_Schematices/Milk-V_Mars-CM_SCH_V1.0-2023-0905_Lite.pdf

Signed-off-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
---
 arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts b/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
index 63aa94d65ab55..566b0bdc2800d 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
@@ -13,7 +13,7 @@ / {
 
 &mmc0 {
 	bus-width = <4>;
-	cd-gpios = <&sysgpio 41 GPIO_ACTIVE_LOW>;
+	broken-cd;
 	disable-wp;
 };
 
-- 
2.51.0


