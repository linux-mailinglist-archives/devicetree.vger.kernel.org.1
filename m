Return-Path: <devicetree+bounces-235391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 15496C37CF6
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 21:59:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E351B4E3EDC
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 20:59:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A95EE2D9796;
	Wed,  5 Nov 2025 20:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XM9xZgfg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F8C2D7DF7
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 20:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762376385; cv=none; b=Ly+Md+mT71O7urT9bIX3vYaS8chtRV0/mCw+JBJwKdVJVUVjV1MmbeyHEQpMrQabnpDe3ThgOKG0btzSORiPslretJL329Nisq8v1A87byyi7w4y7QN3NJqWTf5wsoZHDQ/frm9z9yEbyjOPWMcWiDktbXTs7kWn9QAYUzeFcR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762376385; c=relaxed/simple;
	bh=iKrWLKWFWrDq2c4mjzGiCZvthDkL+17VKd2Ch021L20=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fQqKaddJUw7waCeifj1g9kRAAKuY8QLAVY8BSwp9rHgvJHbDv2SzDF9gxRgLLyfq5fxDF9D0Fst9ErzTtEgJhGLS4AiKVKKPd5WOTHVTBe5Mq2BH3GraJPpWDDpyTP1X7m0+KREcF0as2NTqEFHvWDTIj3PYs/43Mztd/8hZE8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XM9xZgfg; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-656b251d27cso135671eaf.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 12:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376383; x=1762981183; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s4jUhoO0GloLYwgiRapNRbXTXkxJre8g7HZh0C7uDhE=;
        b=XM9xZgfgfsnY43jNGPwt5JRyHQxvFR7ZUpbSzMs/ANzoIcTYNOcDy8DNE0MUuGOkw2
         cb8lLo9+DGcFj1Wz0rZaj9K0TcsZ4siLScPYmJchZS/UN25dJPTJ6XT0NNCCYLJltr5h
         mpuZiQNufQsWYg/C8rXOs0fHBMgh2w1ouFuc9+LKzPPji9D9NHuri9OJjOdfqhi4N6kf
         K5uZeUaJj4kA6PzVXem8/4kzY2/2HTwLth3nnOITJIfrDSArzt0XybuMwYgMr7VWBd25
         LT2rzvHr45eU3JuBjPChqMN45knJYdcekdZu1j751vur9G74w8UllHJvxIeOcLfNkLPc
         YBcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376383; x=1762981183;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s4jUhoO0GloLYwgiRapNRbXTXkxJre8g7HZh0C7uDhE=;
        b=e7XTmo74fvXbKwx3ilPGn5tb6Z2vLNCiaErjuMe1g0Zn0a9R1IggvgBUZhi9jFx8jJ
         TpqrQTH3p9SXUaFIICSK10a0UFkAIyxC4T/z/+AhcZAxn3z1+zDicV/95kfvdLce+67S
         6OJVcezQuxyLibrIYwXh3YUJWS6KyPtRrZ1wrJSy+lw9HNw1wMGmoBgQ1blmjY2dRBa5
         YkqvBZOoi0YzHl2TaliLeNeb9tDFKMtfCBK1oIMLfNkK2Ln69K/ijLy0aYkwX3ZnHNjA
         dgSYcgBSohgQFHvbEBMON32EmAN5c3HjrEKuemalMt5uBXGzI/PJ0lxLjTL6SzfiNW3Z
         oaWQ==
X-Gm-Message-State: AOJu0YxHM8QA+JO+64zQtzLmh4S1mLGzxeYqVf7jGDs5oJ73L6AjZe1l
	sWtdpAuc2RbrfC3SI3AF+QRkqMhp5FS5pV3orV2OQjDec8VkXrN48f6k
X-Gm-Gg: ASbGncvnFcfDytv5FmCpaoIHEywmsfgg6KqW8DZa+WKkF7ocxEuJBIMaBa6tx1nQA2A
	gOCDdQCY+poV7Z0s622C95vhi7hQOAVeVgZjqeaN66t7+nVlt2cNOLCIVIM75l8Gruj8OliOPYy
	oDnTuqalqfq+lIjDuDx5RkH1EjsykcDgc7RuGNN+orksUZYB1JR8LdZgLWB3dmKcQfeFfw6Uan/
	zXSob+MiWYOiaXBcWbjzLRrDbFV27yWvHVMAr8Li0me80bzow8hCfnoIStQiXTUOjXXYiTBOIqg
	wqw3V4MMdlNFtKK0mt+rGBtIhr/khYz/wqHutyZWclYD7tHqesT0ootNAeeZBlzr6TDfsM8tEGd
	wEs9bMB5yXu5GMD5kKMnonKzKCXz7kqdG43wZyOq10fs2DtBmph9KD2GYYb3dAqvXNxP2pd2wGm
	yiVXnTQVse
X-Google-Smtp-Source: AGHT+IHLwYk1NymY2VpKdaaPslZmnlbWunU8Hh0ha8IXu3WsgVgQDBFA1qN4zAcnCQpT0Z0zwq2BIQ==
X-Received: by 2002:a05:6820:2110:b0:656:777d:e689 with SMTP id 006d021491bc7-656bb611158mr1748501eaf.4.1762376383228;
        Wed, 05 Nov 2025 12:59:43 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:42 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/5] Indiedroid Nova Devicetree Updates
Date: Wed,  5 Nov 2025 14:57:03 -0600
Message-ID: <20251105205708.732125-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

This series fixes up a few remaining issues with the devicetree for the
Indiedroid Nova. Namely it adds or updates a few pinctrl definitions,
it removes a few workarounds that no longer appear to be necessary for
eMMC and bluetooth, it adds support for the NPU, and it sets the device
type as embedded.

Chris Morgan (5):
  arm64: dts: rockchip: Add device type for Indiedroid Nova.
  arm64: dts: rockchip: Add Additional pinctrl defs for Indiedroid Nova
  arm64: dts: rockchip: enable NPU on Indiedroid Nova
  arm64: dts: rockchip: Enable HS400 for Indiedroid Nova
  arm64: dts: rockchip: Fix DMA for Indiedroid Nova Bluetooth

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 85 ++++++++++++++-----
 1 file changed, 65 insertions(+), 20 deletions(-)

-- 
2.43.0


