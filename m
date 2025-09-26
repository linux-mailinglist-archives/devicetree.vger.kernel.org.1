Return-Path: <devicetree+bounces-221877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 25480BA3CA8
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:12:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BDB81C04D06
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E29842FBDF0;
	Fri, 26 Sep 2025 13:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MEdFAQ1S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A242F7AB3
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758892300; cv=none; b=M5wBste/M3LHWx79SmoriWq1aQNKsvxraEfMxKqRFyTCjnsyAcBqASs+1NX5LUfDNAl6wZmqHwDQ/JaiJJTI99qU7oTFyGUB+TJ0ijmYUKhFbYsgVcEQvXFAS9BIxhgYhs9y9T8lahIlacvAOch9vTCILx8qF7rrG9qwSh1ErWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758892300; c=relaxed/simple;
	bh=747DSL3/0b26gMfctw9GAJQ4wcs8qWL90knTYpPv+GE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=trA9+I4QTqtE0k/RaLTxPIjHEbduGMG24APFExaKV7Az51j5aH6kHVyg7AnmfO0S7/eNoxUybYnhT1eWdndSBp5o5oLILngRNiErN42ZT2dAvGxs0GNzch8yqZVnTzEchFPS742+UvEmRtfBkt3UYjlo/EWuryQTD2vpWvmz1TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MEdFAQ1S; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-579d7104c37so2967899e87.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1758892293; x=1759497093; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PEFN0lLdAUAhxOrw8NBMU68FYdHDfoPQjtv/CBRcNWg=;
        b=MEdFAQ1S/grHZMhcCO6tE2MJcK4ibjWaeuhsoYyuBn71UUcnUC/shY5ocmLp/qu7WP
         7okYhCuXdM2bbt6BvNRcorf2eaEw8bYT5GfWfnogq8O28zLjMWCbeVbc5r+A5z91fMDr
         LpswgYv+M4HDBm0DOXhHwb1oqtph27Tu0Jodw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758892293; x=1759497093;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PEFN0lLdAUAhxOrw8NBMU68FYdHDfoPQjtv/CBRcNWg=;
        b=s6gzBa14xkFyVCdMlsaomg4Hgq2GGbWo4jejuMV6lHPyqVvbzrYSf7m8A5LGvj8a26
         5Xwt+1UqFclCraHYW4gZMgfDVmflEnYz3icYO1msx+jA+QJBvx23pvss34f30Ef1Pw7p
         BYm/s4l997Wmk66kf1/DatS2UnuPyIv0iESxgHTFQmWg9agQ35n005wbCeBbD9QhE0D0
         qvRFjrWNEb4rDgmK99DUUSoKDhAieC6xIdaTZ/gx2H3TubFD33BILP+bYv4elBVgd24C
         oK6ysWsqUtXY4uTxV0le68tAvTC7wUu+amE0M164FznOAP0ELIZ8bh5UsTfBaPJ5DQWW
         4EaA==
X-Forwarded-Encrypted: i=1; AJvYcCUCGleAUZeyhbhjdsW1ZttuAtubePsIwpmL2IUOXwhI7dxYu/JwLIOLzhiR+bHABFANWV7s3ZG8objX@vger.kernel.org
X-Gm-Message-State: AOJu0YxtsTmgPNIxy9bZQs8ddrGpxWM26SUqHCjRvM2BCLkaxvuH3TrK
	n7AbRxUZt/CYrTAd2y0XvqTWLJ/ia2MPZyoqw3T0uQ8pt2OahvWp5xhSnKMj/mf1SA==
X-Gm-Gg: ASbGnct8ZEr1Y8BmNS5CCfuAUJiPFzZvzZB/8fb6K/kpJitygjJyEh2tdjJhfl0H7ya
	nCLAtdXn+UFjgSnFieBpiKlMe15r4BoJ/WlhfgHQy9s0UH+JZNF5LhE97BzoNmwWqxFYBShWGKH
	DImICBOfl/GHcusbNM1pM/5ScpqPasedDlJFZ6s8pC7UliWF+8aa/lPX9t+Pe85cSlHjPQM2DAP
	clsDGniNwO8a+Ddu8bNxiEz4Q9FSgWpYFJhJBpFUSEfv7gTjRsWAjw8fQqbIx9ABnEoOgF9sd6y
	YGyIdsSmwe2rkny6Ug0jQa9ozgPBo81AOq2v4FsHuv6LMNtWWpMBui4ONBYTF2HSH4JfhD5ef1X
	Q8zkAnMgP8fmdo9Gg4phghn/PIKwkN2e1yLx8wsfZu5/1+DXNTMLfqbgqvyXS8cH9i2cPhMQGNC
	EBAA==
