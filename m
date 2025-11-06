Return-Path: <devicetree+bounces-235891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D53C3DEA5
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 00:57:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E26814E1A26
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 23:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71F613563C8;
	Thu,  6 Nov 2025 23:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VeIZVAh5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D9235581B
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 23:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762473444; cv=none; b=QqKN45IeSk4onvMP++SOAmIDcrp5Lew2jp9j3uWF25VueroY5oobtg6BBLPIwYW3KqrIVU6hNi68lSmMo8ExAC75vWTrLRPao5iyns7bM5JKIJypiLtwfg0M7jxNFmLjCK6YSQ24aFu9n7XpXOMVEz7rT2+eqsHMGLBezvlerPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762473444; c=relaxed/simple;
	bh=kxhtXm1Zg30ysGEEDhfA5TG/xjp0CNhZzJEgLe168qw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Y+DX4oJYzfmMek7nNnCdkH4JOHnXO24YiafgOqGgBu0pq95Fh1cPy8HmIQ7tcQr54RpBq0nZWUU3CHuyy2uJ73AnsdYo1gM8IiUnIB66VKbX5hZPFaQkq03VZNPbICpZx/izuy0ZBGCXU4Bv8J+w+Kc03E+mq/en2CeqcUYqgX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VeIZVAh5; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso713455e9.2
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 15:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762473439; x=1763078239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tPLPPimuMG7kUU5D7ROePR6mzkYaE95eVKvbR5javJk=;
        b=VeIZVAh5A7wAqLcDEmPTUqVBZnomrt1GDZfCPoZCNLjbiQLA1zuHb+D7OsxtUjl0w0
         LqsaUe9xtnWxN/Pf+nViFATfL4Mpv1+0v6nDaAwS4QP+kujMu0RV8GlEJolQnGDDQdD8
         yj4k+iBjA0Dmd/ukDhdlm55vzSlzEA47jWVSSvfxxZMZLVZ6qTfk2OdckKbGftEuoNMV
         WcoA+Y0iq8L33TqGLtb9R5IcVSGS35wb/9i8QOvNXg1JAOaUu2UWE50ijovMBbd686Tc
         r06qxdQPsPbZd2xpvTOTYfPdwQNpC5czw+mGyrveO8GYvyfJ2FKCIPqovLVeUHGZe3iY
         upgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762473439; x=1763078239;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tPLPPimuMG7kUU5D7ROePR6mzkYaE95eVKvbR5javJk=;
        b=WUYtR1iaR1GqwGbx3zQ6dk/FFN6+QPBaFPXPVUwZxhxsXI54+n4SIonIN84S+PwgEh
         gGcvuMAJSC86M7lNQCPzLP6IZISLPwZQDd3OO0fvwybw/0ZunRFoZj08GPgTRWgT7d7m
         oU0mS8mQbVOinyt6CGULY4vSFJA6fgpPKoaLMWVTQ9dn8LcW2Y12fd5JYw4YnoaN1u3P
         iZ1wvsE/TFGB68jdGhCzfUMjpdJOh5jBHEt1DeQt11rMgpVXB2Kq3MevrjOVy0MHeWqd
         7gOzzZhzXlpS8cJqZDZ++bc2jx7bBDnj/lMXEBDJ+R/5iEWnkqnhYMLhFmJpp5Bs9MoK
         O28w==
X-Forwarded-Encrypted: i=1; AJvYcCUZlw7X0G1AZB1ZjmRXZluDN/Y6DW3ZIlWJ0ta5/37xVx9bHEpWVBwHsgFvDX7bMVVh0PiOXv1zDPE0@vger.kernel.org
X-Gm-Message-State: AOJu0YyxhsOfEYrx1cf6ToCSxkTmEwM/ibRwgfZyopUAzSYke4tTTu+C
	TrxSweBSFulSQ7/OYmIoAHbPU677RpYfTmSnlCY2BeavhC3PFKbIsOp1
X-Gm-Gg: ASbGncuVLbeyqNDGiNzgHl5h6gfHVlu8xgpcXdqd/LnOdqDtIuiwwKZFdNqN655/D+J
	Yrha5+xob9tlstJ8mvSUwEr/lKe2b5n2A8NZpgGn1SFplHbXR06Gpcw6T7QnQSu1016jOIbiVmc
	dNzRN9KQHLqTuM3MxjuSMCKAm2f/qkWh987uy3kfnUaKu3l6rnfo6yqmrBTlPGj0p69eLyKz6HC
	AX5dmCs7t7v6xLscfVpq4E6rjN1TOK1rp+mN4fFoGQY0TL+QeX/KcQXmqNduUpy1zSc1LG5HEKa
	qoHh3MgyTAbj7nXGBiYmcwy9Dc7ZkcGU2pACoH1BiB9o6aLt5B1xKwSnLIy7v5TJhdaxtlYzWSd
	65mA86z8GleMprnjKgncSkFGAYBdPYgWsyBEwiLwpWek9w4/qaRm+4PF9/lnPpQMAkX0bDzoSJE
	gUzkvhkReYoIfjLaf33s+o+p3Ask8N8w==
X-Google-Smtp-Source: AGHT+IEkxef+2RXJnVv1MDtMP+PBPYplJlT6jEtLbLvDmINhz/OHYKIorQbjuGU7uu0HwrhH5KQd7w==
X-Received: by 2002:a05:600c:1381:b0:475:dd9d:297b with SMTP id 5b1f17b1804b1-4776bcd2cd2mr7382915e9.33.1762473439445;
        Thu, 06 Nov 2025 15:57:19 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4775cd45466sm129470525e9.0.2025.11.06.15.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:57:18 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Sean Wang <sean.wang@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH v2 0/5] pinctrl: airoha: add Airoha AN7583 support
Date: Fri,  7 Nov 2025 00:57:03 +0100
Message-ID: <20251106235713.1794668-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This small series introduce support for Airoha AN7583 pinctrl
support.

Most of the changes are generalization and cleanup of the Airoha
pinctrl driver. These are needed as all the array in the inner
function were hardcoded to EN7581 and didn't reference stuff
from the priv groups.

Everything is changed to match_data and priv struct so
adding AN7583 is just a matter of adding the structs.

Also the schema is generalized where needed to address
for the small difference between AN7583 and EN7581.

Christian Marangi (5):
  pinctrl: airoha: generalize pins/group/function/confs handling
  pinctrl: airoha: convert PHY LED GPIO to macro
  pinctrl: airoha: convert PWM GPIO to macro
  dt-bindings: pinctrl: airoha: Document AN7583 Pin Controller
  pinctrl: airoha: add support for Airoha AN7583 PINs

 .../pinctrl/airoha,an7583-pinctrl.yaml        |  402 +++
 drivers/pinctrl/mediatek/pinctrl-airoha.c     | 2523 +++++++++--------
 2 files changed, 1706 insertions(+), 1219 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/airoha,an7583-pinctrl.yaml

-- 
2.51.0


