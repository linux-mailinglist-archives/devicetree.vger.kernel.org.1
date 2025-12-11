Return-Path: <devicetree+bounces-245706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F257CB479F
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 02:50:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 934AD3027E1C
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 01:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B1526E710;
	Thu, 11 Dec 2025 01:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eXeu4XAP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EC423D7FB
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765417762; cv=none; b=r4ANdXA9ThRc2n7hvvyP7wxV/HIf4ZCBnqcaRWmbPDn6JXcQE06h0e8/l/EwQlb8yeIlUfaglEuDYUheYp8EQ93r6PfSSO4/rZ+6PST7FzklNbM+pAOZ39Fl9xG20joquhaQJqH24XyASI6BHL1ffgs8BsGmoIfX+dEx9mhA0sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765417762; c=relaxed/simple;
	bh=eKctyCCAfDrhBUEBcPwgI9lj1QLDPhGH+AhjDzK1u2Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CVFscQQ4KpTtlmg2DsyNRaCkpX9rl3ULA76UQncWfyvAZmzNc9pB9SC4PfAlz4qfKUqvJk5nrqONm/yxstEA3Wri0Gu+sXq1jh1zW5KXkTtMSRIwmPFu2RjeIjAQTGGyodE75wYW906bhlQJCbHJuMFfDD4sTUQTtbrWNuA72jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eXeu4XAP; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-4ee1879e6d9so4892561cf.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 17:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765417760; x=1766022560; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2KGtV4M5CkIi/MUg0AIlnUx+zFblebrmxOcrF7c98NQ=;
        b=eXeu4XAP9WxJBvvOlo0/B7viuoZNi+mhZfQtBuwFbwvyrTwPJC2SJPg9TI3dSugFQF
         XElOfXJI6tjtx7YvdxZLKcL6EqmadOdukl3H0P0/4gmSFXcVJ2m21NnTGgn9MIYZ+oS+
         2r83ynL+YohSe3eS7b4uP532zJ7aUa1c9t7slD0u5akmXUmOTSIPmxubmNjiDSgvYAi7
         6IvbI/LI3Bd+Z5POv24GzHuR0ioT4avn0aIMO3gAOocxYqYlGgVvIOzQ8V/N4I71d2Ck
         MgNstrHmwlbSIDltWfI5wNzlqlQOzplPMf0HJKX9czMoG2jAmeacLA500ZpJ+TKUAzdF
         kbGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765417760; x=1766022560;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2KGtV4M5CkIi/MUg0AIlnUx+zFblebrmxOcrF7c98NQ=;
        b=Zcneskxn9bdy1EUcEYp5cs7/J+bR9V8Uqro9RZS8SclgjRTeC3uldJVANf35pTvQzb
         6DcjiBvskfZUVg+Sh3O2QGKR+XLAvP2GTHw+bvAUTHr6lbjS1cL6wNR1bP9CajEKBuHJ
         wKCpUFNP+51ZV1jfW+YIjGm51KFJQqQ6TReTgI+sp42iV0M2oAu/HnMZBradiEc5tik4
         vKi61UqR3HSxFSusYqq5CG3fTJZLE6RrnMP9+tcg5aK2zrUh7IpgPm1Re5Sv5peH52/o
         bAyQP0cqjMmp3/1O2zB8bYhFevtDZmc+OPrezUk7tobiQt5VcRf3B3p0MhPjPvnGyPKY
         KVhw==
X-Forwarded-Encrypted: i=1; AJvYcCUYQNzAYXEBGCrR4cfTnnDFXBDHGgkWIPSItGrWGAal3IgvBQwJCOlGAdKjhaSEndx+3rRAT/8t4DNt@vger.kernel.org
X-Gm-Message-State: AOJu0YxmUmFKBMvPvYaZpl7ufPMZo3RUtrgFwoSD89C2rsNgt+bhR3xR
	P7+/BHRETQoPjiPG/c4Zhjwg5dPXSCM3tW+3N6GhJxDjtDXA1A0M8ftW5X+ucA==
X-Gm-Gg: ASbGncu7BzRP6FOiK+2gaEZmxIYMD0NbsSQ7bDpZHPNhnd78+DU7N3Mbgkgds+cXLU5
	0a3+PY97purdfDAd1vCKNRBNgaylaSCxm/5f+3Z1m8ZALNKQrJGOD0anvVhnWFQGBBiC1puEOTK
	r2cCIPb/eyvjI2gVaMv4NrxzRLroVERriQGqHjkBMnAtCySCkupJhVrMLvLciLaPj7eQLtZ1mGm
	mNK9PadIflr0bxII4+EDikblGUIeT9nljOVdHQ4fKhn8/EV18PBEHjCqulMJ26ESFpVQYuS/VWr
	r8Nsx5z2lP7iJu/yUdI0q2AjESYV2I26lNquHc0RYlNpGpzqpZBUuIIC6ItjUDnx9d769TET8ox
	8m0dGivfHjvT7MI8DgHS0NMgGiY+jvZaPg3M9Po/7EBzqrYP/9brmVck6x+GvxT4RdgFGoEv8aE
	9A1qtS1onHM2hvVQ==
X-Google-Smtp-Source: AGHT+IEHGFsZyx/nVfYXZ5QvErj5OZznYgvQNXzSO7zb8bnJmymaeGQswuqQ9EOEvZnOAOHp3amI3g==
X-Received: by 2002:a05:622a:8c3:b0:4ee:56c0:712f with SMTP id d75a77b69052e-4f1b1ae29c4mr60256041cf.76.1765417760232;
        Wed, 10 Dec 2025 17:49:20 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f1bd58d034sm8948021cf.5.2025.12.10.17.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 17:49:19 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v4 4/5] arm64: dts: qcom: sdm670: add camera mclk pins
Date: Wed, 10 Dec 2025 20:48:45 -0500
Message-ID: <20251211014846.16602-5-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251211014846.16602-1-mailingradian@gmail.com>
References: <20251211014846.16602-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The camera subsystem is added for the SoC common devicetree, but the
mclk pins should also be common across the SoC. Add the mclk pins for
the cameras.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Link: https://lore.kernel.org/r/5135823c-f2e4-4873-9e3a-9d190cac0113@oss.qualcomm.com
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index c275089237e4..69e84cd8ed27 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -1190,6 +1190,27 @@ tlmm: pinctrl@3400000 {
 			gpio-ranges = <&tlmm 0 0 151>;
 			wakeup-parent = <&pdc>;
 
+			cam_mclk0_default: cam-mclk0-default-state {
+				pins = "gpio13";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk1_default: cam-mclk1-default-state {
+				pins = "gpio14";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk2_default: cam-mclk2-default-state {
+				pins = "gpio15";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci0_default: cci0-default-state {
 				pins = "gpio17", "gpio18";
 				function = "cci_i2c";
-- 
2.52.0


