Return-Path: <devicetree+bounces-238931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 426FCC5FF15
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 03:58:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9DC73BFE98
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 02:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39D84221DB6;
	Sat, 15 Nov 2025 02:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Stbegsw/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6E063B9
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 02:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763175518; cv=none; b=QzxBek3lmTLqOuLLE4lZpbwzgrFPmP6/pkr6KzpBs9ArLQqo/DJtJIsGXdR8q3DQsheW8T2Jg25FCHjqhI8RhCnGdRuNMBFtEG3AbwXjzBusIo9u/ThJrOg3SjQ1aucAFEqfm1l4vDWzkR1GOTY3NrmOls8z1FjFZJBuHIC4olU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763175518; c=relaxed/simple;
	bh=bdNXQ2ztUcah4gcwT/EjL393Xew2CQSIYQpgsqf8I8I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OAhXZGEHoe14LVmM2Qu50emP26U/OIyB2CXKClcTUJT5+9Yb4PGo1p8IVcAirSFN8GP24dvW1MBGCIcNCUnW0QS8W0yTVhSNVja7LXaH3VMFWlfvt1/nB4C8kNvFrbbzVh8jM1nlth2C96nuZdTm79im7KVdhrkHTflSMOs6PS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Stbegsw/; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-34101107cc8so2313862a91.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 18:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763175516; x=1763780316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9EmQqivhlvMtIMdUDuewY+qml6crrlkIneJlSDxjEak=;
        b=Stbegsw//Dc0Uoj2QmfnbdEcJFvMuPgxaCJafj1rO8yPPF1NIcEys5e9LJiXcy22b2
         XhV0jq7hXHfIVwysBxcCLg//qw0SOquUdVpE5j72tFnIQOsIdGfQy4oGTfFLARnWEE4m
         na7xA65B7gnuNnCRL2ie8osP9whtB0dVSa9ixw6x6SvGthpgn3DxR0qPEcfsKf7hEyPw
         KBPJ2aPR707QT8MOIsWh40rv+GzO0yjPzaf8E+PlSSgPfO1msiiN8eypCo1+m9xuYJN8
         C/DGOnso9J1N9xxwvg+srRCGk/XSu2r3H/wFA+T91dGuSH8NxuV5BBtzfXqCN8nq4ifM
         H/XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763175516; x=1763780316;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9EmQqivhlvMtIMdUDuewY+qml6crrlkIneJlSDxjEak=;
        b=C38naLQ9NgKHwGJc7S3AOfeY6hyUUT/bQ7LuAPrxzwJ0BEOGM0xEncxAk/n2izZTjA
         WtAkpCzWC9M2sWo/qXeYKq2VCPsZaUm22lzTokkqOioaNoKP+FrSvN1W4G8Ft+Ir7EkO
         mCGOE2xAWRtMjAU50oMCFTwk4TXqMs62WrFNwTJejeAjJaWAHhZyPbFlPmOjA5w2u/LI
         Tyerky+8QAJEzI0FHtFIOSmgTJeym1iw5QgNXsNBAEQu6W5kDbR8r8ocKgfC93673C0p
         Dzc1KmlMrBslZpUE0qGeeBjPxjVL+CpumaT361eP0SiJZw/lC3pxCH0HQltPHg5pDQWW
         kA4g==
X-Forwarded-Encrypted: i=1; AJvYcCVvo8EsVY/qfMn195IvD1FbcJ5fBFX/vS6uSErdjTxGluTueFiQpJhgH+2BbPI6uCweVTLF+wSZplHT@vger.kernel.org
X-Gm-Message-State: AOJu0YzBo12dn+brXJDBFMh6vO3zk3IcKzxt03XQWJfW3SYUg014NIuZ
	tcx3tH89oTm4z3FIR+1Gu2cyPPaNRGm82pydbbO7WmhRRgs4jX76wpNs
X-Gm-Gg: ASbGncvrbSu5PL5IwpI92yy6XdTtbZ6RdHb6RDXSCyKIasnTlCqsi6q3lYXfxIWe/9H
	mbel6HmZXDi4Kc/PAWBBa9AZnENu4/o/klqHgS+LYly6RfPMzFLcFm5LfQ853d9paB3n1bjdu4k
	Wt9OSjceqQ0smPQW+L8gcryApBGsKpRjCTsWs0+nmhs4YhhQacvvAns6orveF4yAVw2EtLKCNOg
	PHZmh8P9Q6dbYdLlRgJ4FSceURHrC6qaU0Es883nNwPOheOvoyZK2FH5mEPIVqKrUFVRF79gA/K
	2PKYSuhIY+PBJujU54/Gjhlmo4ql9GXH4SD/yACIEXFhHYUySFUnbv4KEe6ujOmWleUZmDA0zl2
	C5sWrgYoyIXsCTwNxDyKA23EQ3vhy+QQZOIEtxfA6+uZ/fgb+qCkwwLKXljYWO1Dbh7cjsIlwS4
	oyKN6Go10ZxrPcNMPVipcCHmDgF92nY6QYuC8=
X-Google-Smtp-Source: AGHT+IGJ26UKrVpxFhQj/AXU3cvFCNrNNP+U8hJj43Em3kYnSKrKKjdFQa3dTP34XOwI2VgfiUGi0w==
X-Received: by 2002:a05:7022:7e81:b0:11b:9386:7ed3 with SMTP id a92af1059eb24-11b93868327mr191232c88.48.1763175515943;
        Fri, 14 Nov 2025 18:58:35 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:735a:fcf2:fc15:89cd])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b86afe12esm4215227c88.6.2025.11.14.18.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 18:58:35 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: jesszhan0024@gmail.com,
	dri-devel@lists.freedesktop.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 2/3] dt-bindings: display: simple: Add Raystar RFF500F-AWH-DNN panel
Date: Fri, 14 Nov 2025 23:58:26 -0300
Message-Id: <20251115025827.3113790-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251115025827.3113790-1-festevam@gmail.com>
References: <20251115025827.3113790-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Raystar RFF500F-AWH-DNN 5.0" TFT 840x480 LVDS panel compatible string.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 35ba99b76119..a8937298c2f6 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -270,6 +270,8 @@ properties:
       - qiaodian,qd43003c0-40
         # Shenzhen QiShenglong Industrialist Co., Ltd. Gopher 2b 4.3" 480(RGB)x272 TFT LCD panel
       - qishenglong,gopher2b-lcd
+        # Raystar Optronics, Inc. RFF500F-AWH-DNN 5.0" TFT 840x480
+      - raystar,rff500f-awh-dnn
         # Rocktech Displays Ltd. RK101II01D-CT 10.1" TFT 1280x800
       - rocktech,rk101ii01d-ct
         # Rocktech Display Ltd. RK070ER9427 800(RGB)x480 TFT LCD panel
-- 
2.34.1


