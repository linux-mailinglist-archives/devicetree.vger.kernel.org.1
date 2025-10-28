Return-Path: <devicetree+bounces-232272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 242E0C15FDE
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:57:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCF141A62EAD
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56CE5346A19;
	Tue, 28 Oct 2025 16:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A8PJobDZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EC8348898
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761670320; cv=none; b=m8yc+c8BCUJuZPV0yPlH1JvY4NoGi+2W7J3FVqwe3VKEYu+cBQt66ZUP2KtLHVKtbDTpNlVs96XVOKOlCneUFC/GaaBTy1ZGP8Tl56Ei+WNE7/deL0b/TplbamrL1CQJJLkt5lPhfluRN+1+KoRCn8lfMwp1+ARQWNs8D8koRhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761670320; c=relaxed/simple;
	bh=jm7MH9Ljx0cTCbjQdKH8TcdeIcQckUbKzdjt/I870Fw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g6KXIRLi1iu1J5vMjPB0MfnuDXCyvPtcYyhV0JePVtjUSNnDVzHdR55/5UwCQFEBNfv71LwcWumH+AqJBN7W4wDultv3Ufk//bjja3CODXRysQN+ZksVv4UQAQrO+Z0RllyqjC5hQvPOiLwWO7vDphrmfskSbxqvhseNTcZ5qRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A8PJobDZ; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-29490944023so44218765ad.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761670318; x=1762275118; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vbG5IF2Pyn4vpsrN2z3h5DzN90lM4Q3eJY7tH5/4ZlQ=;
        b=A8PJobDZwLOY3tEW3UMf70olb365xaHcXViLsLC+F0HZAqOzlvaH0NZPIDU6BY0U51
         UVJ2D75bqgf5wr0Erz7h4Ddytw8/320fJV4XxTMJjWESnFOWv2z4aZTR1sGFkfNDKF1Y
         JI+pc7aTqbiebQbXp2U9r6WGu/D25UMoULLJJ1wGqusnIuHuZv+GgbFa5Uf/AxeYPgjf
         91nJamJy52T5gdZd037KzX4EFN0bMgdt/FGqtdX2JvDRjRI3ew72h9KsZ1fO2cTvGVmf
         pim0Xp37tbrIKNUlqWkA/i9VYvE2bNtjIvSHv7cAYm9ZO2Sm/IGKY2HZTOQ5d/zJ/voe
         9J1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761670318; x=1762275118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vbG5IF2Pyn4vpsrN2z3h5DzN90lM4Q3eJY7tH5/4ZlQ=;
        b=trH5zcjHBMWmuFuQP8vjI4k4kOvZ6oXaECOpdn0LIV1ZTpBo8hxJXNd7rvyaORP47G
         DuxIIWt2Mcu9Tt6dFH5IctkZDKrH5olFXy2vUFqNkckhD6/UqMp5D57d3UjojBrrmlAk
         I6S52OIrBVypP0a/+F+XldxSw1vLvFq/uZE1U0+Cih5zdniZ3ifWcN4GlsXYAo6Xl2XC
         0Lu/AO+Yb/b94EeJjbqw7rwC4optIGKjLB0uM1z48G3N3gy6iTGQudjvpuCadBMAjZy8
         hhINhwHTrHXO3reDom836ybKBv6Y9luVmgmSWVDrrMudu2QgR/yl0IYzkCtJqZ/WGPBb
         ae8w==
X-Forwarded-Encrypted: i=1; AJvYcCX8DK/UR8WanxV+H7JeMQDfomZ8H5w9hcRATzMIOq2SNpiT6hGx71bTCzvpupHGqYXvfezgsqVFg+Eb@vger.kernel.org
X-Gm-Message-State: AOJu0YyOR8Q58pnAh419rdutoFNW49o3NbuZNVgHPu2ys8Igyxx+mU1k
	3iZ/SgrGPDzdWu6q1b7gELZye5Ip5wyurkJM9JEd+zPfdHgvbQ2jizeB
X-Gm-Gg: ASbGncsCLBLwbwEFOGDNi/rqPhiNKZqmG7KRU+y25nXxm7tY1s4sGOiXS86iHNV2tRS
	Yl/OB/n0nkOSRmBgToo1yFOzkvbBNN4SzywGY7p1O/+wz8QUHnSb2dOo7puOsehIV/Z+Qllv4Za
	bkrcZ+Vgf9Mdul3nb+5zIUSrQIGEWbySm3o4he8vJEaSUkdexrEOf5V5uh82DuPYdDbtWHaTcR/
	ZTwzNw/wsp0kwLWmtzaWXK/a8IKVucRfrwdXAj5Wo+VPFLMm5ivSFQEIV+T29Tzm44LKSXluZe5
	r1ia2vq06MEIySGa2hBY+CRxFJmVORQdIM3k9B9MuWKtZR85cJHGZJ4NsRmwFOsxJAVRYI+lECX
	ts3RLQ8CwerhWrd/1rYs+nQK8ycRbRie7mNITxjvg94g6Vn3UMsR7VSVy8pXpUjU8neto1nBeQ8
	ddcCOdUiJcxJq/QV97vTDjSA==
X-Google-Smtp-Source: AGHT+IGLPUOqrtiYYL5ZsbQtjhr4Ba9uzVs5+UtmtyU5aBfpQMCGhti+qksrxXmMXxxHrhHcv4F1PQ==
X-Received: by 2002:a17:902:dac2:b0:290:c388:e6dd with SMTP id d9443c01a7336-294cb39572cmr51488595ad.7.1761670318095;
        Tue, 28 Oct 2025 09:51:58 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:77f0:168f:479e:bf92:ce93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498f0be0esm122123665ad.96.2025.10.28.09.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 09:51:57 -0700 (PDT)
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
Subject: [PATCH v2 2/5] clk: renesas: r9a09g077: Remove stray blank line
Date: Tue, 28 Oct 2025 16:51:24 +0000
Message-ID: <20251028165127.991351-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251028165127.991351-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251028165127.991351-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Remove an unnecessary blank line at the end of
r9a09g077_cpg_div_clk_register() to tidy up the code.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1-v2:
- New patch
---
 drivers/clk/renesas/r9a09g077-cpg.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/renesas/r9a09g077-cpg.c b/drivers/clk/renesas/r9a09g077-cpg.c
index 1cb33c12234e..666fc16b9a81 100644
--- a/drivers/clk/renesas/r9a09g077-cpg.c
+++ b/drivers/clk/renesas/r9a09g077-cpg.c
@@ -240,7 +240,6 @@ r9a09g077_cpg_div_clk_register(struct device *dev,
 		return ERR_CAST(clk_hw);
 
 	return clk_hw->clk;
-
 }
 
 static struct clk * __init
-- 
2.43.0


