Return-Path: <devicetree+bounces-240513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BFDC723FA
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 06:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 03A3B34F3BB
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 05:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6885302761;
	Thu, 20 Nov 2025 05:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I3l/WLuA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423C22FF654
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 05:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763616376; cv=none; b=cMrfWvOtEA7elX6rpZbX1Ww0Y5nPf6TixUrqPmLLPJDeUbLJqMQS4AUiFl3BmTZ5+sSrQXhEDZ2aGAP5GrH34CAKkaXNxukNIfWZNspX4RHGjBgISZv41WT5suzaGiO0D25pXDtcf+HgFJqt2+1vmuBMzRKWvGJbTrcdbygg+3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763616376; c=relaxed/simple;
	bh=OEoDPVAl+S0COKkIlbVNnqQ2XcG7pPYJZgZLJdWqaeM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZOij7BFxA6RujRTYvF/YhvcM695PmCc5+NicldQTTLu9ovwGogbHPsVZImaHOaiHX4ceawbUSXi+9LNW7vi50HJdL3mmKbm0WRjRdhh5tpqxuX+cdYcjjmPcJwDHVWrQy7xnlZzl9PnjepGH/yX99/W04MpsrGLYw5la+9e7HMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I3l/WLuA; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-340c39ee02dso384423a91.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 21:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763616373; x=1764221173; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CHVbT19SoV5m4YcosKHhTcv+qnuVQe5xO2ZctZWhciE=;
        b=I3l/WLuAHcm6yTTnZd6Vh0VXoN6mn5F6E0c/mbKbouNGsZI/uZmFxqpdXD6bgiXwJY
         ERLcWrh5RKjyV0q6AyCiuGOFsRxIspi92gUZvAnaXDD0GT1BD8uZpb4J8NUWo/B3bWrI
         Frckpt4fctRccNzOYMN1tXLxOnqbwFl/isQuq7zRluMoF5lzG5Ntzul8aMbY4o0DquxW
         nqSPFnqQVDMmbI19c1MyXczJvvkanHbt609f5Wy+iKUWrm7z3ezgvURdU/C8WdS8Flpo
         gjWREuK/mF5nQECgzGoNykXemPCkoqUfN8JnBCD1+fytjqxpqlEd4C6/U+Eeh2jyNqwq
         C2TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763616373; x=1764221173;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CHVbT19SoV5m4YcosKHhTcv+qnuVQe5xO2ZctZWhciE=;
        b=drjOZ8qdtkKV2tYgM0G7kJVRScBc0xI148qlI6+sW+2hm4efE2dA9PwfFnndmbTukc
         rwXLYs4JM49GSefJWIHd6k8v+Qvz9sKQk9EI096yu7Lzc4V1QGXj5GgZVGdtxgYTYTGg
         U9kNBcBVe0dTgq0VfX6JXE63XL6ZvXxhFG1MWY1CIrqFZIMFUka4Qbe1RCXquE401Vbl
         nU5aeGEKS2+P4pUag/irpDb9G7tl3irwuk1PDm0LvxMs1n0NUklWqkVqJy+2+boDBcvu
         SNeESLjN/WU4XfA+XmAv9S0x6P+CTkrPMym0/9nHrHyWziNHL2Kgg/vlI6wLoahTkz8F
         dLMQ==
X-Gm-Message-State: AOJu0YzxRYzZPgKto8nea43w8nB2VG5o+McjAIU4ZWFaBMJRIpgeKr6V
	8H1X90wWY10ip+mXCnUGu+j1hJJ+Gk9wYUZ45Fo4dTvdPUxgrLIGRZYY
X-Gm-Gg: ASbGncsdbdbH13gnlp2z9llbX3+8AuMR5YgmZ7zCJ3CMyEM7GKUNDTWEwwsIxfNJKZB
	5MmqdM35PcgVhxoOWom78kt7Wtm4sIJd9GGdxDWJiKNHwk+qwbPfXoOx6qn67g7H0UyPOlDPcj9
	amsNbs6LnoUzaI30PQk6Ks2uUX4+ETDLCDNVmMST8rrrk0oHiFXrauczQx3slf9xVo+fE2QAknM
	VB00oXmlHcIyXwRzi67nhDfCclbJr7AG1HhG08n0seO92YGxUADIUPwbvC0maO21cbcqtZrUNjE
	HUHLdSPwAv/FdE6PH4kdmi+qpK2JMCy8BAy/i2zTt7gy7495HVn9wpqXBQ4AeFFjCd5Cz2fA9QR
	oUzbNwMJ8YEP3IfQLev6LxFzWcnRGLnGAcaio/xOJm7c7NgzeDNj5pV4rlPe5jlfwzLRiv04bPo
	N4NcBIb7ScLCpPDs/r8Kck7NoN4XBLvmma/016uX6MnB/gzDFjLV9LJ+kSq5JCLUB5Il4OdbqEN
	Fz0XDFChVl3N7AztjrZ+vQhc3p5Q5hFxwX+J3LuQV8yd8huPLOJVcavhffzjVI38zERMl6D718d
	KffRhFLyQ2Q=
X-Google-Smtp-Source: AGHT+IFTkKnaXX3mEE8uWZI9hhFIJprQn8F9I4uiRfBPyyrkdGyhKEiuIVDjxchbmW3f3duBD7XsUQ==
X-Received: by 2002:a17:90b:4f8a:b0:340:a1a8:eb87 with SMTP id 98e67ed59e1d1-3472854a5acmr2109339a91.35.1763616372885;
        Wed, 19 Nov 2025 21:26:12 -0800 (PST)
Received: from 2001-b400-e301-38bf-be0d-b72c-6bec-2812.emome-ip6.hinet.net (2001-b400-e301-38bf-be0d-b72c-6bec-2812.emome-ip6.hinet.net. [2001:b400:e301:38bf:be0d:b72c:6bec:2812])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3472692e5d3sm1221342a91.9.2025.11.19.21.26.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 21:26:12 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Thu, 20 Nov 2025 13:26:00 +0800
Subject: [PATCH v2 3/4] ARM: dts: aspeed: yosemite5: Rename sgpio
 P0_I3C_APML_ALERT_L
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-yv5_revise_dts-v2-3-4d7de701c5be@gmail.com>
References: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com>
In-Reply-To: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763616361; l=877;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=OEoDPVAl+S0COKkIlbVNnqQ2XcG7pPYJZgZLJdWqaeM=;
 b=56mR5NirN88VhKgfYg3lzZkIzSyH9L9LfFR/zNUitmcf5rWmUKJgB1m3nxBAw5A7o2smU0F9m
 hrteVwE3trXDBrWcdgKSskOrCSevxTUYmFLubHkec6KGguhR9tf1gAj
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Rename P0_I3C_APML_ALERT_L to FM_APML_CPU_ALERT_N for clarity.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 45b8ac2e8c65a4f672e64571631b7f6944f26213..060757b7211a6da777c51d9f0c886796cf2450a4 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -964,7 +964,7 @@ &sgpiom0 {
 	"FAULT_P3V3_NIC_N","",
 	"FAULT_P12V_NIC_N","",
 	"FAULT_P12V_SCM_N","",
-	"P0_I3C_APML_ALERT_L","",
+	"FM_APML_CPU_ALERT_N","",
 	"ALERT_INLET_TEMP_N","",
 	"FM_CPU_PROCHOT_R_N","",
 	"FM_CPU_THERMTRIP_N","",

-- 
2.51.2


