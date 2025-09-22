Return-Path: <devicetree+bounces-219956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE914B8FE76
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:06:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 873933A39B5
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EFB0296BAA;
	Mon, 22 Sep 2025 10:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LQ0QVCB6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B80A2AEE4
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758535582; cv=none; b=u+Y7yWopHlM5cZ7LNdWnqGxCAjIuZpvJZLau3rcIyj9g3CJsmKFZzWB2l5Uo5MqO15cKsfUY5ypy0uD0Tufmclz7iaXiFFRRkaA0FCcgBgwLJ/839OfZISHLPSlC6a2bCDNCwqH2quvxfXP5N0amD+b08dJqd/cC4ewn/VMv76s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758535582; c=relaxed/simple;
	bh=tlxtEOBd50Gk6lCncQ1rHB0F3BBqgZPoLgxbbS4ptdU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EFlP4kcnUpWx+xR4LV2yrjx29l7TQbf2uIH4VX+dekamontsimuXAbMmLM8UXvp0LO6aeYWpPQm8x0kz8svd63qmpjjQ9XwQ4YrPR8vPvwWSk56pSZnkf8z+oSIGAXO3zzQfjt6pLIQy6vCIIgY4NQ3WEj6rwPkQHEaRJgG8Uys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LQ0QVCB6; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3ee130237a8so2164255f8f.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758535579; x=1759140379; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=unx+477Xo9SXjdzpioJOWI84YS3CAeJIIcacV6mD704=;
        b=LQ0QVCB6fYkd9fYvwVHKRT424vLLV5ldUXsl4E0iyu21XF0or/1VU1roivwgjPhWhg
         GZgqkCe7T4cuKaIWhrZV4qX3J2B8ByMkJeTEN1EbZPK+/0GjSAsF/958d7CW5y9eIj5i
         O6lBPAK+tpd7cun9dUgW9dzDDAtLc7PaRpQVd9axH+2NB2H9QckvOEDRDRlw8aVc02CF
         adRPHukBrNf72QN8pJf4HZcMVjvh0tjhSnBkxWbzdWVPvUfHXYhW0zYjJSczR+b84nqb
         C63jEl7uXqAnNTkCSCi0ljnP/Oage77Vm2/HRJtBw6qxfQZQBaOSy76ge0EN/RK1balD
         GRow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535579; x=1759140379;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=unx+477Xo9SXjdzpioJOWI84YS3CAeJIIcacV6mD704=;
        b=qgrSn+6Ne3Xm3GFdl36EFRUQL1yR/6x+NfoddQx+v56S+yohfuwDkWchJZ2jFkrXkf
         e9jGrPwYXNnjNfMzPMkXIkeg6SzBX2Z7eLYWVyX8pQwMJ+2gIyTkaa+yPRAe4QSTqB9C
         XMR44ATMUI2ihPP3WbGWHhqA8qerMUjSADgQI7B6dzJjbLorQuOxc7t9Qsx9zOtpcZq2
         slUCl27G7R5PVICay3/wehLMV62YY5LWJmEe1RY+tLmTYayQ33BEGwJbLa8rJhq2m3tt
         sKOq2u2uY31CEqAuBgcjiv4duc5GIwuheAhdLnEjlyZwrXef52A/wiA8kEW4m25GixBv
         h3eg==
X-Forwarded-Encrypted: i=1; AJvYcCUYRL706tozX1Yno7yFY849A97Bp+flGEB0QfnpXdTaIlto9Mnh3ozthdmBTe/cHDkYqCFOqLYflmJQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy59V6vuMxKnQmFRoUkcEQdo6mEdSNgmLXNsqXa/Ct4N6Niw9p7
	Yvr/GT9LNa23tBiJHJlrudhcHPqOkDRAVoAS2S2GwkzIbuWHR6stSLvL
