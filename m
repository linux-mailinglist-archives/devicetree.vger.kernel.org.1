Return-Path: <devicetree+bounces-238646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B504C5CE4B
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:39:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D8400351A2E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12ED8313E14;
	Fri, 14 Nov 2025 11:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Xy61F5MS";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="EHlchJRT"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A83A313E04
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763120244; cv=none; b=se6UD5GgjPRVAM2djHlYsdFzyuc7a+FEVxT9JV0PwAIC25vEPIOhVzuNQLwh7gxMaYQNorb2lf0vcwWxLTNEWTlVi1ax8UC+6A6RW4QFvYzo2iaQC2Yj5OVSrjZDd3Ex8FoHE271uhR33Gu22OOUvVZ5FAhN1LJ2W9PhLPvfRe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763120244; c=relaxed/simple;
	bh=YOqQYfs4nuQmvSgoRMMjC8XlPFHhX1Q2biOJY+6ams8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=qSszl61jgRoJqG9xDk57Sb391h8zVOmAZgNDCZ7o/jnI4ZwLyOSfHHSS1N1SCZMW4Ux/k2puVHTpuMTpPr2q90/mm5LdSp6nI6EtKVpSzix4WC842CVHuVHH3usl+dtque0nreZQVFKP+fLa4puJW4/gLbhSJeu0ugCko5IwF18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Xy61F5MS; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=EHlchJRT; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763120241;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9P5NBgI6mcvaRko/BuipRaZLnCkAOoZG9QxXhEGpNPI=;
	b=Xy61F5MS4KrUDymBapDwLAYdersb4Mxri5bsfwfD5QmP2ij0g+s1Py9RIzv06GjND5COJ3
	iJ7A0jvivRiQRt5996NGeH7jJIMajAluo61GYqvXookcVabsYd8jSI5Cf59n3Mpi2TxbF+
	pbN+LsvHlDng7/3BTKcDg2kGZIMUeME=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-279-sGJugblrNuueRw_d5luLQw-1; Fri, 14 Nov 2025 06:37:20 -0500
X-MC-Unique: sGJugblrNuueRw_d5luLQw-1
X-Mimecast-MFC-AGG-ID: sGJugblrNuueRw_d5luLQw_1763120239
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-6417a4b67f9so2984045a12.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1763120239; x=1763725039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9P5NBgI6mcvaRko/BuipRaZLnCkAOoZG9QxXhEGpNPI=;
        b=EHlchJRTRq+CNR4yzkDyvXPsLwezEowx6jwSAbLYW2xNgQcw0fJ6QkhWHoplMYhKHV
         72TRJxk6UB5Jo5gxK2oOkFT1YrxuATO0hCuJHexLc2M4GrZpUvWK5XYqvRhnC/7DIHqf
         26d0cTNQNGvTQrOijZ8Pq4H9zGXonSQFgMhCasnv02Tw5RAL1e0FyBHxRKJxcDftyM4o
         nTNpM+wdSN4WRQoX0uviQVznJLGPJpYfbLcbZJaku2nh3Y4AjpRxWGfBsFNOvySlF5zG
         cQprCRbAaK1Pwgqhbs++WGPcAE+XMoWZ2IZOF4Lt6y0fl3jXKEqmCNVWIKBkfG7LQrA6
         XL4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763120239; x=1763725039;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9P5NBgI6mcvaRko/BuipRaZLnCkAOoZG9QxXhEGpNPI=;
        b=nXri8pzgRB0bMM+8YlUQDpXCi7V8+yRPdFFxx0M1AOo3viMObsUGo3/QUBxEQ0CHOc
         j+DF20+0zv6BI9zYdwZDLIvWiYHrRu7wVOTfMOUAZ+rSp+oY4jd7UFOZ11ELtOECGHZ6
         u+CUacsTXgXXINGWpuXOLKYqy6vpd4z/pVWyxZklhZBlUA106ijAyGowj7k2eu7BFU4H
         B5fVP/P0HeVz7vke5tPpRbH++tDZRuWdU7lbwBhAlzP66CKUTx3oQIVcEnCC/0Y5PDKi
         5wLxMDifbG7+y7M9L73AOcmm1UBSrlqnz6Jx3pJo+X4x73V9xGKioq4a9lTxEzLiVNA4
         eQSA==
X-Forwarded-Encrypted: i=1; AJvYcCVOO+8Hr02SOms/wKiSflVe5fCeFx9dnDyB3y72UWFn1gzCt3cThh90Y0s5avYw8MaX/bCHyx6NdHHx@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy9IefkL0AavB/XSC+C3BHa70zMwnseBCXyGGfby2sUuFL5J6t
	v6ety3cZiPXXD0Z4IhazvRUsz1I590Hbj+4GPoYDgMUg4PJ40qJp/7vkSJZdmbIrqvpK5hV7hCI
	YfNIPOQS+7/WktQGrXlX1F3NCwanR6c4bR4QoVUhi3xyWYN4jy8MR0737RWTMj78=