X-Google-Smtp-Source: AGHT+IHoXncX6KzHuffRNxD1bdNRByMLtGFUXJU+Vx+pJpeCHx/eyFalgZtv/Aq9A8oN/XwwQ6kRbA==
X-Received: by 2002:a05:6512:e9e:b0:563:d896:2d14 with SMTP id 2adb3069b0e04-582d2b4cb9amr2443275e87.36.1758892293127;
        Fri, 26 Sep 2025 06:11:33 -0700 (PDT)
Received: from ribalda.c.googlers.com (64.153.228.35.bc.googleusercontent.com. [35.228.153.64])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58527c6b014sm123872e87.43.2025.09.26.06.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:11:32 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Sep 2025 13:11:30 +0000
Subject: [PATCH v3 06/12] media: ipu-bridge: Use v4l2_fwnode for unknown
 rotations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-uvc-orientation-v3-6-6dc2fa5b4220@chromium.org>
References: <20250926-uvc-orientation-v3-0-6dc2fa5b4220@chromium.org>
In-Reply-To: <20250926-uvc-orientation-v3-0-6dc2fa5b4220@chromium.org>
To: Hans de Goede <hansg@kernel.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, 
 Robert Moore <robert.moore@intel.com>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-acpi@vger.kernel.org, 
 acpica-devel@lists.linux.dev, Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2

The v4l2_fwnode_device_properties contains information about the
rotation. Use it if the ssdb data is inconclusive.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/pci/intel/ipu-bridge.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/media/pci/intel/ipu-bridge.c b/drivers/media/pci/intel/ipu-bridge.c
index 441d1a5979fe94bee4738da68e185a44dbd411d4..6155046ef4fc6b5d074194d1b8113212304136bc 100644
--- a/drivers/media/pci/intel/ipu-bridge.c
+++ b/drivers/media/pci/intel/ipu-bridge.c
@@ -242,19 +242,23 @@ static int ipu_bridge_read_acpi_buffer(struct acpi_device *adev, char *id,
 }
 
 static u32 ipu_bridge_parse_rotation(struct acpi_device *adev,
-				     struct ipu_sensor_ssdb *ssdb)
+				     struct ipu_sensor_ssdb *ssdb,
+				     struct v4l2_fwnode_device_properties *props)
 {
+	if (props->rotation != V4L2_FWNODE_PROPERTY_UNSET)
+		return props->rotation;
+
 	switch (ssdb->degree) {
 	case IPU_SENSOR_ROTATION_NORMAL:
 		return 0;
 	case IPU_SENSOR_ROTATION_INVERTED:
 		return 180;
-	default:
-		dev_warn(ADEV_DEV(adev),
+	}
+
+	acpi_handle_warn(acpi_device_handle(adev),
 			 "Unknown rotation %d. Assume 0 degree rotation\n",
 			 ssdb->degree);
-		return 0;
-	}
+	return 0;
 }
 
 static enum v4l2_fwnode_orientation
@@ -297,7 +301,7 @@ int ipu_bridge_parse_ssdb(struct acpi_device *adev, struct ipu_sensor *sensor)
 	sensor->link = ssdb.link;
 	sensor->lanes = ssdb.lanes;
 	sensor->mclkspeed = ssdb.mclkspeed;
-	sensor->rotation = ipu_bridge_parse_rotation(adev, &ssdb);
+	sensor->rotation = ipu_bridge_parse_rotation(adev, &ssdb, &props);
 	sensor->orientation = ipu_bridge_parse_orientation(adev, &props);
 
 	if (ssdb.vcmtype)

-- 
2.51.0.536.g15c5d4f767-goog


