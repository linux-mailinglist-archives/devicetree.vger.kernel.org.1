Return-Path: <devicetree+bounces-232110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6CDC144F9
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 12:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 498874E8D14
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 11:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC529302150;
	Tue, 28 Oct 2025 11:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FasfVChE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03ADB2FD696
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 11:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761649882; cv=none; b=eE9Vq4pJtEDYh9XIGXyCFNUeNbvk5MpYbBSWhf7v2LS4W6bShrRmUcUmOK/pfwqAS4/Nara07M/ekFkLUeLIEcW70TqnLYJ6tfWYOL+ESr2kvgyzvUKPkLNxatpR9sACTTFDKS3QvE9WDct3+Xn/hVTrTJ9oQBp++WcWG42aOoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761649882; c=relaxed/simple;
	bh=4qzCYQcrCmvs1fI1Y2jGeN1q9TLaOaKK5NL7b0UxVTE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GTjRItanv8Lseilm3NOVje8s+GiMMrOwPpO2H39Otdq/WCNVKgmbcctLBwGx7bt59Un8lJAaN6eu0BMMiqkzPlDvC6i/1b/RaE4Gv7bYZ/ZmV5cSImQFsznM83dobPZCNgZRl3PRjgAd6CbpstTLS4oe0mZVQPuR13T5XVjE8oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FasfVChE; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-472cbd003feso4458585e9.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 04:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761649879; x=1762254679; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NvBepMQaluNKHheiFuZLoEpaFoQ4R3PwHCfLsenXn0o=;
        b=FasfVChELow0zHK9NCh45bNPvfSrp0dgfoxwIPiRZjy3XQMxGw06xutf+9rwFL7vYz
         RhNHPbAtq9Y6dc0bws/vZhsnlGT3AwjxarnvJVe2fTsozTZ4bzraNM8jXfKhM8Fe1wXV
         FFRDALplmm+kMsZyxIrPF71Aoh+XtNkj31zAGBVXpFzW2IdoXBXH4/Qh29GWrJtXSqB0
         PJDNi2j7Pa6El818EAXatXihZ4+7EAa0klNyDKf5cA5OiZmFo2cxQoZBG4ol6pTW/lYw
         YXkgKoJrERa3/U6yhk/hfoEZAL5+cBQGz3vRBbos7EdynIsO22Xj+OJHbsJ1B4H8KnLY
         MFuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761649879; x=1762254679;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NvBepMQaluNKHheiFuZLoEpaFoQ4R3PwHCfLsenXn0o=;
        b=uqGqAUzxi51/C7gMU1ng7h6WeG/wWUoX116sg15P3kzogrXxHh4m+fvOfZcTr3wVuA
         FiDyDqUwejcm/tRSXGbW094LskOIakpDCBHzJvE4014As6h97oWHee8Pf5UL5sshyV6w
         EG3HTvYjP8Z5RfRAvX+07l7tz8b5AHzncHhYVGxPtQc+PH+zKidL3wLbEB+TBcWwjeeG
         QCOOLcAt2v50Ui/vVaUfeUQXS8EeSGgYFEm+O0YdUryzfoF57mh86GI1g9ed5J17Rhgh
         +CsWy3O1jqNeII++71BN3//efGMf7So91WLCwXhQnKgLDUEEAzNPHHRD/BJ0F/f8QNKO
         jwKg==
X-Forwarded-Encrypted: i=1; AJvYcCVyMEuOoDYeoUSVt3PLiVbRXDwdKf3OqQ+c6hobthUY2o8L65g0NO2IcjHEPTfrgCp/7Oz7SIVVzfNQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzEltz/GkXPJFrvYthLijqHGddezX7d+EkjDZktLDFhp5NWBWZ2
	M01tAD+kNeRW3IzguY5lEOCsyK2h162N7wU7MAoA6ORU/gp4UUIiMv0ddmmr0+XWmC4=
X-Gm-Gg: ASbGncu+OmvHRCaYiHuREegI4vFHpXl/fmOHBCEydBTqtMT6Xm045w1X8dzqRIuqOs/
	lTPQhwaw008ynrwFJ6marOtW7gmR6xAfjWOm6TVV5nkMcFTIuxVFMlzuRnTrWlvOs2UDcv+5F5I
	0x98O1nLHgCL9DeqaMuruWk4v6NNCmmKbwR/bb/148o7JvnHl37hzwwiUzbrFNl9SPJ8HTCcyR5
	980iElqMnPp4MgVtjZWRsI+wKdHeCg/oV6fffLbT2KdW3NvMhgMUGcXC3yFF7ww2j9b4BEIiC9V
	nkl4A3gckZN7FNa/dxBSeM6Hi2JwT4c0hhJqTHnHEYtv+fKc5ggGwFiV0bzTGhBCzoHuNqstGej
	+QHT5JyApHk/KdAFp9oA1nxw09BLv/HFu+uuPsFd4pQRccPZyAPFlvSBtQBS6XnUCGGmGpHC4dm
	IYRynwGzgXeTbL7tZTBBo91g==
X-Google-Smtp-Source: AGHT+IGp17y0AcHm5V/8RFGmqH7SfEi8yaRv3lm/N2wuwDnD5uW4xhUCEWW3XzRmWpPyCMaaL9vIMQ==
X-Received: by 2002:a05:600c:3507:b0:471:1387:377e with SMTP id 5b1f17b1804b1-47717e787b0mr13605665e9.6.1761649879245;
        Tue, 28 Oct 2025 04:11:19 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47718fe6382sm17268505e9.4.2025.10.28.04.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 04:11:18 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: "Bryan O'Donoghue" <bod@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] media: dt-bindings: qcom,x1e80100-camss: Fix typo in CSIPHY supply description
Date: Tue, 28 Oct 2025 12:11:16 +0100
Message-ID: <20251028111115.46261-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct description of the CSIPHY 1.2 V supply
("vdd-csiphy-1p2-supply"), because it supplies 1.2 V, confirmed with DTS
on the mailing lists.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/media/qcom,x1e80100-camss.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index b075341caafc..b87a13479a4b 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -124,7 +124,7 @@ properties:
 
   vdd-csiphy-1p2-supply:
     description:
-      Phandle to 1.8V regulator supply to a PHY.
+      Phandle to 1.2V regulator supply to a PHY.
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
-- 
2.48.1


