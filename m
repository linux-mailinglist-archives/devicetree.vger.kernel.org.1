Return-Path: <devicetree+bounces-217258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7BCB57255
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:03:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4EBA3BD636
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 08:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F7162EC562;
	Mon, 15 Sep 2025 08:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FpA8AWJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7492EBBB4
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 08:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757923353; cv=none; b=kFGlH1YC9bNLst/Yp3JTa0hqjhjO8+AoYvLOm6PBJhlQK7rCYSZZSjRH4FYnDM6/pCe9fCGkUI/AXaPHQcsnpeyf57+n8ZNHEEJh34JVvGraKrtEIpHnGg7jrux2RXuThS2pLTczigYAfATFBnr2aMnY9EZxKjuNFT5MDd+a4iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757923353; c=relaxed/simple;
	bh=beKfTwsNCPyE7PSl0N23EKF859Qyx63lSZI0D1sTGRs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EVov/bPAI/icu0jhDBmS4EriI8Qq+YeVoS0xAVFq9l658xoIU1ehIDwFDcOhcU3u4zdrMmbBvLc6e2XnUAsUKwHuPjN2S90X06kNb4s7J0sYzqIDQk88Emw7FyaDwsr34jsottYCBJoXivMWTbTzzbUMM8omqfP8waL0xVnW2HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FpA8AWJD; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-55f716e25d9so3956353e87.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757923348; x=1758528148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dckPa8UvKXh/PkQbc3E4s0LWUnXV82LbXi43pcGDFzg=;
        b=FpA8AWJDyGEFSr0KZFv0KkL8IpistoFE1ZOvdo4AgXVmSGmfMMlQ/PQntDe5wSobiR
         vfYakOndEq45mHmnY9lkvuomlin7e6ZNUhHe7Ylb/OGdI5OhAo4/7gNQAbrwiX/nQYyQ
         D9HiRwAj7ZkDqS8c2hiMqFW0N0kn3P2oyynNCq5F9rR3xPt+eYNqIWCnv/UG6o2mQtwN
         YHXLOF/sBY4uVCGNT4nTPz08M8y596+mnppFxInvSeXLNya3KDzOT0/7abe5e/dHS/24
         sKJKjRdoxp/eOKZL3uxcqXOTLgOUu7yB9Fr+7hcXEfjZYai/nBCVzJ4szRArSLCnphUP
         xvVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757923348; x=1758528148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dckPa8UvKXh/PkQbc3E4s0LWUnXV82LbXi43pcGDFzg=;
        b=UT+FN/I64DHDBbQFjrli28OiEDoY7QV2NXaXrLqxEK9FhuV4juxKpAOKqRpSI+Smyn
         62KkmBM8j/dNz9SNFAn62PqDExwQ6advgyVels1yrvWPL9tyA1ZEtPtRbFQLhUjXrmia
         BndAQHRTG2D4DC4zEfAN/4Mgjig19thAGB/IAF8zcesEKqhQILyr+yWbXIj7Sfra+Dvh
         w/eTgbvMQqfSbZDcslwGyeah3ATlSgE1VbeBgLitDa55jcAb7vBXQ25gwp3zFSW58jFG
         fR1gNs7ZwZdOl+hjMa8i42nYgZKqNoZDsUVz0Js1Dwme9lumBam4e6wFORHkvz7yOqCx
         BijQ==
X-Forwarded-Encrypted: i=1; AJvYcCWK7ECpHNhSI6GwtDtkG/vQG+hTF9Yh8Isq/P+WDOajJhvukGnpVX3kSZCr4Zb181YRy66A4OeGmd6N@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6cFwZo2Q0E30d8YV8pdeZXtKTOXygJfgcF8Q/t4eBKZ9kKoBV
	IraEYNUfb1XdEP8pvgM8HBza9nMybcGKdTY8JUc2pULj6Y/mqwTYyDRX
X-Gm-Gg: ASbGncsWwJRhQxfSJF9WnWHnK7d/7HJCPBUNQDkBMf7KU1ce8acbRmRXIZWxfs4YDAg
	185/syNmu5No7apHyflgxztjxw/5nwmeHUebwjAiKHTWosgHg/e0QLdxe818vezRxJ8llNKIlQ9
	/mve2VNdnipcDLyAJQ62hqzCuPbg3/L7ZE5ELRJRp3XopIfxzzkWZq8NFwIxAcIjX2vd6R9dE45
	wpMbWZn3Mz5h4a3MYyAlaJWjU2goJ4WeBuHKPv0KlDSCx0UuB4+UYbxwndoNR3+BhWlOPUUsC1T
	N2vD8SQR4+5ki557ZOiPJr3J6bFJiZaOk9nd5jfNEYTO90P+k3YDhTXO+gt1X59QXW6rRBADm0S
	lrBh9ZZMdHM7ZKw==
