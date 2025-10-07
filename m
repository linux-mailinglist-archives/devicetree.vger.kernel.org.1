Return-Path: <devicetree+bounces-224177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D42CBC1569
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 14:16:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B31461884A95
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 12:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B67DB2DA762;
	Tue,  7 Oct 2025 12:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bKU2aE3d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0252E2DEA89
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 12:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759839340; cv=none; b=MBUfEvjXOy8FJxut22nEcYhe2XFfIorUmSPXJxiVktst04AgPG7N9z8zf/CZNqzJwgmHea5MN6Y8yV1s3jnYHjxTKnJ0gtX2KdABZu0/9+njge3/S+HhMsoqEWYQop/vJLvVEQie4UZ6zauRBOPu56LOv/L4ogpqtYTCksq+BDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759839340; c=relaxed/simple;
	bh=GSaWZ7aCzP8lqbL2VZ74ZgOa1jqGO2XeKUCr6ss+STw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bIcFlIZ3iGZJRfBdpwm1eVfbvkc/kxQa4uATqYenwkTlyDtnsJXy7cNc5aZHpE9xya7jS9bui5G6uWQbV2pV+wk9INB21fdey+r6vbW6b7e2nRKdJYBQZnAgpSuKXaalFr3TmMIZehBL2/6rIA406LneOLPIVL/j7t25MbPR3CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bKU2aE3d; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3f0ae439bc3so2962171f8f.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 05:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759839337; x=1760444137; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Qit5d1ah8Bj1pDYRzOtk2F8SyNo0Gmdn1Mtvckqvbg=;
        b=bKU2aE3d6/DH/RS0x8y64ZeECv34cuDlK/yn40cwfGL47PLPpzhWFADX/0w4YtKHMW
         YI1J9d7pVvFHLrtwTDrB9HsI7Z7QG5mdzJ5t+Y6+2HY0OZSUmX3NYe8vBrpAwSrSqJsl
         c0tLAfPeqic/9fGkguj65rdbomi01xbjZzeOfmIJbAPCKEODNxpRwLRJtQT3y7WeJ+4N
         oShWb41FW8/jurDMz4JhJKEWWhxoWUrB7gRiBfgA9FKpRpcFDiRdmG8b+rShFGiBfEPU
         4lfKtI95PeIVFe2R/U3h7ngJ6Dcn0fW+jsv05luqDHkiNU560hXLIz0cw6YHIJPeU77J
         WI5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759839337; x=1760444137;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Qit5d1ah8Bj1pDYRzOtk2F8SyNo0Gmdn1Mtvckqvbg=;
        b=SGR+1S/9St7F0sro4KkdfG7LM8BwsXT6lkx8KEJE4gJ+ATMzqKHAuQUx4Cnmehw3dE
         6Xd3C7nK05VUfDHUEIWesc7Z5ASZs8snhdN+5j8gXY1QjOrDh+kHKQZTf+HCPp1XT7j5
         kFMhqa21YyTT2gygTNfp6rmF87VJm1Mz2o7UJdhuElFrpTlJzLwpMF8fCWodbtaCzmFd
         D9S5wO6XgPwcQv5rzoo2OpR5PkNYq5oINKQ/9JEQZDW2AP0ciAuknSrSt09WbHvaqfXq
         QJoPYpVq5AUU5zN2gydwjZL8KmM+xBgA33jHBlVSoG414faGnx57k0mAFTOLuZVutjXE
         MDfA==
X-Forwarded-Encrypted: i=1; AJvYcCXUytozDw/AUL/w3SopgD0OA+L2qJ+KUs1tm9qGwsmGkvYVowCXNI7h6XECJcNvoye+tUZt2h8Z4usy@vger.kernel.org
X-Gm-Message-State: AOJu0YzrcpbcV75unyMkLnp0tT4hLKQIwTz+xaHegpJD28kVM1FWFNrI
	e67E4IjXhhA9Ri4vb6NtJ3a8aN2b8RFcbSBf2mOxNcAZnW75Dkl3WSoe
X-Gm-Gg: ASbGncsUJxipB43i2BE6y4Uci/AUTdyMIo+Zv+ZKn6stWlJFZy+80W4NCK+0StPMxmH
	n+gGIj8n9Ad/kyniiYcF/B+tuTAFi5Vqf11AAPs/4EAyEk2n2LdXU2CvwEAZwNlL3rzxkIG7eDv
	vy+Kzlc03Zf9+zl0Cvobt+zo+Wed/d0eNBR6HmyINfXWZMR6A5XxUaauNhpwjCYum38UH0j+3qx
	Oq5aKpkfp6p87zceSlyilaqZcubnU7T2wTUQoXfTm0A5rPdnFPEfyPPgKT2hI7AJoJdXhuepyAx
	kAGX+H1sZ5Styl5ekC3/5WVGV3rKE7S/1jtrIjj1W77BPqz+5bV25h2c6q/AJxc4KXkaf+Gx7/+
	ZJgEpsZVpATVpuosEolbrJKcTq5f6mElXQ7f3QM+Ef8RnHjsUS9nRIk6i4V0lX08vKI1TdEBj9p
	JpUFaEWKP0khhy2OY=
X-Google-Smtp-Source: AGHT+IG1s8byHvdNKFydToVpb8hvJVpQJOzAscjoELRzm4iXjeOZk1vx64ybxodArTehvqGRIbNh2g==
X-Received: by 2002:a05:6000:2204:b0:408:5363:8266 with SMTP id ffacd0b85a97d-425671b07c1mr10822096f8f.44.1759839337311;
        Tue, 07 Oct 2025 05:15:37 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:9667:4f0f:586a:20c3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6e1bsm25590167f8f.8.2025.10.07.05.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 05:15:36 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 4/4] arm64: dts: renesas: r9a09g087: Add Cortex-A55 PMU node
Date: Tue,  7 Oct 2025 13:15:08 +0100
Message-ID: <20251007121508.1595889-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007121508.1595889-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251007121508.1595889-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Enable the performance monitor unit for the Cortex-A55 cores on the
RZ/N2H (R9A09G087) SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
index 8144d3781023..2d2db858f48f 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
@@ -65,6 +65,11 @@ extal_clk: extal {
 		clock-frequency = <0>;
 	};
 
+	pmu {
+		compatible = "arm,cortex-a55-pmu";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+	};
+
 	psci {
 		compatible = "arm,psci-1.0", "arm,psci-0.2";
 		method = "smc";
-- 
2.51.0


