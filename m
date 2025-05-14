Return-Path: <devicetree+bounces-177072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B18AB65DF
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:27:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6AEE63B56D7
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A1A21B9C8;
	Wed, 14 May 2025 08:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="KzT5z9f7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091872222DE
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211124; cv=none; b=MRSQy3C+Ls+3reKAmmJKy6A0uLooPNyggIHKGdhrErSlZ0kw4/cWQE9C/RZgBkdKk76gawD1gvxDo5dmx09HWDkB6ZPB7BfQ1kvXcU4DXsKXA19giBGBBVzAb53/fMmcUlP7ZNjzR6z08ou8Rq0tJ12uy+D9aZPr2lEpbengH78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211124; c=relaxed/simple;
	bh=HsVCl1yxLXvhDf43Nd0AQkKlThmkNlDCATxWj7ZdQkI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gbPrMKW1emzyJKp4FflUIr1/nxdfraNrnqmC/xgUl0jxr53PKs5HcF5C9G+Qz4eRcl5QW1sJYquboSOvUzKPZM+GjajOPZj3s1A+tz0so4tzrhew5X82lhaFrfuORMmZVq6XM4TVLF/WT2vqJq2lnju7blnRfNr8t/xk8l6bwFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=KzT5z9f7; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cf848528aso56951225e9.2
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 01:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747211121; x=1747815921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9TYuMpa3lECo5TxM+RObwV30bGxY9a5ZOYB/MAe2Vms=;
        b=KzT5z9f7Qstqz5gASosUohW/1QNFGY0+HWwUOUpUlOyFZeMoSWrkg9Vr3bh4oI4yPy
         2u//ffd3cu8aPjU5v3FM+are4v2QR0ApQViZ5LxkdQoXxUJww0OmIJuUbBo2NsCAWz/k
         gg7nlW/c1kfeD25x1lflH+7wE1jMLEgkk8euk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747211121; x=1747815921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9TYuMpa3lECo5TxM+RObwV30bGxY9a5ZOYB/MAe2Vms=;
        b=tmDZCvPfH37F/d4vOYDtThXnvhOaGmzdX14Y3d/pCdH0aekHrSUyG+7oG/hGQjYYaM
         S0pKQk9Kk/6FERaiVVXx6qwuwuclIzsYfHTnRo7D3BDHQabgqm5uTq9fDTa287vbyykc
         7RJgA+WSwPhN/IX/lAdWl6GobOon08KdD6yMwIu91x8aIdez4WghicXB6jmerTrm6m5h
         +0MtMbGzmKOOcF6CsPHeH6q/fwAZhMQMl4WyDJlLmKRtq3YoC50+Qt3OGQol+VVU2dKp
         q+AINjPtJtLq+htUmBhYsDhl9IajpKTC3yXGHYw+h0u8JN/Tyx+O/gYArMprnH5rnel4
         gomA==
X-Forwarded-Encrypted: i=1; AJvYcCW9MMyvIBFh8FNCdG2DFNix/MjK6lqdeSHru4YHfYW2bF/sS2BImAqIHhHeF0YzmQvdjCO1NSzZZrc+@vger.kernel.org
X-Gm-Message-State: AOJu0Yyriiv0h9HOXtj51vuOipPb2fx/nQX4YH8x3zb+M/CsGp98n6d1
	Sat6hg6MKD+elKyINKOGdsV+xN1W+my0/qQlJnZRmjYRhV0bJjXoFF+RmgSGSIU=
X-Gm-Gg: ASbGncsnOQynKzTnvNbhFO1941fOPUL3c6+efXBJiQtd3HKKcDq/xYGLdMjNQgCMNKg
	hM8Kj+51XQo/xCSMxMtzGgqIjE9fb+ThYeTN2zp4C943u5w1xj9yC3jiYLuXXSMtaYymC8J0ssM
	hARPf8BxKxrFhZNyOJ3b6WhU7j9zauocFJ7wj954sxLDKBuuDvOHZLjCMpHGfRP0TNvlucHheDO
	Xz3FFHbx9cOL7iT14KybBLUuyYjxH8AeBGFfJMjaeJ/xgUs9croea3rYR3y9z+9Us/fFmt4qNEd
	TVt9oBGwIR5NB/O3+GEwC1zfkknQg0RzU4j8OV8oKUCyATURrxHygdW4HvVEwV4j3zD7yYiCHhj
	Ma1q92Y+LgnmC+98snf2sNlSeDbVdGDWO1IphjefDQr+IG6r9eGHZCQ==
X-Google-Smtp-Source: AGHT+IElgZGelBk5zT2GgVn2jS8QC31s8cj0ziUv3wJ5MYE4/n7YxAgcmx5VnwG5fRUicYlfJQi+aA==
X-Received: by 2002:a05:600c:3c8e:b0:43d:fa59:af97 with SMTP id 5b1f17b1804b1-442f2179bd8mr15288665e9.32.1747211121301;
        Wed, 14 May 2025 01:25:21 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebda7d2csm30987365e9.3.2025.05.14.01.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 01:25:20 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Simon Holesch <simon.holesch@bshg.com>,
	Karthikdatt Anantharamrao <karthikdatt.anantharamrao@in.bosch.com>,
	michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Wolfgang Birkner <wolfgang.birkner@bshg.com>,
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
Subject: [PATCH 7/9] arm64: dts: imx8mn-bsh-smm-s2-common: Set minimum value for VDD_3V3
Date: Wed, 14 May 2025 10:25:01 +0200
Message-ID: <20250514082507.1983849-8-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
References: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wolfgang Birkner <wolfgang.birkner@bshg.com>

Buck4 is called Buck6 in the BD71847 datasheet. This buck supports
2.6...3.3V. Set the minimum allowed value.

Signed-off-by: Wolfgang Birkner <wolfgang.birkner@bshg.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index 81fa0a8767e2..04112a83b1d3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -144,7 +144,7 @@ buck3_reg: BUCK3 {
 			buck4_reg: BUCK4 {
 				/* PMIC_BUCK6 - VDD_3V3 */
 				regulator-name = "buck4";
-				regulator-min-microvolt = <3000000>;
+				regulator-min-microvolt = <2600000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
 				regulator-always-on;
-- 
2.43.0


