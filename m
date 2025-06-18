Return-Path: <devicetree+bounces-186911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 163A7ADE1DF
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 05:49:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4FEC3189BF34
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 03:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA031714B7;
	Wed, 18 Jun 2025 03:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jFMS3RZv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B6218E750
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 03:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750218582; cv=none; b=fcrCsMAh6KAiN0QwkM5uhNWZUTFQOQcVBP0yJmTpezL898y7DScC9RTLacHAic/KmpWEHmawnX/S7qX4sXw7p46r+JYde/UfLFDG5cYzCdhtSHoEEAmcm1S90lUh/cTZ+eyq0GVQvY7JaHy5jaCkRI3X1JC/G1ibR7DjkXDUWSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750218582; c=relaxed/simple;
	bh=LAz+GaoUDVwgdCSLKZR/wFDA6hi6vkeJUGukzvmLfCo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RKm5mkSRDDCCrFD/K4N1YH5ZOqZJqs3ma4NKlN4IEl0nYoMP7ff1mEUoVi89sgMI8xNDqg6cBGHgA2QIc7jBPaA0cD39oxIoH6iVqbd7HbJOkKhF+iIwoj65HxCSfBC0NZMChrjhKucPS9J3YHGm9Ros3h0KQVp5fvHj9dpPCBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jFMS3RZv; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-23508d30142so76409495ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 20:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750218580; x=1750823380; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uonrVs/pRpGNPcjjmWWOHRenHXMMDe5KqCaZ0WZ1vWc=;
        b=jFMS3RZvZmqZ24+k+O4QPdm/q0s3Z/cDTvHySqD5FFOg8eUson2KQqTk/jppYaB8CB
         QcqRkTns3SXgHgR9uRAt8P7exXZM/uyEiPLv7JJCaGj6yI7MLpr7GyR85kjdHOPcH7rK
         fslW1xFw+Om+STugH+XNznJhkpnbufuhO8sXmx29CUCUNDJ1Ibls/Pwl13IzG0zsX/Hw
         vEqQ8/MXrRqJYiwLLIjIYp2996WrzSZpXl0EN5l7pSZaQOrQxEw/i6Nqqjcv35yyBalW
         tj3XtEvaZo3Jd6E+ZsHSqFpXSl05iTPjX6TNiwmU5r+ky4W9FJe0dLC9IsD3qla1Xpvj
         KJ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750218580; x=1750823380;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uonrVs/pRpGNPcjjmWWOHRenHXMMDe5KqCaZ0WZ1vWc=;
        b=Oa4nEr4Cut22csgycCt8AEFT6EZvDvEe0BuGEA8WEGH5GiFter5RaUZ4Lt8RY/msHD
         sBs57dIzt9ImTyaaawxHL3yX4dvxmQlwe8SaMKVZPhXqK+7knRsk/qjJSbDM/l5WTmh3
         uZAmk71K9usFhKw4zbMce1G0c5OY2tdYZ69ukcNdDCQzn1GR9jq+1w9fGGH6/a4xw2tB
         qff6NUOtejxFutPe2PGM5emfk3m+VzrfdNffPScSivxxn+S1bjuocGR2jMOSV8RVqUf7
         TBQCPxVnySbyYArkkrrKA0N9pYPOj46YD7cAWNz0m12GfGFd4B2X/gLkcA1PtseCSpjO
         FTLA==
X-Forwarded-Encrypted: i=1; AJvYcCUcMYIKywnVDkaB2olSvs3zCeXrQ6DolN1RFAppVIL2M5Hhk7s/tZqHKsnoLQSrA79OZIJvi1ywYTgH@vger.kernel.org
X-Gm-Message-State: AOJu0YyIc5jfhPkKSwm+CfJtYE/AgyqTfMMnfqgUWtuL/ORZ8sqyZLHj
	rXrhjTy0lChRdcdHJ3PJVOqvm2SnH2xEtF1hgKqhZK/XcJXBuSgUlH6j
X-Gm-Gg: ASbGncu4Ym3/GsBJ134N1Nk014IRWRwb7lt9KuY30pyiCRGvTE4qw4SJCbKFuxrsSwM
	boeUsW7DY6oPVJ61Pnw7eRP5Z8EQFtoe+qBySKQSKlQloeRWLEnct8JNLvlXOfnq3VhfKr1O+EK
	jN/e/9WPd1Ay2tyh4ADo4fPyoemgdrlXHEnjubdXGq541EyHNaZKXYwPF6fhXLllQFch8EjbzCl
	4jsvh4E+BpgAr/hgxx0Vx5IYkD5eAbqICnb2XDOS5chTSxQySosRfQjrTtZuYR5Sk5vozco8jpK
	wJW1B3dpYrWiZkShkaPshy+Nhg/ho0muja1irjXhE+pRKMI6G2v4XatI9zH/PpMjEo1UpxN0kel
	/0vPdIi2GF0axvfQhGJC3Qmx4T28IwqGkhP1liRo=
X-Google-Smtp-Source: AGHT+IE7Vg3PD5i+hf6+8elC6Q61qDmmCHHO2u2OoQshKIclquzMiQYEl6w5OCvJrDOpEOEJHlhkOA==
X-Received: by 2002:a17:902:d2c9:b0:235:ca87:37ae with SMTP id d9443c01a7336-2366b149bd7mr260175125ad.41.1750218580570;
        Tue, 17 Jun 2025 20:49:40 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-236736cb4f9sm63418405ad.138.2025.06.17.20.49.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 20:49:40 -0700 (PDT)
From: LiangCheng Wang <zaq14760@gmail.com>
To: cip-dev@lists.cip-project.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com
Subject: [PATCH 0/3] drm/tiny: Add MAYQUEEN PIXPAPER e-ink panel support
Date: Wed, 18 Jun 2025 11:49:33 +0800
Message-Id: <20250618034936.172150-1-zaq14760@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the MAYQUEEN PIXPAPER e-ink panel
(122x250 pixels, SPI-controlled) to the tiny drm subsystem.

Patches (must be applied in order due to dependencies):
Patch 1/3: Adds 'mayqueen' vendor prefix.
Patch 2/3: Implements PIXPAPER tiny drm driver.
Patch 3/3: Adds PIXPAPER device tree bindings.

Tested on PIXPAPER hardware with linux-5.10.y-cip,
verifying display initialization and refresh.
All patches pass checkpatch.pl.

Signed-off-by: Wig Cheng <onlywig@gmail.com>
Signed-off-by: LiangCheng Wang <zaq14760@gmail.com>

--

LiangCheng Wang (2):
  drm: tiny: Add support for PIXPAPER e-ink panel
  dt-bindings: display: Add MAYQUEEN PIXPAPER e-ink panel

Wig Cheng (1):
  dt-bindings: vendor-prefixes: Add Mayqueen name

 .../bindings/display/mayqueen,pixpaper.yaml   |  67 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   6 +
 drivers/gpu/drm/tiny/Kconfig                  |  11 +
 drivers/gpu/drm/tiny/Makefile                 |   1 +
 drivers/gpu/drm/tiny/pixpaper.c               | 716 ++++++++++++++++++
 6 files changed, 803 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
 create mode 100644 drivers/gpu/drm/tiny/pixpaper.c

-- 
2.34.1


