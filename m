Return-Path: <devicetree+bounces-270873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJZxN5Pgp2lnkgAAu9opvQ
	(envelope-from <devicetree+bounces-270873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:34:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 414751FBA37
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:34:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2A8C3025703
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41EDA36AB47;
	Wed,  4 Mar 2026 07:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BGPZR3Wa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189D43101A0
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 07:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772609681; cv=none; b=OVGeemkGNuLHrwRzzAIIjkN4uCy3sibNbIsdiadBTqR8HVRvpSlbq89NgpSr3XOYbZ0UG0t0XX0zd/TTJugOzADlBRkeP5mCTD59BzjjtXkPG8hqv+XN4/NLaLngbod3/d7VrWc3J1Hql0VE+QFEuKnq9MioPf145iyD95xI4mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772609681; c=relaxed/simple;
	bh=Xip/xnIBurHNGa8DC9JrXbPzuPJDjalxUb2F2V63Qzs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Ze5JnfV5EXkdNqYOUClmaLmH5qgATkLnxlN41DWk+fG4N1H2un7HLSAW+yvmQx3zvfHsHPi0s6vREgksWzm4GGooDXx8YPkGkiAjAOykpIGiZV+tRJFI2cBfXZWMF/4MlYmEz2+7u0cPcsIUuSH2TXFg22xtgnP785h35RSsnjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BGPZR3Wa; arc=none smtp.client-ip=74.125.82.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-2be06c02f66so1005339eec.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772609679; x=1773214479; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R7iFL26EEL+uhHsr6lC8kD5Eo0jyC6G0H13gfofhU64=;
        b=BGPZR3Walo6ZMylDHgYJSISgnnHlqayPqRkHgQBSnKCXUJgHS2+TQz0xIjfC4TSdRn
         e1c+IItgf2HSXpIy+nsRBpMQ4EE83iqGKGBP/fiziKxgI8fAfS7Swq5EsRxU+NE405Dn
         A9EMmnnYDneRZJoSkusqgdVhlgMh2EP9PmILpb8OK3lbOnd1qrq8sNg3IQWX2oGOczXa
         ytU1G1IS45WUXEE+pYMymtfkNEWvikQZfs+DYdUx3CVGhddXD0y5ZzlGAg6FOHIimzW8
         MjuGgO9d43Gn+dUfriz8s9dViHdX1BxGeF5E7HMxR1mN6joyaU8dHuHH4NV/qEQ+Si6g
         YQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772609679; x=1773214479;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7iFL26EEL+uhHsr6lC8kD5Eo0jyC6G0H13gfofhU64=;
        b=jHtgR0Gk/3IL0u2jjk45oBZC1HGwfqS6DseQdb/dWfVjoQjjoBxcBNPyvaT0CiVC0m
         cALAOu8/3hnnoRqEdidBFo+iwcPboGhkbR+vI+6T0tKj5pLS7VOu6OA/av928ndu+mNy
         ZhIrDgkXRh80aY/h8te9VmzkR59pBiBY96ynVc4jVH9c68gXgzvpgjyrihZ1zoG58BCl
         zn+yrI0MxRj8Ix2nGx/+WBRKbCeTgZX0mSiOWxljD0uIHfhVlcXT6V8zeV+XYrOTbkIi
         Js+XOt8ZRtyV4MLWIKlUYhpJRzOguUnzcvfvpfQ3PovTbKEMt0q6udk9nMVcnVsZgtjC
         vCqA==
X-Gm-Message-State: AOJu0YwmQZ86jQTxvE2C5nkHBgsT6qRqxOlwgDAzVZYAIRlaUR+0Ew9w
	9eVMTHnkBc9RI5JI2SL2MQ07yLYkW1YwLEu509M0Cc8mSoP7OQDPZc4Ez3jfyA==
X-Gm-Gg: ATEYQzyN4sSI4xcxtYBVH3+iHhYjMu6bNUXZHsO+bYzuPomC5MCACb9MMAg9KlZ0XWY
	fVzqulvqCW3rAsMIX++gzrTQ8bbnp25l00937QwZLRsqbYdOfJA6K50ul0iYs1V+so3s7RIQtfM
	0OCD3FGbmY72JQwREnpqHefQS1+1frrFGH0r5ulzPf7bxdGLuTUvOtZkZg/ynjS6amI0slVbKNy
	Pe3VtklQ3rdjlPUQP5cJmR7FjYIo9lRTSrCsVjklL8A8w4M2fdltBqEXryxA0vqzk8X7XUhQu78
	ecx4XYyqUO6R1P219vMN+5iKxWvjYE+Aw85ig+TbgWqsGn/DwbF1R1xwAi8HHe6U8bo/HQ8ZJvy
	lQPV1KZQ+VB4wx1Cc1LOwICoPeJyEDVE8tD2ekO7wB3Q9RdlZVrBVk8v4wSXuIG4kt4bTCNSjgz
	x7zKIBka8rUhbnXbrPRrvT
X-Received: by 2002:a05:7300:e61a:b0:2a4:3593:645b with SMTP id 5a478bee46e88-2be30ff3b4amr448852eec.11.1772609679022;
        Tue, 03 Mar 2026 23:34:39 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a55:9af1::1002])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be2056acd1sm3457123eec.22.2026.03.03.23.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 23:34:38 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	wens@kernel.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	mripard@kernel.org,
	andre.przywara@arm.com,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v4 0/3] board: sunxi: Add TaiqiCat (TQC) A01
Date: Wed,  4 Mar 2026 15:34:27 +0800
Message-ID: <20260304073430.438835-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 414751FBA37
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,arm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-270873-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[archive.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

This series adds support for the TaiqiCat (TQC) A01 —
a set-top box based on the Allwinner H6 SoC.
Originally released by Ultrapower(UQSoft) as a blockchain terminal,
the device has been discontinued and is no longer officially
supported.

  https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html

Changes in v4:
- Rename Wifi ethernet0 to ethernet1.
- Link to v3: https://lore.kernel.org/all/20260302020956.96424-1-jerrysteve1101@gmail.com/

Changes in v3:
- Drop the serial1 alias.
- Add an ethernet0 alias for WiFi.
- Link to v2: https://lore.kernel.org/all/20260227155801.211376-1-jerrysteve1101@gmail.com

Changes in v2:
- Replace "UQSoft" with "Ultrapower", and add relevant explanations.
- Link to v1: https://lore.kernel.org/all/20260226084850.417731-1-jerrysteve1101@gmail.com

Jun Yan (3):
  dt-bindings: vendor-prefixes: Add Beijing Ultrapower Software Co.,
    Ltd.
  dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
  arm64: dts: allwinner: h6: Add TaiqiCat (TQC) A01 support

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../dts/allwinner/sun50i-h6-taiqicat-a01.dts  | 361 ++++++++++++++++++
 4 files changed, 369 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.dts

-- 
2.53.0


