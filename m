Return-Path: <devicetree+bounces-216968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BDAB569AC
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 16:18:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 231067A345F
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE92521883F;
	Sun, 14 Sep 2025 14:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bOaoBPDo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2767C202976
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 14:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757859481; cv=none; b=rLcoykGGj8Y7RTe0/UZuRyWOpy3U/QhXcquinsMTdUSFOuUndxsE65Evrb6CNb+GxbF3TwDZpd56Fjq6ufU2tWvvrjjD1CSiZ749NBpQDm4AXTOBVkCcN4D9t30l0diKnKkYNOhbAg/YMVIqZ+FlT/IGnsxHAbVr61jxz85B7Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757859481; c=relaxed/simple;
	bh=G/YgUWwYgipT54ZkK5S7t4iIid/jh16TP1NiVGcDIfY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XDfbvnhxHK99VzEwNv9L6bmSDRfYaVQ/qq6eNNAitAP0KOF9uWoQf7Pg0OWcl9PrRz6hIhhvGovIqSDhcCEZtDXHYPPIvoG95hSCJSAqzHXTljhZr+mDsmNN0RP4WUg3t3UvD6UULmk7jfPAkJe5q2e45qSNRi7uQ+OrjjfdiY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bOaoBPDo; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3ea7af25f42so129388f8f.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 07:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757859478; x=1758464278; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UA8yGhG9kMHYtx0Te9toutlRddNLKPlgFwt+Jj5ZBw=;
        b=bOaoBPDoCiLOai8Urih7VD5ZEWw8uQOxpdMbaMY+nhC+HuQE3Dud2SrUjgYNtQSV5q
         LW/hJgq9/+3WwWrTZ92ulIbpbuuBugVDGEm6HcUB2vkdkXSkt6rXlinhkxU0vUk6ocY3
         7/YelEm+ubW3DIvMKH/aYJDcvPbXH6ZIR82fImPTd98hk6L1EfAxGe/r+IS4H0g09MIc
         lcR8Mh9DJO7dLO7vl3XEPeMY0+7Bqm3H+lydqVxzFto1gv2vp4OTh3EH8I2IabtYMm5d
         cOS6vmCDrzBjQw8cdFA/PdFlZ9EQWAptwSCMlK5IBd6Sy/hby7wqwiaHY0Y847ReFMA7
         tbNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757859478; x=1758464278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2UA8yGhG9kMHYtx0Te9toutlRddNLKPlgFwt+Jj5ZBw=;
        b=BM6Mt9AOYxeDP51CHJrMoUSVKgtGgc0elGvdLxiZfni4ODE5sz1r/5/0lXsbeh7YVc
         WdW/yXuIUMxXL3A/0rrRv4KO46RZPK7yBtKIKSG05nQCju+c1p9kyWffjfxymFqsF5qt
         sJ7wLk/22n4xII7/YFNsQW2lIZj9T44LKUZLTO9DoK/qIvYU7tlRTbeTUdupagsJ4M/N
         CTKt57JFDiUM3q41ZEMHP6GQdB8wW4KWxHhpJkG4DxxgMq6sL8oHIJ+kiOBwwsrWV16b
         C7APtY4mI7R8QOW7BntBfdKqq9L0pQlhBNF/LhIsE9/SXlbcFstBIwVElbXzunGveQLy
         7bjA==
X-Forwarded-Encrypted: i=1; AJvYcCVAJ2phul+fsQK1Vv1LYvE86CTf57WhAZqNVD6dyGbCuHbUOa0pfcz70zm3R8B/b/9uRFb+NSho02iG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3O0riuF8IbG2xTB+2PZPt2GMp24zsiuSfZ+rCNq58psmMsI27
	8lcXGrW868dvSwas/lU/z9bgJfd0Ke4T4EhhpPz92T8rulWcA5S8452f
X-Gm-Gg: ASbGncsRDWwrF0i9VXzcsO4RaglIzJKP334Mophp7uhhabx2c5Ye72foIY5wdB9XJaO
	otyPBq0f7ykdum7NZkiOSKpWm7ArAMXq5Ye2zVoSYstsdvSWwrmnY5kQ9RmImSSrhPCpfDEcXN2
	G9QWi0JLwL+0IC2MA+0PSgJwW4aV4d5ySTWW7Owdbw4Vyuy2q3fxrrbrYfM4C+DXGC/14FRtoP9
	95r1Sy9vqBgaMK+TyJzwXNySXuuPWVeFbAs55oEtD+/5gTb3uN6Qjvbl/TIPVO1kh6b7OmvLVmj
	WcPoQH4hAY5bQP9aNvR65Rn5B1gZUUfbsm/PYVzfu4NHAa+AWC88A4pO336/SjJmT1X1GDLCUmq
	s6+VnIPC7JXO0N2WWyQTN43C3l1i1JgekLJ7m4+eDEXRBl6yucVnhyBGXX7DlOAqW0QfC8j4j4w
	==
X-Google-Smtp-Source: AGHT+IEVZ6Z6kRbK2/B6B8AOG5votgND2aiK+Fq2TrFsSb/gyiSqAj2GfqraBbQ0O5p8f224y8alHw==
X-Received: by 2002:a05:6000:420a:b0:3e7:5f26:f1f0 with SMTP id ffacd0b85a97d-3e765a13179mr8756668f8f.40.1757859478364;
        Sun, 14 Sep 2025 07:17:58 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm7319270f8f.23.2025.09.14.07.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:17:57 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: usb: samsung,exynos-dwc3 add exynos8890 compatible
Date: Sun, 14 Sep 2025 17:17:43 +0300
Message-ID: <20250914141745.2627756-3-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible for the exynos8890-dwusb3 node. It features the same
clocks and regulators as exynos7, so reuse its compatible.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
index 6d39e5066..6ecbf53d8 100644
--- a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
@@ -21,6 +21,9 @@ properties:
           - samsung,exynos7870-dwusb3
           - samsung,exynos850-dwusb3
           - samsung,exynosautov920-dwusb3
+      - items:
+          - const: samsung,exynos8890-dwusb3
+          - const: samsung,exynos7-dwusb3
       - items:
           - const: samsung,exynos990-dwusb3
           - const: samsung,exynos850-dwusb3
-- 
2.43.0


