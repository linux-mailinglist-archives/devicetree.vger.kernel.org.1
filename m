Return-Path: <devicetree+bounces-238586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79245C5C81E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:16:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EA843A9343
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E725530E0CC;
	Fri, 14 Nov 2025 10:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f/jgR11D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22529309F02
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763115236; cv=none; b=jxEDSPPVnzD6p1TchdyM8C8dTOaB18lCWW0qlebg6hxz6tH/D4UyurafIp+YP8aLISVQelHT2Ru5ayA9mpQj+pF9ghVPhn7ih2S91AEkyTVjoRYbayEoph5cHb3v45pacqg7XUUc+s7O5hcVGzPTsYYnwoLRmTcuhnCQFpCqZLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763115236; c=relaxed/simple;
	bh=80tND+lvNj2i4Qe20utjqahY1P2Ql9GnK85Gqo9FknM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gL2tUkX1STfHgOvvj9KiJ5v8zolu3BTtcu0JqpvL3PDfAZv/utq8pedp8QynmRPjs8ECay7A7OK2Ha1exmq2B5bUTZ6b4pwvn3l1z6znZtJnNyjQRPPT93x10OnQJRmeJikgeuponPQADbIn1Kbl6NvAi2G7BCDTp7wKG2F+esg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f/jgR11D; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so13139785e9.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763115233; x=1763720033; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uyQOUFUYuxA3AMkkTAfOVziTArOJRDBqIJ84aBAoAyI=;
        b=f/jgR11DxRUzlo/M/m5SVIuRQhP3e6RF6x/FclxPqA0/5ggba9xSCyQBCoVG4AbrvT
         EETzqtQk/rgBUglwxGuHkfKK+B9bbM85K9YLmnKbcXfg9bgw6AYhX7GdZCebr33X+4N5
         OplYpyrwX+5ZjEogTLeZu4TIt0qpTDCmgR8isY9LkvehwFb2bCf9DcOaFYA9ZT0lleo6
         peZZ2D4w1B2E5MgI3EzEQhcDNBVn5V0Ld0m2BOjVlCPx63EaLmpwBVK3QOUfKCHXkdYD
         tfLeQ1XlsMKYySEb/HaXOcv48851CkdnNJDii8Omyl+0xTVlkQzZc7k7bX79VRJiwC/E
         fqJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763115233; x=1763720033;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uyQOUFUYuxA3AMkkTAfOVziTArOJRDBqIJ84aBAoAyI=;
        b=M1/RvIxZeiMoS+6GhNzjvymMplNCpBH54C471bFVh4ckD1oIIIVbgaEa8axa2EfPG1
         IjCteM7juW+kFQ054VvPo0NyDf3HhnssjgNIcX52rEwOCzM2syv0Qn5m3vjvWlHg/uLZ
         5DokEoHP5PLjD+Ou6SFIhK+TjjdzLhQ/j9NDAPNHKvdGn5RMRhjxIQyqjF44+j+VYFze
         5LiMgVm/Ji9nkMawjm3GcqoDeqDBrXP+jK2VPCo4zpQY1DF5VO1dfVtsK3HqOVsbqst0
         tHYYyuKFmiXE3yE9A1dVVg5y4Dc4P9DkohpkXoUeov6Kt/rZCp9ZTFmzdCUTz7eHlT9E
         fJog==
X-Forwarded-Encrypted: i=1; AJvYcCU8wihiTBJLy/ExmjFU2ipIVfeV4dWEJ8u6rjynTVnF559lty7gnf3oyLxzvHwwRD3qOuVfooVSt6gX@vger.kernel.org
X-Gm-Message-State: AOJu0YwKhWba7Wio+H+LNik7X2eMl0SjC4zWZv5ebSVsM65l+BP1XDLR
	nHkP2nafljjPxMzbIgrB9+DoVv3e7hBqelSgMU93nIz/4fFMDdguZAhq
X-Gm-Gg: ASbGnctCxlO57e9MaIW8yZPOO7iVYi2CIDJBadCVCQQTBxlSjyebCx8FUCwkVF+cfiD
	o24aA4A94a8i1V7kWHQYPGFJeAblBbec8nOsKFfNz9DX04kNh0dpLvN4WTmbX/mobCf7arnk+Qr
	6EJa75xvykbOg5RIw7scdCsoO3ID9xBwTYnv1gFgh4ad/AyarvdeKpuLeT+vZ/dLgsYeLEYUnzZ
	ii5M4UYD0KeuXNVbAtjnbc3D4lOw9UvbsVuK1gMgEY1+FexlWE8aiuWV8X7Pu6w/tzRA9a3AmqI
	jWyWNnjf1LMdvwTNq4Wep3w5lNscwx72RXr+T+L/F+vU/WDIiAgQO3KTCC0qtvrMqzpNfc8GL6u
	frdkp98c2RFjNEmHNhcTaL4Y+iDwB4SP/oAzS8xAsXWrkRciSWtj1y1pDjQRgFbPb9gvq25LYDB
	K13yAkWNmec2Ki57lxNGGn0SuCTe1HWHw7blB4VVTgXw8cBw8a8uC8IPx1EJVzqqXIxx7w1vHjy
	TzWak9vt6XmiFRi
X-Google-Smtp-Source: AGHT+IHwQRc+3WyYaHuW2eDqpuK7VEQtbvn7J8+LySD9iAVjl3fw46CiL/4mZbRZEV1FnK5/AdofRA==
X-Received: by 2002:a05:600c:3546:b0:477:7658:571e with SMTP id 5b1f17b1804b1-4778fea2df4mr25190315e9.23.1763115233221;
        Fri, 14 Nov 2025 02:13:53 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4778bae816bsm40685815e9.0.2025.11.14.02.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:13:52 -0800 (PST)
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
Subject: [PATCH v3 0/2] Fix deadlock during RSCI FIFO overrun error
Date: Fri, 14 Nov 2025 10:13:45 +0000
Message-ID: <20251114101350.106699-1-biju.das.jz@bp.renesas.com>
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

v2->v3:
 * Added Rb tag from Geert for binding patch.
 * Dropped overrun_clr from struct sci_port_params_bits
 * All of the CFCLR_*C clearing bits match the corresponding
   CSR_*status bits. So, reused the overrun mask for irq clearing.
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

 .../devicetree/bindings/serial/renesas,rsci.yaml     |  2 --
 drivers/tty/serial/sh-sci.c                          | 12 ++++++++++--
 2 files changed, 10 insertions(+), 4 deletions(-)

-- 
2.43.0


