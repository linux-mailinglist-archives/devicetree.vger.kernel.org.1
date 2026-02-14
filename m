Return-Path: <devicetree+bounces-265494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBqWDUvbj2lsUAEAu9opvQ
	(envelope-from <devicetree+bounces-265494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 03:17:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A76F013AC18
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 03:17:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 855F7301A291
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 02:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62BE0287507;
	Sat, 14 Feb 2026 02:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UzYZmiih"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE65C285418
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 02:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771035463; cv=none; b=ki2Ro1N8cBaZ2nKtS2rjN2o46bwXPop5JPIS/SeEVjvOLv8Vbba42M3F9J1AfRAyXG+c4L4ya7PCzGir1xYC04ir051uCsjGvUcekFNCSieVLG9Ty3qBW5W3Q8MRPobOf+9/cGazAGL1piUsoU1cAxWrj2VM/79sq4+vS5WC6gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771035463; c=relaxed/simple;
	bh=LYaT8Vb9eYchn0x/U10xBmb+lQ1svN+Dy0uCa8ES2pI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=G6W8LfhXJUTiVzEbWmm2Pei4L0lbj+KKI0SscDLc3ElTAd1Zb84gZxnvwyWv513StZzfmVMoRbBUhWLdVFOQvWUZdRBoXfpGQ8iD8ntuJRTOvh0PXh0+GViNrEywqKg4Uuz5qqWRLkc0ljCTsKSDZFJGHN++IE106v9aW9my5qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UzYZmiih; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4801c2fae63so12276165e9.2
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 18:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771035460; x=1771640260; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L7kXqefz6Mz84tkpvy0FFhVFi9KVDmRut/+pi1Uax3Y=;
        b=UzYZmiihhRv0B9dpJjDmURbW2YbBYqn+iwGjyda4RckFliZDGZ720naGnx+N/hn9NI
         V4TPgFcoA06bxd+TrqU3m7m//CiGqtASjC0xSfMkpMKtvhWjaYZ0zcAB3g9/gJ+zzL/4
         1RVtscYuUjJuRgHRzay+MfBn/Ros61rj+1SDIdSB+Jg390rW9fwihGU/cXsCMqw9fULT
         cHs2FItBzll3sksLQ/rQ66HhhU2kV4zOH4pqyChF+YasqWZ3JK4ZAC3dsaag9wUKZlKD
         +ANi1o4pG+dBE6KCQyIEMkt4Z6u5Hdxf8AsMFRXruHD+9bJBfnt/R/Ux0Ar/YEopX46E
         NmKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771035460; x=1771640260;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L7kXqefz6Mz84tkpvy0FFhVFi9KVDmRut/+pi1Uax3Y=;
        b=tLk21L+nJMQxt/N/2CzQgmfeSL8Lc2pHMr/o3EqeyPhHQYjtOjXIGWjD048tBN6i08
         IrYYIHxgZ0RvrIoplqGIYhj9DvO/18dJBp3Lhx23ADmdQ2sPl5BxQrXqjL4IxGBJnhQb
         qNsBbj6iVePUJKVpnBiRuVBitGZfwVTt4aARsS0zht9Kcd7ZAXQjiPqsku39CWkVotjU
         vTVI860U+oXlzAP7wGw0J4VNW08+BfejVSwY1y07eqL4HnjCXXkgg29ySfLCiKxFRaz0
         h9wxxfeyum0M9JYlRGgvkLdB3MqBmmtrUQCva00IS7DCgJXFCwzvDfsfYe+bNIBMht5g
         y5Bg==
X-Gm-Message-State: AOJu0YxVfo8COxCHFDjnEqXgW4/IWtm9eKpYL7m8onR2kDlc1s78gEAJ
	AWaba6FhQ62KuDRRmaMepgztaWMPXLEnI1j68XKcfn4ShfTMIzri8ZK4A9AsuoVD3Qs=
X-Gm-Gg: AZuq6aJLvP95vTaBFUyOXuyRx+4Wo8qzYgojqKHP5ltWNru1ni3/kErsJCaq87IbdGo
	UIzB/MhSWMpSWzoHHOZbvIGPW9hkZD0POUou3YWuC5PoBrfKJp1QXLhcE6zbOWHd3mbhB38CIo3
	pTXRKwhQZhTMSAIamvW+0doebn8InNRDKa4U7pHv8057GHyR/Bk1dd4WWv69jUQz1BK2CiPgySm
	HaWUoDvrfjfrlzvwwFuCaYo5Vfs3TiTcpm3lQT+4NyxMtJwTatUhpEKa8RPeBHiC14smh2Ew3la
	pvGM6tt3DE1UuWYjeL/iKSZLiM81nARaxMGvAmrKB8VyOR6oc5Siu/HTpJKKL+awVL78uOcH6xF
	2G0EGlVWUd1MRw80UsDEOdqlNNlMiDf/H/EeT34hIVgv1fM/CzVUXT9EDbOrTPuFYPa4BwGFNDf
	rXpYbQzAi7zBpqnQzkmhLh
X-Received: by 2002:a05:600c:37c6:b0:475:de12:d3b5 with SMTP id 5b1f17b1804b1-483710960dcmr70601475e9.34.1771035459856;
        Fri, 13 Feb 2026 18:17:39 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a53:6b71::1002])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796acffcesm8608308f8f.37.2026.02.13.18.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 18:17:38 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	jonas@kwiboo.se,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v5 0/3] board: rockchip: add OneThing Edge Cube series
