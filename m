Return-Path: <devicetree+bounces-264939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AF2ZGBiTjWl54QAAu9opvQ
	(envelope-from <devicetree+bounces-264939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:45:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B167B12B7BB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:45:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CD04300DE07
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC3FA2DAFBD;
	Thu, 12 Feb 2026 08:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jhnR9Aw4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4F72D97A2
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770885909; cv=none; b=coRieOizJw/z9Lv5derUKo/LWI/GUSYMyQJEhmzYR+kCRy/g05GL7gIdqRw8S6HGgomU1BrhQHHHtUTvIqyocy7XmVsl7yafDCCTzdt6foYuJhDmkYdv3q3tSFNni8o7E/l7pMvZAH5gAl5c3Rds4zTWAy29CXVpzNL68fKILCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770885909; c=relaxed/simple;
	bh=FMWBPm49ifKRkjLl8zUDWt9HyBY6118sqYd1if5HkLQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RNDzXEuaLrtORua6CMRMaf5EWu3gIJpUiOPaUfKwIJ3HUuKbXJpBei0y494fWismOGJ+gXkKYtkZXJMyU5X49Tj0u63HnFQktsSzKDWMAHuijqju/UbJDmAEOwZDss0Np00Fvwsg3zKZlqL1i9DFTJSjiR+wqqAFvcDC9OuGo98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jhnR9Aw4; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4807068eacbso25810915e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 00:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770885905; x=1771490705; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kB22oilQpbKLorleBbZlAN5tq3XvDpZ40Y2OzAeJ9vU=;
        b=jhnR9Aw4p09D4nim/WxVyE/4G07/vKHDeiW7qc1iaLBN7lRXwGLdZ70LXoPC5EpTzD
         jBHO+uX9BJG3AzEPY5XBDMCggqkTH/8pceZ5zOjtmCh+k4jpXgJlBI/qS34GD1RNxvG2
         jM9tiiQt6713E/UCsIVch7Ms5oNIxzRob7dHptLNq96nQnsXTcytqrvYoajoBcEOh4lQ
         z+ULOeopTbixpkPxmatuB/gE8TnqgHumunFfbN36p9vPs05GD1VRN0LnnT9UrbiGLc7z
         rPvUtsg67cxgI8h9oq41SSGeQfuTA9l6rrMvDom0uA0xLipNZ6LkGhSGUrHpams+eeMY
         uCaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770885905; x=1771490705;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kB22oilQpbKLorleBbZlAN5tq3XvDpZ40Y2OzAeJ9vU=;
        b=iWRBruV8/AOrAfgUE7NM0QxbxJPSMn2PBEJdAQs3wShP0oaRjZrrUjevnke+3A80RP
         /iS8lmwAeCYirTjUY1GSXQVmakKl6QCccnk7n8T+sgfgK8cBc4vnojW8wHg3gmaUuToB
         PWWNgCftSQXh7dmhz030+ihfyDI/SgVCg/SWb5NlZjP4bUs9BOQdpoPnzFqH77I0TNFM
         VSlorr8aDCshbBbpINgbVYWFdtwe4lIAq6X/21qic5uwzbml2jssNK3gSpLjc5OXDdTC
         BdIPyv1LQg066jysYbbhwpsyCBjgO+Xwb9xRbEACE7HRvWoIYtxPztTWQCOE441DOGXZ
         m4/w==
X-Forwarded-Encrypted: i=1; AJvYcCX+fK3pYAXE5yqCmljAlxYhRaDc7ukXKKv7fFZ66xG2ENo5UpMxp/ly/VrIHHa8AbCkgWc5arTmb11x@vger.kernel.org
X-Gm-Message-State: AOJu0YxmF+se9yArGcl/ZXhWR1Ttk0o15yO3DaqyDmTSPCQraIKkyv2w
	2e3Yjuy3uf8l/ZZ+rkQ3fd4bBhbL98UBDsrykXhecIdkfnt5GUcBKlHhZxvWxOvpSwk=
X-Gm-Gg: AZuq6aKoNze8T2Uh0r4wg1k+5oAh4TcVmawThKvdY1ufh+Q4N1pHIYCAPd8s6YKbcTL
	LoXpk8x44/FpaS4Fg23duJiJokaTq2oxPJjo9oih4gGRHsfsvk2TtJislriuAJRrtb0QYuiVIbT
	8YVVwRNWkLwBjLNlymEJ9VtAz9rsAezUxTSVtTFLKTS2Ib6+AOB23Fo7EU/fetG++b40luWemxr
	uqz55OEJNXRsVsGb5zergXr76pSA/GSjb//tYmnC31bSlJw1fitihVueqrc7xgRKcq74AAMYtgG
	ZuSdnmSpJetvOr552d1dzyllPFRwlcNX07eMDiWeJxE/4X0vPdINPqrKC+O6fJVl/J+QXjewMa8
	UzbY46zEAfzihMr8+xIa5KAcL8bMtZ5B7j+673RwjBlDgdRGKx3nJG6msfxNjCmnK/vO03cIWrQ
	rBo+X9sn0qEmBTYkmxveBLb4BtzSvzalewsPgd3tt9T3lSI9m1uvS1qjXLpy9wdzZD414NL6+xd
	cVBae+GsQ==
X-Received: by 2002:a05:600c:818c:b0:483:2c98:435e with SMTP id 5b1f17b1804b1-4836717eb60mr20304835e9.34.1770885905577;
        Thu, 12 Feb 2026 00:45:05 -0800 (PST)
Received: from silence.. ([46.10.240.40])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835dd0e15bsm82753705e9.13.2026.02.12.00.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 00:45:05 -0800 (PST)
From: Stoyan Bogdanov <sbogdanov@baylibre.com>
To: jbrunet@baylibre.com,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	skhan@linuxfoundation.org
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Stoyan Bogdanov <sbogdanov@baylibre.com>
Subject: [PATCH v1 0/3] Add TI TPS1689 pmbus eFuse
Date: Thu, 12 Feb 2026 10:44:59 +0200
Message-Id: <20260212084502.1795-1-sbogdanov@baylibre.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264939-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sbogdanov@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid]
X-Rspamd-Queue-Id: B167B12B7BB
X-Rspamd-Action: no action

Rework TPS25990 eFuse pmbus driver to provide more unified way for
non standard direct conversions.Remove existing defines for TPS25990
conversions and replace them with enum listing all supported parameters
and structure using m, b, R. Add fucntion to covert raw to real value
and real value back to raw. Add data structure to hold pmbus_driver_info
and local_direct_values for direct conversion.

Add support TPS1689 support to TPS25990 driver, since both
chips are sharing a lot of similar internal functions with exception of
work range like Voltage and Current.

Stoyan Bogdanov (3):
  hwmon: (pmbus/tps25990): Rework TPS25990 non standatd direct
    conversion
  dt-bindings: hwmon: pmbus/tps1689: Add TPS1689 support
  hwmon: (pmbus/tps1689): Add TPS1689 support

 .../bindings/hwmon/pmbus/ti,tps25990.yaml     |   4 +-
 Documentation/hwmon/tps25990.rst              |  15 +-
 drivers/hwmon/pmbus/tps25990.c                | 185 +++++++++++++++---
 3 files changed, 171 insertions(+), 33 deletions(-)

-- 
2.34.1


