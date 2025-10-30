Return-Path: <devicetree+bounces-233377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B28C21A14
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:02:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 765E74F2BDF
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20F16374ACC;
	Thu, 30 Oct 2025 17:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mJGrP9PG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05903374AB1
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761847097; cv=none; b=I5imx9jIAT4rmtsVjZBnkmjDaUvEygPJSuOIup41GVe79QU0XzCHLDxBjXUugiFvb05yVCKtJRmc9ECILeTc3asCgnV9Lw/87yPB+x401VPvgAnpEqNQBx3NMRueYLCz5EgKuXTeXYk6nlnSB3l1SSSK6k/g81i1SYhYJwH+gFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761847097; c=relaxed/simple;
	bh=E38nvu7KZl9ndawJz1k+ZLfO2UIk6shCOOTboPNO/UA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pTBC6DMdH7h8F30xiMBdKVgjKYbK6fmLnALkvsS/muKhyfQ2O94DNfthRMaIsJegG2Wt9DcctUCUbEVE+3T3X2XpqS3e9KcxGVl3XfO6i/vWIF1Frukk6YDYacOjERS4qxgu4c+EsFj8z/JTqWG99bKRvUeS388wTEQ900DnQRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mJGrP9PG; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47721743fd0so7615455e9.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761847094; x=1762451894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1gzjCSWSDa5dSUjUZXovzi8Fx64Uy71ap0+jFlPPV2w=;
        b=mJGrP9PGkzlNtIXEiWsi+sxSdDg1ESINGqHdxXWAJ9jBz5H7QH+DCVNHuy42+dUrCv
         jTNAWxeGlHyDEbZPMcD+InDUAqzhYW5ZQS+cwnHOEDGE/+Y0QX0Ems/605ONS7nG0ssU
         EFg9u7hXhzN0IF3TlOeI6ZNJkbm7x82gLnwsTiM4/cNRD1ury9AZksWTrwJoRXYwsnTi
         wtu1X8CvQouyv3SJq/8kEP24PVbWb7CZ+3GHFojXYgC7rTxkdvEpfgZsTZePyGTFhpa0
         3fiSE3DanTE+GkCYGCSilW79kBdTwldKmDHNlU2fKMDEe6LdZjetQRWe86tfamR8hz7s
         oDfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761847094; x=1762451894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1gzjCSWSDa5dSUjUZXovzi8Fx64Uy71ap0+jFlPPV2w=;
        b=cw2g+EtVDpIfjbSgdjCV8K0a91VwAJL5D0dzLCXgslRZez0mV3mdn266SjWaMluOuW
         z0irrw5NQT6/ofipoBqmnohF6nVgCapbRMOL1tnh9mA1gXmZe1QSaARTbUNkVBugE0xQ
         c9dUyiiwfrU0f0MyNRjL3grPxK4nBxcCkmoEbHm4IEhQLUoma+kPiqPEfX5L1Pj+dn14
         7AHakTWU9bdYekIgqJtaiX6gtTSlYrvUUZkRv1uLwwAhu6BwzCNA+OsWsFcw1hggcP/N
         vPfEKleIPOgoaxlfEPXVM7sy2XZT8L+qyyxpYwZ8gG54vi1IkVayM4m2KF57vTp2zywe
         ZYJw==
X-Forwarded-Encrypted: i=1; AJvYcCW30vuVVu2vPYTkqx6mlOCT11D4DU21jCLI7JXzSi0SQPtyNtKWUfZa2ylS1kTDzuGEI22IS5312t3d@vger.kernel.org
X-Gm-Message-State: AOJu0YzHjeNLDzF5lV1I7/bdnHP066SABT9ICNMRU7QtFjhxnV1n9xZz
	52Vf5iBuSV/tEw7+USrplwOs32ysbIZ2s9XRgqyEcNjkpSDWpiigsAU5326M65L4
