Return-Path: <devicetree+bounces-235988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB45C3EEFA
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:22:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 215BA4E07D2
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2E842E54AA;
	Fri,  7 Nov 2025 08:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MXEWRQoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DF21DE2A7
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762503752; cv=none; b=mxVfLJKnW5Nq77+Tw51f7vSF7Z9KDTPNUX9nKzTp1VfRT2rJ7Ibtug5c2anfrehhfsmBt5QY7DfO9g0FcWkk24JLvs9mnWNoL92aa8uDokHvsk9HQAxcLxWaeyloYFGZb0B/VK9srSiWwx8q4PVhaX93T833RRTi2DrPLlwM23U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762503752; c=relaxed/simple;
	bh=OMpWtxvVnB3sDu3M9k8udEVrpO3wTQipx27cDHb5FFw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=esOU7AMvUbTStRq5dQ9pol/R1m0PNFZjCIdYOg3Eg2i9H4nA8XmRGrCXUyRn0glpmu0FfAm0qaZskRIk4/dIH7xMgDJm5rp8bf17KUlIf25oq8baZZaOKJXdxoTsTkunFb8xLTcuuG/0j/CaF3D6oqag8Kd/4SKbmcOzOkRQDOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MXEWRQoV; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b6329b6e3b0so299153a12.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762503750; x=1763108550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OMpWtxvVnB3sDu3M9k8udEVrpO3wTQipx27cDHb5FFw=;
        b=MXEWRQoVo27dCrHV2PWe3aGzzaUjYXqEORXOAndtFLeiJjZr5AN9Osf1zdHpaB/lAc
         oNjUgISXWII7rRtbN39yPpDUWx2HLawMm8mIRZsgIaZ6/pNcrBjThW7N6pusik2xvChw
         q/IYeCmJQYdZWMY4sn8JMimeWIZiRlyamknEgNnDd8eYNFLJlb9LMW1kFX5m2X+NfVhF
         +aMnWO4kfizmRrud3/Y45c1BVv71Bme5DluLX8NGvQ83a+8F3B57aMawARcRjhkP68cf
         giOCQyF+aO2LGQvdt6L1ACkNhGzBX57Kk5x1qsA+66vKlZyG2R7Z1vm1cyowpUQQY2SR
         hz1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762503750; x=1763108550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OMpWtxvVnB3sDu3M9k8udEVrpO3wTQipx27cDHb5FFw=;
        b=cgJlHp17/XvC2XuvbStp3tdPKb3ELp7Sb3JZuEtRZNbXsuVyNrC12fI/AYmLZKv76L
         s0/51oC8KMQzbOeu35NuxksWA18EcSP1IM4TPaEHrbU1RU7QQggRRO+h6hNzKyPCxi+I
         xT8aZnZLhthm0cLzgl+m4hUa9uEaaQNFSItMf10QicLKKQZYgVQ+UvXbdqqcxwakc47p
         N+Hp+ak8TSD8eke9Bt97oFl9+2tzEX3blVoA0EKIN17ZLL78IvBb0yvFTUlS/SqF3VX4
         1MV71HYPHYYGx9P+PTWbmUon8xJqpzTO8pxo41+73igpBW5iuM2bppdk2QE4T2SK/lV+
         J+SQ==
X-Forwarded-Encrypted: i=1; AJvYcCUb2ZvgPRSS2ckqbPgvWEW334bxbre9SVdmNRj6jeBxTVGGwc+a4g/ikXXoBNwaG3NqtzcgpvcfB1lE@vger.kernel.org
X-Gm-Message-State: AOJu0YwmcUJdIkHO1rcRKEjkj6QQU9ydMW8Okb8hwnjq5Seo4G1tOpjX
	ZY29cnnsyHRbu9aFN8FU63VrvBoDD+7a+LITOcvbMbNGxc1oTpqFaRDW
X-Gm-Gg: ASbGncuVh9k10g4gGV7JhoSEta9rDx2ptZbsnCy4QX7esFNPCpCiWnnHQQLNZLIVCkX
	KQ4+7OyhaM3l/p1nVRiaJTUZ3UPGqQ5izaXyoPGKz0VDVrjqSqRModnLjC19CJUoY1as1Cm3xId
	XOe0sabcYdSNK/omFyw1aaqMbmlubRi4UpX4lmmQKO+Pkb+Di+zqYQ3cXi5vcpoGhcsGQfZ3bza
	+OuyqWtganWv23VVudLdP0+Dw2/mjkOQx+trUWxGtiVtzdKRm5nL0pwjstJItqZvG0IRERc9CFW
	0iN1m8u26NHNQApXp8Spmvm5hwJ0G+VcjZGumbGa4xPiQxSLKbGRAZz10nf1t1j66rUOTfBU04X
	jpuDl2bLBLr0j8SzQwP3aCxy3UgjHXKKaDMZrJhMuRxk0tURjYOuYsvMrlhI/TP17WGw=
X-Google-Smtp-Source: AGHT+IEjlE5AsnLv0b9J+7cxEwQxpex1D5LYp+e+gM7rZYr6pY5wGjltZgYlA4C4hvMPP7ucQVOe4g==
X-Received: by 2002:a17:903:a90:b0:269:8ace:cd63 with SMTP id d9443c01a7336-297c95bb193mr13342035ad.30.1762503750491;
        Fri, 07 Nov 2025 00:22:30 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5ce87sm51494325ad.29.2025.11.07.00.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 00:22:29 -0800 (PST)
From: Peter Shen <sjg168@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Peter Shen <sjg168@gmail.com>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Joel Stanley <joel@jms.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	peter.shen@amd.com
Subject: [PATCH v5 0/2] ARM: dts: aspeed: Add Device Tree for Facebook Anacapa BMC
Date: Fri,  7 Nov 2025 16:22:23 +0800
Message-Id: <20251107-anacapa-v5-0-peter-shen@sjg168>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251104-mellow-denim-dogfish-4affdb@kuoka>
References: <20251104-mellow-denim-dogfish-4affdb@kuoka>
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
Changes in v5:
- Fixed the final DCO mismatch (Broken DCO/email chain). The email sender address (From:) is now corrected to fully match the Signed-off-by: and Author: address (sjg168@gmail.com) to comply with DCO rules.

- (V4 Changelog) Corrected all previous style issues: fixed block comment styles, line length issues, and removed un-documented/unused device tree nodes (amd,helios_cpld and eeprom@53).

