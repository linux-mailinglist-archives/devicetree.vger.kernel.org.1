Return-Path: <devicetree+bounces-187799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BA0AE15F2
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:29:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D36E73BAA7A
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6C3623C4F6;
	Fri, 20 Jun 2025 08:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ad8YTJmj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9EF23ABB7
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 08:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750408074; cv=none; b=tPfjZ4k+0NQKAdT5WZm51WFsr/6kZFQQFCA5pSOoVy15dkK+1QK/MMZZjsYHPhE4u1Enggoz1BDWfgiyiGSZjlsNjODanpiPg8nmI2/8Rjt5LYDG3Ju/PxxX4usc+El6PqLP+7xhqRSw7NtTzmf+gksw53f+uQ0FqCb91O5Wqrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750408074; c=relaxed/simple;
	bh=YxFgDvHxfy4wrScb+l1g58rALcetSmeE8HAFFojcXp8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hCexSexV1qjparqHsSaWwUdQ7TUNdDdS8d6D0M74qc+jADxWDHD/rKiOop0eIWVQHMTrt1pF5Xwv9k+2pB7xzzEbReZmHsfIiQ5/YGbPR7JsBTYFO6tEcOdLvQnQGaUIsM+n8g5Tc+0tCUmOgZuGhIvJa1XxcdceXqb4ZUCh/RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ad8YTJmj; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so18220325e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 01:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1750408071; x=1751012871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OE60H8an/td5GcTGMnbuvQU05tobHbDXITR9FPp9RlE=;
        b=ad8YTJmjmfrBBh6eYyyI6nwj1KIOYgK3H2zdNAt3oLduPdq9BfIawAyDekhQXNc4tq
         JiUE7gIsbSXqGvBKtX2mSfQq2na7BWjd3ue431K9WdbDcA0yiSx7ScGeXvkTtyc5g3Xy
         pfzP/q5amtr+9iA4CBFH5rMRtb0NbttGMQWr0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750408071; x=1751012871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OE60H8an/td5GcTGMnbuvQU05tobHbDXITR9FPp9RlE=;
        b=CyXWhx4ycWphlszcauin28nMAp48DnXwPw88Xkj1PAlNgnW7L50rVHggrERAcQJA8u
         kp9xUYTLUpGskg7DtuilQy/3LMbBE5aziiJa37djNQEHlJDJQbQq2pS68MSSDF6H5RSx
         6rjX3lJKivsGtZkanKCZMFIbMX32YrPotdPcmx6QA0FVdKLm1Pl0nHnFVAwgTnaIqxu2
         1i0kpPkSMWVGLP6OYjcNuUduvDiyuX66DsmIGRBHRlwbccWQwr7E5plWPmUuRq7JBpN/
         lQEPql6P2IzvGYFDMja2EN4GBs+zUVA+Bc6CZIypM20JdGU6lf2gYFz1DhAblNfayN6G
         71TQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZGM+unwkxIFFBlax/nVao88kThk83azQPOYfNO1L1yw4tu/cRdGobUyvJ9YOzxEYKoOdHIDmDvUdQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyQBORcGVddCdW162QibAR6ctT3zyiobJepEheAEgI2ab1faoS6
	v4Attrc6ZbJMQ3Y3qNugNIEUVNZ2JSb6Sw31WnxLhYOC+WBievutubjSjillb1IUelo=
X-Gm-Gg: ASbGnctvO8YU0SWNsWqxEO3Zzz3bAlD+VwZCFNp1EWZ35g93HK+TOf7T0ZJQ6TmEc5P
	tyPuvwR9KpMB8eLTuXBXUfcb9ICzNityPytMTJKaZmVm4N/giaYpKW+J9kiSaLh6DCpWEh81v8t
	IFlmA90YlYMfJ95kGtQavshgCdGZmPNQYwI8BUCMOTw5uJVyV6sZud6MYYQ2C8LtpR0IVguAuw0
	gIYbsE0OmxN6PAa1S3t7n7y+5eEAS9scGDN9EhUwZwp7bk0L2ed6M2DRke54BHGUnUtT5tnVD3H
	8breHpHTjp6DcWFAIZGgAzpaX4M8gLHG+OtaQX1oWUh5XMtYbsnzJn5JJVsWskzRuWREDrxX8zj
	5TpMOv5TKdhGlGLWDZJFcGgv8lRGVmBs+nve7QxsbEWPzTDcX1p2Z
X-Google-Smtp-Source: AGHT+IHi+BzPkv7chlZTxFeOkSPk4kqyihgJ5Phxbr2CKiqpwzTfLxjAIzJQmcdoM+rZ7LxYXD/OeQ==
X-Received: by 2002:a05:600c:45cd:b0:453:6150:de2f with SMTP id 5b1f17b1804b1-453653cc978mr15273915e9.1.1750408071319;
        Fri, 20 Jun 2025 01:27:51 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.224])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535e9844a9sm52274285e9.12.2025.06.20.01.27.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 01:27:50 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frank Li <Frank.Li@nxp.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [RESEND PATCH v4 06/10] dt-bindings: arm: fsl: support Engicam MicroGEA RMM board
Date: Fri, 20 Jun 2025 10:27:10 +0200
Message-ID: <20250620082736.3582691-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250620082736.3582691-1-dario.binacchi@amarulasolutions.com>
References: <20250620082736.3582691-1-dario.binacchi@amarulasolutions.com>
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
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v3)

Changes in v3:
- Add Acked-by tag of Conor Dooley.

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


