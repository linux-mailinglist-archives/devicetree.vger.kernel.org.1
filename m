Return-Path: <devicetree+bounces-277813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EEiIEEHvGkArgIAu9opvQ
	(envelope-from <devicetree+bounces-277813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:25:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 048192CCBBB
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:25:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 496433220C62
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8113612FF;
	Thu, 19 Mar 2026 14:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GW2j87qq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2DF3370EC
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773929725; cv=none; b=byay/a9uMotrAT+0hEu5PwjqKche+a+aExKiKLuzDUvLEIfLFWvZthxLanva26VQb9eUghP3HGueEY5yd8O9Tq9ht3dQ7RvEZ7/lcHnFVeDefd9hH9og0MDBAcx2qbUlerAAXKp6z+fUnuPVSXjwOqUH5k47ljIu5YljCscM/k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773929725; c=relaxed/simple;
	bh=8kS+1y8NLmoU6Dtxma21Rgv8v/62TbkWuij5XLIyCSw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=K+etGTZiL6mB+MoGN4eSHkC+oDvtn7Ik5RVbRB6F4uyT9Rc1rKCVSLEWS/FW0TZczD/fmPwcD4oMd01dQGikxma33drSqqz2JI2x1M2QiM7qcWKSrMpIjPnk7f1Btl4mzW8LyZiIVaeesHWj0Sgl41xzjHy7V+jhEmkLuLjlWgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GW2j87qq; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4853e1ce427so10471525e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 07:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773929718; x=1774534518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rw9fgwKjqMmJpNhhmasAcm5Av9X74nVirvYp0L8odpA=;
        b=GW2j87qqiblxD5JA5n7hZZ2sMRgQbAsiRzImidp0Rtn/pCUZ7hG1LAekWXq4YTtpxt
         kWSa8NIaTqfOMefzUYcyGBWhL+aHdw2boTq5YlN1ntQf555av99NDetmlT7dY2dFf3+6
         l9xQrJiRbbatzi/Hs/0tvBS7gGiTbhhmtKWgpHgc2L5A3pFILXGTL4BwGbsEFnPPJWS+
         Ce8bStuSzxGiQtGeOCeiEa0RVVjISVrfmKnA+R7aWLe7dKvKkhcZi56tEeNeKqf32BCz
         VvYOZ97Q+BT5HiN7FYcjPJkgzda1R4k3KD6h4yjAxu9be/CnxF05qyF8MCOrMoPsp8Hv
         /gpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773929718; x=1774534518;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rw9fgwKjqMmJpNhhmasAcm5Av9X74nVirvYp0L8odpA=;
        b=OagSSl9cLW53mAa6R22xGwcG0PZ/58SsG9YaORewttRBtqxHbcOIRQXx4GcGY1HP+v
         e15ZCFGHLWAJobaN4LM9mkpwEakBqVQWSRY1eT55mVxXbRMfb30s5HzHaffskGJJFmxM
         fXlnc2Rt1ggv68SA8PBn9IsTnyevcfAtwqNhPt8szY8WWmZ7Cy83A5gzJT7UDHj/MAmk
         rI4BXdT0w2XlfEwSksf199AB3UJN5AFUJDOYsnpnnQjze3IvhDXixiYIwznkRrj65yb5
         8husKdUjsQwhy4BhNe0EFKWAZ46Wrus0k9w49DQ6xZfd64vkuSo3H3QErgdjKIKB/5O1
         87Aw==
X-Forwarded-Encrypted: i=1; AJvYcCWIcZrOCr1qHHlkGh3OG3n6QM4TSFQ5A+Ud3c+shu1CXlkwcnOZIj7bs+dhQczsZqJOfIK4bvL9Inth@vger.kernel.org
X-Gm-Message-State: AOJu0YwPVhi5uuNpXMefJYkf97O8oyzHxKU5BOocGKtgkcpLJXaxVK07
	iDAXEYa4M11KCenSUfn1pX3Hrh/9GeNQqOLB9KvIfwfkKhEM/CT0JJ7b8aE75v9+kmc=
X-Gm-Gg: ATEYQzyAiT2OfA40l+zwCTVN1vYx/DyDhJW+PjpZgOA4Xi1cCqwe1d8p3v2xg/A5Q8U
	/t6uUhnnrzhgBSXdKCngizakHq+Q/Fncv6G01Xa565Sef4my8/N/St/ZhnCO5BV35dMiSoON8/8
	4mxKz/ry1YrJyUlNtv/DYgAXya+o/+rxildnLEiy/yQFvBnmWGjWRep+G5u/2gioweWzgqL7C5s
	T5AYT/Pvoxjqyo33N8mDFx/rc6atw34b3XEcjgzYiYwZ0AHmP6OMKxPSnOZLq8mfa87EEJAAGjG
	JK4Gaa1jF1xBstz1Y8c3CaG8oL6UxiK20LhKlp+fLLFoXjNkhWjPAxiImBsHW6O3vG7jq5iymRq
	LGSyM0qLeKkOmVfV9IMBmqGkyJjl/bNXZLeyoDeslg4D/o9JfttqQt14nBsznGdKbJUKhGoSGb1
	k1FkKXSjx4/Q1qzMK+4x84tXkeLkhNi9Ke94GtZnIXnnomOs3NMtMcF9QIya1Pr5S1WXGJ3oKJP
	0uH0yeu3V/67vn0plXQHJ8fyyTQwMdQfaGL+Vk/w7JStEM=
X-Received: by 2002:a05:600c:a4f:b0:485:9a50:3384 with SMTP id 5b1f17b1804b1-486f4476ccbmr129027975e9.25.1773929718223;
        Thu, 19 Mar 2026 07:15:18 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:f7c0:c444:6359:4c21])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184957bsm17824618f8f.5.2026.03.19.07.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 07:15:17 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 0/2] Add support for configuring pin properties on RZ/T2H-N2H SoCs
