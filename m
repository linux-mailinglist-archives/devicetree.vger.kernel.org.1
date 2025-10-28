Return-Path: <devicetree+bounces-232269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77501C15FB1
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:56:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB7C71AA361A
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E98B3446BF;
	Tue, 28 Oct 2025 16:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="erq408jN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE4B344053
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761670308; cv=none; b=iiXRCa2fruocHagVqVvvQk6s4nQN2Wy8z3l3HJbg6ainjMw9C9ZgjhpEVWsAK+xtBpjHZC2JBpaIoxGgJBbPjbE3LCx3wlCcEiCZcVhl7Yd9IHMpDTtJ0GZWGum2DGgfeX5I5QfWdZcRIYgsYCYj/b3V6YrI0J0p0zFcf/ESLew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761670308; c=relaxed/simple;
	bh=SaHXQvdh2UGDjNMvQuSgMOQm+hQXIPvqzOzIWG/Ij6I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PSwJn0dVqjYhnMQ/yAgXd92x/u/iTjXdCkG7Ns7poWH45Fu/D2lG9MhsJzYMzP1EDnVeksR3+QMnEc7h58lm3nczQ8l8coB8pw7Vn93pB3ywskfNBAMQtJTqrBi2LNBesvQ5ND427BdpgbPY6ddCG+/uYRpFd7JUoncqIDN/k9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=erq408jN; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b6cf25c9ad5so4875070a12.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761670306; x=1762275106; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TW6r50dwFdVWTwN56Kmq0E/zepcTiRFAnQQGIUFFOlY=;
        b=erq408jNv16Q9doD68JdqRULGj1p/PJAq6kgs+7DNFb/2HUz2sy0LnfyRRv0P0bm3k
         dxYHRY+k+mueEy65NNEvsEMIWODJrFQ6b6CPZtrIybITzscqMoy0FJSJp7xmokmHqCHq
         XIsEwlbIobxNqZcfLPzQfcq5CQRyryaklmK12QD/aN6Kt4gOvnRHOmIRH7mg6JYSZ0gy
         QmR9KO1idaWteW1zdAPBG4aEQ2PmT7uLRbFNs9E4wguhPkNtmvzhnOgnEJGBSxywkTQa
         g+O3DIw8fIzrU3ablHN5pRcqsJ3g1AHg6BHnS73OmoShJKatRvhd+8EdSaKolqyDewk9
         MzhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761670306; x=1762275106;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TW6r50dwFdVWTwN56Kmq0E/zepcTiRFAnQQGIUFFOlY=;
        b=j7O/Iv0tUJkWuoH9UP/hnjAsEt+l3hOFEMbGwqhipXFl39C450h+hscKb/XVsChuWV
         It5AGVwKX/+3YbWtJM0DrfN+cqNX9kJ6GRAb83XjDfLqTQqUzDNMgAD17bOS/DpCtLhQ
         xpSxjsyfv2MsisRX59wsHZmX1tukWuplrLrOfv/QS/FkzrF/tKGyHA69GoqBPAiwNEAB
         kiKmgLZjIwHZWuA7Fmnfe0G9+qmqxtNwl8+G9GsBv06wUCcyhBIowHLLLac8HWryBMKE
         35WZ9qFeS/q9kDkAUcM7U91m9OnXwqYS+QdYWTgHADV0zICSeazqHqCTNMnY3UAAg848
         OyCA==
X-Forwarded-Encrypted: i=1; AJvYcCVtXoosCVrBH69r1wXccvGLhS8t9tp8gZKsJu/aztxM4yr3Tx7pbXZObZBofOgLOzH4W+1Oqa9o8ZrJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyqJreNU/roemI5YS+fzBJTiBlPZYjKBOyuN/lcYzQJp1JVThYY
	ENrPj7+bKOCTQybdqP/c0kVkUeaNVw6VD/dUBmS2O0ZuVivrTHJUYGKZ
X-Gm-Gg: ASbGncvyh7ivZkXV3nAojtJc6T9FjAM5vWLMninysDjiW0ZJexftUYrk2nVzTbFg3w4
	0b7L6hO/o6fWqBWDD+zOVihkQ3oy/mF3GfnvJGoeFYL+SdUcAesybVaI9gLHVmNI8IZjTK8LBwq
	0lhmxQe4HGm+/xluefj481qlyIAHeASBg7WT2gBL7A6/TDxwLSaX+Z6oDwiI+PY4HdrSy0iRNzx
	M9wbAwcBN5mqpSD1w/AB8uT/E0eBT9e6OROdaBlvApZHQwBjeGAkvD9SI12V4blGFMFfebjSuGs
	NSswfHrizoGtWvUXCIyEpq+2xCRA2LSgsvd1jaQAgmDorBxT9QRHJGnI3i6eZbbCJjbN4KWKXYK
	86mDEJLX6pcGevjxqeht68Xep+sqBAyx//aTBQF8l1UM/0mcnA2aSh72FBDBJv1C0yYl3/f6v7v
	eVqWv6PbAAbFlVwiJepAMH5g==
X-Google-Smtp-Source: AGHT+IFa+t0T9JhACfecPKraiGSJrNfChEEfsYiWyHTAHA4vmk2NppgRgurHVrK/RhTfdJWkTbdROw==
X-Received: by 2002:a17:902:e5cc:b0:290:56e7:8ca9 with SMTP id d9443c01a7336-294cb6916bemr53051615ad.52.1761670306208;
        Tue, 28 Oct 2025 09:51:46 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:77f0:168f:479e:bf92:ce93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498f0be0esm122123665ad.96.2025.10.28.09.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 09:51:45 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 0/5] Add XSPI clocks and improve divider clock handling for R9A09G077 SoC
Date: Tue, 28 Oct 2025 16:51:22 +0000
Message-ID: <20251028165127.991351-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series introduces support for the XSPI core and module clocks
in the Renesas R9A09G077 SoC. It also enhances the existing divider clock
registration process by utilizing device-managed helper functions and
ensuring proper propagation of rate changes to parent clocks.
Additionally, it adds necessary clock definitions for XSPI0/1 to the
device tree bindings for both R9A09G077 and R9A09G087 SoCs.

v1->v2 changes:
- In the fifth patch, added a custom divider clock type for XSPI clocks
  to enforce hardware constraints on supported operating rates.
- In the fourth patch, added Acked-by and Reviewed-by tags.
- Added three new patches 1-3.

Cheers,
Prabhakar

Lad Prabhakar (5):
  clk: renesas: r9a09g077: Propagate rate changes to parent clocks
  clk: renesas: r9a09g077: Remove stray blank line
  clk: renesas: r9a09g077: Use devm_ helpers for divider clock
    registration
  dt-bindings: clock: renesas,r9a09g077/87: Add XSPI0/1 IDs
  clk: renesas: r9a09g077: Add xSPI core and module clocks

 drivers/clk/renesas/r9a09g077-cpg.c           | 186 ++++++++++++++++--
 .../clock/renesas,r9a09g077-cpg-mssr.h        |   2 +
 .../clock/renesas,r9a09g087-cpg-mssr.h        |   2 +
 3 files changed, 174 insertions(+), 16 deletions(-)

-- 
2.43.0


