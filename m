Return-Path: <devicetree+bounces-250552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90229CE9EF0
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:29:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF8113020C5A
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 314FF2737EE;
	Tue, 30 Dec 2025 14:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WSOZa8y+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96BD25D209
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767104983; cv=none; b=In5OQmo+ouw2d/mWMRYSWHLkQXyLgy4AhgpdxKQHwoZ4YluB8LSC/DGZcem1Qy7VIxiW2MycSMXQlkmC24Hwva2ZdoD6QjCtlkabEIbXpTBXWBJUTX/4ATGsfZUIFbNEBrY6Bp1sDUAllnco7BDSeSm7Pv78stlTCUylB4RbkyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767104983; c=relaxed/simple;
	bh=a1J69aM75aks5NKEgsk6GGcoN5bgwi6MKrm7NlrTPLc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hHf80Um4JMGUYfa6XH7OYlK0qXfoja+Vfkpa6Kg5061TkVI2dzTXVwG8jUSNXSkk1m1Gr+7Qe27y2c5BNSw39rj0zkdi6VuubSCLcxrfJ2BEZTKeD26Z+xNTNbEFf1u544YKS7GX8SN5BBvb9mVbjrFnnp2h6Vfi2V2Eu8rHIAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WSOZa8y+; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a09757004cso128356285ad.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 06:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767104981; x=1767709781; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RxCXRDx0w1yWm9FY0vwmJNFDCxUNTSO4kUQ4eb5iubM=;
        b=WSOZa8y+F91K+5UPoDZTU4L497GHK5BOsFbUb8eEiCOXexUIPLva4JdIAE+SsK9xT/
         S2NiV8ivFM8vH2km7NqAAwlaJDDPJulF+NBJlrMdKTSmGXkieydv4Makv3lv+Uorq1v2
         Oh3qD0Ic2Ohp716PJ0/xna2akt9PaxPCFskB5w+TsKwrktjP6D2zgItUTbL7Yz//OOaB
         aHO2GPObIzWfWWVCt8PRugUUiOKjESlIK1ddxRLI4XmYocjFF2d8BVTbaf5nhwso//dV
         EJJ6bjfmTGmzQLO4VtmuO5IsuJsuyXnrQd8wv9QJFAWt4NtqMoomYPtcT1FRM3wGrtaS
         aSoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767104981; x=1767709781;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RxCXRDx0w1yWm9FY0vwmJNFDCxUNTSO4kUQ4eb5iubM=;
        b=aXJY/2yQPtQfC07a9YJNZrVlus35fwtQ2jmweS2T+mUxUkKs71g2Nu2T7sa8QSRz5S
         7SXjlnUxtpvsztPmQMgzkuSByeI6mSBUx0o8bJhye7DhumIjHvqhT7su/mJeJ/LHSTax
         DVGQTmwXCBt9j2Aj4bf08DCi23JIn4lF2IpQl/v0/xi3grOoPzxWhbhEYFzUPCclxeQC
         ETsdl5fL6krnIuboqfdFDaMh6wzH6aNsfgh7H5X6FWMzbWg75LLfTjMqsn+Siyj5v0xt
         1ux7XasOECW0q4kqGbmcRx8IeiX9LZ4muyw+8lf5zFZWPS+kOgD7bhaN4DZMXDvL9F43
         lpTQ==
X-Forwarded-Encrypted: i=1; AJvYcCU87HcxRUEIdtseRIdwfj7lrEpvVRW0jEF67WFgCrxwo1w8zEcDg0Vv4ZNdCidDfgzsY5ziU4Qq1SLL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1qmp/OM//kNEQh+MrtN45v5kcXNZ4bc8LJy2TERRarrJdYs9k
	E3ESQk5bLhE9KaueYfLXfo/8KU/TwqeeOf8XKG4EM67qOvHa+kMBHHb/
