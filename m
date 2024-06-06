Return-Path: <devicetree+bounces-73431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B51A8FF56A
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 21:45:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 376711C266ED
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 19:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E40F161FDD;
	Thu,  6 Jun 2024 19:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SsYF+OoN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B99838DDB
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 19:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717703113; cv=none; b=H6/CgmXj+UqDP4SkSaKqoLbfplPxW1z8uiy5pZLs2G03CEOPLrP+DSBs9OQW7sniAYFp79r67LBfdRz1eAyWrOvxJoQPMCO+AlwcpFToaCD0Cf2mrrPDIHWTIszex6XkNf6ZfjUL6GbqRzTrp2lNEq+JpZWYTk9Lx2bCq1FekzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717703113; c=relaxed/simple;
	bh=bAiF3ILzSccN/XWcvv7aOQfTC8xz8SUTrRziSBXE1Ko=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FPVEwI6MCH48Gu09gYSAMSI3w1lTzfgUEe3tU3l0/6siPlvDJKeKCcBdP0f3bD1jB0SRqUmzl9jREe4gi6iPkt1Pt32+Fw9xoDxN0WLQtY3e+z+tSX/e0LzOyxxeHzyU0r8srfoG8qa2bD4X4qf+veXrkWoYtazGPbBjA4jn8Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SsYF+OoN; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-57a50ac2ca1so1788220a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 12:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717703110; x=1718307910; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m6dV5osPPFTszNtwCCq4wn88gq7EG8h/NSOcMR/mVeI=;
        b=SsYF+OoNbwpEtmRdKF179hoW3pY5EIDym/n3P/e518I/4PTKcTXwl9iniCXIqKdgjC
         /TL5XXodvReGQtYY61iZP1IjU4gUVdnQrgCuF8GpQml7wyMpHEJlvh4bMz2YDsVTOnfe
         yECrLUz0NFW4KKqJxMFZp2iiKUZpO5Ot+cUE3yuP7BxnohtysQlPZ7DwRabuNvdcX762
         bfP1WYXJnn+nHfALAomuL5mAbwDbJHCOWgLCau0Y9Y4KseqGGvdCwnzzCEm34tEz9gDl
         g1GSJCFzJyg+8k2fbkrtqlaoZEvbamxRM2yqX7a6hbtivairGYB5ob0PJknfJwG/tTdh
         FYSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717703110; x=1718307910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m6dV5osPPFTszNtwCCq4wn88gq7EG8h/NSOcMR/mVeI=;
        b=aOAeb6VsRajPLoUL39KoeuCWBKdGbapaxEPctYmATr0uZogPYjS1h7eUpGHoGGs05n
         rWVl/R/m97DK52M6RQTBnr0cZswfBZGzYACh0Ij6EHmR91IfkSeE5POTHpmnZZi/Bcb5
         b625MTZ4dZpcZR1JADB4MEpZ9O3Pki6SlvV4oQdDEyPIEDIhKh0Fh9y8GFLKZqjqZt+8
         vrub2ZF5e2TGtG/ryQWbG+cEcMOsq+QFhRCCAWg+iglQj8RWqyBOey7lfVU5yUdeOR+i
         1ktxilUnBIJUy2l0yEDqXC0hpri/0OzTYBcZOuvYZkgRfxrrqTyy0gv7mUt1V7uGHeHu
         vrgQ==
X-Gm-Message-State: AOJu0YyyuVRXBviHCtO61d5IgeBu7e72DRy88On5ZrSh2TLURQffs/8A
	GTLR+CD2bb1F+0RScnq495ttLY6ieGHJZMb7Vn7e1f+Y34hn+mlD
X-Google-Smtp-Source: AGHT+IG3NqRW2dsLMaOlwkOwZ5AM1oGF+3XGHSTRVp7p99AOgeMQdZ3w52QbSstS60A5xqWYSq9SRQ==
X-Received: by 2002:a50:d603:0:b0:57a:27ee:4246 with SMTP id 4fb4d7f45d1cf-57c508fd079mr216728a12.14.1717703110471;
        Thu, 06 Jun 2024 12:45:10 -0700 (PDT)
Received: from localhost.localdomain ([2001:171b:c9a6:e661:d20d:79ad:6944:cc2d])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-57aae1042cfsm1566463a12.46.2024.06.06.12.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 12:45:09 -0700 (PDT)
From: Florian Vaussard <florian.vaussard@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Florian Vaussard <florian.vaussard@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: altera: Add Terasic DE1-SOC board
Date: Thu,  6 Jun 2024 21:44:06 +0200
Message-ID: <20240606194421.1465667-2-florian.vaussard@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240606194421.1465667-1-florian.vaussard@gmail.com>
References: <20240606194421.1465667-1-florian.vaussard@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding for the Terasic DE1-SOC board.

Signed-off-by: Florian Vaussard <florian.vaussard@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 8c7575455422..b1a6a07b4fdd 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -47,6 +47,7 @@ properties:
               - novtech,chameleon96
               - samtec,vining
               - terasic,de0-atlas
+              - terasic,de1-soc
               - terasic,socfpga-cyclone5-sockit
           - const: altr,socfpga-cyclone5
           - const: altr,socfpga
-- 
2.45.1


