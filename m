Return-Path: <devicetree+bounces-187875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B25AE18EB
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 12:31:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F0104A5B1D
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:31:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE0E128641D;
	Fri, 20 Jun 2025 10:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="N/8NpJs9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8438228315F
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750415498; cv=none; b=PoVxISwGvgNaeNJ31tSQ2528TnyvWOGA4fwNv5GcOtBAcigeU+E4nNLmrtf5jVk1MM9jsD7sI8sgyR3BxwGlIr6yvzIPHK6uq9q/okEKzdE/hV6hcskH6sFHRvnJfa+t0DpxUwT6Z3OAKWqz2gSpq8waftqzXdZpPC7LNri64mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750415498; c=relaxed/simple;
	bh=g/vzD+cOWNqqj2T/TniSFBbEUCUdsEigkFpQHb857BU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bfCLkgepJwm1ANvUV1uQhVOYxq4HzPqgWex6pQ60N7jqCexnjfcxkfewsfXbkcqbGE2o+Awh+sj+23aaFrHF7WNW4FU98ajN+BV8cV/rq2f65vCe/lHvyg0RbvXSyXCYwW9YzRnhjRjZp+Xz+SCWS2CwGryJ6dxR6cGVL9TQbzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=N/8NpJs9; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-acb5ec407b1so282298966b.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 03:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750415494; x=1751020294; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1muw2blYzxaHAsDZg3IXNPfcSbqmSvh2KRGWNScsj00=;
        b=N/8NpJs9dg3pyarbLXvUlulb9TyRFA4p5WKoT3XPptUWkRk+VIsT0rya51KAtFIiHd
         14+zus8p8k4Vnx1cwhHZQIjaH5yhIxK41rOR719hPjp5oVnsAgaHsSJWdGuv/hhXHMZl
         dUUDe0z2/9fHLpk8ATboBfOnM9O2cH7sbgW6bSd6ov/Sy52bt3Yv8c5qvcfve1UQYTHS
         PPkcALp99j4Av66Wh4ULIEW3M7ojVdPDvYDdXW0dlcedhrjxSW3Ey/4Mynkaz6lM7Fyn
         S+k1cd0bWeK53RtkJEcX+/7wR2XasPPNB4sVywcjZHv3mMiuUuBbbss0j+8BssX8CJ5X
         0T9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750415494; x=1751020294;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1muw2blYzxaHAsDZg3IXNPfcSbqmSvh2KRGWNScsj00=;
        b=iwCxaWtTzfCmMoehXKAhysqQOnGtj11e4sKQp9Ji0Y+Aq/dWTpI3cWdgOrAT+nda5b
         Oz5pOUQK34p+x1yqK7W/AATu7nwhq4ok3PATS9LWrXKekIC3rIo/7ba2zdSDpLL/kH+O
         ruYYEzDD3PGVtGtxdQvHZQe4azD66ANGclFYeMW6udwf9jORVbXWhZwbwMJWc7NgG4Ue
         iUUE4Gp347rbHnE11xyrSf2gTqolxbeRccKnxZFqEQiPxgiDyAEy95aam4IL0UYuu7nd
         PmCCf/EXpXN1YbTQ+M7vDxcqe4C/+U7MDNdDn8l718pFwfncJWHQDDoQTfg5p/ZyAxKi
         IcGA==
X-Forwarded-Encrypted: i=1; AJvYcCVXFGUQ8ks7x77Lc8DQCMTMj6Ag58gUbpsPx9cb4/NSZ3Hx1oj1tFKAZ87pKJr1vJCk8UFJ2peDTiJJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxfXoouQ4iwHQsmlQuE6qdPaG4XTg3eANiQNiIrwiPtyAGATK58
	1P95LKfRpySj7ovXJwteoJ6Kt+h6hHBNud3eioCna56i1gWFCaLTOHD0faklwzI+2tE=
X-Gm-Gg: ASbGncsRxrLHNnmdJI2JkapihLjNZRVqkadx591fzTiHPOq6un6yGyXze2WszsD1bKi
	IV9a2fjgrnCQ8b3GSh/Hsq/Kz7zX4YOGBhNrTQc6ICGXHOGSXsTYZMwG9zgaAPnJeBeIjWid+/O
	ULRL2XzG3BDE3WCi4Wd+m0cxBQEmZfsb4uRUazFL1oSzZXHNTGKJ1ins0gftw4X1ANJfKhPIf5U
	sO1LBNOoNs+LEYVdr1LG7Mdas58brVUOr51lhZF0DBrxXEbkQ9dzo+ktcAuxS8hofIxJm+kjxPQ
	BD4xWt8m1WMMUWI2vXgH09HgzYE6JlIl/a4EmwjFMQ0OQ/I/PUC4nA0kSvcoAjZ7MqmfLqSAk4B
	KdwhFvJS25FFticAuHya5UHUAxM8DacXc
X-Google-Smtp-Source: AGHT+IHoDGaWZ5BrbMFRiOuhEj2IF/mLQzBgFpihvoZBrr7fr3ArCX7v7z9d95MM7gVJZXVieJjUCw==
X-Received: by 2002:a17:907:97cd:b0:adf:f8f4:2001 with SMTP id a640c23a62f3a-ae057bf6566mr224474466b.49.1750415493718;
        Fri, 20 Jun 2025 03:31:33 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b6f5csm138047366b.122.2025.06.20.03.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 03:31:33 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/3] Add interconnent support for simpledrm/simplefb
Date: Fri, 20 Jun 2025 12:31:24 +0200
Message-Id: <20250620-simple-drm-fb-icc-v1-0-d92142e8f74f@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHw4VWgC/x3MTQqAIBBA4avErBtIS8uuEi3KxhroRxQikO6et
 PwW7yWIFJgi9EWCQDdHvs4MURZgt+lcCXnJBllJVWnRYuTD74RLONDNyNZiZxotrFLGiBpy5wM
 5fv7nML7vB1pWCE9jAAAA
X-Change-ID: 20250617-simple-drm-fb-icc-89461c559913
To: Hans de Goede <hdegoede@redhat.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750415493; l=929;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=g/vzD+cOWNqqj2T/TniSFBbEUCUdsEigkFpQHb857BU=;
 b=9cYc3EXbQ33AMBFKnPLXHwMs1U5skgQNdQEyFJ2oPbg7cPoKkn78i6p8FdCpi4ycoC0PtPnwr
 xSeaoEOjEGfB4uj+AatP1PQpE65PFg2JOldcgkg62kv7/usFdeh7zaK
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Some devices might require keeping an interconnect path alive so that
the framebuffer continues working. Add support for that by setting the
bandwidth requirements appropriately for all provided interconnect
paths.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (3):
      dt-bindings: display: simple-framebuffer: Add interconnects property
      drm/sysfb: simpledrm: Add support for interconnect paths
      fbdev/simplefb: Add support for interconnect paths

 .../bindings/display/simple-framebuffer.yaml       |  3 +
 drivers/gpu/drm/sysfb/simpledrm.c                  | 83 ++++++++++++++++++++++
 drivers/video/fbdev/simplefb.c                     | 83 ++++++++++++++++++++++
 3 files changed, 169 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250617-simple-drm-fb-icc-89461c559913

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


