Return-Path: <devicetree+bounces-238611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA1DC5CB7C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:59:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1C4D04F1245
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E7E1313E1B;
	Fri, 14 Nov 2025 10:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WrogVsBa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EB4313290
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763117529; cv=none; b=lW40SKGOb24xrnCQyVAtP4oCcli+mge4XNbGmpriIinctGb38M8+ZxCbmnKXFeshcE+7rwdzHuLesEV56hiOwAusnbTFOI5nNDcFgzCZPeGjltdHvsAN//Fl53C8prixjKCGtf7tkSs2C2LfSHIuAn8KK13yeta+95f/dnJUFAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763117529; c=relaxed/simple;
	bh=Zc48rn3Gh3wyXoGNOzH25ymkeF9Nxkl22AZ2QQZQW40=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qWPUmkm8MnI8cS4Q1i13rn9Su2gEY4M+nHEB3vG1gnKPegQtE084jjidOEE6A7+LO3LFcy1G+afd3Vgtf4VV2H25EkwxvLlKm4RrMe3OxZYdV68TaNAEdBvzLbQDr7W+FVtTzO4COJWUGN1C1qufy+RH4l0I5eSe4CxmFFtYsr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WrogVsBa; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b3c965cc4so938481f8f.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763117524; x=1763722324; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CjwR6/kXVzZn7yjf+PWc3qHx8PvUc69d8LlxS1kTA+I=;
        b=WrogVsBayNd/jlC+2JkDdNeUYEIQotbpUNQQ5e/vSYKjSI0zuUj29wJyyH/K/VTV2B
         hmoF9AD1/LgXmbJgic1ntCsMbsC8TH8RUyUGg/iXRqpdoSirQaA+PNhbzihsD0AQ4IBF
         oiSDQWNQLXUphkupqS1mWorLuPr5y/vHq9KPw75CbHMLEK6OFJk45YkmyD1ng9b/wY3S
         RiF2XREq4G2jBmyOs2t4UcOfwkSUQ+JOHgv3esPTlvlb89ZqEsB+YzFlzC1jiSE7E9/0
         1jbECzGwjazdrmEYNHgi3isI/hnNhHCzgHQ0eaWLXEptdQkqXBG2qvdLvFbHXrxvdme9
         TsKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763117524; x=1763722324;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CjwR6/kXVzZn7yjf+PWc3qHx8PvUc69d8LlxS1kTA+I=;
        b=DBP4n7hRruUznjpcaDzlIG3sBNXIUchpoa2wZ0kX3mPiuDEdkxw11grUrP6duEpcA0
         GaFh0PWf59UHw2SKh0cmi2+xoQ0Av3ERraA+Z8Reivnt6fY0DWIEyjCgSzxcAJBVUlfx
         oIEpUCJQ+HQIOl0AmppBe3/kPL4ktJgqsIZbpTv+Ji9q0r3PgMdXs0osy9KHRENx3qXz
         PQR2rakOMnRccHWCRbPpeQq8QAllhpLxj6IdORXbvyw2wiAYchZTsMHDvTdjDa5b1jML
         NlCp0ZkkH+JHrs/OEFYHtwRKb1+cF2EVKTKevrTCOyZSEQI0Dm8dvEk24w4JYOD2e3xN
         Bp8g==
X-Forwarded-Encrypted: i=1; AJvYcCVYFGgkNJuBvmWmfxOUx08oM9EXnTrSUjmj7yJt5A48TPpvVGgtK1ZdJ2NWQ2nEKSLDfbLMNA4nZbO8@vger.kernel.org
X-Gm-Message-State: AOJu0YwscIzK1ug9n3DqQ2004R/Bb+P3acTlN5fE4n6KcrSK2e9PChfa
	wtGpEAD1t0YReK2gOEm/tbU3zZ1gj60ApbJETz6AwLwaLSC6oiIOCqAF
X-Gm-Gg: ASbGncuwGzB+S0n65yVtdjKqQ5OjEdwbP3DxgdfoTNR9NPHMZjps8d2XYueNclzdvyJ
	aIQU4xvonksTyu4Y+76Wi5DfTyaixRe5kMjPx54vIzqZHp46+2hCc12F98sbPXNE9dZM1izeUSj
	wokdWk5p+gGGlSE6or23jy4oXLqx5sHObUa/8OJXn7IVvqCvWB+4Ebz4C+NWySka9vowNHTRJ60
	EZr68dI9HkO1ryOEUmoz7kVos0wtl4KwVCQ6pRThtuWWWaOiwfsd6hRBSvvE3G9P1bbqMlpGTZJ
	wjddCmOGXnHz+2JAfhcReyyWI2C6WBDKesYGumBTfXzVh+PHiUXBjc7WMj+/9c2wtKeNDf9L+/u
	6ttYEs+eeAs04MkJqasyV7dS6w25SU/2oBleh8mLrN0t/4FMozV3JP2gTa1AU8XJE7LNgHbGZ2Y
	25iqcfkfBlqkdW3Q50XqaM6YgjV75m4m/zN3xtnP1OYGIY2ub5tZQySODrBTnVg/FOppr+Rzqjo
	iENGq4YIkOSPxsodmpu9IGWeeg=
X-Google-Smtp-Source: AGHT+IFGMe+dE5yo8EXauIb30wbc6Mj9yI1wBet8gXWiAgeJIUmxWa5RddlufYT6TUnAfj2nfMN9Ug==
X-Received: by 2002:a05:6000:2911:b0:42b:32d1:28ae with SMTP id ffacd0b85a97d-42b5282262bmr6112243f8f.22.1763117524062;
        Fri, 14 Nov 2025 02:52:04 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f17cbfsm9031255f8f.35.2025.11.14.02.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:52:03 -0800 (PST)
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
Subject: [PATCH v3 00/13] Add RZ/G3E RSCI support
Date: Fri, 14 Nov 2025 10:51:09 +0000
Message-ID: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
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
[1] https://lore.kernel.org/all/20251114101350.106699-1-biju.das.jz@bp.renesas.com/

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
 drivers/tty/serial/sh-sci.c                   |  72 ++-
 5 files changed, 496 insertions(+), 84 deletions(-)

-- 
2.43.0


