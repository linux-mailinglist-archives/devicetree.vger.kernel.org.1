Return-Path: <devicetree+bounces-266886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UK1nJ5IxmGkRCgMAu9opvQ
	(envelope-from <devicetree+bounces-266886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:04:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 138471669DF
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:04:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF94D300CFD6
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83CBA33554F;
	Fri, 20 Feb 2026 10:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jreyXGu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDF93148D0
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771581838; cv=none; b=EdYvIEVBX7LI6J+vWg5kgt8NgRtfXwEOK7tQfTrKgItoh1p1wAhhAS31GXCwrq276OUl8kkwNrH5RQ4a7MMh4Br6xbolB9ncuPPQ2JKEEkYfV/YOjh+ApVjr2AVIBR4/4dweUIqENg5dvQ8ZCeu9YCfBl9vvN6V54QnEMMlQkXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771581838; c=relaxed/simple;
	bh=knVgjLydlksWLpStICQEfG+QHAvR//iENJRK4ko0Flw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Gn0d8sgt0+BGD8V5nhLKnxfJvSdk6YMBJHxLUWHNyerU5HgE3OChbNK6G293/E+1J757RaSOuSfGfGcXM32Qi85ADmRDftHZIVV04rKS0lYMDxKS9J9NAvvN7ch4U20xjj+MuRbivDYBriDS1TVRLKrptJ5rCeDobb03qc5wuvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jreyXGu9; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-43638a3330dso1585322f8f.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771581835; x=1772186635; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CGoxHfyZdvHZdaOxZRPHjFZrmxUcjr01IQroUI8SPoo=;
        b=jreyXGu9BLqDZaYEre+uavOiNs/N8aLjBJJob8MpdN6AfvzpmvsaIiHlYHK7OsE/rA
         afDVIVh/U3hmyyInbs/wWWoI53324dvIoJZqehZutrh6Ky/v2Z9HqTA0c2NWqwetKaQn
         Gq+r8Epd5wlyeqEIssKtgMU8idI13z4N2sa0WHYHT1cM3tLTv83O6TlNGSIqCPnJK5kd
         CL6aul+CuU+ArfRb9nEu52y7/EWmL6rNfZgLDwO5rBhCIqbsPt36mS0zsI1srxuS1dFm
         CjkunOifUSgS4gIpG7SYyXPOvw3APD5f9wGsze3mjmDsq8k+/jYgT3s0Mxvl1fxONM/f
         M+tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771581835; x=1772186635;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CGoxHfyZdvHZdaOxZRPHjFZrmxUcjr01IQroUI8SPoo=;
        b=OJ6wrSBBCiC2fekxLZE5N71LtALoIL9y27KByvspmJbMEObVl/0IIKsv7HRp8CA+k5
         yNP7GsDsIwnghgry9ZA86feKI44l9si6ALooNMF3OSJWf8GVjO13JPJf8xUPyOL31scb
         XKwLyio8ogAl/l72KzkIRng92EaBPYKtVHVpqIK/pSitNMtsRseJem+jOuwPjAlTNWS2
         m0gc8m5PTJ3EukblbhM4L+uCRVd3bedYatcz778ZxFYBHRv45IfDlOyplKfT97mcvFVq
         qwlT1P/K9jANrElcb1fWVDdfKIKqA+XGMlAcpgfutKmGZ7q1mnk9ka8jiKTAbVBUqu5c
         22iA==
X-Forwarded-Encrypted: i=1; AJvYcCXMgzTRC8esFKgfcPahIL/3jkcb3Z2y4IG6FonG1axYgYyDwct0xGGCSuGdLS+4HuulGuc4nM8kwpN6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6GlYwjrmHoiEcI+Qz/PkV9QOtrFqbxfPnFQP0vrfVwcxXGc49
	KYoIeMeZUR1eyIsLjuu6QPqHuIeu4QYm9zkX2RFA6ohflv6A2PYv0SdmreLJkA==
X-Gm-Gg: AZuq6aKJK0CEI2xjA2X6GvMUhEreZoNJqyKEHWlt6lTzptGboiUoGQrujH7wkz6iUYm
	V8Eprz5a4xPUgTQQLVOxcLOPyFbnHeyWfjk7OMCXkCVCU1xi6cODboQobVNhUkBuS4qjxr007Fz
	DBoLkPrHYqein4Zi2YfJYKPYORdzVYc7mLTCoWMVRRaPh+Jd5VJ5qBZ7GVQ+g4S2guOf2b2Nbui
	RwLtfu3AjP21eyCMbWnrxNcnBVOPpicbHnkdpr6uEiKvNxELJ/aI6MjYESBUpZKhgFG3Rv3uaP9
	zIBj9LsZpy7VPszHmBle5S5Yiz+F2CI8XSf5Nv7WieTVKfDB4NKwDl5YXCxHweaYG1m5wKiItVl
	hkp5BfSF9ryNdMJ7QEhQXUdyeYaIga5yxjvRQWBFl/qM5o8fQofSgW7o9Ywbg8z6a7+nypBv54F
	cFW5yIhxSLKfkXn6mM7YFnwe9cxolA2YwUMPz5oLpZxdAyHNIxfqI3
X-Received: by 2002:a05:6000:186f:b0:436:1b1:6cbb with SMTP id ffacd0b85a97d-4379db30f9bmr32510635f8f.7.1771581835115;
        Fri, 20 Feb 2026 02:03:55 -0800 (PST)
Received: from [192.168.0.253] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-43796ad0166sm55642699f8f.35.2026.02.20.02.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 02:03:54 -0800 (PST)
From: Gabor Juhos <j4g8y7@gmail.com>
Date: Fri, 20 Feb 2026 11:03:49 +0100
Subject: [PATCH] arm64: dts: marvell: armada-37xx: align 'phy-names' of
 EHCI node with DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-armada-37xx-fix-ehci-phy-name-v1-1-27c9907aab8e@gmail.com>
X-B4-Tracking: v=1; b=H4sIAIQxmGkC/x3MTQqEMAxA4atI1hPoj1iZq8gsYhttFnakBamId
 7e4/ODxLiichQt8uwsyH1Lknxr0pwMfKa2MEprBKDMoox1S3igQWlcrLlKRoxfc44mJNkYfFq/
 VOJveWWiPPXOL3v/0u+8Huyga6W8AAAA=
X-Change-ID: 20260217-armada-37xx-fix-ehci-phy-name-cdfc108b2473
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-266886-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,bootlin.com,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,5e000:email]
X-Rspamd-Queue-Id: 138471669DF
X-Rspamd-Action: no action

