Return-Path: <devicetree+bounces-183464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CA2AD0C2A
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:35:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F0D1E7A81A3
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 09:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECD282206A6;
	Sat,  7 Jun 2025 09:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="I1ejNc55"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E3C21ADCC
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 09:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749288839; cv=none; b=GNlPY4RHb+q3hHG0oU3gGlodfMsaZjxNmkl4/vFDWtxcW3Z+54HJSDKV38DMZ3zha3jG3fNr4To6ff2mFI//lCx3LVIBaUyUSy5VhzR2uJLSSoh5reyxDNYmPBPAIQZd3YCFOIAKQaUbxUdQ05wWmCY7zrF3WVLUX7igB+YOT8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749288839; c=relaxed/simple;
	bh=hzT3vNgL1vWDpYVWZ4Vv9VCYguwOggONSy8Bpm6xvOg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HQjVBVRt2VQTCFRkjKg9v1lSg4PpDUBZfy98w9eD17ep3YrqmHLxoUm1bZlASQCQiOPIHYU5rIIMua+xcO09a3gjdOjb5DT3peKcAD1fn9Nprp6bHXvjNkrMCnBkyLjqVEgYHJotI+JgyDqLHPxFz4V6KnRdzKOoFzwuO9iIMAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=I1ejNc55; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ad89333d603so505423366b.2
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 02:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749288836; x=1749893636; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5MR+dZbWYo4do6lj7ERY9jZ9tLxOFZiirseEEryjRVE=;
        b=I1ejNc55IVc7Cxdz5arB+XZ+Yp1SIwPmCSSjNtUbwEkHIQkPJuDemkUtG9Mc3VN1mc
         QikAM4LI8POOd4dUjueeX+NQX9MqECnR+Pzw0IaiMVbILvxEKN8snNH/ZPd0SG7qG+wG
         mXZmcptviJjR/lA979j4QieqTqkYo/ek0E2M8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749288836; x=1749893636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5MR+dZbWYo4do6lj7ERY9jZ9tLxOFZiirseEEryjRVE=;
        b=OvoMQzRBFWs1OA/4vSt3zCpA7UObE9s1+AXvsdP+D/BZnxOchkiOaOYe1BUARQcau5
         vNlKxYD+wb1gpJ4cG0REyQGkRNos6IylA9enUVYAZOpXnwykR5bCB5Q79BtM9bwguXNR
         /nD4qmV3jlLY56amrGygYYX5cq0pCC4zTUWCHtjTdiEaq9rzgrXwJoVU9jZvFXu/NJG0
         c5r0rlQ0dDf79LjSQXaZZhNLU44+oETpC6UwbaXI2EABdDcye7Re2ICu5g26zChKbhbn
         CmMOg07fhGwy/OON86B3N76pJBTLCUSJywV+HDUsDHTFqgQiWC9M7UhzO4y8IWPw4ERB
         v9ww==
X-Forwarded-Encrypted: i=1; AJvYcCWOT6GBGQvwtHs7BeWmFF+ehlE6xoYxxgEU+xB67dXJInDB2SYU0cP1jMHoSOCsOQUbrHk90M6IBd37@vger.kernel.org
X-Gm-Message-State: AOJu0YzYE5b5DRsDE8HYsijgHPi8t1BB4Uuap0N3GX5J7uzx+15Qqeeb
	kaf3At5dkQUub96AyLqpWGOZS52qXV8zsG1bNM8whQowecXkWKX7VhjLL8wsjna0FtA=
X-Gm-Gg: ASbGncvJkBUgDhtqlVy9Ou2Dxe7ewXj7n8r8Vj1jrxwD73id5bXk/9Z0xK8PzF6SVhl
	QCOmrk/DIJSd7RVKbMI670OUPI9TEYAUAPaqda789KMJjSL9IwPaWUM2WBU/gO93vndw5NrmDQv
	x2AOD1q5hinkDMyIMlYE4qJ2F6qUHmqVc6ehkL+sn5KARDN64k6sv6krFtY6HufwcKG0CIsrRgj
	CJYXD7QMVix6pR4tuiiy4zUSU/lucfKddnVohGA8GEmSx3nswg46yxAUzwL66pQPhSm86eHaCdq
	c0Twx2DY6r4ttE8CJ+YVU9pkEGfZzxsCl1qF7bjz+6u5IVeGiNxgPebvu/ylcVjXAEHCWnqy5Og
	R8ocV26Q0S/JN6td88aA03R+g9qIjJJpUruZnRRTOecceahw4XeerilW3T8GwECt0hinHwu64Y9
	9vCet8xdMOEzCGbcv9CF46fQs=
X-Google-Smtp-Source: AGHT+IFlHwQClNktEW9rU11ODeYPn4LafvV12ThMJYdILr+sWuVhLFbv21t3KR4w5K99ahlUqfYzBw==
X-Received: by 2002:a17:906:4fc7:b0:ad8:89c7:2735 with SMTP id a640c23a62f3a-ade1aa0fbaemr593115766b.58.1749288836475;
        Sat, 07 Jun 2025 02:33:56 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-5-95-99.retail.telecomitalia.it. [87.5.95.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc1c316sm251541066b.98.2025.06.07.02.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 02:33:56 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Matteo Lisi <matteo.lisi@engicam.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 06/10] dt-bindings: arm: fsl: support Engicam MicroGEA RMM board
Date: Sat,  7 Jun 2025 11:33:18 +0200
Message-ID: <20250607093342.2248695-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250607093342.2248695-1-dario.binacchi@amarulasolutions.com>
References: <20250607093342.2248695-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree bindings for Engicam MicroGEA RMM board based on the
Engicam MicroGEA SoM (System-on-Module).

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5feb62611e53..58492b1cd468 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -773,6 +773,7 @@ properties:
         items:
           - enum:
               - engicam,microgea-imx6ull-bmm       # i.MX6ULL Engicam MicroGEA BMM Board
+              - engicam,microgea-imx6ull-rmm       # i.MX6ULL Engicam MicroGEA RMM Board
           - const: engicam,microgea-imx6ull        # i.MX6ULL Engicam MicroGEA SoM
           - const: fsl,imx6ull
 
-- 
2.43.0


