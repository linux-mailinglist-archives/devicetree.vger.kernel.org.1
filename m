Return-Path: <devicetree+bounces-181191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B981AC68E7
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 14:13:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 610F21BC5E88
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 12:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5CA3284B20;
	Wed, 28 May 2025 12:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="DrMQ029l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0118F28466D
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748434397; cv=none; b=uDjaKEZCY4iHFRq/ZDYX1AZJEaFUOS7SEIVS0Eyo3mfM7V+N+N7n/+6+rsjTD26PLDSFQMHNNzOOwax37kjB5ndQPgnqFP+JFoPSifIIeBRh6Wvti0OnlwF4khs2EdluTCrEOwV66rVrkkGGkV2/mRtkPSQgBoQ9qD5KTg1eMiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748434397; c=relaxed/simple;
	bh=rl1DYff208utY7B4albm0ztL9bncdC6Wfr37/QGcCvI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ie8zRUx/Q31PUvDZBjNWAUw6/GHsBlo2WjmqkCQYiP8GFJ0HQdB8vNlNWorMaRVy34ghk5bOPdHYRDqgYjNDrsd4E31UNXwEw5MPlXBL9RbCtYCgXEvzfczEMrwcnIsMRwr9rk1upvxsAIO5yfdTerB53KdINU9QNq5Nh1KBuxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=DrMQ029l; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ad51ef2424bso921389166b.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 05:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748434394; x=1749039194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/UmkYBDuhm77tmexgekeXNedIehqsLYbAaP26M4i/3g=;
        b=DrMQ029l38hUFTUKHAluVoZKHVwmuEKbH/IDnZ3VBA3CjGDw+2WnJIp0RbP36K+WTJ
         SLPRQ3UsHhH/dLSuXtD1rIb2TpNLRTQ+p5oPk8Cj8O8OrUk5L4Nq82f4UL0TjO79pYAT
         mLR9TkXI+UacG2njhmEmoju4lS32tb8VlK5+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748434394; x=1749039194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/UmkYBDuhm77tmexgekeXNedIehqsLYbAaP26M4i/3g=;
        b=jPfNVYIxk3t34e0hLpsnmh1y6GDHTzs+bAqg5YMp0okiW8ayJbmROE2AlQb6WPT7Hr
         bTms4AUP19bhFuXzP4SYTialThbTJ9xcmlelhTAJYN02oOdrJzcbVRC6QPImg86E0JxG
         3f5/0fbTHB3qPvAMrBLV2/bo9AAebhbpyOW/E92PhRSJXqoNu4CBxTAQald2J1QLDsxB
         CgfJiLT3VHVEj6F7QapsTZ9BrMVc49yQMT5eyE935/s8j00YxfhykTJis8f7vroqHcHl
         +aP0lJq/8eFVmiydf13ukZLd1WyLhkGaafBZ3uGJ5O2YWfbPMZwZsI5nMt8QLhGQAlMs
         Jtfg==
X-Forwarded-Encrypted: i=1; AJvYcCXfVzrVVKBQayyV+7hUMevXKwPeM40orGQR43V8MVFBd7a9EjXnrKcrZJKGVE9xN5xnjbqXHBOld4N8@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk9njHXjKUtufSGrwA7xi/H34Ue9LXc+tpjWCdQD74bnWttGfv
	rIrFyQkahfDpCEp29FxnOeLzQfRWHawTCDD504UNdeJvSKXHOCZM4+fqY6/hHBKUdJM=
X-Gm-Gg: ASbGnctscgeKGf6yWxCR4dT9kRwh30aogR82GD7l+V7aJg/RiK3btcTvbE1Gb3FRsgR
	7ojMVGVzwcBIOzA59QCGw7D956qb70mo+TtRxnAJOWT4Ieg77iHXCcbKlGgIfUzT9HKUZrjIORc
	FkW2Dqvw+Ou2qMjLoFLEXMBZfvoy7Y0ZoqX+mEGN/JKfDhzc1lSY3ddHq8zHihiK0rUqtFqzjua
	iRQlJr8MM2k8NhhLkVmnivW6QjGwPSAIfIO4TTaNCaXBepDndRKlIvIAxQm/ANmxvebOpgbGcp7
	mp23ZSulzML8qmBTqD296hU0icQeAVgaYVufap9rFKlPpztlklbnjuKCQxoRmhtz1q1OI9jwppT
	fF/a/KZlVcE3w
X-Google-Smtp-Source: AGHT+IGX/l3aYv50yZQiAwumavns5Baq8oSOepnjn19OavmavGdcIsWU1pqdCC9aSgoKvq+TMQezmg==
X-Received: by 2002:a17:906:f58b:b0:ad5:557b:c369 with SMTP id a640c23a62f3a-ad85b1c2be8mr1532953166b.33.1748434394098;
        Wed, 28 May 2025 05:13:14 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:5631:61bf:398a:c492])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1b5b8afsm98523266b.170.2025.05.28.05.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 05:13:13 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
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
Subject: [PATCH v2 2/4] ARM: dts: imx28: add pwm7 muxing options
Date: Wed, 28 May 2025 14:11:39 +0200
Message-ID: <20250528121306.1464830-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250528121306.1464830-1-dario.binacchi@amarulasolutions.com>
References: <20250528121306.1464830-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm/boot/dts/nxp/mxs/imx28.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
index bbea8b77386f..ece46d0e7c7f 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
@@ -755,6 +755,16 @@ MX28_PAD_PWM4__PWM_4
 					fsl,pull-up = <MXS_PULL_DISABLE>;
 				};
 
+				pwm7_pins_a: pwm7@0 {
+					reg = <0>;
+					fsl,pinmux-ids = <
+						MX28_PAD_SAIF1_SDATA0__PWM_7
+					>;
+					fsl,drive-strength = <MXS_DRIVE_4mA>;
+					fsl,voltage = <MXS_VOLTAGE_HIGH>;
+					fsl,pull-up = <MXS_PULL_DISABLE>;
+				};
+
 				lcdif_24bit_pins_a: lcdif-24bit@0 {
 					reg = <0>;
 					fsl,pinmux-ids = <
-- 
2.43.0


