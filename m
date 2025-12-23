Return-Path: <devicetree+bounces-248963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 89132CD7C01
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 02:54:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0117A3013394
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 01:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B87023B632;
	Tue, 23 Dec 2025 01:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ax1IsyRM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFBF23D28C
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766454641; cv=none; b=JR4rds4iVQrsMu5M+bdomNzY7jpeZ71E2mnfZqWBzg1LxdSn0HSK0ETBNWu4zkjL3kvr8bBhpj5t3Rfc7bLEKOnE2XE0ZWep58OoV3gKYd8YWbgMoLyT+K45pOfUaULsVvpcbd3ziJtGu0UQHW4TO6G12il/UX/xZDAbKvKP9xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766454641; c=relaxed/simple;
	bh=q0MXU2V4yXyG9Dt8boTEYRc02KHOaBnXIrWKxjNu/rs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=DWst1C89NlSEowpefdBPUpGmBW9kHyTjrbU/xDGAUpbCghlF0JOeryeGz1BOM2f7t/LD7mf7gps54zOlLIvl884KXE2OFYFLyNvYgMIPnQLlIg1GJW7GcfR3NllTSU3jpLfLk8eodVJkc9Vs3uytMsVOpD89TON08rAq6kJIpWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ax1IsyRM; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a0a33d0585so42519465ad.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766454639; x=1767059439; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xscG6RZGK6mPQrxphjn8rTShXaTt3nErGk5YzbghIBo=;
        b=Ax1IsyRMESMAzOm7/biofvpHE/ScxEpJ4shxHE01jD3fUEiW2Qow75LyGfIc4Y/Qhf
         0y0Uov3K3cTHLoVlIdpIq3JGkFMSWSAgOCQGGYl1mgJ9T4F5mgvNlGQ5tL/uDACG5Jbr
         HTVsciZc4iCOBZ1gxdbgtpYq+JWdxBzoOAITPljkzZ7NWS9/5+faDu09/PwJm3Q3Ikkm
         Eycn73c/9n7+XK4Dcx5NPYT/IlNMLrsam+G4g7rZXYYNW2Rp8pINNiYGJFtua5f7mDvI
         EyjVTn+fsYkbtwE3slvsLxlumQM76B/DYPVwK5ECTeYbbjPVr8xtsOSQIuFoeOjP+OFt
         dbdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766454639; x=1767059439;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xscG6RZGK6mPQrxphjn8rTShXaTt3nErGk5YzbghIBo=;
        b=PhGdMpDV3+qpc6a3NMzNZQTuhzerQZsbigdeHrpUbRh9U/nN8Tcwh2+YwXu+u808P4
         /tAndSxd5tRygP5ohK+NYlPYH1l2UUB6Yy3qkqT/oU1l3z87xPaAEdHDe00FZ3F1NEBf
         CtYBqPHqNrfb8Ntth1aIuNKVjpK/PeBfEzPh44i86VWJQJcvT+B/09Nssxk0R2w6CMof
         opC40hPd0jUX22KB7SsRotAf0zZYdthNx5kKHlYH0lXSbCTbOYeMBoHJdPI95scS1TDf
         IqHtGJoFqKN72IsypPXl/+y3ZqvNOtkA1OliFEk5gPUxayGaAtKK26c5E/n82Qfz6iIb
         tL2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVqOWL41kHH4xrDYl0RaUIATaAWfrMuiPPzYuZrsNkWfaxU+4fAmCYgNOv2XcwrtCIa4hfTte6GCTkC@vger.kernel.org
X-Gm-Message-State: AOJu0YxVDYoKpoc83lRiLcTNyE7nW4UqpKn5IdVKclS7TvLZPwu/6KIs
	1pegozTrx0jBtnSIu71tij1g6O1oUM1z7uZBLvWMhBigai0QMOL74t99
X-Gm-Gg: AY/fxX7QOctkU2jwYECdDIn1KkGcsM3kITC7djxoeeDVVY4nD1YnQWrEP7mMkwuO6db
	WyOyOqKzo9AzQyPDwFX4weXn4AVCKdJuFhB77lRg74XbKSPNfAsHryFdDTl+0W8CvoRIacDdf7R
	xQUP+c68uKWftSdmeIdLVtr2T320osNEbZidwQ+Di6fJ+1rHQ8C+mWlvqLLOmvhSvbcg0Lx6Mi6
	Y9CUKh8aLzF/LNuv05r9EVDD+626+bci1bQgIfUV6nrK9UR+ij6yJhWNT2I9eANr6XFW9EDDcyQ
	1xF09y0ySiX42ZPezb/7QblsdmwKlmKy/pWNeVrzpv+R+Gu8Vy0HOcZ1C0+6OHHuy3APwZwVLpX
	kPDpniem4sdbJ3CQ7v2G94nl1dKeCTNrPy+x5sj8T94tUUkJukV3OmcYMboljM5uDwPU2i8y2bm
	ahEEF01W5rii8QB2tJWH0Vkk20oSberVJnlAJddscgV7jdo7rMHKmoYSHGC+LdhpC+ncYQOEV3f
	NEbLgcCganC726moBO6axU3SI0sA0s=
X-Google-Smtp-Source: AGHT+IEUcD+B/8rPGyakTek4aNTU9jw6ozofbVuGAW/e6r2m680KkKenDeJ2iflpi617B8bEK2YU3Q==
X-Received: by 2002:a17:902:c943:b0:295:9db1:ff3a with SMTP id d9443c01a7336-2a2f2735164mr131611775ad.28.1766454639100;
        Mon, 22 Dec 2025 17:50:39 -0800 (PST)
Received: from charles-System-Product-Name.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c66834sm107316205ad.9.2025.12.22.17.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 17:50:38 -0800 (PST)
From: Charles Hsu <hsu.yungteng@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: linux-hwmon@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Charles Hsu <hsu.yungteng@gmail.com>
Subject: [PATCH v3 0/2] move STEF48H28 to pmbus YAML
Date: Tue, 23 Dec 2025 09:48:30 +0800
Message-Id: <20251223014832.1813114-1-hsu.yungteng@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes in v3:
- This patch series moves the STEF48H28 device tree binding
  from trivial-devices.yaml to pmbus/STEF48H28.yaml.

Changes in v2:
- Fix the entry added to trivial-devices.yaml by correcting the
  comment and compatible string ordering.

Charles Hsu (2):
  dt-bindings: hwmon: add STEF48H28
  hwmon: pmbus: add support for STEF48H28

 .../bindings/hwmon/pmbus/st,stef48h28.yaml    | 46 +++++++++++
 Documentation/hwmon/index.rst                 |  1 +
 Documentation/hwmon/stef48h28.rst             | 73 ++++++++++++++++++
 MAINTAINERS                                   |  7 ++
 drivers/hwmon/pmbus/Kconfig                   |  9 +++
 drivers/hwmon/pmbus/Makefile                  |  1 +
 drivers/hwmon/pmbus/stef48h28.c               | 76 +++++++++++++++++++
 7 files changed, 213 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/pmbus/st,stef48h28.yaml
 create mode 100644 Documentation/hwmon/stef48h28.rst
 create mode 100644 drivers/hwmon/pmbus/stef48h28.c

-- 
2.34.1


