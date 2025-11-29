Return-Path: <devicetree+bounces-243140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCD9C94377
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:43:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3F9F94E1720
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF5930F817;
	Sat, 29 Nov 2025 16:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l30bLzuE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD0226B2D7
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434612; cv=none; b=HRpTry+UREs+VUsnEBIU1ukm7b6qbPWrTyEdquBPH2ZGpQz+P3jCL8A94x9IrQo5Od7ooVnCHxpDRf4TYoWpJkl14yF1br/TxAqhAUHErCtYdTAudhtkcq9uhOoD2xnQY/ClPzhwso8VmXGuP1GidhkLkdix/7YCNDMHmQcgJvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434612; c=relaxed/simple;
	bh=4+qdkiLaRporDdUrRzipvhog0ZgS7os+IKj+fRAluV4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BUm+2GLr4ANk2bT65o+r6qe5VJ9GXkGH66RGrR5QRa6tDRUJ6MxC/C2EaIl1T0g/+QTw6u38D3S/EJe9PP3qCW/qMrXEq+WHomfCkWdnCJEI7YIJnZei6xddbJcOoUnLS6W5p2asrJGmz1FwVxlLzwd3bnSpR5cNI8Wp5EOm6bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l30bLzuE; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477b1cc8fb4so16203015e9.1
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434609; x=1765039409; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6H9KwOpHdjyaDI1JbCW5ce4fCWBO/3HVRps68z53Be8=;
        b=l30bLzuEHrP9Dxc0xrAFcejaOrDnwDh/0y2JMeqFdkD8glkGNC2RRiKXpcifcv5eRK
         4b6htDREeTKJzU3LpgiZxhuv6Da31ltSurGw/pvGr3dR2e2tmZYeEKE02l/qHbsYJkS2
         5suRwBqFmtJLKAxqQfDdr5eTFxh27X99wRG0pqVsyKVtBNDXk9/LQqaBvxpsJabNxAT2
         93Avp40k8P57YTCdj6Hy5KeqRn5VlSuaFTshqmX+uDmlatAZythWIeuOgWFFO7pZrPOw
         7fq61orXyo8HQjuinNkaNWv4O0ohl8ENdKigb1nBwHCthy4JV0AzgupkXYABaJUMmPR9
         SO7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434609; x=1765039409;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6H9KwOpHdjyaDI1JbCW5ce4fCWBO/3HVRps68z53Be8=;
        b=cwVKvPB4mPCl3SaaPUqQPytkK/xn8U4VfkHe74PNyX8zdQjaOda9j3fp0qFIcDmm5R
         GFJCboAn1KZNfInJgppnt8o58aLK0bweVICdHGyxsnoxfJeEctoukIeQtr00DSmwYmSw
         NzVSbkM3wmwMlLugctFqw8Qm7kpHzr3UyOJHYaB/zmgNEvmA1zvjkeSSnDFg9cpNaWs6
         dJlg/SUUpqrKUvo68IrhkWzCFkTxR5NJUZfVuIY6BgLm+K5je4CH2zqTreq9wMCALdsN
         iOQAC6FQE2Rfxlins7ufP0fbxmr8iJK2DscjTpt8PrnH6wO35XJbOQPMsaPrFbNaV87m
         DkkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVnRCnYQN3+eubH12xmLOlYzfMpNrpNV0XFFOI+ZXkABVsVGIyWliQc1DOwufIYStjOhmM3uMjeic4@vger.kernel.org
X-Gm-Message-State: AOJu0YzuBL1NJdnyOlstnLpkHYmqgjxx4pP+Amcj8NSGcSpeOBIkILOL
	0J81rGyTICtFfPa9WLpVGbvMXyPV8ULwiMCy+oJZUshaZuV6hdRYj4kI
X-Gm-Gg: ASbGncuRXmRopuAwqNQtNKhdRdTZptwjpEEcTnnHRI5CQlkSxT6jrFakY9ctSMaCofe
	ohJrlDnDV8x3+JXCtOMvjn/kiLdmO/rzEGQuFZ5b+HzG1BgubUtebtRpgNju8rwFRcVXHv54SC7
	n5dIoTBd9wClxSUwqoVVynZrhqVvJaeQL6iTMhFwvzxWibez49X9uey7oT4c61RjZnfx61BzHUC
	oVSfQ7Zy8wDiMwkvE+u40lcNzEbMCv3EEls4zwiwAlbWEXr47Oaj1DaiYAf8EVCYscGP25CVvdd
	UJw6wHNyBAD3QzPDGdUBWSG5EmcQkNyZbPPJc7LQOpDRjOrcyZ4ea1yfMR7PwM4mvR8y5qlmMa1
	z4AwJcyXVK8zF4mBh/un/R7zTAOZTdLCCPfYw822gv6w+Hu0YxLkWL7OENnp3pGI2TuFOFJfsEV
	uuNoP1E+EssETQHmJgJ10Ua9muYRfItsOhA5omsxRpY5UoYdjya9E8vys1+4E99te9a96hm+Pid
	D/JwSDPAJ7XjmAARyCE
