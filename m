Return-Path: <devicetree+bounces-221730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EE2BA274E
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:39:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E5D277A4241
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 05:37:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E2BB27877B;
	Fri, 26 Sep 2025 05:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AJ0Ccq6C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BDD2773E6
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 05:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758865128; cv=none; b=tNbic50jhaWNBh0rJph/c8RHISEKj3ifYGb/ePZeZRJy4PcUK31tXNDE2lketh6ejHUPeWJmf8fiVH4pstOSaar6xgP2tanxQbyciUhZfn23p4lCDLqYVuvHltFvCADuiJPw9xW5gDSYJyWDkbnnLvSASVGDmFOMms6xYI97Gmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758865128; c=relaxed/simple;
	bh=YbrHKCMbCiBU5zkG2mMwLrOZrArn3NNUOSo5527fkgE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=D0bDNNKgBZ6qVIjERo0bXQuwUc8oZiPFJ90J/Y/k4H/16LpMPiX/ZXbomM3ilIRekSe8wB+GNO/R22keLiVx26cR1FMls/57rihQGV/5zQ8vEtXcCsKZ8XVw4IT3EGMpawd3VMvdD20v4Cp/Ve+uBMBjWNjXmr0h9Tzq9ciibzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AJ0Ccq6C; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-271d1305ad7so25664245ad.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758865124; x=1759469924; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7qcTncsLJv6moujHTG6Gv5g4cydsLFc1bTxR1LD+rBM=;
        b=AJ0Ccq6Cj/oO3daC3kZOIZKM8oF9nKl0gSbphDjI7VAPL8jiYtEwdviJ/UNchfQjdi
         DdKmx1eXS2r6bSYXwM1KhaGDDLuu2A0EDjqP3WjNupzdSoiyJbO1yTC/71TpcaH9ZghV
         7r6AGjzYeBaSNYLQ4MVlsf/r+YSUlrQpVQCN1vRdzwZkNMeGYY8bhH9GkJq6M39SMHWT
         P8mk+6Ppush3pXb+ZwLNWCWBBgX+Sd3e1k8ryRk3xnxbgXrmhIdrzlGgixdvUtHJSX/i
         T1JLdoHdNxHOxwmXuKBdQlrSVEsffq1BIPgEj4aH4U4dP5o3/af37EGn4dCR1q8Eo9y0
         l8Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758865124; x=1759469924;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7qcTncsLJv6moujHTG6Gv5g4cydsLFc1bTxR1LD+rBM=;
        b=B6EZ3m0dAtsH24M5ZoYeu0/qBw8mwx2aurMcwJ/yoL5Q8CDCXs50R0el9Qx8CaTZed
         /thy8Btv6hw5Cv8XYufcQzRgvHXqjeBg9MLWVHl2h0zmtlFKlbPHssSJ7XWiNmwWjm7w
         ZzDdpGp9H2pPzj1TuqMHGildAjNdKD2k+BnJSBEvqzgp4yZQ3TyGvQJQ8ca+codx0jRk
         aUC6aRc6yIquUJBydx8SNsVO7gCVhajKz6zg9JxVo7xpgBhyHDdPLySfBzyIaKR2dlr5
         w4NDxVhUyO0emgNuORsfJHN7HWq8VSDOdnS+eUmFX1914sVxhGLfuLrRi3rVyN0OEs9S
         sIOg==
X-Forwarded-Encrypted: i=1; AJvYcCXsnbmlDRyJNSQDbEJi/3YW7bvUng36U5fRTwCFukarudhSaMUYEzSU0pzHtb255j0EiO2Bw5dreR04@vger.kernel.org
X-Gm-Message-State: AOJu0YxSWQGn5m0q0rgg7wb7RqBK26LZQXFQfNMlMdWSzhfj8Gnc/O66
	pAerE6a9qYM2leIDXqx/HQ38/L8JdsuWJ5UYq9wCiykWw5T//w0LJnSS
X-Gm-Gg: ASbGncvzFCJM7JVEzbYmB2npRSe47Tzvkg/o6DBfYKT1OayDLAiE84YOOOgRHJ+eYS2
	vAX81sfK8JU0IPhX0DLd34/qypNVwYEAMcy8JZ/Tn9uypRzAyG2+fO6lLkcz5Flh+y3e1EXYKkN
	FeSR3/zrVcWgcQaAU2vqKYgcw7jIYccNk9jnDkTwDl2otho2rWt2VxjqAiCMOkZeQAYrYyrWlQq
	fi6sMAuUvwidIENHSgXpwOLta3RDy5oaHPlALVjs1ZZE8K7K3GlF94JMczCm4nM2ihH84QyN06O
	gQIO9Uc9D8pOFhLHttqfYxirvK/he5pOjWIUCS6JIdH0CQi1Y19nolOU2+K7F7RnKAtiP5UhbXq
	Ua3PCD8NPqmVBzcwLE5vPswWP7W4874JKYxhcsw==
X-Google-Smtp-Source: AGHT+IGCzgHZjN3LJlOsoXHyNz0FIxfti8aiB7qnhHMcVfvyqe879onGPV3fh7v7SrTOjr2Vucwgcg==
X-Received: by 2002:a17:902:e84e:b0:269:9719:fffd with SMTP id d9443c01a7336-27ed49b8623mr81081225ad.1.1758865124592;
        Thu, 25 Sep 2025 22:38:44 -0700 (PDT)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66fb07dsm41925025ad.36.2025.09.25.22.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 22:38:44 -0700 (PDT)
From: Joan-Na-adi <joan.na.devcode@gmail.com>
X-Google-Original-From: Joan-Na-adi <joan.na@analog.com>
To: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Joan Na <joan.na@analog.com>
Subject: [PATCH 0/3] MAX77675 regulator driver: Add support for MAX77675 device
Date: Fri, 26 Sep 2025 14:37:54 +0900
Message-Id: <20250926053757.480086-1-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joan Na <joan.na@analog.com>

BLURB: MAX77675 regulator driver and device tree bindings

Joan Na (3):
  dt-bindings: regulator: Add MAX77675 binding header
  regulator: max77675: Add MAX77675 regulator driver
  dt-bindings: regulator: Add MAX77675 regulator binding

 .../bindings/regulator/maxim,max77675.yaml    | 202 +++++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/max77675-regulator.c        | 794 ++++++++++++++++++
 drivers/regulator/max77675-regulator.h        | 252 ++++++
 .../regulator/maxim,max77675-regulator.h      |  78 ++
 6 files changed, 1336 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77675.yaml
 create mode 100644 drivers/regulator/max77675-regulator.c
 create mode 100644 drivers/regulator/max77675-regulator.h
 create mode 100644 include/dt-bindings/regulator/maxim,max77675-regulator.h

--
2.34.1


