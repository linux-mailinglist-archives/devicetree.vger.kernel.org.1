Return-Path: <devicetree+bounces-249524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8195CDCAAE
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:22:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1BAC6300E45F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD1E733ADAC;
	Wed, 24 Dec 2025 15:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fDin6/Aq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2549734CFB2
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766589765; cv=none; b=Y/sc1/iVQ1NhCaUzhiUadxjS2aKDJqb6E12GC3v5SxDpP0Xp7o0RUdrWRnhsf2GO4EmWWC1ov4P6qDUXMzBLN+ylzqn3FiW8YigzODyzoxEVa2qkN+v+YLuq+/lCNhoy3oaC85TGDv01zCzY1R5de1pvSGsU8b3gLgETbmJKjkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766589765; c=relaxed/simple;
	bh=zALY9dlsMwzl/dAwtyaG4mXGxZf+fv84QQNolu1ZQYI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PkBDcx+tfjIOauWIDy1qRrcbunA68Q73MIqXDutosCvaIaFX4dzPrFvoVsI2bIay8TsgRuWAbXtrRded4kRh7x2wzURTe9tjlEp/hBJFa1SMk7JkkqH3uCx1+ZasITCLF7SodYVH1Jwqajou5WfyW3KqGN7HHLsjv2lbJua+5Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fDin6/Aq; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42fb03c3cf2so3163084f8f.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1766589761; x=1767194561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PADMdGxAb/N51/r8LkdN24AdvAbRzLZVqXNmvAQV5oU=;
        b=fDin6/Aql/LKoPKw3qbSEoYNq+sEn+df6TydOvyaKbf5PeO3NPJt12ZkDZa6y6Y1BX
         eIhI5HjObJD46bYrao5B2UUhBXvZA70ni2xAQypjLoLhISQZ4ZUESDLlu06VtV8O1AcR
         x/pik9HNDMe6fNOF/PAtQfdM+fK63BeJoixhQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766589761; x=1767194561;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PADMdGxAb/N51/r8LkdN24AdvAbRzLZVqXNmvAQV5oU=;
        b=lPYxRDHKBTGHFetU8jGBq9igkVWZVq6TssDrkLdfvu+t/ghCU5EXxC/gDS5w5KzZQv
         oeZ+CxtrujvWd6d8BG91fLctYBjeEsGOwWi4fDDzyeqXMX/Damy6o7tZJawEAGgnBDcY
         mCw7GqhHEr3JMYOBQIVH/POIk5HAqtR+UgEfET+jPJc88VW+qnuzIqQDHxYjX+5dSSaA
         J5MkHVp3YtS89V33txiNiHdmrX0uwH4pupA0MIglNnN7thvhMd1JmCTi0zt+FkVgVP0f
         +Mo/r96E4GKyRinTH9qUZi56c6xMp3nSRxgMQlTdIbE7HibG6ZAeH65rtVd9Ann2JGxN
         urLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEJSyW2/YLPNpZg87cGjnOmtFekj7DTm0lO6jQmglmCG/j8JxiQK0T/5cM4veQrYBk/TRW8hgEb5fM@vger.kernel.org
X-Gm-Message-State: AOJu0YzMobVphLgBVj2Njt2I0HRuo9tFN1QCWK2OsIxILanuNvvsMux3
	4sTqDKBXwduXEAWQGJfKD+ENyD3SXkFG6OQKU6AnU4zksc0ELEY2Hc6jN/V/7UOtxA==
X-Gm-Gg: AY/fxX7fxbCNjJKY+5axp4sVgGC2xTBcuzorsLYWu4UlQr02nPpYuSwFu7081IGtVIW
	SAfs0WZtM40Vij72M4iABQdOaoEsMWze57W0PG9+2y8GQixNQFSjtNiILxRFPO6LfixseQs56MV
	fECybH7NB0cGgOUH0Mch7kYRcNUSA4S0wV32KuYBDmZQcBPn17xRk6HBTq5Y22ak+N+5D+4eKPO
	YO7Efn4gYLfQW1lGqfJXalLJmfCp9jj1F4heNysMjJWZtF33g9qcpiBL1A3vMZ+2++kGBPU9w32
	F+vYUnDruPiqacbgKsBFL9pt2n1lBXL/3b4qjlZFfdFeYGolflbNIOKNuSZzgjMyxJBgHjITMUs
	Mi1w94tfGmMcD3y8zm177H8wMzU/HHYojdP/cfUFOaDdlo9pXlbfjbP80eoQ5KtB/cdSuMC/t/s
	Z+ziOE0Ka5ItDfPkSOyV4kUkRjdQ==
X-Google-Smtp-Source: AGHT+IFYkk1rgHyu9nVNfjejw5HKRK1BJ+Hu+T0J0cFClraYCSLWRZJM/CdbzE8a+VtE+OxWg9t4JQ==
X-Received: by 2002:a05:6000:1a89:b0:431:2ff:12ab with SMTP id ffacd0b85a97d-4324e704914mr19472833f8f.61.1766589761125;
        Wed, 24 Dec 2025 07:22:41 -0800 (PST)
Received: from balto-ws ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324e9ba877sm34307363f8f.0.2025.12.24.07.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:22:40 -0800 (PST)
From: Fabio Baltieri <fabiobaltieri@chromium.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>
Cc: Fabio Baltieri <fabiobaltieri@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Input: cros_ec_keyb: add function key support
Date: Wed, 24 Dec 2025 15:22:36 +0000
Message-ID: <20251224152238.485415-1-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi, v2 of the cros-ec-keyb fn key support, reworked the whole
configuration to use an overlay map doubling the row key size as
suggested and handled other comments.

Changes from v1:
  - change struct to short types
  - refactored the fn key handling in its own function
  - changed props to use the google, prefix
  - reworked the properties to use an overlay map rather than a
    dedicated one

Fabio Baltieri (2):
  Input: cros_ec_keyb - add function key support
  dt-bindings: google,cros-ec-keyb: add use-fn-overlay prop

 .../bindings/input/google,cros-ec-keyb.yaml   |  25 ++++
 drivers/input/keyboard/cros_ec_keyb.c         | 120 +++++++++++++++---
 2 files changed, 129 insertions(+), 16 deletions(-)

-- 
2.52.0.351.gbe84eed79e-goog


