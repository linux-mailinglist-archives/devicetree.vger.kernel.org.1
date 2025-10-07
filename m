Return-Path: <devicetree+bounces-224175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A46BC1557
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 14:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 51F0B4F5331
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 12:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5387D2DECC6;
	Tue,  7 Oct 2025 12:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VpDTyQu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58C02797BE
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 12:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759839339; cv=none; b=ZSspS/l6VOIyNnTrpT4YVNgDW8x1eGrw7IaGGXzO5Xv+UPNRZHN5WHP/87FnfEAVjvglZ5YVcy7wculhq9ZuJKH5+kW2ezqEyjS+8U54eMsGjNhlw59Xr51YuAVtBra4qe/ulEuP9663/CP2ZS7xekL6Yr/IRNpHru27XvbQLMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759839339; c=relaxed/simple;
	bh=o5Vm8gv/dWeltWLOsORUwUcohSNsrHZokwCLzeCB6FQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hD7ijkkUtdfkxdmixBXhEHob0SDcPTHchCjfL0U65Gg8dBta26wSG0yuLfj3fLN3QLXTRRcvf65Q+0ilRO4fgF88R3EkwSw4xkG/IpVMS4vOx9w1IDhksuNARx18XhxOSKRmj7A3Hj3kqO0CEUBNPxf9vjnvrkWK7ZbQeJ3cTtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VpDTyQu9; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3f42b54d1b9so1040053f8f.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 05:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759839334; x=1760444134; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cIGcPIO4pwJ20cio+6iwr0NsYTVXlvXAH4qCjEgK5s8=;
        b=VpDTyQu99fTTtxRrOKBXxBU6JkeZecg6qCflknFXz+4xjKxdysLy1sl1ZmcjETrKnT
         rkYd8f6SXydfjw/XHlKgCFtdrhCMhrBAlW6ctOnGhry3iYths05MORWatLl9d8UZPebW
         Y95u4DF9bVIi22EHZmSA/QhVs5Q2akD+CACH9TJ1xuGF76OqDqABfH3+yTgntemeRmRJ
         poU3HuytyvNc5cdQAL6vxQBdkmqQVgaNeKAADVh75hgSiMxNiqRQuz18NwvtvG9I57kI
         Tt4sEEWfWly5kLtgpg2q3vvUh3Q+IXR2IBBlHvr8kgPTJltckWwGFxP+C3BhklHec8GU
         Uj8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759839334; x=1760444134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cIGcPIO4pwJ20cio+6iwr0NsYTVXlvXAH4qCjEgK5s8=;
        b=qMhACF68FkTSHXBOeNuffmtPh8vbpwEjfzA4THiVZbDWSUOuGyMxDSw3NcJctaBAAq
         /jmxNvnyvb89QagtxfaUTOK9KiM4oug8z0zTQE/7eimYFpj9eQOq7oOVYi19pIjTdwiS
         cIniZ8s9WiUMoUqPetjNpb2A6LQbC1gaPFygC9cMNIkeyc+K65MLGQzpFuBgxgc6rsLY
         VUF3haaLRUVuka+uFeM3mtbLtpqEjOZNQ3+yvMn1ez6oqrkxYM46dRk7b6puFbTeTuL0
         ZZ3A+0yP0Kte5wvllsvGgZ27JNyNA8odBjmEGi32aoqZTirPl3CcP/CHtAmkqilLZePU
         +CGw==
X-Forwarded-Encrypted: i=1; AJvYcCV17p/IGwvH3cfb4p3G8R/4A91rhm9Yaaa+2jCfiZGw9uVd+XhnlPPyjDZqZbWNhU8qVwrlpRRS991u@vger.kernel.org
X-Gm-Message-State: AOJu0YyNQNfUID4QtPlDZZ1VZFnHhqXHS4qC36AwUpGU2vVAt7L0o5gF
	2tCtfpGPBE6p5D8zL9V5HxdyeDfgNR48/itywnkuK95rq0RxlVzIxH+4
X-Gm-Gg: ASbGncvhTQ5tgjDf2kaYo6FfvEeCFjYkk+mF9fXFWQhID5i7mDspf6RihmaYnNoLoyO
	JziG7B1UNfgbkfIzTqpNqRqZqvOXHj2635/dRCqommcp8Qh6DKfo5Z4iMfXvS4zZbtPKfv3pVfc
	6Bh9vbJbRyEfH2dih3d3T31oqKhz+W9OnX/4ic60SvBxyHKE+9Ynu3cMXvgS9giRvv3+gU8Wyu2
	XDAzpxTM6wcvgSc6tl0yeoUTfJ+WLzNjw96jG0WdpPnMe3YGwUuiisoJPVw8U/g95QRFS7mmkqu
	fETSAVC9gsfT/IU98FpB7qT6ESlQp9H40hnELfW9H3YV/flICw8DFMkNvxrJ7rjktYX2S254Mqe
	e1yBebde7J0wXOnRcTKf6WauNoqtsfhRkBk2hkLuKPUPjHiuL9Pd4tPJ7la8EK0AvXnRXl0o6nC
	d/K+62
X-Google-Smtp-Source: AGHT+IF2LSiQFvLIeEfaTgaJIYpO93EW0f1AR022pw4muAjwpr+/8fuU227Foup3a7Fps8cCIR+d8Q==
X-Received: by 2002:a05:6000:4305:b0:3e8:9e32:38f8 with SMTP id ffacd0b85a97d-425671512f5mr11397546f8f.14.1759839334129;
        Tue, 07 Oct 2025 05:15:34 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:9667:4f0f:586a:20c3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6e1bsm25590167f8f.8.2025.10.07.05.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 05:15:33 -0700 (PDT)
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
Subject: [PATCH 1/4] arm64: dts: renesas: r9a09g057: Add Cortex-A55 PMU node
Date: Tue,  7 Oct 2025 13:15:05 +0100
Message-ID: <20251007121508.1595889-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
RZ/V2H(P) (R9A09G057) SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
index 267fe91b31d9..40b15f1db930 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
@@ -135,6 +135,11 @@ opp-19687500 {
 		};
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


