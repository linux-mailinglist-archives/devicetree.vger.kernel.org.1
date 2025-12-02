Return-Path: <devicetree+bounces-243808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BA1C9D277
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 23:09:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 05327343C55
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 22:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8A162F9DB1;
	Tue,  2 Dec 2025 22:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TAkJOOoE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B952A2F7ACF
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 22:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764713353; cv=none; b=CWlIuVQLWWCc0QfIDEGIsc2QvOyY1eeKMBji9fUAAAQ1F6k7R2gfUSBCTmxL4Jracx/ELnxqhN8OZe44qlLGbxUXewmyanRPVMFEjJwBrZIF5toEJ/xRTNFAg05JssdpFh5Bt233CcIH4g8Qx9OhH59yt4fb8HmJ+pAxTN25kh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764713353; c=relaxed/simple;
	bh=hmzAGm2KV+/8JNbNSevtwuUcM8ZgD/Dyr/satwDJz+I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FakLWHfp1lx4jq7dEohYyPaNHgcXIKqf8m6KMiMh9owgkBqoaHVNNesIIC1ZPVIqVm0kIBhpSi2OjgyHbvyQPUlQJ+rnCdUS6fNz6d+xju+g8UPVppXlBxRzrsVqD/QTuRPUrLt/U4O6D/Qjzz44z6k9yMY0BIIO1yDd7PuXSvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TAkJOOoE; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-477563e28a3so1881265e9.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764713350; x=1765318150; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JSLkiY2zvImHUDZbOwBQtO8/4saKzF7QG8VA5Q/K3ls=;
        b=TAkJOOoEKBYXrZeVLdP5yf85y8zAzlrRPIKZ0dBU1qa7N9POZdOWtM2L+qHfh5SJhI
         s/MwTVs2o97PiG29OxBVbLEIOKXTIKpuIwf0SzhkVNLgf0T5fVKYWGnmn0CbCAsqIJNC
         mCsJP8Yp0Ect/94YhXckz448+h8WgXZCK/xjX03d4X8UQWSBm0u4HfNYNeZEczVybZTW
         +86oEkgmCG+oiAST8GksUfHzJMyNeLcXtbP3EnspkSyjh/0SkFWQLrqnsSKD6Gin1mho
         lFX+fdgyhKmfxtFZpV60eOZ/3x7h3oSw3t+tuJLujR+eHFXvRzH2o+rzEef4vE5oaUTP
         DUTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764713350; x=1765318150;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JSLkiY2zvImHUDZbOwBQtO8/4saKzF7QG8VA5Q/K3ls=;
        b=KBrvgyY1GqBLL/SFUMYDXPYpcggWZLhZqe07DIZvA2aSLXv97I52XcFwzUgwrhBuKd
         uiFaZfTlj9fUTbnByubqv5cjc+x1Ovt1KQin/XwkPhpAx4eXy0kBTZB61yXxiBiKgJTF
         oWhPD/hjTGlGWZhAySzf0HegIaYPMZVN3gVBRp2te5dxo9VkAUydNy+092ewVSoyqFYv
         WLqY995IXfCQCnxfd1bE+W/2BKoRf1F/FwMN4/sVxJ1Vodf+4p5x0DFmlJdfIS+y/6OO
         Na4qTC/gs2sW8P37jSPlENewn/n4nNFyIOPMLUS18gXxkwyvf3TUpmxGTupX+bm+1Nh8
         xk0g==
X-Gm-Message-State: AOJu0YyEV/UL7M04nT2wA5c2179ddxnwo2ONtdPu9n+ltLkgnZFo+Gl8
	OFzV9RnqSv5JsNy0vtKyhoKrnmAvRl4faQM6cj7UW4MjYtFs8TNGPIBG
X-Gm-Gg: ASbGnctoYmBtKCWM8MKYWMdAT9FxmTYJTV5bSTlpEuGjDAICF5YV8clqFg0fwH0/pts
	gdcT3BjGbTHuyrQELtXIaiPeynWO8lcHUuhNzwrdnZg6zV4+tlIIHMdl2jG0vAegWB/HU2//I1j
	GjTib/mJzQznsB19pNPVVgSyoMY3Te9AYaFtq/4Hp+C2SWLPPJwhPyLceqSL+lGgsY0oEt5Qf9Q
	CYaFnt9VqhYzMo3L0H82KlQu8hi3HLROtjGaKhRCdwkcos8xo0ObTKplwPwgzZKbnGQA8kvLgGM
	KNRHM7Fdd90eirqzFqZwnCWdwsmCg/KkYAJE6VYK3he//yFdWxGJoKNmvaG2XqPpCa9C4bSha1Y
	uqe3ZqlN73Ketz2IPVfsAWBRCojh6nAbPer3ciAMGGt4M2giSTDets81Olhi32JED4EL8fpPf/V
	Q0zXBRYuvsLngQElnstkycgK5wqulu7qOfakjp