X-Gm-Gg: ASbGncs+qfT2bUdxaygBOWRmC7uqu8Hi0sfbVoT+r66hmkawFzgcXWI6JYg2rlgZsaD
	R0wlNebcYMfkcKLBKI+a8RkDy63vIpnBtcVL2HFg8lj4+yTbf4M4T5iMIlnuLq0bMWQ7Zv/tjyj
	YgSIftgIFj7g5UZ8ndaM3kTQwGV0lbiEv3RtQhR3n5un970hMehHhhCQPuBKOhyuiQLeCF/Wgd3
	vFCwyGnAcsutnfRt84okV43iijoOWnGLbZMcLPc34BysU+LdgS9Zl0P9o4on+u+O9PvFmfHEntJ
	l5YzU0KwKtC4BK6A6XnY9AxyhDmEFvvJL/nSrjcQ5M6VXBRkj1p3+dRghXOjW2s5fB7sLixo7A4
	A6Wp43VBcXO7jZEZekVW8uOfBcVjxUA036rQ8gBJkrGVfOxmDsn+Cc5xTzxp3gexwy29FgRQ5CP
	rBu5yBhUlgJ/zf8KScXmX5s9y0f7pciDBmdVy0R5PkXwZZbKc44T3es2572X0NtOuuA2PhAKw=
X-Google-Smtp-Source: AGHT+IHdSgxpcXTfEej5U8BldtuGHfSvdPoMRqZKYxWXFAr619pzocHitxlzzBZZ5iYo55mAH9lB0Q==
X-Received: by 2002:a05:600c:3b2a:b0:475:dac3:69a2 with SMTP id 5b1f17b1804b1-477308b0611mr5390475e9.27.1761847093974;
        Thu, 30 Oct 2025 10:58:13 -0700 (PDT)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772f53aad6sm15098055e9.13.2025.10.30.10.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 10:58:13 -0700 (PDT)
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
Subject: [PATCH v2 00/13] Add RZ/G3E RSCI support
Date: Thu, 30 Oct 2025 17:57:48 +0000
Message-ID: <20251030175811.607137-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Add RZ/G3E RSCI support for FIFO and non-FIFO mode. RSCI IP found on
RZ/G3E SoC is similar to one on RZ/T2H, but has 32-stage fifo. RZ/G3E has
6 clocks (5 module clocks + 1 external clock) compared to 3 clocks
(2 module clocks + 1 external clock) on RZ/T2H, and it has multiple
resets. Add support for the hardware flow control.

This patch series depend upon [1]
[1] https://lore.kernel.org/all/20251029082101.92156-1-biju.das.jz@bp.renesas.com/

v1->v2:
 * Updated commit message for patch#1,#3,#9
 * Added resets:false for non RZ/G3E SoCs in bindings.
 * Increased line limit for error messages to 100-column limit for patch#3
 * Updated multiline comment to fit into single line.
 * Updated set_termios() for getting baud_rate()

Biju Das (13):
  dt-bindings: serial: renesas,rsci: Document RZ/G3E support
  serial: rsci: Drop rsci_clear_CFC()
  serial: sh-sci: Drop extra lines
  serial: rsci: Drop unused macro DCR
  serial: rsci: Drop unused TDR register
  serial: sh-sci: Use devm_reset_control_array_get_exclusive()
  serial: sh-sci: Add RSCI_PORT_{SCI,SCIF} port IDs
  serial: sh-sci: Add sci_is_rsci_type()
  serial: sh-sci: Add support for RZ/G3E RSCI clks
  serial: sh-sci: Make sci_scbrr_calc() public
  serial: sh-sci: Add finish_console_write() callback
  serial: sh-sci: Add support for RZ/G3E RSCI SCIF
  serial: sh-sci: Add support for RZ/G3E RSCI SCI

 .../bindings/serial/renesas,rsci.yaml         |  85 +++-
 drivers/tty/serial/rsci.c                     | 412 +++++++++++++++---
 drivers/tty/serial/rsci.h                     |   2 +
 drivers/tty/serial/sh-sci-common.h            |   9 +
 drivers/tty/serial/sh-sci.c                   |  67 ++-
 5 files changed, 492 insertions(+), 83 deletions(-)

-- 
2.43.0


