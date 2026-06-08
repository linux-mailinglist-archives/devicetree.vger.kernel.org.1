Return-Path: <devicetree+bounces-307949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ozpJJk4uJmqYTAIAu9opvQ
	(envelope-from <devicetree+bounces-307949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:51:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02219652554
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:51:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=dDRzZnYC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307949-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307949-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 739F93019B97
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 02:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A115337107;
	Mon,  8 Jun 2026 02:50:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28145336882
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 02:50:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780887019; cv=none; b=k4l509f7FC5Z5wmgZklIlvPCjcJQE3Z9jQQXhv9Dp+nv8c8NEZCFoaCr8dhpnslul0rErfR28NLcFSYnhdNq2wtUphK4difYEt+5iBtfzgcAlPnOnYC9eqxSJr5wlzi/tiYvJ6i4QYwPfoSX4NBjcYbhLmTbUBu5rIvzwls+6AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780887019; c=relaxed/simple;
	bh=jAOSPN2oexTHH3AS+nKz9qosEcTRLYOWrtO5vDxx1vM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=dNZ3UQzN3lhKaCGzOZ/avQTU/nAKLYP+oe/Cr9QmiYurT16MNQVribNMAbr/CCx4lR+sQZIg9+2E6QxDYymliQXDK93+ep5g0sfcXRh7TexQ/pgP2W8hcehEs+D3m4ZgNfWnfxJCnmrCbwbGvVATdNn9TQbgUI+/eHdwkipZQxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dDRzZnYC; arc=none smtp.client-ip=209.85.214.182
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2bf2247e38eso39533025ad.3
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 19:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780887017; x=1781491817; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fw5nXFVyb5GRYqiTkdD93jih+EMJUvklwZZGtUHOoyQ=;
        b=dDRzZnYC4hd/p07DB2130bIkHSS2BgPoSlG+OoSCTZHloTua2oEvpkjfL4Ucx8B5Tf
         9GCiDJ8MOM7rny8eoqC4jkndeHg3IfvYGwVfPBOwRLWePg8RcoFJz2aTnjSAuv5/VvnX
         zfPA6ynTotJx5bF33bNosa/yF8KH794evRhRFLbU4qVEjLRq1NzHG9HGCVsC9pK6qZbR
         5glqFtMYHtFRlXomwMWQLk6FotLspSAhgzZDxe/aK2M50GJt77YhvFmZhZUIzljomo6G
         3RslPX/r9oWPub84Uug3hewJVaypDcgMzSTN9W+zq0lrkADlj/QXALoFbdtsYXNIVGqK
         FGnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780887017; x=1781491817;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fw5nXFVyb5GRYqiTkdD93jih+EMJUvklwZZGtUHOoyQ=;
        b=R/EWq5QHKoHjITBVnJ/PkP4r2OJF/7RVPoZMvNg6LmmFhYL4/DhYUWzDJklZGKHeJN
         mkTB1D/24+EomJg9s5vNHcH1kW/EumJ5EE/OHjgGVozSN5NM9MN842R7ROT6VPU0qzcu
         csFP/TQ0ihLe4t7nT29Nvei9B8jHni1OEkntOzVf/plyHJLtGzdtMi0mYR/pVa9opG90
         y9cnPyW2wG0hSxdKdqAUdissIsLOuIz1wQvOiXZmKzGud/d9WqLhwp+lcRHnZd8p6jR1
         r3SWvQijfmnwJHooApdJGZsaBODJ2i9TWXXrRat+PG7Ua1sCncpr7qii6L2pJ1HqGf4s
         nKIA==
X-Forwarded-Encrypted: i=1; AFNElJ/QZsasGLkh9VakdjhjKAfQWhHyE/o1STkc69M0UNzW2RZSSb5Z8a4ZN6g30SR7iQbgmQ/jWXugySWH@vger.kernel.org
X-Gm-Message-State: AOJu0YwzhBz/tAgEPlbKn8VKuddGRLN5OReMN27BFGl+nX2UsDS+barh
	PhpTAHijDGgZ07g1E6WJzxfW8AS2rfSN7a87P4xyTJbmk9w7swAXyb0k
X-Gm-Gg: Acq92OF/MPQATWKW5xbdeAmXsDfgGw2SVafY9kHfvhD1b2gGtIJ8XozRwO296PkaiBh
	1r2dB45D4/grKFcXCAV/uD/bU5aAK3MnDU13DHFnjBVUh95uGfA3myZkRP9hqFILjqA+iJNw2gN
	taT7FCgFQnDmf062/onb3NaVOrJF4rWihQ9vYQMM7SmZq/5BTkY3kxT5Viqj5AJHGBQT14680iF
	KQZCCSfvIAZ4KJ0cxVTXkuQ2W1fXWFhw/h7hAi/gHzMVTJzymZSrwxKXiKh3mztgEyANJIMGcTx
	2gOyb7vBHe+TTYzs3VHa0iMtwY8N9RG/ntH2K47rPKw5MD+kou1SkOXD5Kc37bhNUKU2G8sSkIW
	+EsMB65x/7ZncqMjL+rpXckyYe8zXQ13AJB6+OWElat4f9IHPJVNQ70ZO5JBo6x5Vrz4x/xr+M+
	VDa43XsF9xm6ZA+fawAGJTOrIcpRtbl+nyCwUBrC9LNIenJ72T0xZ4HDkfpKhN3BjtMnNSQMxQ6
	hhIi+/trY1ULowRnOo=
X-Received: by 2002:a17:902:ccc3:b0:2c0:c38d:9d37 with SMTP id d9443c01a7336-2c1e849534amr141810325ad.25.1780887017485;
        Sun, 07 Jun 2026 19:50:17 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d211sm165745555ad.3.2026.06.07.19.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 19:50:15 -0700 (PDT)
From: Chi-Wen Weng <cwweng.linux@gmail.com>
X-Google-Original-From: Chi-Wen Weng <cwweng@nuvoton.com>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	cwweng@nuvoton.com
Subject: [PATCH v2 0/2] spi: ma35d1-qspi: Add Nuvoton MA35D1 QSPI controller
Date: Mon,  8 Jun 2026 10:50:07 +0800
Message-Id: <20260608025009.1504971-1-cwweng@nuvoton.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-307949-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nuvoton.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 02219652554

Add devicetree binding and SPI controller driver support for the
Nuvoton MA35D1 Quad SPI controller.

The MA35D1 QSPI controller supports SPI memory devices such as SPI NOR
and SPI NAND flashes in single, dual and quad I/O modes. This initial
driver implements a conservative PIO-based transfer path and spi-mem
operation support.

Changes in v2:
- Updated patch subject lines to match SPI subsystem style.
- Added commit message to the dt-bindings patch.
- Added ARCH_MA35 || COMPILE_TEST dependency to Kconfig.
- Expanded Kconfig help text.
- Converted the driver file header to // comments.
- Added reset control handling to the driver.
- Added resets property to the binding.
- Added num-cs constraint to the binding.
- Dropped the flash child node from the binding example.
- Used op->max_freq for spi-mem operations.
- Split low-level CS register handling from the SPI core .set_cs()
  callback.
- Handled SPI_CS_HIGH explicitly for the spi-mem direct CS path.
- Fixed spi-mem opcode transfer to use a u8 buffer.
- Limited spi-mem command opcode length to one byte.
- Forced spi-mem operations to 8-bit word size.
- Avoided driving bidirectional data pins during dummy cycles.
- Drained RX FIFO during TX-only transfers.
- Rejected invalid chip-select numbers instead of mapping them to SS1.
- Rejected unsupported dual/quad full-duplex generic SPI transfers.
- Fixed checkpatch style issues.

Chi-Wen Weng (2):
  dt-bindings: spi: nuvoton,ma35d1-qspi: Add Nuvoton MA35D1 QSPI
  spi: ma35d1-qspi: Add Nuvoton MA35D1 QSPI controller support

 .../bindings/spi/nuvoton,ma35d1-qspi.yaml     |  62 ++
 drivers/spi/Kconfig                           |  10 +
 drivers/spi/Makefile                          |   1 +
 drivers/spi/spi-ma35d1-qspi.c                 | 622 ++++++++++++++++++
 4 files changed, 695 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/spi/nuvoton,ma35d1-qspi.yaml
 create mode 100644 drivers/spi/spi-ma35d1-qspi.c

-- 
2.25.1


