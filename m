Return-Path: <devicetree+bounces-237812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D850DC54981
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 22:17:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C22E3A77E2
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 21:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFDA22D8393;
	Wed, 12 Nov 2025 21:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CzF0QpP5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F9C27E049
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762981974; cv=none; b=sy8ym+2CCWo6C1LKyWN68A/WiIkRMBykQfOHS8vO2Y+1ue4CiCCeU8pPBFDO/8Jqdbu1Bb7hpRh7S7Lh1fBBAwUhChqd8pKIdQmgGKQQtY1tQ8Mekx7drPR9JnToANv5oIRbZ/OPkDUcoNmFZpTzeod1mDqzB7WclGnT2VI5yes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762981974; c=relaxed/simple;
	bh=RZJdhn1bhOKDxWDWTYIA7jJWtzp2FszzhJrftJY1t94=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=HqadMbxXtr3KQCMaY5cWPF9DyXjL36y5uopRek0PPy5bc25V5uoIv9emTllcqbfrZiY3CJ8ZuSLpfCM4K6lwcBYCjvnYEcvf+4OxcgK12su55GaEe+sALf9Id6r1jKhYWZJXNR4J9QFJ6+Wx2JelpDqpYuCCH020svmQdlmPtcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CzF0QpP5; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-29555b384acso845685ad.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762981973; x=1763586773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RZJdhn1bhOKDxWDWTYIA7jJWtzp2FszzhJrftJY1t94=;
        b=CzF0QpP5y82GGttXhB7Mx1lSOlSSIPXBG6Gx3cP6ZuLuByUg6xNeJzD9m8G2yVmXDP
         0ioSC3P9DEbRYBXa9ZchtthmGJ0BIFVYD1oo5L4hmHzstHzgxV6zUOouV1DFdX3EYXOo
         Ogvu9eBzDg9yBhBNhCRTzjAwXcze9N9IQG2/5lViE8SPn3DBQFCFxMLdOh/LbqJLMTdc
         YRcn4mZXL4WJY/pbyIm5Vj7mSi2UTqv+rlAuwOXQbOipJUoD8ve7ojgAR8ckveHH4hIv
         cBJwwqlUIrJV31LL72IX/xyts75SG6vZZzyTgJq+8PO8r3hbIa8/Bu93Za8g6er4DuFy
         OFdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762981973; x=1763586773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RZJdhn1bhOKDxWDWTYIA7jJWtzp2FszzhJrftJY1t94=;
        b=WMeia1quIc9LqTcNWXAU9ZPzZStUWN70d3Tq2YyGDXuNeUFBljbgMh/7yeiCRhXhzH
         aC7cQjes9S9kszg5C4QBygaJSHI/6Yx2oehIJaeS/p6x59Omb9VlwqWQllVXv6C/07hL
         2P90Bdwfe90igtdtzttiKLRSlGg1mqL8DEbSXtiw5isdKLsk/oZVwukJwU1dGugMe/Bj
         LObrm8EnHEd4RvOwyKfAh4UAE8OkWRgUFOjAmI9Bl/zvKGCugnrsqXs9BfehHcJ7JS6H
         raBdYAB9QSEb5B6BCBRFF+4WBZxRHrTtGxLvFl4bTL5uk1RW7kjRw69Ay4R+jq1rbhPe
         JgDg==
X-Forwarded-Encrypted: i=1; AJvYcCUt/uQsGvb9RGgRRlqSWtWX1V0WZSj/ndmom5/i0v9BcaO7TV56sVOeLnmsMPY5q84SdJRLbSKB00lS@vger.kernel.org
X-Gm-Message-State: AOJu0Yzcxqc0f70agyIa1zX9p/6DV/7e0TtInwkPpvCLl5OlemHPiSgF
	2x4A+ZKsoZX9ABKES8uUd7M005U1Dc9dMKx6BLiu35M4qlsJr2e/TWtp
X-Gm-Gg: ASbGncv4skWifozpKOIW1FY7HtAIJiJaiFFL1xere2MCVDO/bbgs7F7oWQdffwtlXNa
	jbKTFBEg1R1xBw1xxMjMpMH8/yyGeXih+LB8P7HSt7RsPc3fiXNLXNnkUGlZsqjfWMNm3CkxNmZ
	e/1nhKqtbfANs9tXDw9Jv5z5XByvZAVlstd15XzC8ZhccAd+oezGOkVIXHzvxtcv3yKpCUy58ql
	6rv2/3r0nqENbsiDqXkUu6BvYUGkJf+/HRYGVivbdC1tTPD5hxcXrdI5WfKEc6neZeNGA7hFUNM
	mHhguXyAtFKRRKmNecMrpgSM4EwuEI63zxNS2BVsn3Ig5tUhMU36v4/OAjgo1Vj/OjsBs9ohNV1
	9B8G6xMH1zOpfR/EgiwJzT5FPUqgbPxT+ybl3hzzu54mf6KnmMD7QWjtiEqR6ADEF3Co=
X-Google-Smtp-Source: AGHT+IFeIihBkU77ETtw+XHaa6KFXIJgpjHeG0dAkdR6b1vkSG3JvHMNOQ74vp6k+nYvvBf1xBPKlg==
X-Received: by 2002:a17:903:2f88:b0:295:557e:746a with SMTP id d9443c01a7336-2984ed34126mr48888625ad.13.1762981972686;
        Wed, 12 Nov 2025 13:12:52 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245ecdsm1011525ad.32.2025.11.12.13.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 13:12:51 -0800 (PST)
From: Peter Shen <sjg168@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Jeffery <andrew@codeconstruct.com.au>,
	Joel Stanley <joel@jms.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	peter.shen@amd.com
Subject: [PATCH v6 0/2] ARM: dts: aspeed: Add Device Tree for Facebook Anacapa BMC
Date: Thu, 13 Nov 2025 05:12:46 +0800
Message-Id: <20251112211248.3711889-1-sjg168@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds the device tree binding and the initial device tree
source file for the Facebook Anacapa BMC, which utilizes the Aspeed AST2600
SoC.

The patches configure the necessary platform peripherals and aliases for
OpenBMC usage.

---
Changes in v6:
- Rebased onto the latest upstream kernel (v6.18-rc5+) to minimize potential merge conflicts.
- Restarted the patch series submission as a **NEW THREAD** to fix the incorrect threading/In-Reply-To usage in v5, as advised by the maintainer.
- The email sender address (From:) is now corrected to fully match the Signed-off-by: and Author: address (sjg168@gmail.com), fixing the DCO mismatch issue reported against v3/v4.
- Corrected all previous style issues: fixed block comment styles, line length issues, and removed un-documented/unused device tree nodes (amd,helios_cpld and eeprom@53).

