Return-Path: <devicetree+bounces-274480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIv5JOp4sml/MwAAu9opvQ
	(envelope-from <devicetree+bounces-274480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:27:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F5326EE57
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:27:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 82EBC3007AD6
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 08:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5761F374E4F;
	Thu, 12 Mar 2026 08:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z+ISZxFu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A02D356A3E
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773304036; cv=none; b=rht0VxaREy8Zn9CgE7zarkEqP36DyS+4Mw8wuWGnRx/TMhfi3wjIJIZZB60aXHRargd/CCd6Ivwl0GukJkCOwfKyXxB1Zkn29U37zrxpN2LrqOWPZDI/Lbrtksjoc21f2+XxvNGJfQHzFHhSChSUObX/JFHdtgqZewt1VqCrjp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773304036; c=relaxed/simple;
	bh=2s7KJHfCNTkqHvJe31CzyIYb79Txh6AnisrHsWvUMn4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WQRyfpRjUAROiJirRKaYSakXF6JIZNMI/OPSdDLtvOPkiG7Qz7ILitToOkIVVMJI7MamO0TNqhhl4Q1GsXzWkwNHfm6qY/7I3QGqcPeLv/aoPMcvteuJOn4nhBXEUh9Jq4+vRpjoJtjlTYcPtx/v9A6Gl2V+1qW6Oz6j9XF3b6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z+ISZxFu; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-48540355459so6069405e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 01:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773304033; x=1773908833; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QdLoYf8XGVgA51ppjmyMKkwFN1LFowzvdfEVBXq+KOA=;
        b=Z+ISZxFuksn6zEhqdGu1YVw1nApjXkOw8MTk9TN321ECzzAjDEiTV0vC3jsZvrew4m
         uWQEzUTa6YaXixQG/Ab9SQviONhaCL2GCoUh21Z6l78adqCHYwoC/gEm5VcepafPgSHn
         Walgx4oZjxjodTzNjdOQYOfzJpJbF7oWLncC9rhMNegF3PTR/TtIqXJQ404qn2fzFhqT
         kt6Pplb4LUjILOX7wfaRI7vcufm6p9TmHWcsRqtdkfywZfLakHVTTNQsfWLkwCzOrmTg
         WVHRJXNpzR/Dbrve7H7N4yIaGS7AZC1SO6IPjqQbu1Oh3NliHftCoG/NquqPfqBDokVl
         anDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773304033; x=1773908833;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QdLoYf8XGVgA51ppjmyMKkwFN1LFowzvdfEVBXq+KOA=;
        b=NILraTYpEvXXKr1lx97DHTaYT5kJWkjo3jLDhEbsyJjBI91XafvzphUdkpivvzCpV/
         psK2OxF+uzd9ovpw33lQLvkRGLPcyrRonFcix0w1iWvat0OHPwaH4rMp5YiWfpbZwvde
         +iQ1juubxS95cOLqUbpODnednhzKGGGwxpzdsmfYO9pu63dXh6obIXJ83iuMyKOoz4CS
         BQi+uZA0sNXcQsW473BgdnfaqFl9nw21WMDBuUaC1v53Ziu1Aj13zpSWJI2tV9Zn1U79
         36wGyx1wahb8LBJQGf55Vg+upC8uxsNri6swp6C67TRmTf9Id3Hvlbt8d2/bSXQREAnJ
         FfpA==
X-Forwarded-Encrypted: i=1; AJvYcCWWXYfnzj2slEJQ6r2GTCbWrshnTg84Ly8CLE00RuaRngtUQXAjEMdPki0sX8gc4c1YhIA8PIbiPBtF@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt+eO0ak9/BJ288VX4lVPnSpkw819T/wBAYwXCN6CWlZiefshj
	V5FWd/uOFiLyVwBnsiGy8kghDUirb4fQheag5Vkt4jJpD0McnRB7w8+H
X-Gm-Gg: ATEYQzxTYiDJvLh9GjPu5tf4cfUmtkizqxMVBdWEy3h/xqkX6kukeRiqMhOvVi+CVLZ
	QGu2v/nA0R4/SJEee09/nxp8bJi8w4cdXiZaHySxFrRQxzqeQfHU3J2zWNFSb96N+ivXDfnBEmm
	2uKy97QW7349LiWnsmLIAQGck4uZ1iaEI+O0bS/cut9SfF9pTHyai/9UKDFrmXYixzYGjEJcvsD
	wtMueWEhZLk5AEn9WqWCXpRvZ25+Pu6CKL70jCHLuqje3i7aBDH3Ea4c8aJZqqb0gWLmgNK4SaT
	p9V6ToHRLMPjaILxi8VtUGnyDeEWNWHZfe6GuFVGRtuWl3GFs3IpVC76X1D9TW7Up3xOeVRMKgR
	z6SYnhNL8Bd5XEyuAED/PZ0cTBkdxayyKHHT8MwIvt6a0xQqWhw66RULoMJFc3q0SQT+v/r0O3b
	6OqPlvfiX9SoBMDyWYB5fUdArVznHNRoq6B6iQ0h6dBG30YUE=
X-Received: by 2002:a05:600c:4e43:b0:485:3fd1:992c with SMTP id 5b1f17b1804b1-4854b0a6a05mr83785605e9.1.1773304032389;
        Thu, 12 Mar 2026 01:27:12 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:775:4d0d:d776:157e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854a2eea84sm65925065e9.1.2026.03.12.01.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 01:27:12 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 0/2] Add support for RZ/G3L RSCI
Date: Thu, 12 Mar 2026 08:26:57 +0000
Message-ID: <20260312082708.98835-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274480-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,glider.be,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 73F5326EE57
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add support for RZ/G3L RSCI. The RSCI IP found on the RZ/G3L SoC is
similar to RZ/G3E, but it has 3 clocks (2 module clocks + 1 external
clock) instead of 6 clocks (5 module clocks + 1 external clock) on the
RZ/G3E. Both RZ/G3L and RZ/G3E have a 32-bit FIFO, but RZ/G3L has a
single TCLK with internal dividers, whereas the RZ/G3E has explicit
clocks for TCLK and its dividers. Add a new port type
RSCI_PORT_SCIF32_SINGLE_TCLK to handle this clock difference.

Biju Das (2):
  dt-bindings: serial: renesas,rsci: Document RZ/G3L SoC
  serial: sh-sci: Add support for RZ/G3L RSCI

 .../bindings/serial/renesas,rsci.yaml         | 26 +++++++++++++++++++
 drivers/tty/serial/rsci.c                     | 13 ++++++++++
 drivers/tty/serial/rsci.h                     |  1 +
 drivers/tty/serial/sh-sci-common.h            |  1 +
 drivers/tty/serial/sh-sci.c                   | 14 +++++++---
 5 files changed, 52 insertions(+), 3 deletions(-)

-- 
2.43.0