X-Gm-Gg: ASbGncsZf/RHu5QxPamDD4quKWPAPdzPc+sNjQ5RM12Ek+iCfYJezMLE3HgFCA+g+Bd
	mHqR3novVPbot/FqTUEwu+EGKxwthCzRsG0cA7O38xX/rpcU9nLMlEm5qzd5gUmF9tW3nRjmRJv
	lNt4NmHXu+klzRQXRv0EtnToCbNBhac5YwCWombWoQvtZXCcgUJIjmlYPqHB+X/PRFAD55i7r99
	8oMq+80US/vAuIewiKeJvwxEDumYST5Dm8m/c4rxfog9EK/leDrXBnGbg5ymAPl9cqe0MkGAM7a
	BPLE81RbjTfmTFX2moJ4M/SKbpBRtvgLy6N8T1XKnznd6jDmGKGzqcsLA09P1qziCGlsRvoMJEM
	I46/YH1oyhiXFkOFze87jrQTFU/B6So+X6t/ClBNzysNZcRtr
X-Received: by 2002:a05:6402:35d0:b0:639:4c9:9c9e with SMTP id 4fb4d7f45d1cf-64350e21802mr2451540a12.10.1763120238811;
        Fri, 14 Nov 2025 03:37:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFFVe/uB9+9/3gzdFTMbVi34GIzV2jyTunZWZuVMHQ6OHKZN/e4SH5jply2KeE6Cp1DqAHYdw==
X-Received: by 2002:a05:6402:35d0:b0:639:4c9:9c9e with SMTP id 4fb4d7f45d1cf-64350e21802mr2451507a12.10.1763120238393;
        Fri, 14 Nov 2025 03:37:18 -0800 (PST)
Received: from lbulwahn-thinkpadx1carbongen12.rmtde.csb ([2a02:810d:7e01:ef00:1622:5a48:afdc:799f])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4b19dcsm3358424a12.27.2025.11.14.03.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:37:17 -0800 (PST)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Frank Li <Frank.Li@nxp.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	=?UTF-8?q?Martin=20Povi=C5=A1er?= <povik+lin@cutebit.org>,
	Support Opensource <support.opensource@diasemi.com>,
	Peter Rosin <peda@axentia.se>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	asahi@lists.linux.dev,
	patches@opensource.cirrus.com
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH] MAINTAINERS: refer to trivial-codec.yaml in relevant sections
Date: Fri, 14 Nov 2025 12:37:12 +0100
Message-ID: <20251114113713.231513-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.51.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

Commit 4acbfcf11cbe ("ASoC: dt-bindings: consolidate simple audio codec to
trivial-codec.yaml") aggregates a few sound device-tree bindings, i.e., txt
and yaml files, into a common trivial-codec.yaml, but misses to adjust the
references in ANALOG DEVICES INC ASOC CODEC DRIVERS, ARM/APPLE MACHINE
SOUND DRIVERS, NXP TFA9879 DRIVER and WOLFSON MICROELECTRONICS DRIVERS,
which refer to files removed by the commit above.

Make these sections refer to trivial-codec.yaml, in order to inform the
maintainers on changes to the device-tree binding relevant to the
hardware drivers.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 MAINTAINERS | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 836ec73c604d..311c418a76ea 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1770,6 +1770,7 @@ S:	Supported
 W:	http://wiki.analog.com/
 W:	https://ez.analog.com/linux-software-drivers
 F:	Documentation/devicetree/bindings/sound/adi,*
+F:	Documentation/devicetree/bindings/sound/trivial-codec.yaml
 F:	sound/soc/codecs/ad1*
 F:	sound/soc/codecs/ad7*
 F:	sound/soc/codecs/adau*
@@ -2419,9 +2420,9 @@ M:	Martin Povišer <povik+lin@cutebit.org>
 L:	asahi@lists.linux.dev
 L:	linux-sound@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/sound/adi,ssm3515.yaml
-F:	Documentation/devicetree/bindings/sound/cirrus,cs42l84.yaml
 F:	Documentation/devicetree/bindings/sound/apple,*
+F:	Documentation/devicetree/bindings/sound/cirrus,cs42l84.yaml
+F:	Documentation/devicetree/bindings/sound/trivial-codec.yaml
 F:	sound/soc/apple/*
 F:	sound/soc/codecs/cs42l83-i2c.c
 F:	sound/soc/codecs/cs42l84.*
@@ -18843,7 +18844,7 @@ NXP TFA9879 DRIVER
 M:	Peter Rosin <peda@axentia.se>
 L:	linux-sound@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml
+F:	Documentation/devicetree/bindings/sound/trivial-codec.yaml
 F:	sound/soc/codecs/tfa9879*
 
 NXP-NCI NFC DRIVER
@@ -27915,6 +27916,7 @@ F:	Documentation/devicetree/bindings/extcon/wlf,arizona.yaml
 F:	Documentation/devicetree/bindings/mfd/wlf,arizona.yaml
 F:	Documentation/devicetree/bindings/mfd/wm831x.txt
 F:	Documentation/devicetree/bindings/regulator/wlf,arizona.yaml
+F:	Documentation/devicetree/bindings/sound/trivial-codec.yaml
 F:	Documentation/devicetree/bindings/sound/wlf,*.yaml
 F:	Documentation/devicetree/bindings/sound/wm*
 F:	Documentation/hwmon/wm83??.rst
-- 
2.51.1


