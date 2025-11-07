Return-Path: <devicetree+bounces-236056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 62539C3F995
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 11:57:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3B8E44EA60D
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 10:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8BE531AF3F;
	Fri,  7 Nov 2025 10:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hon5MSbk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3814A30AABE
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 10:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762513064; cv=none; b=ZtRd/rpfO6sHbEAhwRqDJfjf7Sd9jvjEQc8RrynqW9SQDNEPX0FaFU2hDqlVJ1dWd2FyJnyFILECDbdG+vwrtBv3xHu/iIxgsm7aA+Sb6eL3OamTlKKT3usMAx2T5piHsX7Vvyv7ODpZPWJo4HgzMhbY8ejca6/nAA08VgCDukY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762513064; c=relaxed/simple;
	bh=MtUAharMghkfgFikQQxVmerqbi8dbZhpz9jCZHw96UU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=hRFroVfs+qYzFJ9EbzONB3zYxgNEjsOIOtrebS0YETd7TrFV6U9/Fzz7JMk8L9Xh6dyUQ08CWQzWWJXShvckfCnRsDRJUSw3SjqJgFpUchSkFgZm1SGefbJLAY6EHMUfvQUXTNSgn4q8TGHcwf4CVOJboR+yBRyE+PyNY7IhWFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hon5MSbk; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-340c1c05feeso562728a91.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 02:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762513062; x=1763117862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lqTPnG7KLHiRmXmbpAC+BgtX73fuTLC7mFIZ71oDNjE=;
        b=Hon5MSbkm7lYbPMZJismdYyXHCnGyDwpt7XOrTbJKPzZexO2gSN3MtY/c5TDoidjnz
         CpAxrJkdn3LrxUiGfBduQMB40EWwajXQu3SNUBWHRAYAq6oyghgmrw0k7p2RAyk3UC5V
         LEaWDuVw1WPAVZk4r1CYUHPk+deF8VDxXAXnQ0UHL/+QKzZ4wilH5VPyBiNz0g4Z0OAl
         BaI6EMh25KtsNGqkQF+0fgONokcR0n76bWuk9XEkhao8eTq3WWfpapQw6R8UXN7mqDAX
         3KatoRfHAh++zHVvFcLgG+0/n78cfhm5U2VQXAmTPQo618bN1nEjHys9gSwCToBGBk8b
         0VfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762513062; x=1763117862;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lqTPnG7KLHiRmXmbpAC+BgtX73fuTLC7mFIZ71oDNjE=;
        b=Ad50ipzDb9cOA8fQayiyTSO/vT+kDXOmP/8zE0Je7HS2wYNhhd+ghrxOXKWolM+u8U
         VBbaUcZpmSoKaSe2wKUhAhp3KskjegJxvmpcyqwrHR/mK7Nu73PvEAjjeKge0uGSCSUH
         dSbwJOZSo9OseiKCth5fD09zuEQI2hyUfVMourkgsT89dZkfTrzuH3G7eYV8CHndHDS1
         1mItiS8tDC7p63T0ChlkQjIxCG1mlj7KBxvb3i3lzwoNK4tleJso9eVvXZGtv6h7gqCl
         t6M+rVn5QZV496VIM2mI9MR4FUhOzfgoNEIgR3CrLfVUphXDooMX56PFF5lfpdT3PA4u
         JMGw==
X-Forwarded-Encrypted: i=1; AJvYcCXHvgubqc2ZWgWstVdT3ssnbab7jjM7z5Sf6g4ix/py3Y1MXJhbloX1p5BE4UAAtXr+qSyYybOMCK8b@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ+nzxI3NmNPHevGfXYsBM9DrtVYuJmgza4J1zoy+CETlMowcP
	z+yIwFWIPBtPwBAB7cpUwr/OQP20IbbKekrgxHKSBl261QZ4hzO2ZFYr
