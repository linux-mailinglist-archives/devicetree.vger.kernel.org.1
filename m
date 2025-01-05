Return-Path: <devicetree+bounces-135691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD3FA01B50
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 19:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69B73162D98
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7E8D1CDFC2;
	Sun,  5 Jan 2025 18:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="mqlQQZxT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738AD1B6CFE
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 18:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736100938; cv=none; b=tkq2dR5FW/Lc1phWfz+74aqdZsChJ9LXpc6TPGrWzw7t3m4ZDzkbCHoZUoWNy4hvYr2FCp4fEIhsJ3gNxH7Y2nQCayb9CFOrG3T36goHzANrOe7gnfs1LQKDvYRKAeHCZaHH6lgJKFOGthisGRFayhWszljiy6GLvzMDzk2maug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736100938; c=relaxed/simple;
	bh=R1RqfntRJFOx36yCcR4Mwvgf6/yfFCoRdqfgTg8JbsI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BzSs/qzaxFbfl+AsD2hqcAw0BE5BbQFlpLHcidMIgb253IUevnCg0Hc9TYvox1v/gmXv/M09GUKnSdovlAhCKbTOKs6dg9lYQqMUekV6CgglW6iOIys+U5aGotYoXFUczYW1UEUTuA80EVqw5C6EI7R+NgpLHSVDV/wO4xk6/kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=mqlQQZxT; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa679ad4265so2692503666b.0
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 10:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736100935; x=1736705735; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UOAsdgxDQEvC5uDcWK+yR25E57Nu26K/3jc3ZbJ9Cg0=;
        b=mqlQQZxTk1IX4XswsR8Bzkc8tN1F0DqWJlbd4Ea8aDRxu9mkDtTj9JVppftGEi9RL6
         MiD3BDCa3JyyDD9+HUMjYdoWzVvR3oAXdbeLFHcwxwOJWbtyhri6FWZ6Xzuz0RwioopA
         1OPTGHHXilC66MDYJqL4qjiAldAwO/lwJRPD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736100935; x=1736705735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UOAsdgxDQEvC5uDcWK+yR25E57Nu26K/3jc3ZbJ9Cg0=;
        b=RahpgJwHFxFcRjjy3pgwkya0pSnUiCd0zkuzE4t99Bn8cyYE3CgwKej+nXG2WDsBcX
         Vo47KacCQMwgxq++znF0xWQIikxSQFNnF02ZIQbtoMQf+m+MmqU3Ti3pvkgpHt35qBAx
         fv8eCLKoT5Zc0A5wo/KXM9c31MFYsgr4efoB6/nEVL5flliyY+euP7Ac81Qe4SL48scj
         oumN1vz9PbG/+92VYubALcbtQYlxGHYe4DzhPCT4iiusP/4VjemgE+y6xADUNzOkUirG
         CHrCfuspJUMvN/gnhaPHO6AA8KiikcIRyAxkShNtiSdeRl7HRex62u/R8eNQBg6yJxxB
         wNgw==
X-Forwarded-Encrypted: i=1; AJvYcCW0quU2jJUD2m8zXXNk+ViCl5DuNgvdqI16yZSJ0nyZyDLupc9Wiue8OyFJa8/bln+uGz72RVKyg1+T@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5y7JoBRa8OPNq/5+18cI9BcLV8JWMt5j69TySPDddHbdwdYRm
	6IFRso3Kb6uiqsgzReHe6F+CSaFlNP6dtY6XiitrUHFPabrQDbxpAGQyb85BD2Q=
X-Gm-Gg: ASbGncvyE7UTuuvWZXg6s6mckAtti+ojDeWM1shMY8JZkqWznTe2oVP5oAVHkMfRCti
	d20l0UqItOLyFRzf4r++ZBbfH+iKqRoOEIfn6gk8RoWmuRS+5sK+MWyVxGwb0jkuQokWvfyY2qf
	P5/0Fp5hN5WX7H5IwM7kmKa3ioTfcE2r1Cy3AF7K0eOHyPsM4OBuQFc3vsOYMhVsm8fFmscGTPC
	TNsxeDaBaOWjM4p5jDYZIMWA1PDZ3sMYv9W6X6HVRxjstDY2472bFivmJDWN/d4rLQ9egiRRjW3
	QMfD+P4KK8v9Zx76ysXcRzOQjDdd70/FMlKSISKdHyxIM91wWDglAmZCTYRoArkSxK54WvvXojt
	trerUNBLrYaPJw/TcyQ==
X-Google-Smtp-Source: AGHT+IGmgVgc6B2TGyiYFDwVaPwnmHLCNND0P6xPziVSDtm7hEJn68GNvTjYVOhO12g7nBOja7hhAw==
X-Received: by 2002:a17:906:dc8f:b0:aab:a1a8:92be with SMTP id a640c23a62f3a-aac080feebdmr5370408766b.5.1736100934660;
        Sun, 05 Jan 2025 10:15:34 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-41-6-15.retail.telecomitalia.it. [79.41.6.15])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f178sm2138185066b.38.2025.01.05.10.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 10:15:34 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 2/6] dt-bindings: reset: st,stm32-rcc: update reference due to rename
Date: Sun,  5 Jan 2025 19:14:14 +0100
Message-ID: <20250105181525.1370822-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250105181525.1370822-1-dario.binacchi@amarulasolutions.com>
References: <20250105181525.1370822-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With the conversion of Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
to JSON schema, the reference to st,stm32-rcc.txt is now broken. Therefore,
let's fix it.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 Documentation/devicetree/bindings/reset/st,stm32-rcc.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/reset/st,stm32-rcc.txt b/Documentation/devicetree/bindings/reset/st,stm32-rcc.txt
index 01db34375192..384035e8e60b 100644
--- a/Documentation/devicetree/bindings/reset/st,stm32-rcc.txt
+++ b/Documentation/devicetree/bindings/reset/st,stm32-rcc.txt
@@ -3,4 +3,4 @@ STMicroelectronics STM32 Peripheral Reset Controller
 
 The RCC IP is both a reset and a clock controller.
 
-Please see Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
+Please see Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
-- 
2.43.0