X-Google-Smtp-Source: AGHT+IF7BSSkL4PJ7kaLjjZt8SjH/QC2LhUcvOWBNmfsg3hyl22mKTnbN67vH2TMItHoa/S79deNhQ==
X-Received: by 2002:a05:600c:35d2:b0:46e:4e6d:79f4 with SMTP id 5b1f17b1804b1-47904ae214emr233092365e9.15.1764434608673;
        Sat, 29 Nov 2025 08:43:28 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca4078csm15970060f8f.29.2025.11.29.08.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:43:28 -0800 (PST)
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
Subject: [PATCH v5 00/17] Add RZ/G3E RSCI support
Date: Sat, 29 Nov 2025 16:42:56 +0000
Message-ID: <20251129164325.209213-1-biju.das.jz@bp.renesas.com>
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
resets. It has 6 irqs compared to 4 on RZ/T2H. Add support for the hardware
flow control.

v4->v5:
 * Updated commit description related to IRQ difference in binding patch.
 * Dropped the tag for binding patch as there are new changes.
 * Added aed and bfd irqs for RZ/G3E.
 * Moved reset: false to RZ/T2H SoC and dropped the else part for RZ/G3E.
 * Updated conditional schema with interrupts and interrupts-names.
 * Added new patch for set_rtrg() callback.
 * Dropped checking port type for device file{create, remove} and instead
   started checking the fifosize.
 * Dropped sci_is_fifo_type() helper.
 * Renamed rsci_port_params->rsci_rzt2h_port_params.
 * Renamed rsci_rzg3e_scif_port_params->rsci_rzg3e_port_params.
v3->v4:
 * Collected tags.
 * Dropped separate compatible for non-FIFO mode and instead using single
   compatible "renesas,r9a09g047-rsci" as non-FIFO mode can be achieved
   by software configuration.
 * Dropped the non-FIFO mode support and will add this support later.
 * Renamed clock-names from bus->pclk
 * Rearranged the clock-names tclk{4, 16, 64}
 * Added separate patch for sci_is_fifo_type() covering all SoCs that has
   FIFO.
 * Updated commit header and description for patch#{3,9,16}
 * Dropped rsci_clear_SCxSR() instead of rsci_clear_CFC() as it clears the
   CFCLR register.
 * Added separate patch for updating t2h rx_trigger size from 15->16.
 * Added separate patch for renaming port SCI_PORT_RSCI->RSCI_PORT_SCIF16.
 * Dropped enum RSCI_PORT_SCI
 * Replaced the enum RSCI_PORT_SCIF->RSCI_PORT_SCIF32
 * Moved rx_trigger update to later patch#16.
 * Reduced the checks in sci_init_clocks() by avoid looking up clocks that
   are not relevant for the port.
 * Added separate patch for updating early_console data and callback()
   names.
 * Updated rsci_type() to drop "scif" type instead use "rsci"
 * Replaced the compatible "renesas,r9a09g047-rscif" with
   "renesas,r9a09g047-rsci"
 * Renamed the port enum from RSCI_PORT_SCIF->RSCI_PORT_SCIF32.
 * Renamed of_rsci_scif_data->of_rsci_rzg3e_data
 * Renamed the funvtion rsci_rzg3e_scif_early_console_setup() with
   rsci_rzg3e_early_console_setup().
v2->v3:
 * Dropped 1st and 3rd items from clk-names and added minItems for the
   range for the binding patch.
 * Added minItems for clk and clk-names for RZ/T2H as the range is 2-3
 * Added maxItems for clk and clk-names for RZ/G3E as the range is 5-6
 * Retained the tag as it is trivial change.
 * Updated dev_err_probe() in sci_init_clocks() as it fits in 100-column
   limit.
 * Dropped cpu_relax() from rsci_finish_console_write() and added a
   comment.
 * Added sci_is_rsci_fifo_type() helper for reuse in probe() and remove().
v1->v2:
 * Updated commit message for patch#1,#3,#9
 * Added resets:false for non RZ/G3E SoCs in bindings.
 * Increased line limit for error messages to 100-column limit for patch#3
 * Updated multiline comment to fit into single line.
 * Updated set_termios() for getting baud_rate()

Biju Das (17):
  dt-bindings: serial: renesas,rsci: Document RZ/G3E support
  serial: sh-sci: Update rx_trigger size for RZ/T2H RSCI
  serial: rsci: Add set_rtrg() callback
  serial: sh-sci: Drop checking port type for device file{create,
    remove}
  serial: rsci: Drop rsci_clear_SCxSR()
  serial: sh-sci: Drop extra lines
  serial: rsci: Drop unused macro DCR
  serial: rsci: Drop unused TDR register
  serial: sh-sci: Use devm_reset_control_array_get_exclusive()
  serial: sh-sci: Add sci_is_rsci_type()
  serial: sh-sci: Rename port SCI_PORT_RSCI->RSCI_PORT_SCIF16
  serial: sh-sci: Add RSCI_PORT_SCIF32 port ID
  serial: sh-sci: Add support for RZ/G3E RSCI clks
  serial: sh-sci: Make sci_scbrr_calc() public
  serial: sh-sci: Add finish_console_write() callback
  serial: rsci: Rename early_console data, port_params and callback()
    names
  serial: sh-sci: Add support for RZ/G3E RSCI

 .../bindings/serial/renesas,rsci.yaml         |  99 +++++-
 drivers/tty/serial/rsci.c                     | 310 ++++++++++++++++--
 drivers/tty/serial/rsci.h                     |   3 +-
 drivers/tty/serial/sh-sci-common.h            |  10 +-
 drivers/tty/serial/sh-sci.c                   |  80 +++--
 5 files changed, 422 insertions(+), 80 deletions(-)

-- 
2.43.0


