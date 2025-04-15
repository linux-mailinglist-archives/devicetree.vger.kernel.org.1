Return-Path: <devicetree+bounces-167468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E4CA8A6C5
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 20:28:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E47B2171EE6
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 18:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35147222565;
	Tue, 15 Apr 2025 18:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="DagAUnSy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A8D221578
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 18:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744741712; cv=none; b=RDGIf6FZsvmNOHUzAW6PnicGRw9G4/pb57w+BEaeiGa1bZ0jsnNmTZJPdc5tGMp34alk+37BoZoL8aBr1QjQZXv444xxd5N2ry5hMTDFXJE2VHl94Klx/KO6rhcp/PvCLo/LuADNnT1cJPRw6cDKAcEZOS7qh86gmzwMVEU6C14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744741712; c=relaxed/simple;
	bh=VYVRxEJYwQanV5hu/0wE4LxftLRrNmP9Ls8weWaXeFc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=G20GggBN7m618tl3mynaDFjC192a3Y3Q9+SzKTH+ZXpMCxhJveYEl3cUERxrVnL9Cmx8GD63L0KuqhZQ9Vzn44thnUDCX/KFWaH9emLyPpiOLQ+/L2K3trNfiYpqisepEqJxiKd75FeuMQ8IUvrkO8rZwEAgBuwCGDGhZYWfu3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=DagAUnSy; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3f6ab1b8fc1so3103129b6e.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 11:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1744741709; x=1745346509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W8E2f6IqoC+LGUu9GjsxD/Ma9iEhqvPoS9PHmT2Quf0=;
        b=DagAUnSy0622wInsObfKsioH26qCtkX6dw/apkNUt3MDKYUjgAzzVv7ZOEEab+U7Ux
         La69hKI4ugvw7OEJvwRGBo1mcG3rhjM13wU39RFUk9egtrFV0Wtxd/rUSbd4JR4kk9Ps
         Cr2J+fw2iT5EF41gvbc6jOpUhjs54q0GWpilg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744741709; x=1745346509;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W8E2f6IqoC+LGUu9GjsxD/Ma9iEhqvPoS9PHmT2Quf0=;
        b=JXT8ZfdaV2rPNvO/Q3QMmkoeZswriLcXcresygKM4+qjvzrte0W2xtC9Ji+zspo8GA
         /Of+iG5vZ7Z3y9tnSDrjnuZNdIcJJgycv/OJ6vgpkGKecymg+6BpEpSKeAE3pWuKmXfi
         5cu13ED7y2gSGbJx+l+OVRhuhovbMnZajQbc8G67m2gkVhY+AT+nnIp6LPTCdTF1zTE1
         xfvBm2O1XxMNvZqieaewDpBi0O3n9M1QfsTxIJi+PpRvAba84rOEmqDVdYgBYKY7S502
         Mpem746A9S5+bvk/dJ+NfuFKPBpwPggIrrJVDeV4qSwK9J8nEpYoO81TiQ5x9ZM70PNa
         T0Sg==
X-Gm-Message-State: AOJu0YzkbQ5U6NPuECem4Dwq/FNAcVFnvTMffvWooUQnLbr3+jBtSasW
	8RINZGZ6oYNSz0D8J59E9wsZadPGMYu6olR2d7InQIOHw6ODmbo/wNRvHjJ+qrpa/fK8wBD7qos
	wdTshlC8Rg0bNpAJArYuqwUBwmvvvtTn/yH5CtNJb8IHc5nOpcAoEp3ulb8gAKBJm1lWN1oAPZV
	E1CLPUZegwx5+8TUzcfBcQfpu2CbRlhupHYZRhVoP2FlD2
X-Gm-Gg: ASbGncsvcA+qGB0gkTbfVHsLcy/vQ24bEMSuZg5XTJCRZO0ppk/ZmfXghSaOeFgFKdC
	3AFO2jBqRx4WrkbpdUno15+hV9E2hphKayfKZe7KPr9VfJu9CZPkbTE2Pt6v4YPMqJOLK8J5yLD
	33rfJrL7qYCFC7gS1mkbpLq7ckuUJM94rt68hvYgQhmNLfL/OhQ8VERonyD5c69NK0bk/GP/E/k
	Sv92FMQ/4Sma/sETBupIgI/nd2Cinmmw2qvAedufJwMaSJz2Tj40EO95Qtr0n4qFp5EJCgB12f7
	fd2KcCcwmZMuUPlP0ugJIaAViF6/2ds3lmF/RlMchv4sd7tiSaeSUZEc1Nq0iKuc2QknQZvtob7
	PnyluYE+iaqQ2/SWenw==
X-Google-Smtp-Source: AGHT+IGj9+A7XEnOCRDoc1Nsz+q9pnXNAgyZsgfv09iVYMTWY/OZaZt8llUPjyM6TfNLbLe6ILVjLQ==
X-Received: by 2002:a05:6808:17a0:b0:3f8:d2f8:d735 with SMTP id 5614622812f47-400acb75e90mr361591b6e.33.1744741709423;
        Tue, 15 Apr 2025 11:28:29 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-400763baf5esm2434177b6e.47.2025.04.15.11.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 11:28:29 -0700 (PDT)
From: justin.chen@broadcom.com
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	jassisinghbrar@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v4 0/2] mailbox: Add support for bcm74110
Date: Tue, 15 Apr 2025 11:28:24 -0700
Message-Id: <20250415182826.3905917-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Justin Chen <justin.chen@broadcom.com>

The bcm74110 mailbox driver is used to communicate with
a co-processor for various power management and firmware
related tasks.

Justin Chen (2):
  dt-bindings: mailbox: Add support for bcm74110
  mailbox: Add support for bcm74110

 .../bindings/mailbox/brcm,bcm74110-mbox.yaml  |  64 ++
 drivers/mailbox/Kconfig                       |  10 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/bcm74110-mailbox.c            | 655 ++++++++++++++++++
 4 files changed, 731 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
 create mode 100644 drivers/mailbox/bcm74110-mailbox.c

-- 
2.34.1


