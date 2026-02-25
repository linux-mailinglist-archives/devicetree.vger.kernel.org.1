Return-Path: <devicetree+bounces-268550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOdYOgKBn2lrcgQAu9opvQ
	(envelope-from <devicetree+bounces-268550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 00:08:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7497219E955
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 00:08:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9AE67301BA85
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 23:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 216B9376465;
	Wed, 25 Feb 2026 23:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KRL1xdoj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5CA34AB19
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772060928; cv=none; b=kGxw0uzFaP9Vne1M1sKYs/Lsl75J4ch6KDb2H1umHxoywhIDeojV2QbuR2S2XNBgGZ1j/Y2fhn7ik31QRC94PiJBdjOJRZxuw7xMbIRrxeMNbET1HTjVRN1eaRzFi4geYntWIEzukdmhc2Bbd5p6QhxjYW9wAXaZNDP0kYRCgbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772060928; c=relaxed/simple;
	bh=4GTUBQnqDbRnlT8dxYxCTUMOU/om/qdaMvQ066E9SkA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Jkv5/JEQ9SUz/Zgb/PKCihHL62TXURy4jdAy8sfxNe6F5b5c0YXAJFm4/kiATQQryu1iIrPJUoPndjiJteacFAKB52qmGZSExMeS220IQB1XWJbZCBMj+o4TekpZAuN8+v78bzkgoUSzYwXHU9Cqiu/sPCdkTA0pRDAdiLL1xFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KRL1xdoj; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2ad617d5b80so1015435ad.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772060926; x=1772665726; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xhDmJuAoZW5VMSQqsyhD5EcI7PCWrxtCTZMCIgCsggE=;
        b=KRL1xdoj/AjL8D/+1lxC70usI3w6G1jjia4W7ujGzp0FfumGamck3+e/02j7DTi8fo
         ADdF6pS1gW0isr1wQ4X49sGD1mDdsOCNN3gLu0sKKb9HTtdCEgDStGW/wA9XrQs+w3Bv
         2kuvp8pZXRt19oUOQ2EWPkj1UbYluKvD1TqRa30WRLdKB4NN6KM4VR9LLXjrmgHVMwAA
         275GOah2R4KI210uiCbxU8EILCD+i+ZlzR6/lSY+bcU4D7vUzmX4S5djVCNEC4h+VWl2
         kfftmy+71slZCYVgIjZjENYVmOH00b0TlkQn6UmeGge9HVbKTiYd/N/n7oXCUvWzsA0j
         W0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772060926; x=1772665726;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhDmJuAoZW5VMSQqsyhD5EcI7PCWrxtCTZMCIgCsggE=;
        b=ZnqM4oiIqH1H9TAc1+svEiPWMccV1zbLVQgYwTNY0gCyJccXEloqwaf+B0BHRwjNOE
         giS5uRjJIhFWMpvadImmqsI8bNX+JliXXE3jUv5WOVrw0tqwKz7yqQih/9I/6spwocp1
         Y7PLz9dRhjmYBW5L2PsE2yg0lXyJMxmma16HGN8pbn9fQ6vpyhHkYOFLDL9YNxe3BtEy
         4pT5Pr4YhOFsgkklQlSkAHA61Qk+LJPEdcg8QvAmPiJUxMvGOKukzb1MAf/AGptFSpaG
         iYKy+4RsBolOniNIdV2D44IUI5LQnl1uyzxdoz08ihNlMNamfzl8bqLttbKaP+QHFmhP
         raKw==
X-Gm-Message-State: AOJu0YyQnaeYyG2iXpSd5vvZ2w0JrF+J7M8iHWkMpipbjq5tAxTVSwEq
	wltpw77i0RgnF0m84eANfab23aAuqMJuxHjcSgVyC+7+5VSB6bY/hIcqBP/rDZsI46o=
X-Gm-Gg: ATEYQzzYHz9frztFMGZkIK8+43mllZGIVfx0qiF3kRPkTiOlO0fdyDllMnjkHh5B2st
	wQYwTH3o3yaNb87hroGkuFB4PwVodmapWbMC19S1X9lw+n6XlLlmQuOSyiP32pI2qJMBtcLS9uI
	pwHN6VZbGlUZUuykWioE4CTFZiMwXnXGSmkBgn4mKB3Egpkp1m/j8IEyBD1c+v+HeWqAg0CMLRN
	tiiDf09SaVjMJuDjBVGqmEd3gEwhcrunp+Rei6r4BcvU+CX0VMeV9thvK+W0ofoSpDx3rDBLDtR
	Tl+b+8mO5r+mWg0byV3ucQjzmDCVWe7snFJ3vTlfyLkvfICSJ7D1bxDw8OBgNnryteRbEnL8yYg
	ffUUMFEMh7rMOU8Kb8GdCsaMMgZUcfd1wMBq1FrTKZy7c/x/Op7hIXoY2OQLvjt+736GUlsbso5
	Y4aKjIdi1Kzt2na5+JaHsYChx2UL5XDJLuFd2b7HXrBYsWcU28YzUNYHFG7tmtDFc3
X-Received: by 2002:a17:902:ef45:b0:2a9:62f1:3fbe with SMTP id d9443c01a7336-2ad745136dbmr177955665ad.34.1772060926018;
        Wed, 25 Feb 2026 15:08:46 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5b2309sm3378285ad.19.2026.02.25.15.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 15:08:45 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCHv2 0/4] ARM: dts: BCM5301X: add WAN MAC assignments
Date: Wed, 25 Feb 2026 15:08:23 -0800
Message-ID: <20260225230827.21715-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268550-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7497219E955
X-Rspamd-Action: no action

These are used to specify the proper WAN MAC in dts instead of having to
handle in userspace.

v2: remove commits with switch overrides.

Rosen Penev (4):
  ARM: dts: BCM5301X: EA9200: set WAN MAC from nvram
  ARM: dts: BCM5301X: panamera: set WAN MAC from nvram
  ARM: dts: BCM5301X: AC3100: set WAN MAC from nvram
  ARM: dts: BCM5301X: AC5300: set WAN MAC from nvram

 arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts    | 7 +++++++
 arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac3100.dtsi  | 7 +++++++
 arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts   | 3 +++
 arch/arm/boot/dts/broadcom/bcm47094-linksys-panamera.dts | 7 +++++++
 4 files changed, 24 insertions(+)

--
2.53.0


