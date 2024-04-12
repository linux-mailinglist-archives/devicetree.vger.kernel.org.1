Return-Path: <devicetree+bounces-58597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAD08A280C
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 09:31:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 46209B24A6F
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 07:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D2B54C3C3;
	Fri, 12 Apr 2024 07:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AORJLYS/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979464F8BC
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 07:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712907057; cv=none; b=BBANl7fGh09S5W+9WKMpXh9aTg42JNt1D3YIdlyzmf24xYFeAnB3GVmLwbdKque7paDumqMdjaeefWQJWn6uuqTMyoEoXNteAHQf+uxg6175l1ngvCG3YNEiWh03qJmYg3gifE4+zAUfunYF8LJxktIEHSIFyz/hUC5ixhFZkYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712907057; c=relaxed/simple;
	bh=ELyJ+CJCoG1IVqX5X75YSbhALkKqT4a5dFGLgQ4/ZnY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VXUCoXf2UnlTOfecQ6Q5FOygn3QUdc+DegjoFYOpcqbpgaglwUcHkGrfed6Su8ITr5gelNcOQPGSwOv1hcJt5itHPUnFAcZcRXDGUEUCEi/j+QzsM/CVr4EHW73dJdoMMA/IsQsSYrn1kvfARlmVUHKGaqhyWK6SDK7wm/mlUNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AORJLYS/; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6eced6fd98aso630238b3a.0
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 00:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712907055; x=1713511855; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0kD8JSa/wlHNA1KdEJbBxgwZ9LZz09AqTXMn/5iB0iI=;
        b=AORJLYS/dU7fiuNfY1ETrdUwSLycDelJzn+mTsKDfbxyLAJLph9H4SvFMzzPZAaZzd
         zXDOb1GbJ6gGbUo++HWnu3mwBFMod1FhB7zya0NmI6kNi9Of6yA3YGgep1spOmwJdAhK
         SDetk1ghfShTvJRWYQs0wWq/IJuEMrz8JpIWs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712907055; x=1713511855;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0kD8JSa/wlHNA1KdEJbBxgwZ9LZz09AqTXMn/5iB0iI=;
        b=F1c/lrhfspcY8hvWceEEUUk7T+6nXgGY4+gQ3UyxAvu+nQyLM2Tip66KRirseQQur+
         nj+hJjg9V9kePocg1yw0MibqThHPmEiMQL0K4pk3l/WI5YCr7CyMizrl/O4MldB4TFdo
         tF60XqMLdtxZNuiYU5WqbCv21RPZ7DHjbpWktqkArfNchQ8I0j7CjSCxoKGh9vtGrCIZ
         1lwnMBtkAcW3s+m9ITt+w0aZdz6o/XRRanh3hGVJb4EOaS5O9NZNUceRLKk38gAtBpJg
         DcGfwn3VMkhIPesXtfkvViMACQfB2V7oEP6KU59zUESmoXDPT8I9HQfwnO0MAm+ocf/d
         oUvA==
X-Forwarded-Encrypted: i=1; AJvYcCUjkZCJugADteEvtWeN0ebZuRX2afGlXMaMrCySD4GZnsfQmktXhSRrleNH1vzimtlaLsyR6+8PhbYi6YHpmWN6lrmloxN93jb9QA==
X-Gm-Message-State: AOJu0YwnOorQkD9oxFlOTezu5CSCaQuH1Id1V4q1MG/4Hm0yYKwj/ZoA
	1BHAa5Nc/TX/DaaqzPTsruZsO4Osxoki+8MDo+IdyDjrAkkcomophe2lSutMsKvvnIr9+x7FXJM
	=
X-Google-Smtp-Source: AGHT+IH9TJ0GU71I2lqJVSkEubfs2YUSVV/7k6TyMcFaUg5ykPaPZHNJ1QhyNg9VCsr2/J7KXJRL0w==
X-Received: by 2002:a05:6a00:3d44:b0:6ea:e841:5889 with SMTP id lp4-20020a056a003d4400b006eae8415889mr2368095pfb.33.1712907054781;
        Fri, 12 Apr 2024 00:30:54 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:e3c8:6e1:dcfa:3e8c])
        by smtp.gmail.com with ESMTPSA id d6-20020a637346000000b005d3bae243bbsm2149609pgn.4.2024.04.12.00.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 00:30:54 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Sean Wang <sean.wang@mediatek.com>,
	linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] bluetooth: mt7921s: Add binding and fixup existing dts
Date: Fri, 12 Apr 2024 15:30:41 +0800
Message-ID: <20240412073046.1192744-1-wenst@chromium.org>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

This is v3 of my MT7921S Bluetooth binding series.

Changes since v2:
- Expand description and commit message to clearly state that WiFi and
  Bluetooth are separate SDIO functions, and that each function should
  be a separate device node, as specified by the MMC binding.
- Change 'additionalProperties' to 'unevaluatedProperties'
- Add missing separating new line
- s/ot/to/

Changes since v1:
- Reworded descriptions in binding
- Moved binding maintainer section before binding description
- Added missing reference to bluetooth-controller.yaml
- Added missing GPIO header to example

This short series adds a binding document for the MT7921S SDIO Bluetooth
controller. The MT7921S is a SDIO-based WiFi/Bluetooth combo. WiFi and
Bluetooth are separate SDIO functions. The chip has extra per-subsystem
reset lines that can reset only WiFi or Bluetooth cores.

Patch 1 documents the SDIO function and the reset line, based on
existing device tree and driver usage. I listed Sean Wang, the original
driver author and maintainer, as the maintainer of the binding.

Patch 2 fixes up the sole existing usage of the compatible string by
making it a proper SDIO function node.

Please take a look. Not sure which tree patch 1 should be merged
through? I suppose with proper acks it could go through the soc/mediatek
tree together with patch 2.


Regards
ChenYu


Chen-Yu Tsai (2):
  dt-bindings: net: bluetooth: Add MediaTek MT7921S SDIO Bluetooth
  arm64: dts: mediatek: mt8183-pico6: Fix bluetooth node

 .../bluetooth/mediatek,mt7921s-bluetooth.yaml | 55 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 .../mediatek/mt8183-kukui-jacuzzi-pico6.dts   |  3 +-
 3 files changed, 58 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/net/bluetooth/mediatek,mt7921s-bluetooth.yaml

-- 
2.44.0.683.g7961c838ac-goog


