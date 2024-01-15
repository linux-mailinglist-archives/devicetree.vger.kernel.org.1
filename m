Return-Path: <devicetree+bounces-32127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4CA82DF48
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 19:22:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 018FA1C22073
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 18:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B3CB18C2F;
	Mon, 15 Jan 2024 18:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m2/Owckg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DCD19474
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 18:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5542a7f1f3cso10968573a12.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 10:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705342845; x=1705947645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yI0z1EBMjyfzrrKKJYC9G/TfAYY0KS2lk1QKsvfTpXw=;
        b=m2/OwckgTgVR1/ZFdbkgjKwZaZyQzcl+v3+/gxh0QV42FtjLjlt2c92P1VEhu0LlWo
         DPK2E37sEQgNxYJONPTDp/lSVes/mssNQ+QMchs8vFil1uf3RBIFhhaK6G7dwAAhPeh4
         iPnSEv3OJKmBlndGgwVf5Xo1NB94E6vtQzj6HYcuxzn2weaF0Hr8wc4vh2Li0+P+KBR7
         pTRPBB1svyibToaF8XmkTlFB6IhLzVRZgfQw/wnK7ygpXMv8We2SLzatOY2k8bFy515l
         sS9JfZytf+etDFC9a5yvSjaeEK68N+KmRurn1hOAk4RdBGNLES3dojS4dxKzWn3RhJ3z
         VACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705342845; x=1705947645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yI0z1EBMjyfzrrKKJYC9G/TfAYY0KS2lk1QKsvfTpXw=;
        b=DII7p30IWEh6viX7qmWt0YghNMZjQlQKkSBgD+r7c1qfjbpW8szapH2/Q67RAkejLo
         bNA2Y6uHa2aFYmZrdgHtU2p3vtkKCZqoeUmmHVgulYYNi3aOa5jcW4Vb8Ayst6pEzILH
         OBW/49sMuZ0K210rXqvELx1wTY041LJDq0Fa66Ful8iXxOavcWmAgD6j9qiVnXWK4DFw
         Bt83BjqpuJuexOkoCW+Ck7+KP7IWr0zyC6/J/P/9f52FPM1Uh0oy5Vpf+4fI5dID0aYw
         IFDjFQ1k3mUMua3/BzrgAmRc1eEEAQewHuV9nlks4G+//EL79ystxqjmHyd5U8IB0In3
         9d4A==
X-Gm-Message-State: AOJu0YxLc8vkyg5QNeTUY0zgeFAV9GJL36KDV4cqMUjyG4R2atCtXESh
	KM4ymj7o8v8FKhYFsXZcsBuuaYt9ERr0hqR6Bb3t9k2zoCA=
X-Google-Smtp-Source: AGHT+IGnRpCOOr+n+ZPFPjAXDPvj142P9E0o/W17+Ui/ChpAdhCEdlTKK2f3b/LvVE1QSl+SU/KlpQ==
X-Received: by 2002:aa7:d88c:0:b0:54c:b889:9c12 with SMTP id u12-20020aa7d88c000000b0054cb8899c12mr2647466edq.18.1705342845122;
        Mon, 15 Jan 2024 10:20:45 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id c25-20020a50d659000000b00557c51910e4sm5944434edj.85.2024.01.15.10.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 10:20:44 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff LaBundy <jeff@labundy.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mfd: iqs62x: Do not override firmware-name $ref
Date: Mon, 15 Jan 2024 19:20:42 +0100
Message-Id: <20240115182042.1610134-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

dtschema package defines firmware-name as string-array, so individual
bindings should not make it a string but instead just narrow the number
of expected firmware file names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/iqs62x.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/iqs62x.yaml b/Documentation/devicetree/bindings/mfd/iqs62x.yaml
index 044cd7542c2b..f438c2374966 100644
--- a/Documentation/devicetree/bindings/mfd/iqs62x.yaml
+++ b/Documentation/devicetree/bindings/mfd/iqs62x.yaml
@@ -31,7 +31,7 @@ properties:
     maxItems: 1
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string
+    maxItems: 1
     description:
       Specifies the name of the calibration and configuration file selected by
       the driver. If this property is omitted, the name is chosen based on the
-- 
2.34.1


