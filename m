Return-Path: <devicetree+bounces-135689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D12A01B4A
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 19:15:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E37AD7A14A2
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A0301C5F24;
	Sun,  5 Jan 2025 18:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="kd9t151b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91B217C210
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 18:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736100935; cv=none; b=ViWRCB9U5er4EYJAmJsCs8WyMh8nlBl0W2dFkEU5Fe20gjJWQsuCDxBa5QXVKDDfJ16K1GNG8NShwVqyG/SAquM4ghGmkw7FYWuK4XZ/4zEgIMV2z+PKA5gqePYsLsRUsZ11F0B3voIES5leTaQuoVVSSWWBhJd2jdi4lpE828o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736100935; c=relaxed/simple;
	bh=OO7gbuzllcSGMPJv1dkhJSrGvVPCtEbrjNXZy8Vg/Yc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FJ7/s2kiInLPxPF3hbzP/gV7URsS/8vio2IGxawvKVbaHXBJ6pyisjTWbQm5JbZxIjQDH5831BFH96iKecHZQM+zQMtN1i//oduZyr21cMFRD9/3FD09N0tpP2pA828vplfJghbl5shnWS1i9Sa3Xa/LA5pWRZzzvbqO6yzNi4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=kd9t151b; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aaf57c2e0beso940073066b.3
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 10:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736100931; x=1736705731; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7JaCiDSlWL3n6x9r8puiAFWGWFXePu89GjNolb6aW4M=;
        b=kd9t151bJXwmVO8dfzTukgz26JLNiy7NooTH7dJhpv9E0RwMZIHgzhlDOdRAiODzyh
         nzQ6VSi//tmJCfFoXI0z1nnTIEC7qrSbJQqYDZp9VygCsYTpo+E0H6qWjDdAjfB1hcOM
         g5haVtIJzvgZFVKc49E3J/q30sfVT3/d7A5eE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736100931; x=1736705731;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7JaCiDSlWL3n6x9r8puiAFWGWFXePu89GjNolb6aW4M=;
        b=m5+dYKN3cHbUGGMJ3Ty4XNBUGGl7RSiRSiDkiYi+yyfbQv8zHKdPYkf2Y+634cfVAv
         W8FIRaPtzeLz4Sa1ME0Bi41Jjm2ex9EFX2DZm7PmkWt+7c4+gtV8ri9HmaXvCOFN4bxQ
         MVjwDMda8lKH7a0YLmytGFIlYH6+cD7pEwcLva5zFno3q2VOMTkmBb8M/Od1aoGvn5+L
         +7p6zjE8JsVMQu+36doJllsl2t+/7yhkYHmyM7PG4Zk3XIRoFCj320dVi3cB5JN5gnTK
         d9AtAbjTGikcvkRnnMg4oSWrlHH+aZgVfG/HF0i+3Tyek6xgLh0ESRBXloZHL/kQUpVw
         Iq6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUCsPgpAgIj+ylt35jdpvNddc+h83Dp9r0i2Xc5VNacHVg5qdHhHHYRuhamL20uZzIF4BXqVibeizN9@vger.kernel.org
X-Gm-Message-State: AOJu0YxlkpHd1e+4ZHp+YCc0mT8gHaEV3wwiuKNoQedt00rC9J5L379W
	0riujj7DQ0CALo1FjmxkoxiKeylYwGi34jt84KmqFo1PoXVOSKRbRjG9uTTyxeE=
X-Gm-Gg: ASbGncu4FI1cVl31WLV42xt0evFOFfy9UoMioZUZKe2O1kDS0oXeLOM9zAwB6EuVfXM
	cCOeSLsQyq2UGAAW7OvOU6tOwyIIahFXmFQNx7ekZQ+R7lq/+1zRzTVjpJLaJrROrARRrVvnH2u
	QhO+whu7wzDjH3kjGgnxJmPs83Rfm0+a23o7BUNdI9yFYPvYRT1UHic5WfgnDM0ZzeehCmXy4JD
	P6Q0/8LPOQqHYwET6STthHRzpag432eA1/w4+/8BIYSWZhluvSMHejyRXWvxrIIlrJp11QV1xcS
	shbXQqRGzRXvMa0nAa4CJeszUDQgkNixBpjHZ7OeB/xnHox/3iHhVgTynp91e/pYnkkwJayGSZs
	F+U8qH7qpyV2fqJt9/Q==
X-Google-Smtp-Source: AGHT+IGx5I432/7zv90tAswquFGM3JlzRsAxUeSnbD4QR3LNzbPaGo4Vdu+XKbNBzzfORLPTWC5EKQ==
X-Received: by 2002:a17:907:7dab:b0:aa6:98c9:aadc with SMTP id a640c23a62f3a-aac2d45fb01mr5099786866b.31.1736100930471;
        Sun, 05 Jan 2025 10:15:30 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-41-6-15.retail.telecomitalia.it. [79.41.6.15])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f178sm2138185066b.38.2025.01.05.10.15.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 10:15:29 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 0/6] Support spread spectrum clocking for stm32f{4,7} platforms
Date: Sun,  5 Jan 2025 19:14:12 +0100
Message-ID: <20250105181525.1370822-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds support for spread spectrum clocking for stm32f{4,7}
main PLL.

To achieve this, it was considered necessary to also apply patches to
improve the documentation (conversion of st,stm32-rcc.txt according to
the json-schema) and the code (use of FIELD helpers).

The series has been tested on the STM32F469I-DISCO board.


Dario Binacchi (6):
  dt-bindings: clock: convert stm32 rcc bindings to json-schema
  dt-bindings: reset: st,stm32-rcc: update reference due to rename
  dt-bindings: clock: stm32fx: update reference due to rename
  dt-bindings: clock: st,stm32-rcc: support spread spectrum clocking
  clk: stm32f4: use FIELD helpers to access the PLLCFGR fields
  clk: stm32f4: support spread spectrum clock generation

 .../bindings/clock/st,stm32-rcc.txt           | 138 --------------
 .../bindings/clock/st,stm32-rcc.yaml          | 170 ++++++++++++++++++
 .../bindings/reset/st,stm32-rcc.txt           |   2 +-
 drivers/clk/clk-stm32f4.c                     | 155 +++++++++++++++-
 include/dt-bindings/clock/stm32fx-clock.h     |   2 +-
 5 files changed, 321 insertions(+), 146 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
 create mode 100644 Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml

-- 
2.43.0