Date: Thu, 19 Mar 2026 14:15:13 +0000
Message-ID: <20260319141515.2053556-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277813-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-0.931];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,802c0000:email,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 048192CCBBB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi all,

This patch series adds support for configuring pin properties on the
Renesas RZ/T2H-N2H SoCs. The RZ/T2H allows configuring pin properties
through the DRCTLm (I/O Buffer Function Switching) registers, including:
- Drive strength (low/middle/high/ultra high)
- Pull-up/pull-down/no-bias configuration (3 options: no pull, pull-up,
  pull-down)
- Schmitt trigger control (enable/disable)
- Slew rate control (2 options: slow/fast)

Note,
- These patches apply on top of next-20260318
- There is a dtbs_check failure reported on my machine which is due to
  a known issue in DT-schema (which was discussed on IRC with Rob),
  arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dtb: pinctrl@802c0000
  (renesas,r9a09g077-pinctrl): xspi0-group:clk-pins:drive-strength-microamp: [9000] is not one of [2500, 5000, 9000, 11800]
	from schema $id: http://devicetree.org/schemas/pinctrl/renesas,r9a09g077-pinctrl.yaml

v1->v2:
- Updated commit description
- Switched to using the standard drive-strength-microamp property
  name instead of a custom one
- Added a description for slew-rate property
- Dropped 32 bit reg access for DRCTLm registers
- Switched using to guard for locking in rzt2h_pinctrl_drctl_rmwq
  helper function
- Dropped using RENESAS_RZT2H_PIN_CONFIG_DRIVE_STRENGTH instead
  switched to using the standard PIN_CONFIG_DRIVE_STRENGTH_UA

Cheers,
Prabhakar

Lad Prabhakar (2):
  dt-bindings: pinctrl: renesas,r9a09g077: Document pin configuration
    properties
  pinctrl: renesas: rzt2h: Add pin configuration support

 .../pinctrl/renesas,r9a09g077-pinctrl.yaml    |  17 ++
 drivers/pinctrl/renesas/pinctrl-rzt2h.c       | 259 ++++++++++++++++++
 2 files changed, 276 insertions(+)

-- 
2.53.0