Date: Sat, 14 Feb 2026 10:17:13 +0800
Message-ID: <20260214021719.620752-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org,163.com,kwiboo.se];
	TAGGED_FROM(0.00)[bounces-265494-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A76F013AC18
X-Rspamd-Action: no action

This series adds support for the OneThing Edge Cube series, Rockchip 
RK3566-based PCDN (P2P Content Delivery Network) devices originally 
marketed by OneThing Tech.

The V5 patch inlcudes some device tree adjustments, following Kwiboo's
suggestions.

The V4 patch includes minor improvements.

The V3 patch merges the separate dts files for OEC and OEC-turbo,
following Dragan Simic's suggestion.

The V2 patch adds a new device, the OneThing OEC. Together with the 
V1 patch OneThing OEC-turbo, these two devices share identical hardware 
specifications except for the RAM capacity, enabling convenient support
implementation.

The V1 patch was submitted quite some time ago and is now in an archived
state[1]. it has not been processed due to scheduling conflicts –
apologies for this.

Changes in v5:
- Add missing pinctrl for LEDs and ETH-PHY resets.
- Using gpios property instead pf gpio property in pwm-reuglator.
- Adjust and unify the order of regulator-* properties.
- Drop rx/tx-delay properties in the gmac1 node.
- Using PWM_POLARITY_INVERTED for pwms property instead of the trailing 1.
- Link to v4: https://lore.kernel.org/all/20260204132700.329894-1-jerrysteve1101@gmail.com/

Changes in v4:
- Use a unified compatible name for OEC and OEC-turbo.
- Drop the "series" string from the board dtb name.
- Use a self-descriptive model name for the dtb.
- Link to v3: https://lore.kernel.org/all/20260202150437.270567-1-jerrysteve1101@gmail.com/

Changes in v3:
- Use a single device tree for both OEC and OEC-turbo.
- Align the compatible strings in dt-bindings and device tree.
- Link to v2: https://lore.kernel.org/all/20260131153106.31723-1-jerrysteve1101@gmail.com/

Changes in v2:
- Fix typo in vendor-prefixes.
- Simplify company and device names.
- Add the new device OEC as part of the OneThing Edge Cube series for support.
- Set display-subsystem node to "disabled" instead of using "delete-node".
- Using generic node names for leds.
- Follow DTS codeing style in vcc5v0_usb_host_en pinctrl node.
- Modify the phy_mode of GMAC from rgmii to rgmii-id.
- Adjust device tree node ordering to follow code style.
- Link to v1: https://lore.kernel.org/all/20250713163255.163669-1-jerrysteve1101@gmail.com/

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20250713163255.163669-1-jerrysteve1101@gmail.com/

Jun Yan (3):
  dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co.,
    Ltd.
  dt-bindings: arm: rockchip: Add OneThing Edge Cube series
  arm64: dts: rockchip: Add OneThing Edge Cube series

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3566-onething-edge-cube.dts    | 342 ++++++++++++++++++
 4 files changed, 350 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts

-- 
2.53.0


