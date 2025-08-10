Return-Path: <devicetree+bounces-203012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF51B1FBE2
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 21:27:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A31BE3A895F
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 19:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 491F920C47C;
	Sun, 10 Aug 2025 19:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="Ga6zuduq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8BC205E3B
	for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 19:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754854041; cv=none; b=drM8FbKeK2UFf3p7w4fs40+elGPLQGMioDHeki8r0RR1ARnGjhHyj1xsLduO6etacVsCIuWLYyNOlZj4AfytqZG9QgZUIFbcUfRJdUZvG1MmIns1y6SYD0LKuaEUxIaGHAc+oncE2D52WNmPtVA1r1vTyV46ts/XEhmFaDFHDxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754854041; c=relaxed/simple;
	bh=Px3DZRklB2oXIv7JRoEDl+7ABYhIzjIVytgkdD8WRLc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MBl+rmifCFzrf4Jruek1Q9PHy1eM8AawDzT9KrjOg+bcIweUKGA5yAoXjZ4spaplTEf0EyDujkiUdIKEUaadSh7iMrtNrW1Zf7yvA8fmOAQXGgS6Yd7JS+7lTghd66x79xLXScRz9xAu3+n98y+NFlazwbXL9BM6oTXHykgcGtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=Ga6zuduq; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-459e72abdd2so21266115e9.2
        for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 12:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1754854036; x=1755458836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xWYXXDbw++hefcSCW7VPfxxIpBDi6aZwun0MbeORMtI=;
        b=Ga6zuduqeWZcuZTpHnxSp/20/tSd8zJDuUkeRo5rdGYQqkFV8x8UQKXxE4VG8UKABj
         oqk96pPsOH+SrmYEyB7Zh8kVuJ7GgNDEeNPYX76zHeUzasm+WT/9cy7pgNvf7T4QGCl4
         7Ee4ckMZN4ziIfGJ6t7rqV2TRL6uXO/jx+dIexm1+knLC9xyCG9W2H1iSRBZtuD/6lSO
         ZSKSjapxGHzEdW/t9k/U/Qdkarl7hH5ezxL/dBbOMLfeyYcJs4fqPL63SwmhXiEc5XJz
         bFeu3Y57AJ/5buYnaMgOr8uQY4zZi0wd5M39b0PAoWtNe1Vmfd2S3Agk6Qm8NMqoTsqO
         5qNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754854036; x=1755458836;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xWYXXDbw++hefcSCW7VPfxxIpBDi6aZwun0MbeORMtI=;
        b=MRzGXaTehX2/rHdJQLlPqrI013BjAdTyvdcSEfC6No56EdlA1QTe1SEl76fyHX0jWs
         sOsvd2FbursXNO7yWc2n08tVLHZaUmbrxPoCKu7+Gmey/YDOIm19SmDVNM/JzZLopVAQ
         HfYFt3HaKbQaCk2q0AH1ia4mdXBblxpVNMvsZgoDMpCPubeMVQcuknQwxVHqMLXlGE1x
         ooSJ9F7V752LuT8qUHvJKc/vlQONcsEqga2cIt64zTxB4E5iCxjcYE4PHAgiAxhJFVZm
         HW31vJ93NO8ZQZm21rOSg4Y0TDuYGA2eXmlAPZAiFiDLckDNgj+lsryuoZcV7uCBEh4F
         KIlA==
X-Gm-Message-State: AOJu0YxDpct6v1MZGojSj7U1zSfj1ZN6hXW/u7TW7wDgZ6MLdzEVROrJ
	cZD59z78kBzStBC0RckY2YvPOo4BBzmuR0zPwrOutlJhOY1RCt2fd8DWhTEyN5+3yk8TvBbQQid
	It8zTVw4=
X-Gm-Gg: ASbGncuAyL66GkR1WrvQwXwQEBmd3AUNcmu06tdivxINxw1vpAONr9hQDuDXIlFuvjm
	gkuG6SLQGN58hHkcJ1fzYmre9ojBYPuy81dsJ99s2p1ZvC7r2RCCMsOpI8/QSLDSFe9p2bGIOCY
	X6iqoP5aut5J90qhpaA4k400aWJpi+P3u3jQ83mq3SlHGr7bGPcV/D4n7vZFENM4UPIU3Hjrf14
	qNNL5ceMM3+jTWVZDd2C3Z+H6xmA7Tb9VrganKKmGOYvwDUvyJOHbI1KnsKuN1WZnHw+RblR4M4
	PJe63jnn60UXzQaA18Jptf65+Kp7UMeLYV4GYr1Z44RZEL8/WUh7oZdMNq8dPkMaYUfGNJLMdSo
	0IEzXVnLD0+tF80ajOfsGGjP75EQH6VLdnAMXuw==
X-Google-Smtp-Source: AGHT+IHmMtcSJS1vesoWL7Q0hPKqj9Q+4q8sWivm0l5v/KxfrPJ5ryZ8BG1X2Y/X3wtMhTWMSjeQbw==
X-Received: by 2002:a05:600c:19ce:b0:455:bd8a:7e7 with SMTP id 5b1f17b1804b1-459f4f528b5mr89129575e9.9.1754854036411;
        Sun, 10 Aug 2025 12:27:16 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:d8d1:2f6:48b:1545])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c4530a8sm37890947f8f.38.2025.08.10.12.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 12:27:16 -0700 (PDT)
From: Aliaksandr Smirnou <support@pinefeat.co.uk>
To: devicetree@vger.kernel.org
Cc: linux-media@vger.kernel.org,
	Aliaksandr Smirnou <support@pinefeat.co.uk>
Subject: [PATCH 0/2] Pinefeat cef168 lens control board driver
Date: Sun, 10 Aug 2025 20:26:07 +0100
Message-Id: <20250810192609.11966-1-support@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for the Pinefeat adapter, which interfaces
Canon EF and EF-S lenses to non-Canon camera bodies. The cef168 circuit
control board provides an I2C interface for electronic focus and aperture
control. The driver integrates with the V4L2 sub-device API.

For more information about the product, see:
https://github.com/pinefeat/cef168

Patches:
  dt-bindings: Pinefeat cef168 lens control board
  media/i2c: Pinefeat cef168 lens control board driver

 .../bindings/media/i2c/pinefeat,cef168.yaml   |  48 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   9 +
 drivers/media/i2c/Kconfig                     |   8 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/cef168.c                    | 342 ++++++++++++++++++
 drivers/media/i2c/cef168.h                    |  51 +++
 7 files changed, 461 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
 create mode 100644 drivers/media/i2c/cef168.c
 create mode 100644 drivers/media/i2c/cef168.h


base-commit: 2b38afce25c4e1b8f943ff4f0a2b51d6c40f2ed2
-- 
2.34.1


