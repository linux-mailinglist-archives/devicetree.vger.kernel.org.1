Return-Path: <devicetree+bounces-181937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AA8AC97C8
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 00:40:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48F1B500C5F
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 22:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2CC9283FF0;
	Fri, 30 May 2025 22:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="L2F9PIFq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AAA27FB29
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 22:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748644843; cv=none; b=cdM0MYM6KDMP+pRA2Pm+YzGWoDKheQdgVFzuUKggc0O5tH072y6r1ylo+v4fyfhnq/fFoEJjdGbZNkNXfrA17j778naD5Lm2rvjLyG/GtuFNw1gx5vMI7+Rx3vnH6+JVq3fxImbPpGa3rWqfGT6HRrLh15J1uv98A5WvZbB/KZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748644843; c=relaxed/simple;
	bh=v9IOZt9qHGKgp78Ef+68zRxwUDTcYE0bI2uCER1pMZ4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n6k4IUA9tO3Bul7794CSZpV29cCMQBF4i9nBzPZG0/D8LOFMWKN8+pQ/RKiTpo54QkAo/byQ/1EFrRHMBh7vs+1F+u3J2i84QNRnhUy6+8lrz12CLPxsA3/KpXrH0rrrxHs5PjvsEn0ABPM24U9kZse4odRqOSNQTtxAH70hlu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=L2F9PIFq; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-234ade5a819so24250115ad.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 15:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1748644841; x=1749249641; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m1drmllmtmwtWNasJJpvTqgcFCz1TJ/ySV8IFsfDlfk=;
        b=L2F9PIFqDmX7zjxhYLVjMP3i0DnXLzT/sNR7sg3aftg1OFCL2VBrAVAwqwOgv+D1TE
         k243xCvis+Bs8c8Ne2dWEeg8oU3Rj9lbNGfd4EVDGnsWtYjzHhVgnG+IBfX33TUfeUBu
         arbGrGmi2cZV/gv2uLK/JzU8WRc0GyEEWqZlg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748644841; x=1749249641;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m1drmllmtmwtWNasJJpvTqgcFCz1TJ/ySV8IFsfDlfk=;
        b=pwH1g4QrFaH0fvBAcvobbtEV/HBVqNm3hjC6h0Im0l9TsafxD5THBqjc6XzlXfYLgX
         +SW1MfCWsOwjCd9389sPzgZMLl6ANK0If4bVERWvjlmD6tvNaqJMPWcyHGJuoBPLyDqR
         S15ODpTfnfeUUCOM2RGPVovzbT3u9MqgLf12fmcYmCHMH3kmVbbWbYQQs/ZnkaJbHL9I
         BFoOs7uyj7nsK/Zbt8SrDMv/JmCfRIxTKBmmPkHqQoKRE7QqB7Ln3dr4/RAYaS+2nA2T
         j8mHBS905cLn7OfuupR20KZTWfqD+zkF9QAJCsKjllW3R9avpweI3uCDiJKJ8xSK1OWx
         wuuw==
X-Forwarded-Encrypted: i=1; AJvYcCWiqBnP5K3lf8oEngn3Kf1F6rdl9pGcMnwEd8zQP1CTP+bDzgOwPLMRvlwolVI4eN05+R2pl5v82rNe@vger.kernel.org
X-Gm-Message-State: AOJu0YxJZAo0v6E9dizHJRUWjiptI5E0j69y4oybI+l9fKf7rmIWx9s5
	K42LIGyExgOqRvITJtVc0+hZzQDXDFUNLymJI+8PBe7dt6rYROce0In1hXe8WKChQg==
X-Gm-Gg: ASbGncsRHBVlWnZ5wM+gsStzoOjG8KS8vRHEChjtm+ujitXEKaaioakrDJdfOLfKGgp
	XXzbevOOpeUwlIhhdxW7aHMRU4RZ5NCQUcyVzHSUJAfy9DhYReA2VO5TqwCbGvqtKZaH0t8KarR
	iVoWCDdssk84xRtBNejam39vCTtgofbA1tBdoziwlEhpAs9tPRBHFdSC4Gubh5Ljdx6lPHPwctl
	FYL0I4UykvGMgnlyf5mEVPokeMZWs7mSJ26wQlxW6ScB5Lr6te3OoFfN6X60i2/rqr6BaXZdP7a
	/H/iN00mD99dUYAjP3qradB7Z24PZe93MUhBS4FGWZh4/1K/94pUbgyaNb7436M9ygyb9Vw6Ofu
	X4VZ68nc9wVzZxn/GuG/c2+HNsVSto9A=
X-Google-Smtp-Source: AGHT+IEjX5DIunGuGQempttaCvqzE5hKj7Lhn61f4N914bLVvv2ywe+jCdSk6DPyHm6F+JX3bD1s6A==
X-Received: by 2002:a17:903:b0e:b0:234:eadc:c0b4 with SMTP id d9443c01a7336-2352a08997fmr77984725ad.44.1748644841428;
        Fri, 30 May 2025 15:40:41 -0700 (PDT)
Received: from stbsrv-and-02.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506cf523esm33109385ad.170.2025.05.30.15.40.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 15:40:40 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	bcm-kernel-feedback-list@broadcom.com,
	jim2101024@gmail.com,
	james.quinlan@broadcom.com
Cc: Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list),
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE)
Subject: [PATCH 0/2] PCI: brcmstb: Use "num-lanes" DT property if present
Date: Fri, 30 May 2025 18:40:31 -0400
Message-ID: <20250530224035.41886-1-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

v2:
  -- DT bindings: Add default, maximum values for 'num-lanes' (Rob)
  -- Add 'if' clause to clamp maximum requested num-lanes


v1: original

Jim Quinlan (2):
  dt-bindings: PCI: brcm,stb-pcie: Add num-lanes property
  PCI: brcmstb: Use "num-lanes" DT property if present

 .../bindings/pci/brcm,stb-pcie.yaml           |  4 +++
 drivers/pci/controller/pcie-brcmstb.c         | 26 ++++++++++++++++++-
 2 files changed, 29 insertions(+), 1 deletion(-)


base-commit: 01f95500a162fca88cefab9ed64ceded5afabc12
-- 
2.43.0


