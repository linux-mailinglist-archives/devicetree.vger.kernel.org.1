Return-Path: <devicetree+bounces-101991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E46FC975030
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:53:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F1C428F1F4
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F028818C03E;
	Wed, 11 Sep 2024 10:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YUIZfbJ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7573E187353
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726051927; cv=none; b=HoX6t8DzTdJVbH7O9w/eeIXy8/sx/9y67MVz6iT2a6BKqBgmzg8xel+19rnoiViDRb4UUNyj9bk9laGrWa8OE3ZJWh7FWWQGdNopMKi/tH1aMV6Aj7TulXt5p/JTj2R9GDQFhTerEZng8ogXDFEEWvbcIN+rypLY1gbStWSGSaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726051927; c=relaxed/simple;
	bh=/G95g6Pv3hKsT3DAid4YKqoRSWpITBspQybTIEAK3g8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PVvaEYS4snJyaG7DmxW9W3RxTd754y4T5NZ9J0owas+FYU3dnirswzMYx3F5NC6OY/0cqA7MhLOe/RHKbI1N4aZ/jP1kJiGYFBFsf8kuk1Ih2BsKQMQbv/pO5mooUEUOInhxyCqXSy0TkVA22cDR1b9hlV1YXMWt8MKVC/UM+wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YUIZfbJ6; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-205909af9b5so52761895ad.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726051926; x=1726656726; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lxB+6fvHWEXWAoAcmBCe/+3gaojpv5E5mRIj5J3oWjM=;
        b=YUIZfbJ64Pi3l4ZGFwBrOmj0tRhOWvH5M7G4J4/QswyESJQj2MLvoHwrapWpgIoP9M
         POwR4/dOwlYKX8533nmoAjd4vc1j7I+zihzaoGf6ze3dvB+szWlQV0Y/KSHE0i/t2uof
         YuwGvX02sFkJyDqHG7FPMGXBXGkRsklbCcKWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726051926; x=1726656726;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lxB+6fvHWEXWAoAcmBCe/+3gaojpv5E5mRIj5J3oWjM=;
        b=itNzk3ZyXs7hxZ5i5u+Oarra7BvhncE/5ORMuUgtVIGLW1pWzW0m85RG6+57OkE4JM
         KaKcbblLPbhx0IzLz8huNzWGAtHq/P+90fo9dqc5A7wW2CRrBKr3pgw3y486ARzhKwG9
         CNQLhqDcPlj71tZvaOQRWeRnH5qEN9sitY1xVdLbGr9oRm/BiUOBh1QU/SxP3Gjdy2sw
         C1kY7x66CmfbB2+HSBPBXcHh7TE5VSGdtemUObbP5n72u0ViZPRcGZEEPx/sTJ+Z2P7r
         FAEFBXW06+4H2N09+3+B0KRGtRxCUyQ4IXWsVS8+IuReXp5S6TIpAqubczrcj3Xljl8y
         +3Ug==
X-Forwarded-Encrypted: i=1; AJvYcCWYVzFQILckjLFunMY+tlv13cTfuEL3RxY2KqdsII3/IAQLTCnSy0TUG+EsCowL8krAKjbxbYmGuN2h@vger.kernel.org
X-Gm-Message-State: AOJu0Yznk6lVsDmc/jeyKUE1Z4EFz4EW9gJH4ejBULx+K5NK31jnFwzB
	XqKKJYSlvqiWIYjzM/hHlYr7Ec9xrxITAfUg0jAAzfOlFF5ixL4y9knQU48iFg==
X-Google-Smtp-Source: AGHT+IFTR5yrOi8klWJqx+NBpQgcvZapfM72vRbdkK7qyKiVUV1zLbAi0kvSlxVkP+q2NaVXR1gr5A==
X-Received: by 2002:a17:902:d509:b0:205:5dfe:7d9 with SMTP id d9443c01a7336-2074c5e71fdmr49347935ad.19.1726051925359;
        Wed, 11 Sep 2024 03:52:05 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d8242b3d13sm7147352a12.52.2024.09.11.03.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 03:52:04 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 1/8] dt-bindings: spmi: spmi-mtk-pmif: Add compatible for MT8188
Date: Wed, 11 Sep 2024 18:51:06 +0800
Message-ID: <20240911105131.4094027-2-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911105131.4094027-1-fshao@chromium.org>
References: <20240911105131.4094027-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for the SPMI block on MT8188 SoC, which is
compatible with the one used on MT8195.

Acked-by: Stephen Boyd <sboyd@kernel.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml b/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
index ac99883a3f29..7f0be0ac644a 100644
--- a/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
+++ b/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
@@ -25,6 +25,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8186-spmi
+              - mediatek,mt8188-spmi
           - const: mediatek,mt8195-spmi
 
   reg:
-- 
2.46.0.598.g6f2099f65c-goog


