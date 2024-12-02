Return-Path: <devicetree+bounces-125899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E75B9DFA0F
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 05:58:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03A2116229C
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 04:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA9D51D7984;
	Mon,  2 Dec 2024 04:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Z8Ki21Qy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D521D5CF9
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 04:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733115486; cv=none; b=PSo9hhQARTUF0LgTUHgARml6kpo8nAXgCZENx8gDAa+Ss9eniTLwAPbUkcE1uyec8OFeY7qKmi/TG4Lsk/myuPItnvYDWoE/ViPzxcmDH7Fz3XSw4naCEEkOQYbYi2jD3W3WZL03kh2CHmz75OcsQ6A9tb3BD6gNQANlOJzUNCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733115486; c=relaxed/simple;
	bh=nwOnFLjkl/AZuun/GsZ/MT/Esupxc6jZTrkx7WlRFtw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IF02xH3V10hpgcdXItRNUcVfupSpHAFPmgiiGOaUbJc3RC/nAyNnXNSionL6s0ihG5BfwCh5gKGglEqkmjXvL4m76yfZ1OhgkhZ3uh7ysSHUUpiYVCiC4FH50ncmAgTEoflE3dEaXz3HEK8RbaNBFw5QNqJfhM4gRe4iYm0DtHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Z8Ki21Qy; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3ea3cc9a5ddso1867642b6e.3
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 20:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733115484; x=1733720284; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vDhO31tk1fZx5nO1D34ac67vgcEF+XlfAfCpGqdW5mI=;
        b=Z8Ki21QyBsU+eNA1HqdAEMXlqb8i6Lqzc+ho+oawDBf6rqhZLn6l2zV8SvyIL+6Ov8
         k2yo2xowBhYTJqQK0YVyFVncFpUBCSzwAwiIcaREDtTifvsh7tp5Ku4aAHWKi7DQQgHZ
         zuF5ez44A8VthW+XNgkVDBN8Kqn43nhqIDYtc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733115484; x=1733720284;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vDhO31tk1fZx5nO1D34ac67vgcEF+XlfAfCpGqdW5mI=;
        b=Jd3CXUkcyxlJnbm0FIevi30PyiDcJn7iBIZnp+HlYWy/z1kdiXrxpG+WESqQilYikk
         GMjF9724ZZ1CD9xbjo3+OnKeFswL1md7P1XRHLc1WHHcf8Ltp+uL/xGRVXFCXQX0w+Qb
         Iqhf7vBuLaJebr2EzEUo/v+ZqAe3NnRnoSYJ34MpIqIuWUxDL0fSt6gIvS1uZq//rtSd
         fqRjz3/5yH+snkzu2FdeDxPbUzs/3YIwqtfT9/httUGUs0UhJGTYQMLmHrF3wgGQDKOn
         CjxKBQz4sDUcWJAF57TiYpZq3I9TZoo1EqraHtNGzkGS4H7cualCJjV1uni6o4BCaSd4
         GJ0w==
X-Forwarded-Encrypted: i=1; AJvYcCXO1GB/FpLfHANiaPFMDiIYSlNTYi70aSJqXIO6lkXbIei69q3A8GS93rwqAM58HG+pt9mvG5bP//ee@vger.kernel.org
X-Gm-Message-State: AOJu0Yzsj60DtHvgJtpOqqot63vGni+kpnHmJnncSryADT7GPFld3mKO
	0exfY+KJI/S2IWCnmIkK5yeU0fkCF4TbpXuJxc5aE5cgX5YsleRxI5ilwqDz0g==
X-Gm-Gg: ASbGncuzBf5NSykH7xDpzB3TwsTEO6ed+A2oyVKFR5ZDp5gNVyQ+0MHrVyoMKAC2asw
	zvg2TodkenHhTRwooKItiRScNzAdQucxI8o0t6cA3bULqT6An5Ial5Tdyb7LvsefGtTyyLZYVrh
	SoK5fs9qqe9+OziP+yxHC71BmuMj+xXcfgu3LopS+yVgJbUUD/TrkKf9/Ktof0SYoOgkAVIvOxP
	XI2S1h1xbWDVTqo+JZIqMkpxeCrfQtZJrRkdV/eLR9sZ4tFcCytqzuTVhAHM8V8o1j0
X-Google-Smtp-Source: AGHT+IFb+ZRLH+3t3GZ+Wqs0KteaVy0F6ImlvlAlGAnh/Pchain6QOhSaXFDzaByBXFgCM7QNb8V/Q==
X-Received: by 2002:a05:6808:2018:b0:3e6:3860:596b with SMTP id 5614622812f47-3ea6db6410dmr21148963b6e.8.1733115484363;
        Sun, 01 Dec 2024 20:58:04 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:94c8:21f5:4a03:8964])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fc9c2d5be4sm6970599a12.3.2024.12.01.20.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 20:58:03 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>,
	stable@vger.kernel.org
Subject: [PATCH] dt-bindings: soc: fsl: cpm_qe: Limit matching to nodes with "fsl,qe"
Date: Mon,  2 Dec 2024 12:57:55 +0800
Message-ID: <20241202045757.39244-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Otherwise the binding matches against random nodes with "simple-bus"
giving out all kinds of invalid warnings:

    $ make CHECK_DTBS=y mediatek/mt8188-evb.dtb
      SYNC    include/config/auto.conf.cmd
      UPD     include/config/kernel.release
      SCHEMA  Documentation/devicetree/bindings/processed-schema.json
      DTC [C] arch/arm64/boot/dts/mediatek/mt8188-evb.dtb
    arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: compatible:0: 'fsl,qe' was expected
	    from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe/fsl,qe.yaml#
    arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: compatible: ['simple-bus'] is too short
	    from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe/fsl,qe.yaml#
    arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: interrupt-controller@c000000:compatible:0: 'fsl,qe-ic' was expected
	    from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe/fsl,qe.yaml#
    arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: interrupt-controller@c000000:reg: [[0, 201326592, 0, 262144], [0, 201588736, 0, 2097152]] is too long
	    from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe/fsl,qe.yaml#
    arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: interrupt-controller@c000000:#interrupt-cells:0:0: 1 was expected
	    from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe/fsl,qe.yaml#
    arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: interrupt-controller@c000000: '#redistributor-regions', 'ppi-partitions' do not match any of the regexes: 'pinctrl-[0-9]+'
	    from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe/fsl,qe.yaml#
    arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: 'reg' is a required property
	    from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe/fsl,qe.yaml#
    arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: 'bus-frequency' is a required property
	    from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe/fsl,qe.yaml#

Fixes: ecbfc6ff94a2 ("dt-bindings: soc: fsl: cpm_qe: convert to yaml format")
Cc: Frank Li <Frank.Li@nxp.com>
Cc: <stable@vger.kernel.org> # v6.11+
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../devicetree/bindings/soc/fsl/cpm_qe/fsl,qe.yaml        | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe.yaml b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe.yaml
index 89cdf5e1d0a8..9e07a2c4d05b 100644
--- a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe.yaml
+++ b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe.yaml
@@ -21,6 +21,14 @@ description: |
   The description below applies to the qe of MPC8360 and
   more nodes and properties would be extended in the future.
 
+select:
+  properties:
+    compatible:
+      contains:
+        const: fsl,qe
+  required:
+    - compatible
+
 properties:
   compatible:
     items:
-- 
2.47.0.338.g60cca15819-goog


