Return-Path: <devicetree+bounces-116417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C790E9B2CD3
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 55ECDB224C0
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 198751D63C2;
	Mon, 28 Oct 2024 10:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="pzK7rbA3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B361D54C1
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730111178; cv=none; b=j4qRGJ8YRjBLCsAJfm+3d5g0K7MPA7vqB2T8ZtsG9WrToCLLT8oagr5Q0ZLw6EnNgDgN9NskfWvLRHgxI9KtHc/yUv0IK10p7ewbGEcOhD7aH+RI1GpykXg8wtTYSCSYwt5xPVnd6PXo4mECzJqcYa0TZacoQMHGCdQWC0uxoIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730111178; c=relaxed/simple;
	bh=3RJbrpbC6Nxmr4CObGvh2EeJe3fwMHBQ3Iide/lIGUg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W/pImRSzT0fCFm5uCCht42lf9afdQ41luLpwbuKjHQJO1DkVwsNslx1PKDvbRKDDaxuNoxlD7ZfwrqBAfks4Yqp+PdcBoqAfyoWkm39cBizGWjwF4D7FuylwBFqGYoPhbUpHW2n75EZAdBJKXLGFfWkXYZF2+1yaeCJDng6qZNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=pzK7rbA3; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a9a628b68a7so640597066b.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 03:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1730111174; x=1730715974; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3kjaoDHO/Cxmm9XfSkRfXuiq2XlHBj2nIJAqnJTFngw=;
        b=pzK7rbA30zfPVq//nKA9dLpaNlQIBkP2rA39is+NLlbcCPYxH05P2+qDqTwoFIXBPD
         Af/HBq+F5EdFj7SjaOUPq2cXghiaWlNoCSPvE1EVrzy9+OzulFM1SRMZLgwn9e6qx5SW
         xHeufODskTLxIml4jkEEAzwBxpjZCklHMs0q4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730111174; x=1730715974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3kjaoDHO/Cxmm9XfSkRfXuiq2XlHBj2nIJAqnJTFngw=;
        b=bUFGQB+WBNTPyB/AI7r2UA9maQfx98n4wiFz4q4cSkPHsNh88sSyGzI3BdXTKTSR0E
         dEfneqfO5aAHvk3i04EObarupDZexoxypF6rcEeyDLyvjh2xDeltM+7EmbCaz+b7tbnN
         S/qj0YOsRZMRCsnqbxKLOS1EuQDhKReUtbfRqRITspWUIS1eohApCuAAXEciqf2zT5HX
         xo3jkMbaCusAwnNc1DohvJVxvuzM5Pzclz9//bElRd0c+XwL3b/RHeNdh45CGG064jc5
         MZ/dRmhMbsp62quOSHvkxkwQkGm414XyFHqN6LUEjVpNdEU+K/96PTj6X6MQYazZwAPX
         epZA==
X-Forwarded-Encrypted: i=1; AJvYcCWxGknohLDSUUWzi5qLiZrRQCegx4Xuqb3NRKFabxnG+u1Dzo6njx54YTNnIchFj+r2XTcZhyPJI0mJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3cm3U6dEOYNclONInM1Hk8R2B0PBzStYNsLpHEyhu+ZOHWDXY
	FMkMM0L/Cd825PeV9pMpKsesy5bcF2jyC1+S+CcnGxoMzwNeZ8JDe+yNRDkfNEo=
X-Google-Smtp-Source: AGHT+IEYNCvHyI4Ub76KdqemIzRCqERBXA/yyqTx2llDK0lvcsPc5x2y/hbBEKlGhDYQLy/s0WjfIA==
X-Received: by 2002:a17:907:9721:b0:a99:89bd:d84a with SMTP id a640c23a62f3a-a9de5ee107dmr668398566b.25.1730111174240;
        Mon, 28 Oct 2024 03:26:14 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.121])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f297b04sm363613966b.134.2024.10.28.03.26.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 03:26:13 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
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
Subject: [RFC PATCH 03/10] dt-bindings: power: gpcv2: add 'fsl,boot-on' property
Date: Mon, 28 Oct 2024 11:25:26 +0100
Message-ID: <20241028102559.1451383-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241028102559.1451383-1-dario.binacchi@amarulasolutions.com>
References: <20241028102559.1451383-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The property states that the power-domain has been initialized and left
on by the bootloader/firmware. This information becomes relevant, for
example, in the case of supporting the simple framebuffer.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
index dfdb8dfb6b65..718196f516ad 100644
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
@@ -94,6 +94,12 @@ properties:
             minItems: 1
             maxItems: 4
 
+          fsl,boot-on:
+            description: |
+              The power-domain has been initialized and left on  by the
+              bootloader/firmware.
+            type: boolean
+
         required:
           - '#power-domain-cells'
           - reg
-- 
2.43.0