X-Gm-Gg: ASbGnctGjKfSzzxuP0mtXtZ3uv58LxdmkfZLlJuhRdRjCnMf/hJQ8yTg0OK7lVlK/NL
	6+EiHnUKU8eQjs4712MguXZCikWE+KD05oGHchbR4aDf/CTXuhHL8UK71VVKW+0r4uAk7JfYGr4
	5XlhJmAng4g40MqF35Fpk2+Mrqks4OQfdr2IlZsPM844LcPjOVfoG2Sw0OJI9cBpjF0siQXtn/J
	SR3l64c+1m9pFCZB/pQhLgK3f58XPEq0WLJ/XWfo7/8aquMr6aJz7OqUAW11+YKszQYOShA4eSD
	aGgc+fSmLb0g1jLoDMhzRBH+uwlbBiHv2ZX8lA0liJm2mZ9jY8nxw/+5IyTkYHtdmTBMwE+m4SR
	pSlGbSkV7jVW+Ym9+j4JplT3VJhzEoEqdbZ7QfLnN6TwuwynLaL/0nOBC0yrVImkbpLmO6YLN0/
	VGuRp9UrQXDLrFfhImf8THVCSJ+1GMIJpnXsNC
X-Google-Smtp-Source: AGHT+IFL090H+y5+mh17m1bLKU51cCqHI8tZfgEX5vdRjvOMBL7CUuF8lnsCkiZd2EU+SXwBJlQMZw==
X-Received: by 2002:a17:90b:3885:b0:340:f009:ca89 with SMTP id 98e67ed59e1d1-3434c54810emr2796493a91.22.1762513062358;
        Fri, 07 Nov 2025 02:57:42 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3434c30b96dsm2276332a91.5.2025.11.07.02.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 02:57:42 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v6 0/2] Add Qualcomm Technologies, Inc. Talos EVK SMARC support
Date: Fri,  7 Nov 2025 16:27:33 +0530
Message-Id: <20251107105735.1491273-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi all,

This patch series adds device tree binding and board support for the
Qualcomm Technologies, Inc. Talos EVK SMARC platform based on the
QCS615 SoC.

The first patch introduces the DT binding entry for the Talos EVK
SMARC board, and the second patch adds the corresponding DTS
files for the platform.

Note:
USB(usb_1_dwc3) supports host-only mode based on the switch SW1 on
the SoM, which is purely a hardware controlled as USB-ID and USB-VBUS
is not connected the switching cannot be handled from SW.
Hence from SW Host-only mode is supported on Linux boot up.

Changes in v6:
 - Clarified description of `talos-evk-cb.dtsi` to explain that it 
   defines common carrier board interfaces shared between HDMI and 
   LVDS variants, And It’s a single carrier board. HDMI and LVDS 
   share the same DSI interface, and only one can be active at a 
   time depending on a DIP switch.
 - Added missing newlines before 'status' and between the last property
   and subnode (suggested by Konrad).
 - Updated commit messages for clarity.

Changes in v5:
 - Updated commit message. (suggested by Krzysztof)
 - Introduced generic node name for can, dp, hdmi-bridge. (suggested by
   Krzysztof)
 - Introduced talos-evk-cb.dtsi, which has common carrier board
   interfaces.
 - No functional change in bindings file.

Changes in v4:
 - Updated product name to full form per Krzysztof’s feedback in
   dt-binding comment.
 - Hook up the ADV7535 DSI-to-HDMI bridge to base DTS file.
 - Add DP connector node and MDSS DisplayPort controller.
 - Added USB note in the cover letter for maintainers' awareness.

Changes in v3:
 - Addressed comments from Dmitry regarding USB1 `dr_mode` and 
   added a DTS comment.
 - No functional change in bindings file.

Changes in v2:
 - Renamed compatible to "qcom,talos-evk" (suggested by Dmitry/Bjorn)
 - Merged enum entry with existing `qcs615-ride` block (Krzysztof)
 - Fixed subject and commit message to use imperative mood.

Thanks,
Sudarshan

Sudarshan Shetty (2):
  dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
  arm64: dts: qcom: talos-evk: Add support for QCS615 talos evk board

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi    |  56 +++
 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 443 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/talos-evk.dts        |  89 ++++
 5 files changed, 590 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts

-- 
2.34.1


