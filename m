Return-Path: <devicetree+bounces-224176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D9DBC155A
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 14:16:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F06F3BCDE7
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 12:16:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A8D02DF145;
	Tue,  7 Oct 2025 12:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L5PTt/fR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CA82DE6F2
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 12:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759839340; cv=none; b=fkvBVttEXwoDUb9FtqTUqZcdArSeyJmxHCOiDd+fEFDEhEy+M3ctY9LKavWXbGGSJmYYIdWiixmy1M1avGN+tPLMbx4Zv7zol0ROqloRdEsP+t90/cgedXAK6ep4gu82UGe8pSKTYqNH+Cs3i5bb6wNB4WbTBCgN80SUz4hnfsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759839340; c=relaxed/simple;
	bh=jE5Y4osDC+P5h48du48IVUkyowJxZGZE4qvBYfy1Jok=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=db7YnRco6j2zIs/SSY/arIjl36eIrpVx+wmUeIbc4EfE+DYOt0NRRPUPRpDu89qDMzx1cr+xcSy4NHcDrmta63B9hwfxI0H9LGBvSoYsYKAR7Vdm/YO+04hYxvZtmv6jGXTUz3x/+sjkgYF1VJnuoBmWFYv10EYGL3Up81Tfq1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L5PTt/fR; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3f2ae6fadb4so1027976f8f.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 05:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759839337; x=1760444137; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UxV2LuC4knXLNn0oldAJSchipN1qTRUO37h3RaQ5WvU=;
        b=L5PTt/fRfOJ96l8poNIovLWJzFxEZKcIq96vE90JByxy6s2qy3PqfC/CAjK9q1+c4L
         FFTg2bBx1+0xfIKxcWOWKoofmHixNRJis8TX493QF3IWWV9W6Pa/ma3uuuHVJoZyG1Y3
         p28hbpmIsSKvlUNVX1x5+qoWopKNLP2M3EdOTuWt5QRbbb4N5fXtpIiHZqY02RVuH1f9
         t6i6LVEqgBikNKZbgvnDU2A5MbA1ZWY1Tnx4nt0O/UjBuLBXt6rhwVRJOW00OHI1/U+M
         NTMY3CFjGvj2TIGqgfrVwEBhqeDA9sAsSWDrBhRATkm1XQEugfMsnsiE2H8JIftGJ4ik
         02Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759839337; x=1760444137;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UxV2LuC4knXLNn0oldAJSchipN1qTRUO37h3RaQ5WvU=;
        b=KPXHy5WyO7s8Jx4NKuLfOFSwytnK4qJTRvsaKIRWb6GpnSHHjWv1lQVIzIfKnoM/x4
         5HIzyIb4nsVEpaf0wsBgDsQqwRGJEkBsEUy6KL2CYD8NgDUUEOmlQ+UZici2MFWfIx0J
         2z4rOPMDQUzchvrzamuIhRMn3KpTiJuQMZSoRdruMTLdH7eVuFDXoLS8LyyAkYrJNLoN
         ZSom3ycgwsuBGKSg0zVc1xrwuOJRyQyGdp/wBg4ydXM7s8FGJQqiaPP+HK9PBzclrCkf
         swRjP4TJSTonwcqq6mQj85MSGpwKy5VrylGLKtOkk6sIRtwMDsqTkXOR0TWe3SijMfWF
         nzlw==
X-Forwarded-Encrypted: i=1; AJvYcCX58WwbR/x/pn3Hqg9BrJn21taIN9fTF4V047x37072h5ox10V/QvPOT6fnu1Gq21dz+NB6RzqY0N69@vger.kernel.org
X-Gm-Message-State: AOJu0YyCMLk5Y70/QdLk8j2LRm+Qy8ev/3UD5jdlNOumbqBFbaEOjnUy
	bEz2O+AdzVfNgVMhSFYem8gB4uqsHKfi2u4jluawT3E108RMAYdA258V
X-Gm-Gg: ASbGncsEhZgMUxhE2e6WKaMHKraWegYGfxn+/WuhStm395oga15w1JzeQ8mNzjX5I23
	pPRjKQPr2cM4okMV1VQfBXEuObIpCXbB2MQzrKacF9vXXehUdbWA+A5obKIRIOyx5VPWnIfn87m
	EHhjENw+DS17NqhQWirBcjMeyQoB+abkXO5oG6NQMaTiZa+Qm8N6DYRekGaCln45xB8TrvP57YV
	2zGoyxL5YNGK6XyDJOV6mLwMY4HY/adyR4YfSA0nLiLboQq9eIb3oKErtqJA8GnNLK52TcAwAfu
	Xb0YI8LrdBBD4hnMxu66g0GFS9LQUc8b4smGqpSPPI1rPlmHGrjVJ3eIJPsCtBd/5Ej/1I6Am7l
	iklHzrhSFxJrWYrevVLINbZrZfrItWamspo7vQg/GX6A2wIYQ/Dv3dhQ+Wb3a5cN35sIJ+PaPWx
	OZsneD
X-Google-Smtp-Source: AGHT+IF9KlIFhnybD09Wxy3QuXwNIOtzoAtHacg13oKGF3oEvjFMihHxLGJv/GK57sI040CCkcmmmA==
X-Received: by 2002:a05:6000:250c:b0:3d1:c2cf:da07 with SMTP id ffacd0b85a97d-4256713ee35mr7992344f8f.4.1759839336467;
        Tue, 07 Oct 2025 05:15:36 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:9667:4f0f:586a:20c3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6e1bsm25590167f8f.8.2025.10.07.05.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 05:15:35 -0700 (PDT)
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
Subject: [PATCH 3/4] arm64: dts: renesas: r9a09g077: Add Cortex-A55 PMU node
Date: Tue,  7 Oct 2025 13:15:07 +0100
Message-ID: <20251007121508.1595889-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
RZ/T2H (R9A09G077) SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g077.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
index cb16fe194208..0086f7953cdc 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
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