X-Gm-Gg: AY/fxX5SWE4OH6Xz2tE7SR3iMJ42u3RhVTCL2KOXs1fDU+aHdyWUUqjCtL+MBQQCLLT
	GmmRIT1oG4cXTxTrXIvDh+ao5OCO3FqJhA5f/2xD0Ttka++x8FOHoJMTGF7iOcTcUhnI5OnqCrv
	fKMjDCS3w8o5PPMbrPsxDxeiJet4FmUmNwJdkPnk+iMUDKPSKe9+Ix5iWWtr05MymaU/sc2eXdp
	22PdkMO3k4LoZFygBWqQbOarxRom5wGTQM5KdAWxO4q1BUaMdmKNI4ve7y3M5dz1sPBXOgESqS6
	Zxn0SHndJBNOtUITbUUjETm26F0XPX2H1z7j2K/HGaz4Gw+82iVbLNzqOo1B95+cZ+jQHJhX3vZ
	iBS5Z4ZYW5nc4KAC0O42AmAIiI98NPRqw3zxbE8sCHMJRBNXLdBbQ8GV6YlJVYK+nDyyrETh5Lo
	LKXckwru6LWFj0LNM=
X-Google-Smtp-Source: AGHT+IEuziUm5FuVFOLapyO93nCQfCb40IgI2Or9ENPDmWDsqW88deWU184+w+hKs3Tyi+48xUtmng==
X-Received: by 2002:a17:902:f607:b0:2a1:4c31:335 with SMTP id d9443c01a7336-2a2f2717b88mr314299295ad.26.1767104980514;
        Tue, 30 Dec 2025 06:29:40 -0800 (PST)
Received: from localhost ([211.94.234.112])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c6a80esm298183155ad.8.2025.12.30.06.29.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 06:29:40 -0800 (PST)
From: Encrow Thorne <jyc0019@gmail.com>
Subject: [PATCH v3 0/3] i2c: spacemit: add reset support
Date: Tue, 30 Dec 2025 22:29:01 +0800
Message-Id: <20251230-i2c-reset-v3-0-7500eb93b06e@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK3hU2kC/03MywrCMBCF4Vcps3Ykmai1rnwP6SImYztgLyQlK
 CXvbiwILv/D4VshchCOcKlWCJwkyjSWMLsKXG/HjlF8aSBFR036jEIOA0de0NZ31qYhbTxD+c+
 BH/LarFtbupe4TOG90Ym+609p/pREqNB6UtqeFHF9uHaDlefeTQO0OecPQOy0fKIAAAA=
X-Change-ID: 20251218-i2c-reset-a7be139213de
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Troy Mitchell <troymitchell988@gmail.com>, 
 Guodong Xu <guodong@riscstar.com>, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Encrow Thorne <jyc0019@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767104943; l=1371;
 i=jyc0019@gmail.com; s=20251009; h=from:subject:message-id;
 bh=a1J69aM75aks5NKEgsk6GGcoN5bgwi6MKrm7NlrTPLc=;
 b=18EDF1Yo3gil3UtsnPjnP04wMrhNkhNbTfRqJtMQTnJdkoA05tCeC3CideDM+jpKg5I8J2niZ
 Bu9piLwlLabC0cfTZuCfH/4VcODZZNdWNjER3S6w/QX91MM1paamAdS
X-Developer-Key: i=jyc0019@gmail.com; a=ed25519;
 pk=nnjLv04DUE0FXih6IcJUOjWFTEoo4xYQOu7m5RRHvZ4=

Add reset support for the K1 I2C driver. A reset ensures that the
controller starts in a clean and known state.

Reset ensures that the I2C hardware is in a clean state. We cannot assume
that no program used I2C before the kernel booted.

Signed-off-by: Encrow Thorne <jyc0019@gmail.com>
---
Changes in v3:
- Move reset property in dt-bindings.
- Use devm_reset_control_get_optional_exclusive_deasserted() instead.
- Rebase to v6.19-rc1.
- Link to v2: https://lore.kernel.org/r/20251219-i2c-reset-v2-0-ad201a602e74@gmail.com

Changes in v2:
- Replace reset property in dt-bindings.
- Use devm_reset_control_get_optional_exclusive_deasserted() instead.
- Rebase to v6.19-rc1.
- Link to v1: https://lore.kernel.org/r/20251119-i2c-k1_reset-support-v1-0-0e9e82bf9b65@gmail.com

---
Encrow Thorne (3):
      dt-bindings: i2c: spacemit: add optional resets
      i2c: k1: add reset support
      riscv: dts: spacemit: add reset property

 Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml | 3 +++
 arch/riscv/boot/dts/spacemit/k1.dtsi                       | 8 ++++++++
 drivers/i2c/busses/i2c-k1.c                                | 7 +++++++
 3 files changed, 18 insertions(+)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20251218-i2c-reset-a7be139213de

Best regards,
-- 
Encrow Thorne <jyc0019@gmail.com>


