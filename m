Return-Path: <devicetree+bounces-233979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8447C277DC
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 06:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B50961A2761D
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 05:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 936F81EB9E1;
	Sat,  1 Nov 2025 05:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K3C62Da0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD872940D
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 05:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761973246; cv=none; b=V2ZCvBQ3Ii7Ndn9MNrL+9k1B3zQ3bqSqIcv14Ye5hMWucrHhx2HZ90oqZL+dMaEgIQmvNYKuKGbEoQXSa806uy58hl0H5yyxcS8rErKZcD/jMP1PrMItln9pigYFE2GvXxMGIYGm6ygWqBxTLiNuyE112NNmWlp/jOScUltbdZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761973246; c=relaxed/simple;
	bh=Oh44UZjHsMc/rfrWX2YnpJEvv9Vn65qg079kLT1V5X4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iGInxl7xGrZ7FmXCXXFJ4ovAqU+WvwhgdJgFl/SnfegtTsd9BXx0zpFL3q+80xYD+sT3GlYc8ao3w+TLfhiFvcca1sFfT3t+43nAB+CTvweDbsepFAiRqDfY0O//wMCo3NvA/RnlHr9v0m6TSd+3lwQ9dqIXuGHvTS19rhKWNpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K3C62Da0; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-781206cce18so3328173b3a.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 22:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761973244; x=1762578044; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wIwIO+j2mO8maDFel6M1v9YStfB+c9Y+ZJYZAlcF5l4=;
        b=K3C62Da0MiW2n+FCH7++i2JfNn9L0KD7y8swc8xt+7eNOTCsy1PHF73Cl0F0jjEijL
         2GyQjTeYRkONJKkCIdPkbKnEIM0cm67/EIb4ZJBs6FfQPQdJjddVZv10I0K+pE9MOeq4
         MmijoZG4OCbeOkutGtJKd5Lbr1rC6XFrmcc1xemrSIvQsvuZReQJSw6mCNyr5upeylJe
         GkkCGLo44eNjdybxR2cGzo5TyHHn9wRE5Dh+Ty5i5KfhJIFE2Si306VRoFBhrpXCnZsZ
         YXg3SzvcwqsUZEGTVbVxxRh3zS7cLaFFh9IMMPAPLmZytdnnq14D93cOv+o6/v36tgYW
         EAMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761973244; x=1762578044;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wIwIO+j2mO8maDFel6M1v9YStfB+c9Y+ZJYZAlcF5l4=;
        b=OH+yv+6Czmin4KGLDhYNFW/Ik2qDbPPXeO/u1J3/ExU+XKpFBTfkwS8LpsTZoR1h+A
         3lLvi3aDsIY3qFGWn7wz9PcNDf8wkrGJl4xR9borA12vRk5LRS2dS45GuI9OifEndhQh
         Ho5tCeDCBqxpROtQxvd1+QmAVPoxmdSLvcfQds0hbX26jiYz3cFiUYxMqCpiK7CnmV7V
         aMTHYvfeh33+r+t+Ft9zJwz+nBGvNoimDEfMO4IM7JuWezBmZiQi+Nxe6m7xFNjNm1Iw
         OS2iiqkI/9tR50Pm1XSScj3hJEBa9yuRcmdU7bNCQdWHMfS7cI/a8zuhDAORgKvIE4A5
         /pww==
X-Forwarded-Encrypted: i=1; AJvYcCUyaksFjhRNB9ZnmGDsoU1jQc2U0BAAb7Pu/Sg/dEsNzolS6Uheb2+nhEj6edH+Hlw+lIoTqw7UAi0z@vger.kernel.org
X-Gm-Message-State: AOJu0YykvDYCzXE9kZBf3+5Z9CRDajfMJkqQ7LVMxPtAhmCJqtOuh0Ib
	+2LkCqaKPS3TYqXIat+OLbBebzhkWC1r2HVmRZIbqS3UIr4JHusWacX2
X-Gm-Gg: ASbGnct4TubAXSGNz0hoQvUTPxfn85plB2ik168JHAriXN4EBWvbbQFaTn/MZUc2IGH
	AXH4c/897f8t7Lhr/vuqyH6bRIsooQrZ4j5ciwrQ7uYn28vnd60UklrLSLK3bXPTZLjAJbyRXZU
	c3mPgCDFURQ+86DmLogPwY50SdeHX7j/+P+0PD1dKQQBkI2ODpu2aqg4+4Dwa5EXV+Wt3dQ86Lr
	KjpUOKiesOaXrNWyP5s5ZXVjC5G5xmeBuuBwznXLcMpGdT2Nk7WWVCw8m8B31Ai5V3bMBJTcC6S
	Blm7H2sIYRwFDvL3Yq8/MT6975xDfYI2iga3ZTNO3PcT0V1BeXykyrT5Mh540YtLxIK9sVQox0k
	5UmntbUQQZ5nT83TgWaqZj2RCWpdE8AhvxvzxO2ff7n484RiJUx2nXPPc6rPyppyXW+v2PdXVoT
	GQ5ZL64EIsXIs5+agwZfRJRLWloYHLXjU=
X-Google-Smtp-Source: AGHT+IEMhJ6NXDRyaN0YqS139CnyyfuTRt27C2a8e3X3e0TG0+kZ4vhiRrmxHXesFyCgHskXvBB3jw==
X-Received: by 2002:a05:6a20:c916:b0:341:8609:3bad with SMTP id adf61e73a8af0-3477a5c1395mr13547881637.5.1761973244223;
        Fri, 31 Oct 2025 22:00:44 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:600d:690:cbc4:d4d9:22c2])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93b8aa3ff1sm3761095a12.14.2025.10.31.22.00.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 22:00:43 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org
Cc: linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/4] Add USB3.0 clocks and resets for R9A09G057 and R9A09G056
Date: Sat,  1 Nov 2025 05:00:30 +0000
Message-ID: <20251101050034.738807-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

This patch series adds USB3.0 clock and reset entries for Renesas R9A09G057
and R9A09G056 SoCs. The changes include updates to the clock driver source
files and the corresponding device tree bindings header files.

Cheers,
Prabhakar

Lad Prabhakar (4):
  dt-bindings: clock: renesas,r9a09g057-cpg: Add USB3.0 core clocks
  dt-bindings: clock: renesas,r9a09g056-cpg: Add USB3.0 core clocks
  clk: renesas: r9a09g057: Add USB3.0 clocks/resets
  clk: renesas: r9a09g056: Add USB3.0 clocks/resets

 drivers/clk/renesas/r9a09g056-cpg.c              |  9 ++++++++-
 drivers/clk/renesas/r9a09g057-cpg.c              | 16 +++++++++++++++-
 .../dt-bindings/clock/renesas,r9a09g056-cpg.h    |  2 ++
 .../dt-bindings/clock/renesas,r9a09g057-cpg.h    |  4 ++++
 4 files changed, 29 insertions(+), 2 deletions(-)

-- 
2.43.0


