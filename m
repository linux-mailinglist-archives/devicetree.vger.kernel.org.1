Return-Path: <devicetree+bounces-267178-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOczIu82m2mVvwMAu9opvQ
	(envelope-from <devicetree+bounces-267178-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:03:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B9716FCFF
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:03:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 498CF30071E9
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 17:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B18012192FA;
	Sun, 22 Feb 2026 17:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ChXdbWVM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D401A267
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 17:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771779820; cv=none; b=XLq/PEdGiUzTUCJ/Iavdsxg5QQ4iFmp3euMRUt17SNneL6Q+PivZYTDQDdXIsCYSWXlJCiurA2FAbc9x0Fs9BN3RVxgMDJD5JtmEC24FKWXMVK7dMJfdKQpRFORVy64lLNskcGYz7lpYGOhwGcSFzwgz5+2uTUlSOl8liriVBiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771779820; c=relaxed/simple;
	bh=qyBT8n5O6+MKl7BzylObPbKmEBgQ7XYFBPyc3ux7mtU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OirwNJwoZa1uVxWcx5Sv2RnJ6wCewVu3HZs7ClN4gmqSaWQJo7VK78m14ZF2+qE+EuLsvfjR6a6/KrzqXTLl0YdOX/x2vZnAQ0D/qVM+3yA6K2Kt3aPggIA179qOFYEl3KZFEO6vD9fXNp4elal1fwjtLIIyW7mAN4dAR4vaEuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ChXdbWVM; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-c6e23cb81f4so1346929a12.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 09:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771779819; x=1772384619; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SL6Z6ZLekQLW+WR7jvePWE8kJEkT+rRvrksfgSGlNBw=;
        b=ChXdbWVMYq871fiDQmsVUh5J6zNHe88JbyBdRjtUW0V/5W9puFPf2yi8qL+QZKzmXV
         oAe3lzmnrug+Q0SorOphfxWrDvbwa+R5jDXM3TGEOMmbUgayhWOn8GpOHgJ6P8snVsRa
         iK80sh8GbeuRjwZmDGKXVh2toAQNSZdyBOEUZOjZfOfOsWRsncoxjYi+J6iUK+yW4+A3
         qkZvJwvwUNO+2pBBqGqsUA3Toj1A5zZjijTaRd2A47p/KZFOrK7zvbnxDTK4ZR7j0/na
         EiKeKcPVItkBGbdBocopAokALvykk7PYTLmY7+UoEMrWPrkLe5sAJbVMc/LZVRpiRd2Z
         iyeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771779819; x=1772384619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SL6Z6ZLekQLW+WR7jvePWE8kJEkT+rRvrksfgSGlNBw=;
        b=lDhDDtcj8eupw5W8DIU2YAiohcPKVBhWCx194r1Z1zRXl4ioYsBuPxfe1AgImk3cNb
         4WI7ztHMH2VUJfL9FEgp6asb9Ew/2dRLDwF2/XeA/EvHDDqZAhBqMhKX0rTvk4my8M2k
         QcwTAip/uJavtRpQ6RLhFlGH36ejXUOR4qiQ8gwGQbwCZ4QdD69puS6UJNDX1T2EonoS
         9cCufVwG/3Ge9vYdOeXGkiKx8DFqO4Kec3CKYBnq2r3Ms4EQNSyk3sHQUEfQk82PsDer
         sZSv6oLSYzHP4VuB76Boh+p2wvZrWTXkdH5EXyfkGzUqcYWICKebc4VURizG7Aav+FeN
         Gtww==
X-Forwarded-Encrypted: i=1; AJvYcCX68mobPYDdENh6UI1LGrVPUCtCrl5765VxiZIwLeStM6ro7ehhDzsAUXHKrWcOT5m8yP+iuKuJdgY+@vger.kernel.org
X-Gm-Message-State: AOJu0YzMFBLzaZ/E+/X5/DpCvp5XvRGh57DIU/RDlef7kYmtxAfrmXVk
	OrSFgKHC25JX8qbF1XNw86O3oALP9096DHw3QW4eaqQdOJtrIwgGdpjH
X-Gm-Gg: AZuq6aLBBr4oyNv51olygDZON+5MpJZwiotdhCr5513zWn5ZosppkO3X+XK6zjiV6ez
	rfIrHJ957MA8GTqQ+NJT5aJKqkmnIamwlyl4YYVYkZHEkQO0FpkFRcpXqMC65S5aGescdxWCjX0
	2Ud3cyNlrUSTOiE2ETDffZbRGvIs38ekS/RuSeKmQqIvYjTXBVTG3Cu7deuY+K1MjSeElNDFX0k
	mrRblfQqPHUyXIuEcE69a5NcHParHqCSXCJozJm5GlIhgTto1tZdJxbl+Mm6hf5Zh83PaK2suW1
	LZflyv7F45UCHZXoEOBC7UeH1uGSF/kbAz4ydc4PCe+gYdJbDdOhhQZip8I1sM4u97q27I1Ff8n
	oeboVsRCJ+KiLu8ZOx3rxyrlsw1Fl8NCplXoBkxYTJfHaqzLgsyl3NQjNNmmsgokv0Y/cvAVm5e
	eTnw4Nb5g4OjHA/Zr4
X-Received: by 2002:a17:903:2445:b0:2aa:dad4:d34f with SMTP id d9443c01a7336-2ad74515d10mr47068725ad.27.1771779818908;
        Sun, 22 Feb 2026 09:03:38 -0800 (PST)
Received: from yu.. ([120.242.225.43])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358bf39ba25sm1555688a91.2.2026.02.22.09.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 09:03:38 -0800 (PST)
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
Subject: [PATCH v2 0/3] Add AHT20 sensor bindings and fix driver initialization
Date: Mon, 23 Feb 2026 01:03:29 +0800
Message-Id: <20260222170332.1616-1-haoyufine@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,ee.iitb.ac.in,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267178-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
X-Rspamd-Queue-Id: D7B9716FCFF
X-Rspamd-Action: no action

This patch series adds device tree binding documentation for Aosong
AHT10/AHT20 series sensors, fixes the initialization command sequence
for AHT20, and adds Device Tree support to the driver.

The AHT20 sensor was tested on a rk3566_lckfb board with the I2C-2 port.
Temperature and humidity readings are now accurate after fixing the
initialization command.

Changes in v2:
- Split the driver patch into two separate commits:
  - Patch 2/3: A fix for the initialization bug (includes Fixes tag).
  - Patch 3/3: A feature patch for adding Device Tree support.
- Improved the commit message for the initialization fix with a detailed
  explanation as requested by Guenter Roeck.
- Fixed indentation in aht10.c (ensured tab usage after macro definition).

Hao Yu (3):
  dt-bindings: hwmon: add aosong,aht10 family
  hwmon: (aht10) Fix initialization commands for AHT20
  hwmon: (aht10) Add Device Tree support

 .../bindings/hwmon/aosong,aht10.yaml          | 41 +++++++++++++++++++
 drivers/hwmon/aht10.c                         | 16 +++++++-
 2 files changed, 55 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/aosong,aht10.yaml

-- 
2.34.1


