Return-Path: <devicetree+bounces-40342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E725850319
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 08:13:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 718772853AF
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 07:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8F72B9D0;
	Sat, 10 Feb 2024 07:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="g7IbOi+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0088239FF4
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 07:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707549000; cv=none; b=dbPEbHoWGfko+oF6epFpFmLsgf6i+R+14RCMVNOJDbXXzbrmIHM/DDjbGYZcrb4kEpseOQNaJcSNxPYWbtNjVQycMtHJWCeQ5W2bFYzI9LRUDP5MrHp/uMHuXLCnjJdoXbkbMffLmewQ4H24YcDPWMp68s10XWtQgWY4lKW6Dqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707549000; c=relaxed/simple;
	bh=XNvI42j+7FmHqNECdaZBEQBh8CeG71yHi4CBUyp0EFE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Y6yBR4JIyQjQ8eNVtsUf7069WorbSWosO4XfCUO/qt+qQ1OuobcEdtGUGum+aWs3n/nn0Y1caHV14h4MnaCMRsJQ9v+S8wkp+pKlj3vaDzqoDW2/jXODwhYBdldf4UrRhRI+RlB1OodxmHBq9JDskCHTAMpr72A2Iv/5yRYXAo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=g7IbOi+R; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1d94323d547so15818625ad.3
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 23:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707548998; x=1708153798; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o6rwt10FSsSf9ZLI/+GmfDcWiK/rJgtd/StxIlWC43k=;
        b=g7IbOi+Ra2rUoZ7bDPpUvDqlna2c3MLNh80mv0pomgcpD3xiJJwxXySjFl7VpELmfO
         VLpUqRx+JRb49StXfst3hmXJHSvO4QGfaj7fKSdk/NDjbMWFuLaXX1I4lui06sdArmgz
         Pp8isuJ257fauNoY82viDVOI8l70y4iVGvJ3w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707548998; x=1708153798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o6rwt10FSsSf9ZLI/+GmfDcWiK/rJgtd/StxIlWC43k=;
        b=qSMuBdUBu75qDCEbXUQ2KY7ZTLlWrgAi3jBkPhSFNvWRAAIfP4IefwGMOlmPnH3KRj
         2EiZ5QXpP5r3a0PMt0oUU8grP85tJpdfMQoF8ZD+Apw/W9UzwmvbuGBGCQJ8YYTDWIMd
         /hO+6dUbFc8ez0qilO0pp6Oo0goeiLPeaqPPsY3DMij/URAX8P2kkvCLsQKd8yfVfWHr
         ge5zu1S6PzadvE+di45IgWW8eEaoAJPF9MEo7xNPDAPcFCKsR444E3uJS+3LgEcvPlWZ
         WMl+2nTRfU/sAz+aZ89j8W55oj6Ra1pfe80CiyKo9OBYD4IZKk7/45UTJzsM7jCWXd5a
         OjmQ==
X-Gm-Message-State: AOJu0YzRCCzeyA1pVsdu31U9/ljnbhUykSa5yeYHQHxIQ+AyctnkS9nL
	guUDLJGEZJpM8w+8/Ujt4e4752iQG5a3TuSbuI8ERzOYmJxYBTJRoH7AcR7WqukRYIKssPJhMMs
	=
X-Google-Smtp-Source: AGHT+IEYMDvJ19psXILcI/rjPccRT75MfLSEUT5ycmz+0EKZhRshLPkzC+4vjEV2TS1VZWwHwwlxCA==
X-Received: by 2002:a17:902:cec8:b0:1d7:15ea:4249 with SMTP id d8-20020a170902cec800b001d715ea4249mr1845301plg.7.1707548998453;
        Fri, 09 Feb 2024 23:09:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWPZfxVECZHV+IGwDF6uOIynzL9NdXLQpNK0tbkQ2Mz94NuD0bNKUXlIQOfURhM40ViSH6Y1bQHXrsL8QcTVDOpfp9IhmOli0B86t20P56YmH7Rr4fAmaobUBFshZ4oU90czIyB424aoMm1H+P2EVicSoFANLiOl5FkWrmppBq5oc36Xrf4nuB7SdV1JThyyJ8z8JM5+TKC2pJ+AgoekkFkutv2sLbDR0scg1x1psNNG/JpJjSZyNS2qmYHXz0+MRY2R7QDIVzqnbQfrb+vVDMMCUdks9KrCwRtZlhhWcLOnkjyz56KiF+ALWd/V9lMy2R1pN7E8cNV2PDc0DG3Q5t8Jx8/7dBqnRYs7yLTySXvmKsPondkLQ==