X-Google-Smtp-Source: AGHT+IFa4GbiRXpXHQJ7qzlsxieJBhAIZGPkTWaihBlWgwkhaDnomrokxbDrSKdw1Li+bI3Q3V3kgg==
X-Received: by 2002:a05:600c:1c25:b0:477:9fa0:7495 with SMTP id 5b1f17b1804b1-4792af4311emr1823995e9.14.1764713349971;
        Tue, 02 Dec 2025 14:09:09 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:d253:f5eb:2f9c:dde7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792a79760esm11534795e9.3.2025.12.02.14.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 14:09:09 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Subject: [PATCH v4 0/4] Add support for Ezurio MediaTek platforms
Date: Tue, 02 Dec 2025 23:08:45 +0100
Message-Id: <20251202-review-v4-0-93f5cd2a0d4a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG5jL2kC/22O0Q6CIBhGX6VxHe4HMbSr3qN1QfCjbCkNnOWc7
 x54ZavLs33n7FtIxOAwkvNhIQEnF50fEojjgehODS1SZxITDrxiHBjNI3xRWQFIXsmmaRhJ42d
 A695b6HpLbIPv6dgFVF861IIJKEp5gqqmjN5djH4oWhXmS9sr9yi073Ovc3H0Yd5+TTxXfy5Mn
 AI1mhsrBKKWuCvkC1P5XyuTBtI2yspSMGv22rquHwDX/qQTAQAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764713347; l=2814;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=hmzAGm2KV+/8JNbNSevtwuUcM8ZgD/Dyr/satwDJz+I=;
 b=Xj8Lo8dDuGarkgHqaWbPYbE0zlRP+EF5lB/j8o9yyNKhDUHj9nD4lAruzZtpbZugLaG/Jepvv
 kL6mTPyn7ysAQGJUs/SRBYUe7iKdEnUWAwHQYzR3l6KPJ1N2sFj2+a4
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

This series adds support for Ezurio MediaTek platforms called
"Tungsten". It includes support for MT8370-based Tungsten 510 and
MT8390-based Tungsten 700 SOMs.

Changes in v2:
- Use b4 to cc all maintainers properly
- Squashed patches 2/3 together
- Updated dts node names to be generic

Changes in v3:
- Added per-commit changelog
- Added missing Acked-by on 1st patch
- Link to v2: https://lore.kernel.org/r/20251201-review-v2-0-dc2df44eec7e@gmail.com

Changes in v4:
- Fixed remaining DTB warnings
- Link to v3: https://lore.kernel.org/r/20251201-review-v3-0-07f9af7341fd@gmail.com

Regards,

Gary Bisson (4):
  dt-bindings: vendor-prefixes: Add Ezurio LLC
  dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
  arm64: dts: mediatek: add device tree for Tungsten 510 board
  arm64: dts: mediatek: add device tree for Tungsten 700 board

 .../devicetree/bindings/arm/mediatek.yaml     |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 arch/arm64/boot/dts/mediatek/Makefile         |    2 +
 .../dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
 .../dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
 .../dts/mediatek/mt83x0-tungsten-smarc.dtsi   | 1481 +++++++++++++++++
 6 files changed, 1523 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt83x0-tungsten-smarc.dtsi

--
2.43.0

---
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org

---
Gary Bisson (4):
      dt-bindings: vendor-prefixes: Add Ezurio LLC
      dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
      arm64: dts: mediatek: add device tree for Tungsten 510 board
      arm64: dts: mediatek: add device tree for Tungsten 700 board

 .../devicetree/bindings/arm/mediatek.yaml          |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 arch/arm64/boot/dts/mediatek/Makefile              |    2 +
 .../boot/dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
 .../boot/dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
 .../boot/dts/mediatek/mt83x0-tungsten-smarc.dtsi   | 1510 ++++++++++++++++++++
 6 files changed, 1552 insertions(+)
---
base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
change-id: 20251201-review-750072579991

Best regards,
-- 
Gary Bisson <bisson.gary@gmail.com>


