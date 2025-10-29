Return-Path: <devicetree+bounces-232399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E28D4C177C7
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 01:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 21F594E3A12
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 00:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E08F01DFE12;
	Wed, 29 Oct 2025 00:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OgsoL4Os"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AED1DDC28
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 00:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761696706; cv=none; b=FMDxqLviLLYx1ynt618vMf5KZUya6oQCh3hw/s+ZOhfMKO0lkoPR/xyXS9pQBKrNJjHy35ETaV4OLyF+PpfrnXyaOK4yliQXRmz34HITjFUIZAGdQBbueav/aBAaEEjC/FjxQux3d2kjMyo2i/1RXVSIWRm/ouQ+gEXySzKvNU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761696706; c=relaxed/simple;
	bh=hQaWYt1xUWiQ0PHspTzHNXsFJ52ZXbLRgfq1RinfZs0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Mp7vhqJj1FTn2G44jCHlh+X1ZY9e+uFG4qlnj22jfx8wGp7bdfNNr/BdL8augODMmL0Iok4nWj328vRF0zJTnbgnkNFBSo8e5oq3Q+ecooMfmaoOCW4JIDae9nJH1DqkP+OU6xCGLdid/hLm2tHvCdXk0Tu2fS0rCVgNJUzMJfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OgsoL4Os; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-87de60d0e3eso68490636d6.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761696703; x=1762301503; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3xT2Rb2PqwexlMD3Y7gKJkUff1N1w8n3j13bjOXJoVA=;
        b=OgsoL4Os8IFbvEGZ0zSW2lkd4moHioYHBoDcDxtU03GFscnqXaoyBaomcsE3PxA1jJ
         proMzPJs1XZaZGRAzrVcZqWbiQf6aGvf6w0LUNdzj5O7+RdECP2zpC8/OMADYM7fwVVI
         nD27wv38heSa4J4rycqAFNoC0eu8bVVYQhOZAVLlhYP13X7gX5At+1A6D2YbpLm2tzgo
         plMUFy40nTYhBulNpEKBb3r0QCgcwkF5z9Wmew1yQMdC1l64AnOXCEstNUENlpAgCngc
         YDdSk/GvftMeQKu/9qkcYEh/YFdu5J51jiIbSVJ8/7HogGeCEIfalbGr2lPtS2t5cYMr
         PqIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761696703; x=1762301503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3xT2Rb2PqwexlMD3Y7gKJkUff1N1w8n3j13bjOXJoVA=;
        b=SY6nMgP9HU8bIerUS6sBC8MXrdziODl/rA6+rLkoC1xOnlr+WEzRQQjYCu2JgOq9Tr
         vax0gibJkIG2oQ5HPA/GS7j/c+nwu0Of2FPvbJm7Jhe/AXdqLudjap1IG0frd9bLzve+
         AknWMTA0c4GlHgmrRngC5OdR/jyqQjOHDEQq19uV8j4X4XcV03tVCxarP0D565LndYDI
         UpJ4F7+3vcXqVzwAdcSKcqOijFCAbRm0fnCan42z11FioAg9dl3w+IRt1HB2LKm6bxCf
         nYsY+ULZM+6dybF2V0dZIH+Qm1gkFIaSk10K3UFdHohKgPmKvsgwYJ1So4HnAN3u8zMq
         B8og==
X-Forwarded-Encrypted: i=1; AJvYcCVOdo7ljtNyNoK1vEZgCipBgzqxTpEAAIUnVXwDXeTaICCvxLqTxzxSynDhIB/Hga3Sk7SntNtOp+pI@vger.kernel.org
X-Gm-Message-State: AOJu0YwFE4fmxuKCeErztUf8db87+dZARlMFGtA95XHfGJxOLAFBNx9U
	RkMENiD/9zzX+An178EA9dch/KJnDuXzIjb8ezMYwN4tI9niFpLzatLR
X-Gm-Gg: ASbGncsreRgW0oIIf95jwgHpLNTgjeE/fcQb82xO2YDrXy45ST8BJD4Cp5VAVHhUXgf
	mKUn3BstLXpWAzTJC3+DZM+lor8J1OYdBEGuMODdHo3MUbLdSM/6GUJFaa5Su6n3yBTrFMG4XRY
	xrUcKMIjsDbmSVbOJOQBPPMjE7ZVnjbVfxvZnR8QJExFyH1nlS4BjxFlK7CWN+eWmGFfvjSwXHb
	FHxnlCGICNjuDfu8ZJXi3/AaPleK4voAgF8qYEXAEb4Pf7ZSVk+Daw27bfs5eycv4jjXV9Cv01o
	yj/D+1yRGTMKfFCF+b7tTbNM0UTto0sclhAa5m4Rxz7GFTCrR0pGY0HP/rk7NRjjg/oi4xsXJQe
	M1HcOsKFHTDQ4ACjgHEoJeyRRQA4I/9zDs5XN40dWH7J6iBUdoNUGDL4Ppx2c1kQh2KRnewjIAo
	jKPoMlkwsSXHtiK6bTj2Vo5BksYo62inIosw==
X-Google-Smtp-Source: AGHT+IE4SQO4yCAzGuZzWxWUxkwVcez+Sp+Ibm3DoBI0g5gxVw79H8XGehLNVKd2c7qV1ykgdkqPSQ==
X-Received: by 2002:a05:6214:c85:b0:7d6:c615:ecd1 with SMTP id 6a1803df08f44-88009c12eaemr14080336d6.61.1761696702575;
        Tue, 28 Oct 2025 17:11:42 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc48dee2esm87255906d6.23.2025.10.28.17.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 17:11:42 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: tglx@linutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	paul.walmsley@sifive.com,
	samuel.holland@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com
Cc: josh.milas@gmail.com,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 1/5] dt-bindings: soc: sophgo: add Milk-V Duo S board compatibles
Date: Tue, 28 Oct 2025 20:10:48 -0400
Message-ID: <20251029001052.36774-2-josh.milas@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251029001052.36774-1-josh.milas@gmail.com>
References: <20251029001052.36774-1-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible strings for the Milk-V Duo S board [1]
which uses the SOPHGO SG2000 SoC [2].

Link: https://milkv.io/duo-s [1]
Link: https://en.sophgo.com/sophon-u/product/introduce/sg200x.html [2]

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml b/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
index 1c502618de51f..0b6fbab48b743 100644
--- a/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
+++ b/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
@@ -31,6 +31,10 @@ properties:
               - milkv,duo-module-01-evb
           - const: milkv,duo-module-01
           - const: sophgo,sg2000
+      - items:
+          - enum:
+              - milkv,duo-s
+          - const: sophgo,sg2000
       - items:
           - enum:
               - sipeed,licheerv-nano-b
-- 
2.51.1


