Return-Path: <devicetree+bounces-179154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C417CABEFC7
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 11:30:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E72927A7521
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 09:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 151B22417E6;
	Wed, 21 May 2025 09:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BDF7QWRX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D6C241105
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747819715; cv=none; b=KpIjWI1BQHOiCPhytNsXyGUW7yF5RrTyEF5+LK4dyN7mJpMXNZ4vqaMjIEqxSGDz8oF3dcHT/bb4MdBnec1nWdOLU4rF7jQ2LyhgjVY4Dxg1w6i5CevbbOT1wXeLJQG4BUOz7y+I5b01dATHE5RwTkvdD7RyS4BfdAIEetIaItM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747819715; c=relaxed/simple;
	bh=tDQnNA8SdA3gnbnRie5K6VZkCFFZI6Xy6ZUsXfZkuwA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T5ofX07bCn3GzxbRQ/ufbnLWvG/lqDb7rz3oYarBD5gmJXnlJD9phCZsVk5e4kJkU+PkFxQzVLnlHQczR9iFkAu2pcEaK+ky2cWyv9OSfqkxnIUS8DsjVekazPTxallFPFK+7pG0DarFu1y7X5s7LswN2MFxQ0IvSTFBZJsGeUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BDF7QWRX; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ac34257295dso985590466b.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 02:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747819712; x=1748424512; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8IZYk2wroPN5tq+OXAjU3VA8cJLAmAbDmT+zR2H07Dg=;
        b=BDF7QWRXI9JCcICdI7+QyFxhgo/1xN3TJicOqDjdWvfoKZhc7N4kRKNzo9WOd0Doi9
         XRza8ALqa/9m9HDOPl8aKEoYgxfs6Bst6WgCNd7x3eph9IYFLZayrCWtFQCWbvcgcAXN
         UgzIyv1nDNU7cxPseHUqHlpRN0vAXyGg8JDUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747819712; x=1748424512;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8IZYk2wroPN5tq+OXAjU3VA8cJLAmAbDmT+zR2H07Dg=;
        b=Er0g+ilOa8pUameGKiqCHLgPj0BA801jZwQsJrdLqzzhbwkwkOa8PaHi57RW6x8cra
         k0T2un7NGXXrJuwuP146gmpntgzq3nGDJbAitoUwsnHsCfr5dKdrdDl2jAbcz7zGKjMh
         AYHoFYTbQQe3TAtPbc81TMBWfkYTWFiN+FjPLnWXvGAF7r8GFJr1akAId/IxFivyTABm
         3rEjqTjoSebXhEa/sCtJxPXAHNd0SlNxO1EmucYwAU6wk3dDGFh2af0qtDfMU6l1r4d1
         0N2/Qit7XJ3lBNZ+ZiYQmVdne10r1W/+jQGVfiIOhCI2lzMNv+ew/K0RGEcRYVIjgXkK
         eFSw==
X-Forwarded-Encrypted: i=1; AJvYcCXD74C2H95FGtvb1Xs5ZQEp8BduyzlAzfaonRMw5z1SeLCLZJ3IBY7xlZ5E1ra3wytZatR2/OhSWlSy@vger.kernel.org
X-Gm-Message-State: AOJu0YxKDeDb3c4ZfMbrU22452XtV7ZkdyO6tJpVglKeBhFYhpZblh+q
	iXL69weeUfXtZTxKw3rrDdYKb0CGEOxWEGgH4ZDEIHgPNWkt2Xnr2nK4iM5L5OhQBUY=
X-Gm-Gg: ASbGnctZfxESoaHc7AsW027nauI7MJ34L6QJAwUw7DFBiC05fa9BzJ1BZIXEpz9EN3q
	DhogaRhsZlqoZtosGA0NOpey9RFC6GzmWdhx1Wvkjpj8buyosVEiVSFk/UeXFeFVLVQa4a2NL1r
	/cUJqC6syi+BxZoucokLhgGq/F7xFwUPf8FD3Hazq+pIs9wopYt43fKFlXtVy1Mp85mrHwTUSBJ
	We2UjFax8D+QLYSUkQLocGUNU2/Q9Qk9tHhR8sl1eyDOuMAG8TTcMZl5k83HYTyUp0OCeA8kzBt
	lFp5GLtoSPtIMfV2L+OnmJg/ZQoBfmL9M9cAvxgE7M+e//PLqw0P/yNbSrO3ky6F4DfLMObcltd
	hohTYF4DamvEaJkzhj3TQkPo=
X-Google-Smtp-Source: AGHT+IEm0a399896pQ314IkZrz5TfLecuw9Wty/psn9w2yhIO27jQNCSBoC8B6iZKqRINKNhrwWUSQ==
X-Received: by 2002:a17:907:6d11:b0:ad2:3b29:4cd7 with SMTP id a640c23a62f3a-ad52d5d4057mr1771891366b.45.1747819712515;
        Wed, 21 May 2025 02:28:32 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:cfc5:5070:d6f4:1d86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d275d9fsm867442466b.74.2025.05.21.02.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 02:28:32 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Heiko Schocher <hs@denx.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: arm: fsl: add i.MX28 Amarula rmm board
Date: Wed, 21 May 2025 11:28:21 +0200
Message-ID: <20250521092826.1035448-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521092826.1035448-1-dario.binacchi@amarulasolutions.com>
References: <20250521092826.1035448-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board includes the following resources:
 - 256 Mbytes NAND Flash
 - 256 Mbytes SRAM
 - LCD-TFT controller
 - CAN
 - USB 2.0 high-speed/full-speed
 - Ethernet MAC

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1b90870958a2..b67f0e71e4c8 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -89,6 +89,7 @@ properties:
       - description: i.MX28 based Boards
         items:
           - enum:
+              - amarula,imx28-rmm
               - armadeus,imx28-apf28      # APF28 SoM
               - bluegiga,apx4devkit       # Bluegiga APx4 SoM on dev board
               - crystalfontz,cfa10036     # Crystalfontz CFA-10036 SoM
-- 
2.43.0