X-Google-Smtp-Source: AGHT+IGazCIVLo0zyQ0tjWsm7GZ9jY72tbH4I+oPJP5mjUoJWYRI8uNVJSkfeTbN7VhlxwayTzD4Cg==
X-Received: by 2002:a05:6512:3055:b0:55f:4413:6f69 with SMTP id 2adb3069b0e04-5705197a783mr3371473e87.50.1757923348259;
        Mon, 15 Sep 2025 01:02:28 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e6460dec4sm3392381e87.103.2025.09.15.01.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 01:02:27 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dmitry Osipenko <digetx@gmail.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 05/11] dt-bindings: memory: Add Tegra114 memory client IDs
Date: Mon, 15 Sep 2025 11:01:51 +0300
Message-ID: <20250915080157.28195-6-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915080157.28195-1-clamor95@gmail.com>
References: <20250915080157.28195-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Each memory client has unique hardware ID, add these IDs.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 include/dt-bindings/memory/tegra114-mc.h | 67 ++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/include/dt-bindings/memory/tegra114-mc.h b/include/dt-bindings/memory/tegra114-mc.h
index dfe99c8a5ba5..5e0d6a1b91f2 100644
--- a/include/dt-bindings/memory/tegra114-mc.h
+++ b/include/dt-bindings/memory/tegra114-mc.h
@@ -40,4 +40,71 @@
 #define TEGRA114_MC_RESET_VDE		14
 #define TEGRA114_MC_RESET_VI		15
 
+#define TEGRA114_MC_PTCR		0
+#define TEGRA114_MC_DISPLAY0A		1
+#define TEGRA114_MC_DISPLAY0AB		2
+#define TEGRA114_MC_DISPLAY0B		3
+#define TEGRA114_MC_DISPLAY0BB		4
+#define TEGRA114_MC_DISPLAY0C		5
+#define TEGRA114_MC_DISPLAY0CB		6
+#define TEGRA114_MC_DISPLAY1B		7
+#define TEGRA114_MC_DISPLAY1BB		8
+#define TEGRA114_MC_EPPUP		9
+#define TEGRA114_MC_G2PR		10
+#define TEGRA114_MC_G2SR		11
+#define TEGRA114_MC_MPEUNIFBR		12
+#define TEGRA114_MC_VIRUV		13
+#define TEGRA114_MC_AFIR		14
+#define TEGRA114_MC_AVPCARM7R		15
+#define TEGRA114_MC_DISPLAYHC		16
+#define TEGRA114_MC_DISPLAYHCB		17
+#define TEGRA114_MC_FDCDRD		18
+#define TEGRA114_MC_FDCDRD2		19
+#define TEGRA114_MC_G2DR		20
+#define TEGRA114_MC_HDAR		21
+#define TEGRA114_MC_HOST1XDMAR		22
+#define TEGRA114_MC_HOST1XR		23
+#define TEGRA114_MC_IDXSRD		24
+#define TEGRA114_MC_IDXSRD2		25
+#define TEGRA114_MC_MPE_IPRED		26
+#define TEGRA114_MC_MPEAMEMRD		27
+#define TEGRA114_MC_MPECSRD		28
+#define TEGRA114_MC_PPCSAHBDMAR		29
+#define TEGRA114_MC_PPCSAHBSLVR		30
+#define TEGRA114_MC_SATAR		31
+#define TEGRA114_MC_TEXSRD		32
+#define TEGRA114_MC_TEXSRD2		33
+#define TEGRA114_MC_VDEBSEVR		34
+#define TEGRA114_MC_VDEMBER		35
+#define TEGRA114_MC_VDEMCER		36
+#define TEGRA114_MC_VDETPER		37
+#define TEGRA114_MC_MPCORELPR		38
+#define TEGRA114_MC_MPCORER		39
+#define TEGRA114_MC_EPPU		40
+#define TEGRA114_MC_EPPV		41
+#define TEGRA114_MC_EPPY		42
+#define TEGRA114_MC_MPEUNIFBW		43
+#define TEGRA114_MC_VIWSB		44
+#define TEGRA114_MC_VIWU		45
+#define TEGRA114_MC_VIWV		46
+#define TEGRA114_MC_VIWY		47
+#define TEGRA114_MC_G2DW		48
+#define TEGRA114_MC_AFIW		49
+#define TEGRA114_MC_AVPCARM7W		50
+#define TEGRA114_MC_FDCDWR		51
+#define TEGRA114_MC_FDCDWR2		52
+#define TEGRA114_MC_HDAW		53
+#define TEGRA114_MC_HOST1XW		54
+#define TEGRA114_MC_ISPW		55
+#define TEGRA114_MC_MPCORELPW		56
+#define TEGRA114_MC_MPCOREW		57
+#define TEGRA114_MC_MPECSWR		58
+#define TEGRA114_MC_PPCSAHBDMAW		59
+#define TEGRA114_MC_PPCSAHBSLVW		60
+#define TEGRA114_MC_SATAW		61
+#define TEGRA114_MC_VDEBSEVW		62
+#define TEGRA114_MC_VDEDBGW		63
+#define TEGRA114_MC_VDEMBEW		64
+#define TEGRA114_MC_VDETPMW		65
+
 #endif
-- 
2.48.1


