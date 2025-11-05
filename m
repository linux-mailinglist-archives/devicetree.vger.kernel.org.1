Return-Path: <devicetree+bounces-235310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D7AC36969
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 17:11:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E8DF34FD5F8
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 16:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F4BB335BC6;
	Wed,  5 Nov 2025 16:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eF4IPgL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911CF3358D7
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 16:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762358729; cv=none; b=mX9jt2Ggdt3WkwXGclSqzhlk8r5/ixDKhrJn0ttUA0dc4dZf0RaoUWpLhFE/Iri/cY/gEmGv4qy5pIUStlY2p6MdR7WozxYyv+ArAc3oyMm9IYkBairhLx6rtDSB/Nun3UyEC/DhcWQ9Im83TYwm0AaJ+IWOHbe8TbfiA0g5yWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762358729; c=relaxed/simple;
	bh=YjHRc0oCtToeXXdkxRbxY958tkY+Cnt6dMfLlntrybg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PWy6r1TD5O5OsZ12uxC4g3rRPGPoWndGKooU/Q8kJx7FxlFJZOzJSCj5AmYEYV3lwjpr61rx9OQF2cq0oE9qpMrHU23daAXSryXrFLwAeePPQTC4Y9QbK/1JwVVaELPsPXS3O1VnzHw1sYk+xEx/jw4SlZj2w4nrLIXgnlgfxPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eF4IPgL2; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47118259fd8so50892935e9.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 08:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762358726; x=1762963526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T2ChPscr8oI1Jx6/MRLByZw5X39fgOVwMSewdYMEVlk=;
        b=eF4IPgL2zyET7OxmEwIHHMivksPUnoeNIrdb6v0phzuuCNexpsHRvqPYb16Csx6M/H
         wtcw9VJolBdGex2HAx+06ruiFC+WI/iFjBOkxsl+JesAhFIhm0cehrSzmTb2l4DaSr1N
         CV22a2frhiKLqlwVupngqEfKeiQNCppBu+w/jMMOWQjNHCCWGK90N1y2KCcOpDgX++TH
         R/1z0RPFWoHKzuvkYNMJi08YfIqeR2lypEkZmQ61gtVwPpJwtRIaYhsq46jLE9IlhbnW
         Okr6y+yoBH81dx4fuJKG0AEYtNKzPsygOc9vUmWLC6rJvA37iOekrpS7kWC7Sc6jNoRH
         sttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762358726; x=1762963526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T2ChPscr8oI1Jx6/MRLByZw5X39fgOVwMSewdYMEVlk=;
        b=OtKU6bCYemPSiNod1rjvPbGlNIaKojkKj+6y1Csxnsq9JEqeUic3Cm4PIJKxO1czlV
         7CTKJpAyJADOkLptGbI3IVmJZoSJHKyls7c06v+INr6JEHkl0H4dMYy9oG9biAYdUZi4
         E+0j9LO76t9IZ8k+ClYPfkzDlk20KsUvD/idvPtEk+vd9WMu/u7lgslWTzsj8qUfkYMP
         GRT8QzGQqFjwg+55JTTibIfQsGhVh75M1F33hwtHWCV2n1PX/LhC97Qyo1K9Tf9tZeTJ
         xYt0jzR73W5cK52SC0m+NoZSf7yzr2EujbWdCrRo+MdewlIvS8hZ9Q/kFVvl/+fpYevT
         P05A==
X-Forwarded-Encrypted: i=1; AJvYcCXg/WHN1MudAT8F9+YU8lVkLvr/ti+4eyh1ttKt16QC2mKheebjVL6ULjv9cDXZZtgVG+jR4GWmsf30@vger.kernel.org
X-Gm-Message-State: AOJu0YxRpMgG/Jd/eZZpVgRLG9dK8QYANtRUc8esZzf7nPXp1RW2HorO
	siVlSKh0gtEL5rSK98DfY6CdGy+XT06LZrMFNvjfUTtcn1dTchchvyPq
X-Gm-Gg: ASbGnctUA2IPIOtoDJEpj6ECSaLcp1tTAL5F52YU3ZK/4QVAowyB52cy7SMzCD61OP5
	3ENScKWd62qSPQl+mM0XdTKAkkDvHmUlNz9sFKt0t36eccHQqScFlTTVudYb2q3OKYpTbTKdSxE
	JNWQWvHMXEPKn9qCWLQgVrisgZyMdBWClEMpxZP9XzSL2Tjs2PSvo9qsZGpeD6r8i/+DM5sukyQ
	n62mp5d++7E/qraXDmTr5ogkrNZw89AzL+xPFWY53pOLUJZ9IXum9vCSCRdEGMNAt71UvjEwNkI
	afj588I61beCse3G/y5kI+ewNYG6oH6+KLMSJphJXO6hv9Jl5dLD7Z4TKsS3pMUAbFidMPh5T/R
	Cx+2CiCWQcL06aGHKPo/Xkgt9He2DwNL6VVYx0ASkly8Hg/t9myqyEE2wiO4KviejNm4amGk8WZ
	JvnQItgLdxYXPRb1H1Shi6I4SkLGVyKsezwQdie8O7yAnGiEsdfZ8FQuGYV4laV/wnRmBL
X-Google-Smtp-Source: AGHT+IHHo5LWSngg035X6WtMrdJEdq+9xlzJ4IHYGfIEIo3Lex2JBtYdsWWNBZrMXE9pRoOpI97v4A==
X-Received: by 2002:a05:600c:3b17:b0:477:5b0a:e615 with SMTP id 5b1f17b1804b1-4775ce24d32mr39074115e9.35.1762358725681;
        Wed, 05 Nov 2025 08:05:25 -0800 (PST)
Received: from localhost (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47755922591sm44926905e9.10.2025.11.05.08.05.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 08:05:24 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>,
	linux-tegra@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/3] arm64: tegra: Add DBB clock to EMC on Tegra264
Date: Wed,  5 Nov 2025 17:05:13 +0100
Message-ID: <20251105160513.2638408-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251105160513.2638408-1-thierry.reding@gmail.com>
References: <20251105160513.2638408-1-thierry.reding@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>

The DBB clock is used by the EMC to enable the data path from various IP
blocks to external memory.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra264.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra264.dtsi b/arch/arm64/boot/dts/nvidia/tegra264.dtsi
index c66ea12ef5a3..f1cf370f6363 100644
--- a/arch/arm64/boot/dts/nvidia/tegra264.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra264.dtsi
@@ -3444,8 +3444,9 @@ emc: external-memory-controller@8800000 {
 				reg = <0x00 0x8800000 0x0 0x20000>,
 				      <0x00 0x8890000 0x0 0x20000>;
 				interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&bpmp TEGRA264_CLK_EMC>;
-				clock-names = "emc";
+				clocks = <&bpmp TEGRA264_CLK_EMC>,
+					 <&bpmp TEGRA264_CLK_DBB_UPHY0>;
+				clock-names = "emc", "dbb";
 
 				#interconnect-cells = <0>;
 				nvidia,bpmp = <&bpmp>;
-- 
2.51.2


