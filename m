Return-Path: <devicetree+bounces-246056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24008CB8519
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 09:48:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 393EB308A955
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 08:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54413308F00;
	Fri, 12 Dec 2025 08:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UwQ+HP1a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E6B2D979F
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 08:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765529222; cv=none; b=jdfa8vZENThhywYJdDlGiD1vcpYh+MKDX5seJSPFGkcNZrW8oq0y/vFD5fTJ143E5+KCe3aYlN6fqlJB4ikXiPxjZZnXuZ0Dm3UhYW83gJp/EOrgh2EiP6KBWrznI2lXiTbCkHrf3TAm+rJLaydsHfoc0XnOmxgPozi9OcDMvBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765529222; c=relaxed/simple;
	bh=8E5+Kpt25qMxuVFtPp98+FzLKsx7X8CnYqgMNjiMvQM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jZgI1J6Ovup5WY/2gx2T88oz+0AsZ9i5bKiY5+7Ox8KqhCspbS4qwpfz0FnvrwHex1OVfVhhgkSTre57JJLqgzRkuBhGuZbY7nzLchUOXOa1FhvmhUMHXGpSSIx0wbLtAIM80urQDS4TC7+Gh/Egh7XWeZmM5cAbnB5UJVVdbnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UwQ+HP1a; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42fb03c3cf2so355574f8f.1
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 00:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765529219; x=1766134019; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IpScSZouW48AySITqAmVJ4AMB6de2gL0dmg8n9rDANs=;
        b=UwQ+HP1a/DY40Cg0YQ4FjYJSepvrsmHE6YcLc8GYgeIDYwDElow/k7/meJ2jLjjhOU
         fASH9ooFUu8frUdr01lN17bT1UkdEbeJ17mCTCsr/r+A6c65k7XgrLX+/xtiWVxv+FC+
         Xgl5xeISf7e1M4E+Vko/y02HBg6DTIZQiJdqmKnWelK6JBY2GXmEAl6k21DJdYweWlrW
         jnG46qWziaq2E/6/tzBpQy56hiqEqL4ZmTNskOxBKNLSY0e/QvjuJjjCirTeVS66Uv58
         xL7Y+thEjJRW8eNUCrwMeBo8czaO0KJohRe/+hsGmthFNNs7NbcnZsjOUM4YtL0WJYZp
         jFlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765529219; x=1766134019;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IpScSZouW48AySITqAmVJ4AMB6de2gL0dmg8n9rDANs=;
        b=p88IjYJy2cZ6GO0fDnLAw/1h1XZaY2WaFgsCKb1+kHGSDFUXIOrWdDPS2gbLDs32TJ
         dW1x9r3PkRPEKXxZaPbwFk3NgvCggMYcVa0Rw3TXwW/Whj1HLL1Yi4NQ0CTOJi7tow8H
         qPK/oHomUIldvVJ0J+BVer/AiNCye7FpyQz2vVO+iWxvBqJs5zUv44mU8qJLzVIOqbaM
         yK1qvT1vjnXTbopXD0Zrlj39OeorwrmTmseAD988i/Z8QAhN/BgePcFSdDLn+N71Jg5g
         YumiLlfp95K4Jn8koEojvCBfas02YKNhSzpsAHu5w/v23V5FKytTf/d1v4g9rgA74kd/
         dzwA==
X-Forwarded-Encrypted: i=1; AJvYcCVhiLfsxeStxxxq1WnqczHNn/PGOGLI+2j7qOfn9Ixdx6xiHJXyg34w49qN3U7S1Fhim0nWyysbWSNJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyV+d41+oa7iJRmKnhO+rjgBinWQY6ZXRlfnvY6NVB9SbUmEBUN
	AOTKy84rTIO8nZ+eVAsWlm/huMLQ0/KbNkamKE7pBjeN8R0dwuM434tK
X-Gm-Gg: AY/fxX6QcTZ4lLY8ZiLIbkMC7rCWnV+VHC0LWpfDGf1Z5a2BHC3/cGWWQ8o0aCq2A13
	4E8ThViSLGph0TIspsNdkdzs0mvcyNUPXvexUnr4lie81FSzQOBN7cx1IBFJ3SR/zZ89PZW5ByY
	cNz/vaAZ9BVbXIgtG/wPkDmygNsJQUJGpaSlyeXzFJxR0pbkxXKQlRjIreQkuz57QpgVbHzQRUB
	comkryrwcYUUAdh7kJRrb9bQ6r/dxIa2SOXJP6cluwQrzVeezA8AhYqpw2laQRxGWVPgbsTI/jA
	dbGEuSFhRyhLs2DMxZONqyfp/W4SVT7e3Dg1gI8SAyE9WPY3PBuxQJSe5YvjCzNl97jpmIEu95L
	dxOd2RPKD9mR0myPQ63owhOePyH3qAodpmhpeDFfP4tcASE/R8fIMa9+wQ1JOhhcGv7FoVHlKZ1
	VSH6YAeuFlS3fG3Wr4ZSrvaL/Vhtg=
X-Google-Smtp-Source: AGHT+IEJLrxF4ZhjOxvjryGu5iXxEkpqiLi9xidSHfaDTvccGpMAdBouCofvvVm8bTWQArd3I3G9Tg==
X-Received: by 2002:a5d:5550:0:b0:42f:b683:b3bf with SMTP id ffacd0b85a97d-42fb683b57amr765197f8f.19.1765529218779;
        Fri, 12 Dec 2025 00:46:58 -0800 (PST)
Received: from eichest-laptop.lan ([2a02:168:af72:0:9f18:aff4:897a:cb50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8a09fbesm10456076f8f.0.2025.12.12.00.46.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 00:46:58 -0800 (PST)
From: Stefan Eichenberger <eichest@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	geert+renesas@glider.be,
	ben.dooks@codethink.co.uk
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	francesco.dolcini@toradex.com,
	rafael.beims@toradex.com
Subject: [PATCH net-next v1 0/3] Convert Micrel bindings to YAML, add keep-preamble-before-sfd
Date: Fri, 12 Dec 2025 09:46:15 +0100
Message-ID: <20251212084657.29239-1-eichest@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series converts the Micrel Ethernet PHY device tree bindings to
YAML format. After the conversion, a new property is added that allows
to keep the preamble bytes before the start frame delimiter (SFD). This
helps to work around some issues with the EQOS Ethernet Controller used
on the i.MX8MP which would otherwise not receive frames from the PHY in
10MBit/s mode. The full description of the issue can be found in the
patch messages adding the new property.

Andrew Lunn I added you and myself as a maintainer to the micrel.yaml
file. Please let me know if you do not agree and if I should change
that.

Stefan Eichenberger (3):
  dt-bindings: net: micrel: Convert to YAML schema
  dt-bindings: net: micrel: Add keep-preamble-before-sfd
  net: phy: micrel: Add keep-preamble-before-sfd property

 .../bindings/net/micrel-ksz90x1.txt           | 228 --------
 .../devicetree/bindings/net/micrel.txt        |  57 --
 .../devicetree/bindings/net/micrel.yaml       | 540 ++++++++++++++++++
 drivers/net/phy/micrel.c                      |  29 +
 4 files changed, 569 insertions(+), 285 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/micrel-ksz90x1.txt
 delete mode 100644 Documentation/devicetree/bindings/net/micrel.txt
 create mode 100644 Documentation/devicetree/bindings/net/micrel.yaml

-- 
2.51.0


