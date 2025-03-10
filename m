Return-Path: <devicetree+bounces-156111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C47A5942B
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 13:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 780C71881DF3
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 12:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A452223714;
	Mon, 10 Mar 2025 12:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="YUwPfiWc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8692A22155C
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 12:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741609467; cv=none; b=fWD0XhuL71KH0pqC5Hil3lLTa7LSqrlrN/Oofr+pj0iO2fAELxzjzCqXpJ+KQx6Jxl5Xo2u59hWUsipxPuM9ssxVgpgHMkGa9AVM4jCyhGQxvwGQo2Q4CR6vtXJjwrE2wQ7d52G1X3XdlF/jz/OCii9vhuaWdMYtrQT8L2Ur59M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741609467; c=relaxed/simple;
	bh=nQLCBBNeOZ0qUOD56mZa/DsLAOsoVGUE7OACWe7JQSM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AHyTOZKWvx8NPaqkjTiZ1FUcIZWMSXXjc+K12nuXxBQufKvDEk/aQE5YDOij7DBybtnqNAUnlCsAE9NCEKDZyzTQOGD+to97czq5xs5wDVvdvKp84LAQdiWlM3KP2h4f2vtZXDkBGgl4DJ6e2q+MKTUoaDzuBimDL+yih7WP5uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=YUwPfiWc; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac2902f7c2aso204885766b.1
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 05:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1741609464; x=1742214264; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=33CK6psrpblH2CgU9WWzzRrMa5nOu4Xr746XCaWV3tk=;
        b=YUwPfiWcHAiNz5W9yycdJNlTew6ODtmscpOsFLsb4nmPCb20/M11IEi3Q1cr5AqnQo
         Lf7KfHOToRa/q1Uw6THaXS1cdELVVWbl9Ru9hAk0H6YH/RWzckcAQRzRT8WIPFhFmEp2
         NeOdXXCJg60wzLyq27up6z55mpEm5sX2pDcfk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741609464; x=1742214264;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=33CK6psrpblH2CgU9WWzzRrMa5nOu4Xr746XCaWV3tk=;
        b=XG4YUTl+JgrrM49Z1ZYxQIYIWONCCYEBupXEwSax/UKjyf2AiEDvQhqSjjJXszIGOh
         ALahWC2tLUCUe0SY3mPhVADN0yo9N3ugtB1Bo++SQKMnO+HuG9NmxE65qVahPLH3o9X9
         Aw4pIHnm49iKE+Yv9JBRvNhqVBiWXjdV2zCb+yERrjJXxVxuRLZ4LX4lDEiT7hmURSG2
         WrSXL34gmEp3s9vAMOBKPpk+hXeCjLVjX8EMZjCRAR2JR0ir6p967/Jkto9t8eq58FbV
         UoOfa6Yl6yqPNmzmspTom5vl5OtrTW9AHZLaKTO6k5PAAhXK5Jj1XOZLfiFZkZRkUFSd
         Bclg==
X-Forwarded-Encrypted: i=1; AJvYcCVHOXmpp9pRIX7wAcz9ZdC0tIOxMqY1wwe4gPMVfIRb6Ub0R3jFEw45lvez3uotbSd+DPyW0pMIvbJL@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3iZkvxcqTTBd8Jnd2IB0ZEY97LJBdS8Ytk2YM7714IDYpOTfY
	Pvh1rCIV3nPTVQ1zr1fUM/Hacw2idbTOWk5GJJWCW3mqINluDLTWSnIChfaScI4=
X-Gm-Gg: ASbGncvsZXZEB3sQg29PPEzEMWVUy8bS0N08JNw+oEsl1Fp/SHBtY4YSepTDhGLEMWu
	pDTe2UlnCfkigMwfEN0GgCPtLtmbKR2DjogW8jdXX0ahKKITANC3zRQ7BXJ2uD2WlFm5cGJB3pz
	agz1eavugXdK/a5p2LPMp1m/xtETLbVUCYXZ/yEsOSa4uclZFOqvDgR7/ngCwUGry8ZUvVo2fC/
	GLL2MPrf8R/vnylX59LVHvgLcqZ7bda5vbeR3VzzAH/qxBi2lOpGvRVG0uI73QBrQWE0xHgLqXq
	b9uzEcKSfpEVGGaNBoiWlmT0+vWGwtwvFZErtB4H0FsHnYNGKI0/0zIDp1oJBObW+0Mco5x2nn+
	FlMVlzWwaw702qQ==
X-Google-Smtp-Source: AGHT+IFVCn4XgPQmS6e/eeO8AkfoYCUAhXlWOW9B7DhCMb0sWF1pzA0CXrrJ6W16xDN20EJF7h5N2A==
X-Received: by 2002:a17:907:9490:b0:ab7:c893:fc80 with SMTP id a640c23a62f3a-ac252b573bbmr1608210966b.24.1741609463722;
        Mon, 10 Mar 2025 05:24:23 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([213.208.157.109])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2817467f4sm361656366b.172.2025.03.10.05.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 05:24:23 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Antonio Borneo <antonio.borneo@foss.st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2] ARM: dts: stm32: use IRQ_TYPE_EDGE_FALLING on stm32mp157c-dk2
Date: Mon, 10 Mar 2025 13:23:56 +0100
Message-ID: <20250310122402.8795-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace the number 2 with the appropriate numerical constant defined in
dt-bindings/interrupt-controller/irq.h.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Antonio Borneo <antonio.borneo@foss.st.com>

---

Changes in v2:
- Drop inclusion of dt-bindings/interrupt-controller/irq.h header
- Add Reviewed-by tag of Antonio Borneo

 arch/arm/boot/dts/st/stm32mp157c-dk2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/stm32mp157c-dk2.dts b/arch/arm/boot/dts/st/stm32mp157c-dk2.dts
index 5f9c0160a9c4..324f7bb988d1 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-dk2.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-dk2.dts
@@ -67,7 +67,7 @@ &i2c1 {
 	touchscreen@38 {
 		compatible = "focaltech,ft6236";
 		reg = <0x38>;
-		interrupts = <2 2>;
+		interrupts = <2 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-parent = <&gpiof>;
 		touchscreen-size-x = <480>;
 		touchscreen-size-y = <800>;
-- 
2.43.0


