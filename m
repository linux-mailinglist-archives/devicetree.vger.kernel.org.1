Return-Path: <devicetree+bounces-255062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB11D1F52E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13C79301B2FC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 875FA2D594F;
	Wed, 14 Jan 2026 14:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YcrVMDcp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395842D372D
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400037; cv=none; b=SkOu9D05DVnfrA3ScOWzUNY5Q4IcbPBXiAQy/PQFyo4KL2ySAGePiI0+AoJbJuCqkI/aJwCvikgYGlVy6pxu2CXnvlTjqCJQCttNfreLc1dacR9XpfHtmvoZgYqcV1bow2moagS0Apap5NQodjlvh88ZiWZ59v7BGDkRnRkL55A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400037; c=relaxed/simple;
	bh=2ZuEqHB2s7ah7FGTDfrXv3UYcyU0SV1LLoyilbUsaO0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WsnXpN6NWh8JS4TgdTG9J/XzZ+R8GzO8oAc/PJkcmsQWDjY9Z1df5+pg6lXoQ8zya8H3c9zNfQ9by5Z6t+M0kzKIHlMzfFHaoLwJU7l/cmBGwtlXJOWsKf5pk1SNU/zpAzvO1NpJDITceVyK6nYZSLoTQ43MMKPPbT8yZ3JY2Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YcrVMDcp; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b871cfb49e6so550718866b.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768400035; x=1769004835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dWwco69CM3nOKB/ZfiZ+mwx8pHkqDra/uagvyFegtpU=;
        b=YcrVMDcpmCtt2YKOdySeBkf4VKqhkqiYws80A85jtNqR6oP7choSPuR/TPOkRgWtrG
         rjiMfsr/cgitfevstDyMlBFcGMP3hgtc9Xgj2idQM0MyGPhPExGqMpq0JbWUwT/26UCT
         AI17l1oxzZR9o7egWOgCWCBkimSXmtGNxsYQVfKc5oZNRez/f+eMQuFhqyfqxdlNS3Tq
         zOcjz/8MR2j2FBiOBc1m1d4LDzgwReVbhTRhbur3wPFpBHUyh3+YXlHYQxEF9+grfvIe
         a1OdA3Oc9Cz9jJGF+kyKnR7jGLFsx/j3eKn2cGUUHUuPw8dvLuJyzAHI9MXxbHZ14PL7
         WH8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768400035; x=1769004835;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dWwco69CM3nOKB/ZfiZ+mwx8pHkqDra/uagvyFegtpU=;
        b=tVMaimRG60kAO3wlQk9KfdPrAA2VPyUTBsSPNN9NquMC5KnY48xD0AA5HLDzh8wKQc
         oqRrNb73hfP6uwWVF4NrklzHwN8MyNRlmQ7zksXXJwlw519crpQZYO/EoS/c8UCcO1UZ
         mQhtqSdhy/CIbfX5M7AjNgm33fxtyLfsZKqfijuIcHLHcWgOA+Y9WVglT8utwTapr8r9
         je3sNUF6HNx/129fHnaVbzZbGKQU4Ofyxgqzvx5oG4aum5if4JZt8gUdMJXkRiNakgL4
         l4mXrguBDLjoz4IytXzuCy94pKJrlAaNkr4u7gIf6mhwKx8sCrV5bRD+oYAuRUH4oX2l
         zGew==
X-Forwarded-Encrypted: i=1; AJvYcCWjCUfS7/HvUq/IY99fgxS3XEC7jaX+svLEATztEF7zBXWmVn/SMjI+Bhh7ct7g23XSb1ZD6FkP8oqv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+RYhalNDYMZvkmbAFLQZ3Iq6BrIMu3mlCb1JjlY9mZykWqi//
	ESOy1tJE82pTQJr0DgqeId72HZLsiXQwLZ+2iJ8r6W3ZDrXyyHB0PAx+
X-Gm-Gg: AY/fxX5ZCIPuy6ZBVBc0fBNQh3D4BsNybozD9XZm361yxxBTqT8KxrvzSEmd2IBpUA3
	IhtJM7tl7GxBP674x4pLl/pWBvFNivM9A1v8qOQDi8NCNUVZnDVDbXdIWsVMpxUq8aT5EJiQmJd
	5RjrCYd4A3Jl5xrzEkDLqas8/oO5IKLnta/iqopfg1cRIGXKQ6l06QJHEn+ayLafm1tqyqhvgsU
	NkuHZ8pqhZQgy7i1xoH29oD7wT4UvG+XCWhshLBEE5ShsRW3kU328kJvRFVVPkLk0ZYZA414P3g
	0aHLX5RAWzXY8TUAKj1Ooyx6dkq/aFpKyWQqbjjkHu15qKHxsuzOWtU39xljAFLraDyXxhvke0v
	sQ20GCWB3NizJuBMcF2uUDiLPLFpOSYc7F0EDqDSDi2nOso5sfbxtRZss1NAwN9Ms7sNIOeDlry
	sAwX2XbUD7gDTpS8Ru/LF24Q==
X-Received: by 2002:a17:907:6e8c:b0:b87:225f:2e74 with SMTP id a640c23a62f3a-b87610180c3mr230198366b.14.1768400034484;
        Wed, 14 Jan 2026 06:13:54 -0800 (PST)
Received: from C-PF5D4647.localdomain ([147.161.248.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm22651950a12.29.2026.01.14.06.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 06:13:54 -0800 (PST)
From: Jie Li <lj29312931@gmail.com>
X-Google-Original-From: Jie Li <jie.i.li@nokia.com>
To: wsa@kernel.org
Cc: linux-i2c@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linus.walleij@linaro.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] i2c: add support for forced SDA recovery
Date: Wed, 14 Jan 2026 15:13:50 +0100
Message-ID: <20260114141352.103425-1-jie.i.li@nokia.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Greetings,

This series addresses a limitation in the I2C bus recovery mechanism when 
dealing with certain open-drain GPIO configurations where the direction 
cannot be automatically detected.

Jie Li (2):
  i2c: core: add "force-set-sda" flag for open-drain SDA recovery
  dt-bindings: i2c: add force-set-sda property

 .../devicetree/bindings/i2c/i2c-gpio.yaml     |  7 +++++++
 drivers/i2c/i2c-core-base.c                   | 21 ++++++++++++++++++-
 2 files changed, 27 insertions(+), 1 deletion(-)

-- 
2.43.0


