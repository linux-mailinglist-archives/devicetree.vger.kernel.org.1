Return-Path: <devicetree+bounces-223605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 178A6BB87F4
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 03:56:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8C2D3C86A3
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 01:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15FA521B191;
	Sat,  4 Oct 2025 01:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="coyUrBqa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D89218AAB
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 01:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759542998; cv=none; b=aAWuKO933E8iIHKPvdvZyxXxqPzld5E4HmsnPjPNIT0OdAwMIaulZjFmpCcFlvSVhsLKB9cQWd9zO7yuCaWjZcBMlEC4LfpioBKg1VL6XSHblAe1pKnjlxdhTGB808aD8DYgQoWhG/iad9zG+JSuxvbLWaZF9+G9BF0FrzVaUiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759542998; c=relaxed/simple;
	bh=hORoEnA4rNo9eZ2TnSKm6bO35jEMPOOzljSvUmmDcv8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aPT2KTilf1J/5Oua9HTJnrqHG0TO6DbC7qyPYavUu8wt6yqrKxZ3AB2lLhvrqO6Q9wP81nZq5dK/2fsdjSFSQVM7xIIePZO85kKC8JbIKj4ewdcSx3ty5DNaByWcATb/RvYVXfDjHKWTZ+O+UyBhLltTXfk8riEvfB+JbGek4fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=coyUrBqa; arc=none smtp.client-ip=209.85.215.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f195.google.com with SMTP id 41be03b00d2f7-b5f2c1a7e48so2172400a12.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 18:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759542996; x=1760147796; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yTEqLH7hif0P56GR/htRgCIrTJyGDU/Of++XnbDqejk=;
        b=coyUrBqapuTJexS7xn3g52pQ2K4nTdBao9aI7hgyXEBvxBzjbXPVYEPAiGkDDgmnFr
         Gj4obPiJ+uRwZUtTXaldiG4X+rsurHtUqdrb/uCZ153jMkHOB0gLvCgzT4BwNeC0IKxs
         ayKdB/OUwX42ILX/ON58RzDbMZ0gVoxf8TH+rnyzn+aDdQliK5aTFyXZ2AaehD4X7QMt
         Sou4Cb/aGyOvh30hb3OAqoLWh7RK45UhszORo/t4EDBuuaa8HL3uSTdowrwjGTG6K83o
         dg/1GmKic5Hfy1UP9LyJiFFk4IC45H9MmDQ6nfZNgZaQN0Of8cZvSqals0Y6SJCqldIF
         Oxdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759542996; x=1760147796;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yTEqLH7hif0P56GR/htRgCIrTJyGDU/Of++XnbDqejk=;
        b=uONdmznB3oykvMquf8jeSc4BPncsJyANUjSayaovyrgMHkHmedxCGSF+npkWHm5iVs
         vf0Mz8VtxG7f6M6LBVH2v9mD20EqFQ74AiapptY6rzcuEiUVgh+jOi6n4bbUL02btA03
         y9wEZIFe8T+5oN3gdX35YYZkXKNnAVhPuVtpeohPc77s3omPjPGKPWivzzMVDT9i65Ov
         rBk6wy+Q6z97/w0eSvSeYV9Drbb5QH4oqXrSEqOhyJri4qHa91sMcJJ4vN0LGFI4blfR
         VtMIXdK+m3n0aH3QmtcnMuwS+pnzlXWS+hvcgf8I2fZ+kK9yx1pIliEIAAEt5T8jvUSv
         Xi9w==
X-Forwarded-Encrypted: i=1; AJvYcCUKXd/Ap6ITu99mVtxGp3O+dQI7j1s5BD5baLyvQuIXtz6K/iU98LeH5DWpOLXhz3bKcC3CVW5LNhDt@vger.kernel.org
X-Gm-Message-State: AOJu0YzMZQ606bFZKjm/ub2dU9P5KamS5Fx87uIpz3+8j9zqA9wm0zDV
	7eKMU+h61Da61fsie9kuSpAsEhoZsw250YkDfT11Ffd6VwFGM3mIyBrg
X-Gm-Gg: ASbGncsajeeOWqNQI93U/TFWgSPvc1UbAXFgPc/drU6F/5Zi5N98jlVBFwrmY6QjsVo
	RolcIXqPed1Msd59qSfYS2SwqayAtxh9jwUb5G4VFZ5K9gafz22HdQ9pChy3Q0FqniDGgYWE48T
	Kml2FbWsZf/yDMgfK0wEdILG6YRdEqiciOyQTeVWLNMGkK9tgaeBXUbeQRRcy0kflnoQTBS6svc
	j9sF5cIF9YUp9fdAlInBMPle7zrmhpuxUd40W9+psOgNUsL2/LbnlinQfl3wnq+MqwbA3TTaKSB
	2r6XipxFdnZ2Y9vVFLCPRGChkWBMdZElTLGIfs3ZtVAeJ/drJeZmB6PznzzkJq1+9K2CEgD2bo6
	CeqfIZG2mc1mtit3TZDXJETKG0V1F9DBTAVkoCGA3ln15MpdPJqVLSXc=
X-Google-Smtp-Source: AGHT+IFNiL0NAmoLijKiqKFOV1i/A4WOPLrh/tgGYP4tBcXBAwrLn0RbO3aVkg2rfnZrEJWChZJVIA==
X-Received: by 2002:a17:903:a86:b0:248:fc2d:3a21 with SMTP id d9443c01a7336-28e9a5cdd22mr51596345ad.4.1759542995628;
        Fri, 03 Oct 2025 18:56:35 -0700 (PDT)
Received: from Ubuntu24.. ([157.33.197.131])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d134859sm63197485ad.57.2025.10.03.18.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 18:56:35 -0700 (PDT)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	matt@ranostay.sg,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linux.dev,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH 0/2] iio: health: max30100: Add DT pulse-width support
Date: Sat,  4 Oct 2025 07:26:21 +0530
Message-ID: <20251004015623.7019-1-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree and driver support for configuring the MAX30100
pulse width, addressing a long-standing TODO in the driver.

Tested on Raspberry Pi 3B with MAX30100 breakout module.

Shrikant Raskar (2):
  dt-bindings: iio: max30100: Add pulse-width property
  iio: health: max30100: Add pulse-width configuration via DT

 .../bindings/iio/health/maxim,max30100.yaml   |  6 +++
 drivers/iio/health/max30100.c                 | 39 ++++++++++++++++++-
 2 files changed, 43 insertions(+), 2 deletions(-)

-- 
2.43.0


