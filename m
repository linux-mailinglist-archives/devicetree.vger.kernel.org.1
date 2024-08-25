Return-Path: <devicetree+bounces-96447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 459DE95E2CF
	for <lists+devicetree@lfdr.de>; Sun, 25 Aug 2024 10:58:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E24501F219E5
	for <lists+devicetree@lfdr.de>; Sun, 25 Aug 2024 08:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF35378C83;
	Sun, 25 Aug 2024 08:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fNcStfC/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1299F768FD
	for <devicetree@vger.kernel.org>; Sun, 25 Aug 2024 08:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724576272; cv=none; b=EBFUgmc1GvFInjKxgwDaQnaw9uIK+ME5FpcrpUc3dxevnKbhlsSl08VT9j9oDL5zND2+rWck2XykvP/guqwMwk4T/Sg/+LbfAjyLm7GA05w1c2WD64UreDvIOyAl5i9aTnFyJMGRYXqu25GkzuC34GxA/R4n9Zk8WXFDoLYRCGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724576272; c=relaxed/simple;
	bh=1J6BWW2PKL0LZoDDixa5BAHxaPBO3B1K4JK5Epy75ZY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AaXxv8zsE0yoN0xZNPJFNGFWCFt/2buxMFuK9rOKboCUWzh+MhwD8mjIiIoV1xTvsznMWQrnT8/mGb0+uXjIOYAVpJlig0hSKBU5VqDqZC+sR0Zdm1N+E4A+EnobXQ0PSetZeOAceuV7HLs1qWJVGawQ+vOrxssYqkL9JApuIVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fNcStfC/; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4280ef642fbso4110725e9.1
        for <devicetree@vger.kernel.org>; Sun, 25 Aug 2024 01:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724576269; x=1725181069; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RJtwn4ZxojcRke0143CcWqq6cxB8ohpeltqblKHrcIk=;
        b=fNcStfC/XRuhIFy0TnXRT/LHECsxphyP9N3esc38VvVq+JqI9MLiLkU6ERcCjH1wJH
         dWjnQiawQOY4unvIaqjaZRQDqPfLLZm9ukR6xtTFX/ys3Jh94Hph4PJ4kP30+oviDUkI
         DLv9BH4hVAgxcJKJmI4ic26kO/oL8RZGiPKeUcd6B5KYT14Ye2WirWR7pqIAiqi3jGmq
         nRFxZmpDloUaFAH//gIML25Hx71qpLmBTf/0IhX0xHgdJ81xDnT1bkTgg0b+HztOW8UU
         9HKBIXpf3Nd6Dujw6FH/6JcyHGFuT14gV1vqjH5WecRQElHMDIhhM8LMyX06tat8+/dG
         RT6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724576269; x=1725181069;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RJtwn4ZxojcRke0143CcWqq6cxB8ohpeltqblKHrcIk=;
        b=eudvWLUe6jwPkkYj4ENLHmMf6+5mapHQB5h4n5718rnACZO7YIJmL45PTUeC+QKvfP
         okC6zD9VL1p1L+uhiyQxUbMnTydHBrVRwRg/2pt6oPhhcbfid0GN7rPG+sbuJkwjjKFY
         DD47IVgKiFNMtygnLOZb9Ipg4ODzBrvdW9+3463vtV4vlNZytjupe9eAXbpvk96wy1wz
         Pfu+Wixh4gckNpV8rT6Oko+eklbo0MJR2xtWsFVg6K2psMUU99bby4+d3qjg1kbtI2Qo
         cgpS6EnH4NhbL+xVG1t5fPUm6yBQjxQ30NmwOSsi8OYr7/B2KPcNLEK+H2bcHPVctaF8
         Fqaw==
X-Forwarded-Encrypted: i=1; AJvYcCV+cUlcT5LvfiMtXFfYijEDE6w1FuHMp1dLpDnBKf+tWDFFlNAsL1Q5f0wo1hNhZ0q864yVBPMOmQPo@vger.kernel.org
X-Gm-Message-State: AOJu0YyfgUaR1WvqpdUFhy1dfgN5gbJnPkcDDSCB3y55oieky0x8BAgp
	Df8VysHBKBjp7DnFePOYPjRwff4O8Ac4WBmaq6RgAYASVlTxMrmmPpxls4Jl8bE=
X-Google-Smtp-Source: AGHT+IH2giCB6AK7UOeGgPjHxZzeVMkrTX0peXsvssYIaa3ZOlWUGHmwGDlXFRjxw2dLm3mN2IDBOQ==
X-Received: by 2002:a05:600c:3b8b:b0:426:67e0:3aa with SMTP id 5b1f17b1804b1-42acc8d50f1mr30009775e9.1.1724576269155;
        Sun, 25 Aug 2024 01:57:49 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42b8a351d3asm57432765e9.13.2024.08.25.01.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Aug 2024 01:57:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Shenghao Ding <shenghao-ding@ti.com>,
	Kevin Lu <kevin-lu@ti.com>,
	Baojun Xu <baojun.xu@ti.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: MAINTAINERS: Drop incorrect tlv320aic31xx.txt path
Date: Sun, 25 Aug 2024 10:57:45 +0200
Message-ID: <20240825085745.21668-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

tlv320aic31xx.txt was converted to DT schema (YAML) and new file is
already matched by wildcard.  This fixes get_maintainers.pl self-test
warning:

  ./MAINTAINERS:22739: warning: no file matches	F:	Documentation/devicetree/bindings/sound/tlv320aic31xx.txt

Fixes: e486feb7b8ec ("ASoC: dt-bindings: convert tlv320aic31xx.txt to yaml")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 1 -
 1 file changed, 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 6574b4910f8a..028186bb4e8d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22736,7 +22736,6 @@ F:	Documentation/devicetree/bindings/sound/ti,pcm1681.yaml
 F:	Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml
 F:	Documentation/devicetree/bindings/sound/ti,tlv320*.yaml
 F:	Documentation/devicetree/bindings/sound/ti,tlv320adcx140.yaml
-F:	Documentation/devicetree/bindings/sound/tlv320aic31xx.txt
 F:	include/sound/tas2*.h
 F:	include/sound/tlv320*.h
 F:	include/sound/tpa6130a2-plat.h
-- 
2.43.0


