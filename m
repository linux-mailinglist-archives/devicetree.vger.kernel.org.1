Return-Path: <devicetree+bounces-304116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCjHDjRSGWrzuQgAu9opvQ
	(envelope-from <devicetree+bounces-304116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:45:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C92B5FF649
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:45:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E59A83021B27
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 08:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D65BA38C2DE;
	Fri, 29 May 2026 08:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LMdQ4Bk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB3E30C35C
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 08:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780043894; cv=none; b=n87M8SOMin9eFTwVZ4qbfO8KHPW00aoQV6YoByQ/2oKXvHPkeT4Tfd8YOVrAp3CBrMCttoGXdGTdcq7RSmmueaixujLDngV/EDOLfOPHziJIwfDiKmKLUUX1ryzcTSFMigIge65k3oSOqn98iKSeFLGM8UhVNucAnmLytFZ+YkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780043894; c=relaxed/simple;
	bh=VgAm+RNMOJA2j0Sf/kAZ80gwxzHPi9+cRsWGiGUdYTM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oWlOkO0ZLKpxuahvSSPOwv/qcrViEf9eLEbnUDY9RuioJvA8jQtFTPNP6mAXPDvgelHx8n3xEppKWpa+J67DgWMtrA1nKPotgAkY8tRVUtf4DQW5l43umC6ISXtq0iqPs25k4Bw/RbyxeZjG2HwCC7Yn4FPHqclMCG9ZcTppTO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LMdQ4Bk2; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-49041e84237so61338025e9.1
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 01:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780043892; x=1780648692; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5gBZ+/d1KcPESiQ0VdW5TtOLU2jbI36z47/ITTKvpHY=;
        b=LMdQ4Bk2TUf7zi7yHKpp1xWzHUY1JYgWo60bx0BNm9QlvbNq52fI3blCb6B+9bwvzG
         p7cCi30JcBMnb8jWy4YM464leoB5IB91+hv9kihkJ1XecO46EtS5DJ17/PktsC6vz7zB
         V6IYb9gBgMjxN8eEWTlmPuQ4PDHmeIsErwpmeEnIz3S34FfXAC9qeE8xx9LF5vGozszY
         ltFvzwFk7viTj/5aRpBmPdcUlBkDh/4c8NcRNmpF/pr+4SYK4SWThPo0K00riu/0bEw9
         X6YVuiBPqhVkkmttG5isFgh8EcwwUAE1VQIsbzLJgNZkkcZvR93lfoyOvj9UTtjY4X57
         jFqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780043892; x=1780648692;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5gBZ+/d1KcPESiQ0VdW5TtOLU2jbI36z47/ITTKvpHY=;
        b=XDXmLIl56v9qelV6Bc17bew/Iu6VvsXYbuFnYWlNwO7nHeHIVvGMCthppTWnfPbml2
         hFsdtcluFd4s8Ed/HuddQ761K3URJun1sfv9EXM3ReJXJPecfFhUwGC0sh/GAzwejuV1
         FVaHFr7ZPZyZ8DT3MXY1ZIuPvs189hhM5a7DyqfZPG7In5XSYsZ1qhvCz6kakUdFJptz
         pQjmWx8hs4ue1cGSbEvxYclV55rwX7PJ1snokVFxbjwLlO8DI8tTYzV/ghehh13S8gNP
         ti6We8icyVFTrGDSOlGQRRX5YC4vK5/a9suDB3bp6TStqrnqBT/Qp8PNVFNZwJbzox4D
         mdBw==
X-Gm-Message-State: AOJu0Yz6DplH+32HRtwVdsOIow6/HcufDhqKQ5UkPx0lZabHfJBsozZh
	HOBB/m/xEqK2NEG9xkNgVuxr72ycVbUOz18OvzRRHcWe3gEdWY5M28AQ
X-Gm-Gg: Acq92OHVUwx0n5/gk/ZNXMScvDAV9DDs64DS77NlAta1e//NZu6pAHo8egzTTxZEO2f
	XOArSaPM0kwfXX4C1u8qlhL+2ydy2otZ2NiiTy1/Ax0+tj0o+cx+Q+vpS97YA9GxsayfY9Qf38y
	h0f+JdDMA86GjJRdWW3ah7PR0OFp2xwVvLM21Mi/p4gTaXmwxaSr2VISp5rtJxAPHdhDYZeIVuR
	v7+muU135kwc32mkkX9QMRJY3h18O1WwDhgnijo1skFVhIAkc85WAhr/ksU4zI0PxoUpgz5Zouk
	uAFoJYd1eEvFyH3tcAVqG084r9o/guGYQc/aqA0E2YChOUK9EFCFhlF3IZYJcD3SZx4X1sTBbaE
	57OEYR8d3VNg/bbwTJYwVifvO6O5t9C9XPnBlB2UOlDCs7jqUvXjOC+CqW3SG700ePk2j+fipA/
	/N7JSJ2JFDo3wgLHQBPuUoz9k=
X-Received: by 2002:a05:600c:3e88:b0:490:5000:917 with SMTP id 5b1f17b1804b1-4909c406a47mr25143675e9.1.1780043891800;
        Fri, 29 May 2026 01:38:11 -0700 (PDT)
Received: from xeon ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4909d5f2347sm24939705e9.0.2026.05.29.01.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 01:38:11 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] ARM: tegra: Add device-tree for Motorola Atrix 4G and Droid X2
Date: Fri, 29 May 2026 11:37:50 +0300
Message-ID: <20260529083752.44796-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nvidia.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304116-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 8C92B5FF649
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a device-tree for the Motorola Atrix 4G and Droid X2, which both are
NVIDIA Tegra20-based smartphones, originally running Android.

Svyatoslav Ryhel (2):
  dt-bindings: arm: tegra: Add Motorola Artix 4G and Droid X2
  ARM: tegra: Add device-tree for Motorola Atrix 4G and Droid X2

 .../devicetree/bindings/arm/tegra.yaml        |    6 +
 arch/arm/boot/dts/nvidia/Makefile             |    2 +
 .../dts/nvidia/tegra20-motorola-daytona.dts   |  107 ++
 .../boot/dts/nvidia/tegra20-motorola-mot.dtsi | 1194 +++++++++++++++++
 .../dts/nvidia/tegra20-motorola-olympus.dts   |  108 ++
 5 files changed, 1417 insertions(+)
 create mode 100644 arch/arm/boot/dts/nvidia/tegra20-motorola-daytona.dts
 create mode 100644 arch/arm/boot/dts/nvidia/tegra20-motorola-mot.dtsi
 create mode 100644 arch/arm/boot/dts/nvidia/tegra20-motorola-olympus.dts

-- 
2.51.0


