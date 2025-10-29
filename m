Return-Path: <devicetree+bounces-232577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D6647C19178
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:37:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1A75856471E
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:29:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4471B314D36;
	Wed, 29 Oct 2025 08:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XBaLoI6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A21730B533
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761726068; cv=none; b=UDUxRfJibNdVW1/9NHjmuUae7dHtHPeM0GVaZGQT9cioUTqC4es7ZtKSnlzpEq6pULD/Cil2VnG8eh8Z3oG/RT+TtdiXLAcZLtputjgxAaWMtmh/RfBesBZdYLxrv4rnIJkh66CeKdqGpq+LnvAimVpNwiwAJbFuufvrZbMZx6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761726068; c=relaxed/simple;
	bh=qZoW7N0sN2JRmXRUOLhAa6wR0SjQGEcDLutTGWrtq4s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FZ/0tZib5UFHz8pfX21w637LKGRcdmIhQmh4nS4JInBb0zUe3po4+nunuOQL5lGO/8ycTym5F0fAr30fVS3Uqzvm5gNDgIuVsg3Zrky5Qg3iPo6AZVikabAlTJmuxrV5kB3kHklFAC8joEx7ogJYP5GS80SNlNVXNxhBxZVRrG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XBaLoI6F; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-475d9de970eso36737435e9.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761726064; x=1762330864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6pJvu/AhBQH/Vqyc2G8OkoZZLbCOtPgyePdybPKTWJk=;
        b=XBaLoI6FmnZ4QW/331CUZpS4EexBHt/2D8+y6ePD0kETOZjf0893sAgjvBGcftQ8nb
         QJUSzCzC6VohBkDK8fZ6WOYyIDZQWiKX3SmZcwGh1rSxgtxCGu6+V1cCrUOh1WI1cw1i
         G/PEOzBmm+BRKbOH9uiagSmOVWmyBV499W1E5/nN/LrYZqvHUXP60ezCMVUXAghE2ZZp
         o2aSxku9CsOxA//EwggqEx4ZVsJuaR8wJUC+CNVcX7uXechBSHdh8RtEqRfOHCVqCLgT
         iyUHQHQvC1CKI92QBLW/fSHnTmB85rsKkfEntZrzqJ8gXiZv0yf6XNuXaA5VdHjBmxyo
         4WPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761726064; x=1762330864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6pJvu/AhBQH/Vqyc2G8OkoZZLbCOtPgyePdybPKTWJk=;
        b=Yncc67HXGENOQJuWjw8HZ+hhFrzCRBbJu1bzVuVYkczF/7J7n7S6zNaPpFiyEsPQAn
         UB7XS5/ite6QJ8VHvu86Zzcy+DIycDBYy/2Vc6rRzha8mWY0ALzIIBIxvZZv91fOpGnY
         fP1733WDO/fC9rKVUt1An/mL9dU2zgkPX+1fbPIUYmP7xAOLR2V8rIiKBZtyU6sa3nG4
         /eSA8wriWAxX061riZ2h3iXcUqcj/mfogEmjSFLWOhAk2Ye3LnGyqowjgDTmtxjqvJDb
         CARpRDoMzyhe7KypgoZET46CW8XPwst21H7w6dF+LWM5HNKTqiRi1nKxi1sXNRf8orib
         Ua/w==
X-Forwarded-Encrypted: i=1; AJvYcCW5bBrwYIRl6z+piUujCNqU5LB3TfKLDkfduWrOpeMKxBuU+ZLGDxQ+tV8uW0eMs+EeSdl2hXCVKgfA@vger.kernel.org
X-Gm-Message-State: AOJu0YxLkBBdooKxEuWdAsUbbqIOhWWpWyeinMoo5IW/cxZwKFqrg5gO
	lAWmvpkOd8DnsTAASl8Z/8IzjBjkEZTLNX0qXdmamz04TrE6xojwAivb
X-Gm-Gg: ASbGncsindOGDt9xb8jfpQ+iGhhpIcThF6T5rHEDScwwQyYbbF+fWa1uexmrQvgLPuy
	LlZBw7HS9CeZg5+33mD3lkSIM8hOtPL0IYQpq6S4bYppDubHle4WKCBXiCMYAqTxvefS9pIqqgU
	17bGT4wE7v4i8zXo/7Dw7AsiTIAsv4u1wJlKRYoTrBqW0a8d1IQxmLZU//5w3iiej5gNe4nh4mK
	J3h1PtbZo+0wD8IhF63m4WkqzLjeSthxRbVxxG/e50/PKoXRlctcuZklREpPseRN7jSYT0cmMP6
	4nz4KPaq+6rPz8S1/MmgahiCsMlcVeC9PSa90MzkuHc8uS4jViZQgR37sb/6Xs7t8YlJTKzvsDn
	UjakwGm9pB23r2LuAX0pYS/Qj4pNbSJMS2lZ0Rh3KnUpFFZum+DZDjp980MC3KJ+U3sAowiYejx
	46rHb/aYWtczvnZONhYs1UwW+TD3FkRDbo4PTSdKp/V1RbUK48qVu2/n7r6Ae1
X-Google-Smtp-Source: AGHT+IHuZVrK8iLdLDMqrJhiJBdDaaYTleDzT7XKu/JdrTppl/2IYxy2VXVcdkJYm65pKirVPO41JQ==
X-Received: by 2002:a05:600c:4511:b0:46d:cfc9:1d0f with SMTP id 5b1f17b1804b1-4771e1de278mr21430785e9.19.1761726063434;
        Wed, 29 Oct 2025 01:21:03 -0700 (PDT)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e196a22sm35191915e9.5.2025.10.29.01.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:21:03 -0700 (PDT)
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
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 0/2] Fix deadlock during RSCI FIFO overrun error
Date: Wed, 29 Oct 2025 08:20:55 +0000
Message-ID: <20251029082101.92156-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

This patch series aims to fix 2 issues
 1) Fix deadlock during RSCI FIFO overrun error, as wrong register used to
    clear the status.
 2) Hardware flow control is supported on all SoCs. Fix the binding.

v1->v2:
 * Split the fixes patches from original series [1]
 * Updated commit message to make it clear that hardware flow control
   supported on all SoC for patch#1
 * Added Ack from Conor for patch#1
 * Added fixes tag for patch#1

[1] https://lore.kernel.org/all/20251027154615.115759-1-biju.das.jz@bp.renesas.com/

Biju Das (2):
  dt-bindings: serial: rsci: Drop "uart-has-rtscts: false"
  serial: sh-sci: Fix deadlock during RSCI FIFO overrun error

 .../devicetree/bindings/serial/renesas,rsci.yaml          | 2 --
 drivers/tty/serial/rsci.c                                 | 1 +
 drivers/tty/serial/sh-sci-common.h                        | 1 +
 drivers/tty/serial/sh-sci.c                               | 8 ++++++--
 4 files changed, 8 insertions(+), 4 deletions(-)

-- 
2.43.0


