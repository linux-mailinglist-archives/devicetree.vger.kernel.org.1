Return-Path: <devicetree+bounces-248527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E6429CD37F6
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 23:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DBB2C3009131
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 22:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 359F02FD660;
	Sat, 20 Dec 2025 22:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BIHxvnvR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99DED2DEA9B
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 22:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766268218; cv=none; b=ANLMafPdZ1kFcNRVf5Cz62mDyRqmga1LPlxGpDT4SsCboktsfIPZrxJgfQNcTIUKSaeEeVlDn14+7NE44G7GBVnt8dgTaIr2pGX+Dm12ZY7ttnZ97L4fNojTMDiFgNjkjIaYlbis6OUjCeyhcXASxAs8L1to33eK6PbGLbPUUtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766268218; c=relaxed/simple;
	bh=Z/CcaMqE2F9hQ373hh+TK08NHmxmRfaRGf+PqPGAoTU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=osV2mgE4uB0HRdhrN2o0WxKFt2rCv3SXVqykTfqGf7glzDUuGbPzr0vWI7pSTo+yvzm/H+kd01JJQgL4N0yyVf0QcCW0uKvtsOsOT+GnA4NOfv0KB2JFAsISxROx5g0D2CcvSBemnQ8VJ+Zg4JKXn8oXBn//gnLdOckG+NCR5Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BIHxvnvR; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7b7828bf7bcso3149610b3a.2
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 14:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766268216; x=1766873016; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c+VagBe28+HbfctXznw2EgljC1Oa7V0N70ONS8x29vE=;
        b=BIHxvnvRcZUaC1lLPMHLLDH4IcAg/wFZGxT22OkZeLC++E/FiLhIuwbUHNNuvAW3/s
         n4M4SzlFM/5X+pOoUtBN2f23G2Qx/3xWd61zcWc94sqtkktwjn8ur0Kd3y+1fBIOyOpj
         S3N6mS67nF7Af0Rp+InfYyApNDzB5xji+oWKItWtbDIpZLhisdW2Cl+sZbWaqHyFgo8e
         Q4twBFKAea0/pivcbocFhNfktumai4q7v2+dlOO0xrmnHFCMq7OEJ1z6WZQCHZKjASD9
         HHfgZL7ghFDbob+Bw1BncpbS2tv8JZVKxyKuB7baLsfBs2jDpwr3E8s/L7GyqIetyvP2
         2ZSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766268216; x=1766873016;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c+VagBe28+HbfctXznw2EgljC1Oa7V0N70ONS8x29vE=;
        b=XCWSd8oOrkISjm8foaGMUTgaIC2HgBEfb8SIDE8Ax2ovkmJrRIJnzND7P48Y26l8Yk
         Cjwsgl7/EByvCbFSFNZNACUEip55qG5qg53c9dc6K3BXcEYpz5lHsceSmPEX2Sl16T63
         XT/Cpm/KHgo/0fOjn4PDfVYDOwkyjA/Tpxr6j4nd1YokuO/SjLGvFxyNGv16ExmLmGCW
         aXMCeSWxJfyXe/fzsMFhnOyivQjUWOCRLQbsWJGvdTFufsLRv8b7/cscZ5ifxt0+LNGu
         hJFe+Yf4wMh+BLowXBKsEKd0xO37/Y6pk/k+oK1mV8NZpitxmz0BLAN7sKAghuXB7ZB4
         PogA==
X-Forwarded-Encrypted: i=1; AJvYcCWIemHcjuPiG0w8VA3KMHtso3LSmp1GAWrekozZ3OV10glGzRnfmpftcOVA29movRrvN2IqmbheJzNS@vger.kernel.org
X-Gm-Message-State: AOJu0YwIngn1/EGk05tRUIQFgIRL0D0DkyCYXCzyC+nicoFm4i8SauXQ
	sGex3f6DCgbhKTsbDzQnMTZD+2wGbnyJO/J4etIF/JeB3UQrrE6jU7ho
X-Gm-Gg: AY/fxX7W4AN6xeN7qw78hK1Vpab3mnudRb9mLz6yQSPAz8axAqitr6aQ/743BW+R38O
	1MUodkvIblLzYwZoGJ3HdNZ4mp+SuylsJSAko+ad2AqW9x9RwFBhcCW8/uExA98NFa1oXkdtkDN
	MkoBskEv/1YdxW8T6yu6WxZKQrunM/S4Inr5NYN4GbN/QvjwNd0HumFw+qwAeKiWb6BWH3PGdDT
	pxwahS+h/unHk81AGfIJjC+BH7R04c/iNOyWAGZNadOd66QZNNL1JsXPtnQo087ewTfl2Fbndmz
	pgu5CUsGGR4YO9YDdwu0l/cIkkxHNltsWFMRU9rEmrtfSGcrIIokj/CZTEWIqWPIveBPT+UmldO
	uRhhs6pMTSNOq7m0GVQDjxWeRfMTps2y1/oVz8X8AzyZugortJk1MhUzptiyXsJphdSzaNr4+TH
	E07vKnN3LGNSdsWE17RIC3UQ==
X-Google-Smtp-Source: AGHT+IHD0+Hy08F0BoxdPC82bOj6VLwI2/R2BIv1B/jwa4RcqT6yeUW6JFcApxTmDsVMSB+1P6jvjg==
X-Received: by 2002:a05:7022:699d:b0:11f:3483:bbb0 with SMTP id a92af1059eb24-121722c2521mr6731973c88.19.1766268215651;
        Sat, 20 Dec 2025 14:03:35 -0800 (PST)
Received: from fedora ([172.59.162.202])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217254cd77sm25010164c88.14.2025.12.20.14.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 14:03:35 -0800 (PST)
From: Alex Tran <alex.t.tran@gmail.com>
To: mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: pavel@kernel.org,
	sakari.ailus@linux.intel.com,
	mehdi.djait@linux.intel.com,
	alex.t.tran@gmail.com,
	laurent.pinchart@ideasonboard.com,
	hverkuil+cisco@kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] media: dt-bindings: Convert toshiba,et8ek8 and ti,omap3isp to YAML schema
Date: Sat, 20 Dec 2025 14:03:23 -0800
Message-ID: <cover.1766123192.git.alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series converts the dt-bindings for media components
toshiba,et8ek8 and ti,omap3isp from the TXT to YAML schema.

The series is composed of:
Patch 1: Converts the Toshiba ET8EK8 sensor binding and updates
the MAINTAINERS file under the NOKIA N900 CAMERA SUPPORT accordingly.
Patch 2: Converts the TI OMAP 3 ISP binding.

Alex Tran (2):
  media: i2c: toshiba,et8ek8: dt-bindings: Convert to DT schema
  media: ti,omap3isp: dt-bindings: Convert to DT schema

 .../bindings/media/i2c/toshiba,et8ek8.txt     |  55 ------
 .../bindings/media/i2c/toshiba,et8ek8.yaml    |  91 +++++++++
 .../devicetree/bindings/media/ti,omap3isp.txt |  71 -------
 .../bindings/media/ti,omap3isp.yaml           | 182 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 5 files changed, 274 insertions(+), 126 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
 create mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml
 delete mode 100644 Documentation/devicetree/bindings/media/ti,omap3isp.txt
 create mode 100644 Documentation/devicetree/bindings/media/ti,omap3isp.yaml

-- 
2.51.0


