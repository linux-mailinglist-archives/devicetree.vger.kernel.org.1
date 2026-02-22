Return-Path: <devicetree+bounces-267152-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIQIMmPhmmlImAMAu9opvQ
	(envelope-from <devicetree+bounces-267152-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:58:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A0D16EEE0
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:58:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD23F300EFB9
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 10:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76E3D214204;
	Sun, 22 Feb 2026 10:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="heKO1plz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E041CDFD5
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 10:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771757921; cv=none; b=opK/kaqt2nGeiyALHjG7m5WvvCju5f460FDBZIzKzyKb5I6X1lDcvI4OhbgWeSK1o5476gc5bXqwNM6luQxRMrybHasDi4O9h85RXh3N6qWouabdF2zYdxF8KQ3xcHPguEIvGrM22RtrjuXOqqmZNDcBZFZ33GWD93tt8JpaXMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771757921; c=relaxed/simple;
	bh=uTMkYFhwyE1ALSaflzDC2ufn65NZPtaGatykjQGIBVM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sIJpXFUv5i6TgtIPrx8BU1pBlqz5P/uoikSAPPl891IB5kh37UbSlvc97oiqREolMH9ymM/hOoP9rTP0fcNLasMeWfshzFomOfEGQel9e5G3Zsrj1tb2wr9J9gOnYmAaTR3q4Zif81Ugd/DBDqh+VCdXB2g2DYA+2T9nEQ4GVWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=heKO1plz; arc=none smtp.client-ip=209.85.216.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f68.google.com with SMTP id 98e67ed59e1d1-3562e858da5so1424857a91.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 02:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771757919; x=1772362719; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O3pv6D7MmjyGD1198CT8GdwgpvkQh5N7RgCK4lMDm3E=;
        b=heKO1plzwpNTRQq8kkt6eXwqL0wq0JUC41VjeKomlLUAGfwaYEAgInu2rmVjeXxUu0
         YtrlQPw+eYTAXjS+mueh5hr2/KjgU3Fqnuvdtt/0mqRvDW84BCD31un/CKyv63HusA3Y
         DchJ/kj5V8o3J/NebTKkDy6Nnf37IXdO8HR4upLFkX0j5bvwTU82djilU1JLyHvhyk1F
         l6D8C6RyOZdfFm9RUnNB0Hy9ykD/SmXKHqSAg7TKag4ml26hR5jvZgcHtfEBjDd/w2B0
         6tuw2fG1F6wUwSkMWMjF9Qrw2R2kcIzNGe0isQUHHfvNvhukr34yHrZzgDOntGZWi8Vc
         79Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771757919; x=1772362719;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O3pv6D7MmjyGD1198CT8GdwgpvkQh5N7RgCK4lMDm3E=;
        b=AmjnzlBgChRSj16s8dmuptYCt7+9eqMUOm7Vc492mUcsasNceMeA36nvy2iJ0Gx5fG
         NlcNl5xRcnxmP+2UUXYu3B3goGPbfZsfQF5/YubhQy910qEFHyOsh4h089fV0MQqWlRh
         S4Zq5LGOKji4cgVnJcYHlDau+vSxeCU6tsuFk1lw6FG01P/F0CYdL8tSB6XDy+g2Cfal
         3aMTMFxBAf6SUcSEiZ0RyTsRGYvlNc53oDyrptKMDuaIGVcPH2eLJVSCGYtIcET/4NU5
         C8dJ2+vQLa7iEFEAOhiz/CGWLYvSazmX+4kc92ioLmAvCoVOlDkY83w04JuDpmx0S3nA
         q1SA==
X-Forwarded-Encrypted: i=1; AJvYcCWhCnBbXhmudrVdtUMkaZCta9Y3RPLKBHITeEd9xUBL9rzljXMj/5NGYuxwlfwsIbwD9Kv+P4k8w0gD@vger.kernel.org
X-Gm-Message-State: AOJu0YyYoIvJBZ6jlzcEroZBH18X+hUuGdwPRlF+cn+RC/pf2KDMgqzB
	mojV/cRoK5zGNVm2X5NhSmv7gluTdY/iOtsZEuacGgNulUAWh+TRLShg
X-Gm-Gg: AZuq6aIEp4BXrSMAE/kJK0/qRleWmO9c0IMAQD4azVg/iFK0GTD4PHBIyokKtbIcuxs
	REU9l30tw9Mg0Qg9HQMTIAlpDVpolnL8Hlpay8aWoCUDUwbnmKvAb7ZLEdPVqd3JIbPd4gXqL9n
	RYoCnRf3UE8PZZhVomg66c30WqaqabPoUkMnX7jGVl6NoZz+YsMG8eNaKgOOTB8M2N3wjI8EpCQ
	/TaopUmidEFxxFJssT3NaFdIpXhQa5wPiJhQg39IOJroTwNdDXk7C3BlvqjGIhe/sXpKNJrtxnA
	GVzfxMPoe3uwnQeBX42yExYYuQS0WwMSjV8XXvE8xEYm5MKsNXe0Q7A/u2AcLRQTwawkGd+L9nq
	yb46sDw3iuVJ0C9ep2dIrAEKbWzJtBPhJasBTskLXXcxyZXjAVPuMIuHqTCsdRmAAxoxNWoQbAr
	HHdX2sOtBDgLLhXuZ3
X-Received: by 2002:a17:90b:4a4c:b0:341:6164:c27d with SMTP id 98e67ed59e1d1-358ae7bc723mr4727667a91.3.1771757918761;
        Sun, 22 Feb 2026 02:58:38 -0800 (PST)
Received: from yu.. ([120.242.225.43])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358a1b1f84fsm3705278a91.2.2026.02.22.02.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 02:58:38 -0800 (PST)
From: Hao Yu <haoyufine@gmail.com>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: jcdra1@gmail.com,
	akhilesh@ee.iitb.ac.in,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hao Yu <haoyufine@gmail.com>
Subject: [PATCH 0/2] Add AHT20 sensor bindings and fix driver initialization
Date: Sun, 22 Feb 2026 18:58:29 +0800
Message-Id: <20260222105831.7360-1-haoyufine@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,ee.iitb.ac.in,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267152-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haoyufine@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 36A0D16EEE0
X-Rspamd-Action: no action

This patch series adds device tree binding documentation for the
Aosong AHT10/AHT20 series sensors and fixes
initialization issues in the driver.

The AHT20 sensor was tested on rk3566_lckfb board with I2C-2 port.
Temperature and humidity readings are now accurate after fixing
the initialization command sequence with aht20.

Patch 1/2: Add device tree binding documentation for AHT10 series
Patch 2/2: Fix driver initialization commands and add DT support


Hao Yu (2):
  dt-bindings: hwmon: add aosong,aht10 family
  hwmon: (aht10) Fix initialization commands and add DT support

 .../bindings/hwmon/aosong,aht10.yaml          | 41 +++++++++++++++++++
 drivers/hwmon/aht10.c                         | 16 +++++++-
 2 files changed, 55 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/aosong,aht10.yaml

-- 
2.34.1