Received: from localhost (175.199.125.34.bc.googleusercontent.com. [34.125.199.175])
        by smtp.gmail.com with UTF8SMTPSA id h9-20020a170902f2c900b001d921bcc621sm2478144plc.243.2024.02.09.23.09.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Feb 2024 23:09:57 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: chrome-platform@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>,
	Prashant Malani <pmalani@chromium.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>
Subject: [PATCH 11/22] platform/chrome: cros_typec_switch: Use fwnode instead of ACPI APIs
Date: Fri,  9 Feb 2024 23:09:22 -0800
Message-ID: <20240210070934.2549994-12-swboyd@chromium.org>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
In-Reply-To: <20240210070934.2549994-1-swboyd@chromium.org>
References: <20240210070934.2549994-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use fwnode APIs instead of ACPI ones because this driver will soon
support devicetree firmwares. Using fwnode APIs makes it easier to
support either ACPI or DT.

Cc: Prashant Malani <pmalani@chromium.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/platform/chrome/cros_typec_switch.c | 24 +++++++++++----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/platform/chrome/cros_typec_switch.c b/drivers/platform/chrome/cros_typec_switch.c
index 1a718b661203..373e0e86ebfc 100644
--- a/drivers/platform/chrome/cros_typec_switch.c
+++ b/drivers/platform/chrome/cros_typec_switch.c
@@ -207,29 +207,31 @@ static int cros_typec_register_port(struct cros_typec_switch_data *sdata,
 	struct cros_typec_port *port;
 	struct device *dev = sdata->dev;
 	struct acpi_device *adev;
-	unsigned long long index;
+	u32 index;
 	int ret;
+	const char *prop_name;
 
 	port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
 	if (!port)
 		return -ENOMEM;
 
 	adev = to_acpi_device_node(fwnode);
-	if (adev) {
-		ret = acpi_evaluate_integer(adev->handle, "_ADR", NULL, &index);
-		if (ACPI_FAILURE(ret)) {
-			dev_err(fwnode->dev, "_ADR wasn't evaluated\n");
-			return -ENODATA;
-		}
-	}
+	if (adev)
+		prop_name = "_ADR";
 
 	if (!adev) {
 		dev_err(fwnode->dev, "Couldn't get ACPI handle\n");
 		return -ENODEV;
 	}
 
+	ret = fwnode_property_read_u32(fwnode, prop_name, &index);
+	if (ret) {
+		dev_err(fwnode->dev, "%s property wasn't found\n", prop_name);
+		return ret;
+	}
+
 	if (index >= EC_USB_PD_MAX_PORTS) {
-		dev_err(fwnode->dev, "Invalid port index number: %llu\n", index);
+		dev_err(fwnode->dev, "Invalid port index number: %u\n", index);
 		return -EINVAL;
 	}
 	port->sdata = sdata;
@@ -243,7 +245,7 @@ static int cros_typec_register_port(struct cros_typec_switch_data *sdata,
 			return ret;
 		}
 
-		dev_dbg(dev, "Retimer switch registered for index %llu\n", index);
+		dev_dbg(dev, "Retimer switch registered for index %u\n", index);
 	}
 
 	if (!fwnode_property_present(fwnode, "mode-switch"))
@@ -255,7 +257,7 @@ static int cros_typec_register_port(struct cros_typec_switch_data *sdata,
 		return ret;
 	}
 
-	dev_dbg(dev, "Mode switch registered for index %llu\n", index);
+	dev_dbg(dev, "Mode switch registered for index %u\n", index);
 
 	return ret;
 }
-- 
https://chromeos.dev


