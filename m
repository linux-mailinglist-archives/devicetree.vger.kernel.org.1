Return-Path: <devicetree+bounces-235383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF6CC37A6E
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 21:14:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A454F188ECE2
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 20:14:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D324B32E6A3;
	Wed,  5 Nov 2025 20:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="moVWB3Mu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0600532039E
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 20:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762373657; cv=none; b=fDh9muIp8TsHT6qTU7a9R8Mm91kPkrQ4N/hcfWw1remMlipBB0TGyk3shYstgBOCjO9NJE4IC8lvFFTu15FXsOR/NbTqAWlA+Zt728pPxuu1854YGo3rUm+B2yl4dPey7c9YR7X27BFyg+7OKyx6s3G8Vk2XEyDVZbL4VVsn4LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762373657; c=relaxed/simple;
	bh=eQJ0NUzQ4ouuCS/Q0tnfZ0GPptT7scZ1wPDzcolXdoc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EJzTS3Lc19cGK+yJPbPQNUpmg/sAIEeqFkWShgX+oHu+8bx9rA9zS6LvmWZOWEyrJPi+HLmq3iMSuWB8BS56M/1/1TTpVwAiYupohyR+sw776mMFdGA1LanwP/nN7losf/cyhtpBDmPyTnaSIjjMf3vOu8oGBVJvoOISTWO6sa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=moVWB3Mu; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-27c369f8986so2459615ad.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 12:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1762373654; x=1762978454; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yUOzNM4gKoG/nRwrmhCZsy6hSW9BT7KDwKYG6RCeAao=;
        b=moVWB3MuAbvIjFgmcK6v7CDE7VVVEnu4lfltQcA6iCLapx376Tccr80VOZQUHEwB2m
         C6w4TsgGxB4i9zdtnEEHq0WD7Xa+8+jePxG+WBg29a/fOZVKoiOAFKPneESrCBOrWKl0
         mNckgFBi1Wn73PTiQ7RWQGts2SVAgwWegkV08+IaOhvizkNfPoOnPvQWWkEHWJsp07Xn
         //MBjKTnNePN+cnDTR4XZA7JirtUtk7ujXrv6nPTYZ+frvQTuSPVRY7gjHe39HGRCiS9
         s5mGGbquwIkBSEsm5BWf1GyH/IaqCg6CPIXkyp9Qs4YACryFghstbcAspPMaq7Q/NKL+
         dolA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762373654; x=1762978454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yUOzNM4gKoG/nRwrmhCZsy6hSW9BT7KDwKYG6RCeAao=;
        b=OV1D5ZIsqQuoD8wA7YoyARUeeQHf+NdPRfNMcNIn3g8I7Y6ZtAUeH01svDTUvGg93v
         BgM+e2suesGc40cHoIhqsi58EapNVPGCtBRq0+tiFyUULXntiT8rmZ3BT4m8NG/WvCyd
         zIgsjBml+YnIgxuVM6ZnMfl/q2AaFpoZZDU4VZaNPIDehmlHgiAt8w2PVANBFCvsQ2Uz
         xEJWQxqpNF6HUC719lbh1/mLkm5jUAtekJi6O2Tua+piEXyRFh2yQgai+6J6MGEh+wBT
         EULcQAyjftNtQB+w28PFknFnUqHZfTN08MxT2zl6ggTgQhZ+oSi8Om/U2ZI6pyL+0RgZ
         BD+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXyk8F5Qsy1B4XwMyOeoHLmqH3gYPdKqjCJ1rmVPZt5mpdUpHC+LI0laL7RrbaIBcu1529urd3TbTjR@vger.kernel.org
X-Gm-Message-State: AOJu0YylJRRAarNzeO57R11ZOYnhmXe2Vw7rOabdVYr5W5rlvQgrRTZU
	8p8D8iVMHyzA2OAS/M7TgeCQnUW1+v4OLXRPPKROrDr6t+oaS6KoGSdhymNVSMF0ubI=
X-Gm-Gg: ASbGnctk2Rz7oXmGikUliHzqIinhs1RGYaczR3eBDyQ996lHk3zURwWY7AV2drj7J8Q
	7+i1J3Fb3PZ44KLSOT1FysWvBHMzdM1yJbYB9XwGiFFOQcyG2MmYPIQBMHgrO/VViHMdMVL5+6N
	3hMavLnhka++uwbJKFAhqbVUPIHgFHwlZnR1SHAah5X1IBDHBc/mAdd+EEdptj7kkBIgW3GMSJY
	l2Q9y/O/F3mvQNPcV0t+c/z9o7eDU0hhqXnuMo/H4nH0D1I0xabmlllzfQwciO7NdOvpA+KUlvg
	VUlaUAyQyhwLzvdrtcc0ZIJUmTIl1+X3hxmj2gqPy5o3q093oXLl0+88hWTCIehrLQl4XxXl5pM
	ZjASYOPIyAK0gSMMludJHqSVyJMK4sZX41fNW3ckwtZmkELMhsV8mJQbdXbZ4m8Us8V4aCBUmZB
	iwjhSFn6E=
X-Google-Smtp-Source: AGHT+IF4VrvhJWTj6Cx0+TOg4nCOWZFwV6Zvxic2/HHaRzt0NXXm/XIrkK1LrIxEIQcrBWb29lht3Q==
X-Received: by 2002:a17:903:1a07:b0:295:395c:ebf9 with SMTP id d9443c01a7336-2962add6154mr64000535ad.55.1762373653983;
        Wed, 05 Nov 2025 12:14:13 -0800 (PST)
Received: from z440.. ([2601:1c0:4502:2d00:3099:85d6:dec7:dbe0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2965096b8ddsm4039435ad.5.2025.11.05.12.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:14:13 -0800 (PST)
From: Igor Reznichenko <igor@reznichenko.net>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net
Cc: david.hunter.linux@gmail.com,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	skhan@linuxfoundation.org
Subject: [PATCH v4 0/2] hwmon: Add TSC1641 I2C power monitor driver
Date: Wed,  5 Nov 2025 12:14:04 -0800
Message-ID: <20251105201406.1210856-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for the ST Microelectronics TSC1641
I2C power monitor. The TSC1641 provides bus voltage, current, power,
and temperature measurements via the hwmon subsystem. The driver 
supports optional ALERT pin polarity configuration and exposes the
shunt resistor value and update interval via sysfs.

Tested on Raspberry Pi 3B+ with a TSC1641 evaluation board.

v3: https://lore.kernel.org/linux-hwmon/20251104003320.1120514-1-igor@reznichenko.net/

Changes in v4:
- Updated devicetree binding example
- Removed unnecessary check for !current_lsb
- Added clamping to current val
- No extra calls to validate_shunt()

Igor Reznichenko (2):
  dt-bindings: hwmon: ST TSC1641 power monitor
  hwmon: Add TSC1641 I2C power monitor driver

 .../devicetree/bindings/hwmon/st,tsc1641.yaml |  63 ++
 Documentation/hwmon/index.rst                 |   1 +
 Documentation/hwmon/tsc1641.rst               |  87 ++
 drivers/hwmon/Kconfig                         |  12 +
 drivers/hwmon/Makefile                        |   1 +
 drivers/hwmon/tsc1641.c                       | 748 ++++++++++++++++++
 6 files changed, 912 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml
 create mode 100644 Documentation/hwmon/tsc1641.rst
 create mode 100644 drivers/hwmon/tsc1641.c

-- 
2.43.0