X-Gm-Gg: ASbGnctLmJC1EKBbrFk3sZVFWIYCrp+hCLwJC9wJH2yb1QQnzggc4Rx/s2jgifFKchs
	bOANthYk2sOUEYGeMtH6GG8nFBe0kQHDJ/wQHo4PDOVq57Tr7Z9/Alwr8OHWJQV6JxQLFlNi2VQ
	pj4/mj1/6rausxeEMrxWMUyVaqP374xEvk8Go8k/eZoWDnZUkjNyzLaGLYZpWYI965eNbXNL69v
	5y7owDJXcpMr8Os2WtbW4P1qHNG4dtx9i+2j5Pa5WrBSLLEPVPFoHDpqTxP09fNUMbM2XjCh1rL
	6Q8itMTHCgmG6JpiXM82r8MC6p4SfePMzMv1xZs3FdwgAqdUtOtFsNIQhQzVgqUWjSkGPaGt7HQ
	NkzBtzdNiTEcowvZaMDjUY5QuWS8wzA+f3gf4Zru4Un6dmJIXcGTfeuALvSyIsq9UZEtQ2GzzcT
	b3mo7X7ZrygLwAOFPB
X-Google-Smtp-Source: AGHT+IFPgQWMfW7+KuDx0XBlYA9F21pJgkpSv8WTV4nH9rMZwyvad2B/FC4WdzJHu0BGJqOjLMdEzA==
X-Received: by 2002:a05:6000:22c4:b0:402:7afc:1cf5 with SMTP id ffacd0b85a97d-4027afc20d1mr695483f8f.35.1758535579347;
        Mon, 22 Sep 2025 03:06:19 -0700 (PDT)
Received: from localhost (2a02-8440-750d-3377-171e-75f8-f2d4-2af8.rev.sfr.net. [2a02:8440:750d:3377:171e:75f8:f2d4:2af8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46d1f3e1b03sm40908675e9.23.2025.09.22.03.06.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 03:06:19 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Subject: [PATCH v7 0/7] Add DDR4 memory-controller bindings and factorise
 LPDDR and DDR bindings
Date: Mon, 22 Sep 2025 12:06:13 +0200
Message-Id: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAJUf0WgC/x3MQQqAIBBA0avIrBtQS6WuEi0sR5uNhUIE0d2Tl
 m/x/wOVClOFSTxQ6OLKR25wnYBt9zkRcmgGLbWRo9a4DhhCwZVz4JwqOmUV9SR9NBZadRaKfP/
 HeXnfD6+bg1phAAAA
X-Change-ID: 20250922-b4-ddr-bindings-7161e3e0af56
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

Introduce DDR4 bindings, which is the first DDR type to be added.
As the DDR and LPDDR use the same properties, factorise them in a
sdram-props bindings file and rename lpddr-channel into sdram-channel.

This v7 is a subset of the v6 and other prior versions, split to simplify
the review and merging process.

Changes in v7:
- None
- Link to v6: https://lore.kernel.org/all/20250909-b4-ddrperfm-upstream-v6-5-ce082cc801b5@gmail.com/

Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
Clément Le Goffic (7):
      dt-bindings: memory: factorise LPDDR props into SDRAM props
      dt-bindings: memory: introduce DDR4
      dt-bindings: memory: factorise LPDDR channel binding into SDRAM channel
      dt-binding: memory: add DDR4 channel compatible
      dt-bindings: memory: SDRAM channel: standardise node name
      arm64: dts: st: add LPDDR channel to stm32mp257f-dk board
      arm64: dts: st: add DDR channel to stm32mp257f-ev1 board

 .../memory-controllers/ddr/jedec,ddr4.yaml         | 34 ++++++++
 .../memory-controllers/ddr/jedec,lpddr-props.yaml  | 74 -----------------
 .../memory-controllers/ddr/jedec,lpddr2.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr3.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr4.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr5.yaml       |  2 +-
 ...lpddr-channel.yaml => jedec,sdram-channel.yaml} | 40 ++++++---
 .../memory-controllers/ddr/jedec,sdram-props.yaml  | 94 ++++++++++++++++++++++
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts          |  7 ++
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts         |  7 ++
 10 files changed, 173 insertions(+), 91 deletions(-)
---
base-commit: 07e27ad16399afcd693be20211b0dfae63e0615f
change-id: 20250922-b4-ddr-bindings-7161e3e0af56

Best regards,
--  
Clément Le Goffic <legoffic.clement@gmail.com>


