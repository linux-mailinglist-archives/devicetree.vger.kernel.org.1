Return-Path: <devicetree+bounces-117575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 113B49B6F1F
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 22:38:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43B8F1C21F23
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 21:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A3FA21F4CB;
	Wed, 30 Oct 2024 21:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="QJCFMNv3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B04E21C16D
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 21:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730324064; cv=none; b=olfP6FwwApgX6BvgEFtmq1E7VfhD0wbNG1vUUsOTiDR1JXpaxGa3c477ggmhBKV+2n5tr9syC03l+dQFLKSkIpA8iPSHh58TSNvO39V5UKQfTHxcgaYkEdgEHpKINU6MRBU+4gN5byd/4NFKh94lsgThtmiXgL63rdhk9mGE/ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730324064; c=relaxed/simple;
	bh=cfEZglRfXM92Rs9VKa/QxGF7CCG/G8uo3RqbR+JtOMM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sbrwysEMZAfbs3R1fIRhscqOslCYyODrfnMqMe3EJ24YBkL8lgDnBJHk0I2kmvlpf/4t3jWMQS2prce//emEG42aGxComFVeFW6wOY74R/xRLDcRqQtS/V69tNcge9mGcz9icBPMVhjJcKhSBXGsC3sJ0uB5apkGlvj5HOFyFJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=QJCFMNv3; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2e2e87153a3so201751a91.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 14:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1730324061; x=1730928861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=57fEAwok3+kDJ02oPopU87vkGpDlety/NkYvCBCJnWo=;
        b=QJCFMNv3e6krGhwq382HjR23u1liVL+u2cUJoX9WgQxOoKk3oUx2+NmhNxxKdjlF+P
         CXlPyCV14Rm49MUTaUfK0bzGcU+m0B75KE78Pecvl/1EHb8SCeioR1L7DvrtK1akGjkM
         rju8vjrEsKK8omNvWLGwWlaxnplOy07WdmY8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730324061; x=1730928861;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=57fEAwok3+kDJ02oPopU87vkGpDlety/NkYvCBCJnWo=;
        b=rbwJ4OdzZA6ZrhghShMCPzQMVbR382OmmvMqYheXNk9gxFZerxect333meB+bALOrn
         7cEh0QYEXl7gA/HD5q2+AuHJDGtzSgz7BtThwbuHSORmrJEej237F4mkihcj8YvV2p3C
         aKR+ujDMATnditEdCIY+up0RsRMHJWkA6g1PYjf/3UM1AfEgySM5RfdaNMNPItTV3CBD
         6dDf7dPliW0npMxi+yq666qOZVTqo/oxvGd1KvD0WzrY6TqWSWP/u3nWuPH6AdQYUAFI
         4toL6KBOX5wyKR+frOQaWsU49t80JykUkUq4stKGB5Skx/qEpHTk5Lk6xNBSjoMNAhNA
         YEqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNpK5YD0N2Cy1LDlwpaEIRMUOzxYeZ4zlGcyCgGS3FZpZ/Z1OoatRyHH1bKKY6eeWJzQpak+EWg8yR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzcxtv767LdKECenDl0reUMO0mUlx6YUd/gQXhZvY579+R6GTYY
	aw8MNwMxerCwu3AmlBtkNSLuCBso8Jewat2PauLRw7mQfanCxLo4xLbGxYubzA==
X-Google-Smtp-Source: AGHT+IFB0HWyN1/DBBH21gB+sB5G4OUo/anMiUMkhzLTxGINvoKiV41KlsMj+eULdwz0SKgQKoCYKg==
X-Received: by 2002:a17:90a:8a05:b0:2e5:5e95:b389 with SMTP id 98e67ed59e1d1-2e8f11baca9mr17595045a91.35.1730324060684;
        Wed, 30 Oct 2024 14:34:20 -0700 (PDT)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e92fa5f70fsm2372458a91.33.2024.10.30.14.34.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 14:34:20 -0700 (PDT)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id 4222A886; Wed, 30 Oct 2024 14:34:19 -0700 (PDT)
From: Markus Mayer <mmayer@broadcom.com>
To: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Golle <daniel@makrotopia.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Device Tree Mailing List <devicetree@vger.kernel.org>,
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] hwrng: bcm74110 - Add Broadcom BCM74110 RNG driver
Date: Wed, 30 Oct 2024 14:33:53 -0700
Message-ID: <20241030213400.802264-1-mmayer@broadcom.com>
X-Mailer: git-send-email 2.46.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds a driver for the random number generator found on the
BCM74110 SoC.

Markus Mayer (2):
  dt-bindings: rng: add binding for BCM74110 RNG
  hwrng: bcm74110 - Add Broadcom BCM74110 RNG driver

 .../bindings/rng/brcm,bcm74110.yaml           |  35 +++++
 drivers/char/hw_random/Kconfig                |  14 ++
 drivers/char/hw_random/Makefile               |   1 +
 drivers/char/hw_random/bcm74110-rng.c         | 125 ++++++++++++++++++
 4 files changed, 175 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rng/brcm,bcm74110.yaml
 create mode 100644 drivers/char/hw_random/bcm74110-rng.c

-- 
2.46.0


