Return-Path: <devicetree+bounces-30124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEAB82699B
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 09:38:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29D6C1F21C97
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 08:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4793EBE5D;
	Mon,  8 Jan 2024 08:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gq4D9Z2p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACC01170F
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 08:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a2ac304e526so37089566b.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jan 2024 00:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704703081; x=1705307881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LmR9KxQP8dD4PzUTQD7z34F00y2gKvodpqxcPdEO1Jc=;
        b=gq4D9Z2pMuu990PveRM7Ho9mA8QXwLC9Wup3I/2NYHu2KB9aMvNQeZp4/R26ZKZzVt
         GDPoL5FY+8ZDO/HqfSyVQplqqPr4wNenh3ADokOXiJE6TaRyOyVArRYfesyLCyzeBEXH
         z5skURwFU3hhRR+oUv0b0VcLRNNgR9uyR6lIVOq41lQErNPGYqMC08WKrVI+6hmx26Nb
         pttdftgY6XIrhCFUPXwDChN1TC6Y067JCPbY4MPiBnKdQfslzIocQIoZT5prcAQB3pLL
         gnf0dp7QD0lYqzszEBmM5wtZr3wOfuaAHH2c3AHWBbXLT/1r+wjVipSE/AsUfSZjq2/p
         Bq8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704703081; x=1705307881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LmR9KxQP8dD4PzUTQD7z34F00y2gKvodpqxcPdEO1Jc=;
        b=DcxLhWwiLVlNiy4twwKQ72kaideB8ghWAnAxcYX2cwrDHyeoHZzyCNNQvqlCAX7MCv
         eMJjECqqRjRjWlctCSvaPJSGDq4V9VowRHHVnkS2b6PJKjV2sWun7U5V2Pg81lXWRkRG
         OZ0zL5+kMqWhhVU8AWsrMzUFfW3AeVDAdamHwzkR5+kbFXAt7cvFhnpr4scYRGhU73Tz
         AG7p/a+rGn2SzIE46BFRCBNVlgEnvpKMscQF5nV/YwjVHHcQKkevK7VpVOXiaEBuF5Ye
         O3ILlK5Q8LXZwGPStg0/YyFtjmPWg2EtDfNhM/eSnVC7zqSheG1gOMsl71YIU7jAPSpa
         pYVw==
X-Gm-Message-State: AOJu0YzCT6OJcWgRdJrQz1+Tk2kNQkHQTVRZ5Kor2UfnNsNuwrmTeyL/
	mAjj4F6xwRq+8k3fd3/LI1cGpkKhI0Qp1w==
X-Google-Smtp-Source: AGHT+IGwcyCWtQRwsq6lSM5m0WxXOX7TwKM4rEruLlGVkTCEypoJJzCsLna7iMU3sCXtgk8sZbKDWg==
X-Received: by 2002:a17:907:969e:b0:a26:9d95:a347 with SMTP id hd30-20020a170907969e00b00a269d95a347mr1631096ejc.25.1704703080980;
        Mon, 08 Jan 2024 00:38:00 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id ws6-20020a170907704600b00a2a360d719fsm1683504ejb.221.2024.01.08.00.37.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 00:37:59 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 2/2] docs: dt: submitting-patches: add commit subject prefix in reversed format
Date: Mon,  8 Jan 2024 09:37:50 +0100
Message-Id: <20240108083750.16350-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240108083750.16350-1-krzysztof.kozlowski@linaro.org>
References: <20240108083750.16350-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

ASoC, media, regulators and SPI subsystems prefer commits starting with
subsystem name (e.g. "spi: dt-bindings:"), so document this to avoid
confusing contributors.

Cc: Mark Brown <broonie@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/submitting-patches.rst | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/submitting-patches.rst b/Documentation/devicetree/bindings/submitting-patches.rst
index b460ebffee42..a64f21a5f299 100644
--- a/Documentation/devicetree/bindings/submitting-patches.rst
+++ b/Documentation/devicetree/bindings/submitting-patches.rst
@@ -15,6 +15,11 @@ I. For patch submitters
 
        "dt-bindings: <binding dir>: ..."
 
+     Few subsystems, like ASoC, media, regulators and SPI, expect reverse order
+     of the prefixes::
+
+       "<binding dir>: dt-bindings: ..."
+
      The 80 characters of the subject are precious. It is recommended to not
      use "Documentation" or "doc" because that is implied. All bindings are
      docs. Repeating "binding" again should also be avoided.
-- 
2.34.1


