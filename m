Return-Path: <devicetree+bounces-139442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 809D9A15CDB
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:42:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B458B3A4974
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 954DF19E960;
	Sat, 18 Jan 2025 12:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="fZTlIMtZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52EA19CD17
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204069; cv=none; b=iTScFhsfJ9jY5OPfCQ6op/tPKjuoJKkI3MerzYchrVFJt3QieRe7rOxzqsFUQL/oWK/yS3+rRm6EUTqOqGaHTS+r5beH43OukQ0CVt2x5HPd9fpHLP2+pFqR7VS1A56mE29JNN5Nva+O6vfnN8SRFaMwhrMH9e8ehltgQ7RXXh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204069; c=relaxed/simple;
	bh=MWwhsP/1Gq2jtC+XMH/+PSmlpfJmY2R2gm9uwDR4fZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ls0TQdvuSQpd833ue5sdxuj8zAIiIyqF1pcnVW3bGUsHQ26D/PYSlucNVPrQ+SRw+gssN8nmuUf8aibsgcGGlMhyfeDp/Gx0EiMl4Fhd1V+Qlxkf5La+B7zKzZHm3hKHRGnTd+yZYe4pab+amHYGDMu7S3AjUtnf1OdV6jtOTC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=fZTlIMtZ; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d3f28881d6so4246858a12.1
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204066; x=1737808866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=fZTlIMtZHCS/asv5p8T8OBNwLN97bX+5fv3DVpHIFFS5v+XKOoDt6TvbCmOzdVzUwV
         pc0EsWBXwMKkRSqtyOaSQRaaYEQybI7nuZr64DAYtvDZ3P7bvcy5/p5tLa9gdq/bYK6R
         1ACnvf+7Y9K/4rWcVElbu1hukI9bdxupDylQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204066; x=1737808866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=lQd96cTLgzTMbYw1UDv7O7+D/Jht6/I7hf/6x7nrJLJY4gZxdnVt7mDUTPrTF9n6kq
         C8a/j/D8rxHW72/kEPwvv8ZDPCfu346RjJn9j8cP6V2aaFNos/UiLdlcvfDOWSJdJX7s
         FnxyicMlKgZ0gMxFSLIhjVL6VYlVr/OPRX+AsjFkbGdN6GI4buQuhRu/PvV9RydyPn9Y
         fD49n1OfmuH3Q7/WpGB+ptjYL0z1358eKSyIy7GNdIgJeZPdg2txT2Xc1/tpeSB0ow2b
         9YKT46xJUXn+P2z0bNxVIVMYx+l0FOSp2Y0H2M4pdaw1JF07a1ljoMOu8RMzVwnXNSIi
         +/0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWpizMsgAnIHXZpJsP7FdNSI64wLKp3NuHcMePTKeoB9n14ZpyeF9uYQ9enn30OgTzodgAge4brft6d@vger.kernel.org
X-Gm-Message-State: AOJu0YxcbxdNyhSq03ShhruA81pdhsHYE18cKIwg4cD5l4GRuEFoko5V
	2iBu+AhpD5cf1Wz96vyIvJXk1Zko17hl9tFmYSN5jZbTwXZ60GRs7NIkYYsfEW8=
X-Gm-Gg: ASbGncuiASO/4a5dEu93Zb+ADnZqcPxh0zsvhrzo0Litee+xxYhCKoox8rLT6Gqc18r
	JNarXLkNuqjn7xssn4zuDR3Vyt+ccMGnVWQh6SS7lf20o08vAWYHJ4iFv0uuIVM2TlmgyMXJHQu
	RL+nPf8/R11c7hwtnZGYypnXR2M8y9vBhPeNUL6w3fYqy6MpASvrwQEbk4M/uXECic94QAS3n2m
	V1Fu8hLCyR1AcPCTMlxwiW+pxCf4Ac62NGAtAXW7wmUuk/8PS4/b/X21jrF4c1Einx+KeHqHkxA
	74IoahRXGvi+49YpCaBXTcKf5lhRWZ3zZyAxaTR57VMQSdMUg2ufQ2BwFJhKvDHBNkn7BuCcMp/
	XZ4+mH0dn8FiDSj1FR9m2shLna1niz3O2aKz0
X-Google-Smtp-Source: AGHT+IFd8SJOuPnbNHYayMQ2pJl2dtTRvVnOeDARGIr6v9/DddrHyT5J/QNi2xGLWBTU+gDaqVLJPQ==
X-Received: by 2002:a05:6402:849:b0:5d9:857e:b259 with SMTP id 4fb4d7f45d1cf-5db7db2becemr12516818a12.31.1737204065870;
        Sat, 18 Jan 2025 04:41:05 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:41:05 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v9 07/23] arm64: dts: imx8mn: add anatop clocks
Date: Sat, 18 Jan 2025 13:39:50 +0100
Message-ID: <20250118124044.157308-8-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
References: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index a5f9cfb46e5d..49be492b5687 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -606,6 +606,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mn-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