According to the 'generic-ehci.yaml' schema, the name of the first phy
in an EHCI node must be "usb", however the 'usb@5e000' node in the
'armada-37xx.dtsi' uses "usb2-utmi-host-phy" instead.

This causes dtbs_check warnings like the following ones:

  arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dtb: usb@5e000 (marvell,armada-3700-ehci): phy-names:0: 'usb' was expected
      from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml
  arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell,armada-3700-ehci): phy-names:0: 'usb' was expected
      from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml
  arch/arm64/boot/dts/marvell/armada-3720-eDPU.dtb: usb@5e000 (marvell,armada-3700-ehci): phy-names:0: 'usb' was expected
      from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml
  ...

Use "usb" as a name for the phy to avoid the warnings.

No functional change, the USB interface works after the change:

    [    1.472393] orion-ehci d005e000.usb: EHCI Host Controller
    [    1.477847] orion-ehci d005e000.usb: new USB bus registered, assigned bus number 1
    [    1.487127] orion-ehci d005e000.usb: irq 40, io mem 0xd005e000
    [    1.505759] orion-ehci d005e000.usb: USB 2.0 started, EHCI 1.00
    [    1.512493] hub 1-0:1.0: USB hub found
    [    1.516434] hub 1-0:1.0: 1 port detected
    ...
    [    4.175746] usb 1-1: new high-speed USB device number 2 using orion-ehci
    [    4.347643] usb-storage 1-1:1.0: USB Mass Storage device detected
    [    4.359972] scsi host0: usb-storage 1-1:1.0
    [    5.367100] scsi 0:0:0:0: Direct-Access     ADATA    USB Flash Drive  1.00 PQ: 0 ANSI: 6
    [    5.387091] sd 0:0:0:0: [sda] 30869504 512-byte logical blocks: (15.8 GB/14.7 GiB)
    [    5.398420] sd 0:0:0:0: [sda] Write Protect is off
    [    5.408108] sd 0:0:0:0: [sda] Write cache: disabled, read cache: disabled, doesn't support DPO or FUA
    [    5.477359]  sda: sda1
    [    5.480037] sd 0:0:0:0: [sda] Attached SCSI removable disk

Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
---
 arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
index 87f9367aec1227c2c6de52f358d51bcff758c147..a8d10e4de81619c44ccbe0f08e69707dc28005a3 100644
--- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
@@ -396,7 +396,7 @@ usb2: usb@5e000 {
 				marvell,usb-misc-reg = <&usb2_syscon>;
 				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb2_utmi_host_phy>;
-				phy-names = "usb2-utmi-host-phy";
+				phy-names = "usb";
 				status = "disabled";
 			};
 

---
base-commit: fcaf733ca526b69595ed1d227e2cc59ddd24eff7
change-id: 20260217-armada-37xx-fix-ehci-phy-name-cdfc108b2473

Best regards,
-- 
Gabor Juhos <j4g8y7@gmail.com>


