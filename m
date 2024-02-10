Return-Path: <devicetree+bounces-40343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D163D85031C
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 08:14:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01CD31C226F1
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 07:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A19A38F91;
	Sat, 10 Feb 2024 07:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FfDLwiUI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A352C3A1D4
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 07:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707549002; cv=none; b=gCoys1JmRD8MHkpnmv7v2f9Uel4Uz6CtO4Yre5/4mJ/P/e2M6HPApzL+cM7UsGgQeeEHwLcc4dq+AcxHyG/yFAKKtC6MUXQ+YbyCASGsfbUgT4JY2SK5S4QpdHhBHcd5Z/bOE326/IwuLHAU0uWCycsGKwM5EjuU86Bk0SnhKnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707549002; c=relaxed/simple;
	bh=t7tvQJG6YlEt+ycy0C88MvbSQbeNL2T8HNinf+f8mhU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eaQqKwd8MEztMf/OcrjkDvDyJbY/4Iv0e1HV6d4GXj4lYoyX5kPVL6N/OX2AFlge+AT1NV5bQOrEi7lFLE005VY1QBP5PYsr1PX4NPcKpaxOZ4cZuYpRjU1Pve/jGUHCFiX6ytI1m3PTlN3VZdE4xJCitWqlrUFkMECHmuRkLMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FfDLwiUI; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-5bdbe2de25fso1270545a12.3
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 23:10:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707549000; x=1708153800; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7RRDNZyVj04t5JHoAjAOJhQ0Jr4YTOazbyEccudCdmM=;
        b=FfDLwiUIWlO4efWPGrTLTM+PBUlPw7lyhvqQD5jNq0RsqOBJyMplwuCq2+l2HWZq4q
         Bq4MhYRx4at8o+0/ed9IKsynk6TRdh/OZMPxAANtZWuVeEYd0um6Dm8hvcLk7NX+ycJc
         j0pQLtCh3vVj6e/yjnuH9YQgnW7rzw+Qo0p2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707549000; x=1708153800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7RRDNZyVj04t5JHoAjAOJhQ0Jr4YTOazbyEccudCdmM=;
        b=Wp7rMV0o4RK4wLB2RpsNNV89Qdm1LfRTJ1EIV+TZBJfGdPFZqQScOaxvbH+VKmlKcy
         aJ7MyoWXFfbCay3yc6FWPZWUctvszmBiJlxHi7blHTUZqv9BtJIUs0uQj48Z2xaAvmAJ
         ZfjZgLomlxsVvpCoPI2YeHf4F9cwBYT6Y7xBAqKMNZacPuMfe+BO/gohO0N204GcC3Yc
         LHtUbuQGS3UXUgzUH8Ty1iqfN+7TdNB7cWL9P7ABuiegCNl5I1sH3aMg/lOt5jCPpNSM
         RiCam8Pg3pN6lzZFXIzGU+NwAiG7GwTCtBBzJyagGPh9ifoKCoGNxDAe38YCqfb9UqM6
         tyrg==
X-Forwarded-Encrypted: i=1; AJvYcCXimS9y44K3aezPXF4ZGFbJs7LzmZ/KgVewQibq5w7aMBSC1wHA4k8Jw3ieDJiYHtI61qJh4A4l/ZjFTQ/3XJszQDCpMlt4c0RSdg==
X-Gm-Message-State: AOJu0YyzU/oCYjxvsBk6BRv46qxL7O0vsFL4oJ96Rz3v2Yi9X58y4Nhc
	oN76nOAcLS/WWfheNAr+KcK9ci6KvtpeilZKXkbUdhvUDJjzLgreKycvh60Ssw==
X-Google-Smtp-Source: AGHT+IH18BL+v1/eWB00jAhbCH1MDFkNv9w/KlvOVehkJbrbvpOewOqpcto8HNZ+VsYssctW+PUIzg==
X-Received: by 2002:a17:902:ed0d:b0:1d8:f106:cb92 with SMTP id b13-20020a170902ed0d00b001d8f106cb92mr1839715pld.10.1707549000129;
        Fri, 09 Feb 2024 23:10:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU0h1bRFaEg+rFVuvzPvT72dcm+HAwsdsZCtHAhkEgEg7ayFRJauNl11VSY6YyDygPUNI2UG6VppFLvyEcP1cUA7q4TWT/wBEpaKTuLlo1sFWBgnfseptqeqG6Hg1IkRQ9dNwDd4lqNtxcY52R6emzrYCP7HCrScCjDEWljoS6c7AOh87gnSGt5+hp5SlsPjSsnpQtKieFzEbu0EOef+qB5OGN6nxsB9GMlCKqB/j68OVjeK744K3lk0ESlRGxMYhNXMCSKFgk8Elqiyq2vZevQj+KQpmzXdYRkOfd+wDBcyqvMIwCuM9ETiJeHyCkeUomMvvZov9KbLZH8a3E6K5cRdwkpph2vzwvMDbKrzGVewJpz8y0J7g==
Received: from localhost (175.199.125.34.bc.googleusercontent.com. [34.125.199.175])
        by smtp.gmail.com with UTF8SMTPSA id kw3-20020a170902f90300b001d9fc6cbc51sm2487629plb.244.2024.02.09.23.09.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Feb 2024 23:09:59 -0800 (PST)
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
Subject: [PATCH 12/22] platform/chrome: cros_typec_switch: Use dev_err_probe()
Date: Fri,  9 Feb 2024 23:09:23 -0800
Message-ID: <20240210070934.2549994-13-swboyd@chromium.org>
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

Use dev_err_probe() helper so we can get better diagnostics when driver
probes fails for any reason.

Cc: Prashant Malani <pmalani@chromium.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>

Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/platform/chrome/cros_typec_switch.c | 36 +++++++--------------
 1 file changed, 12 insertions(+), 24 deletions(-)

diff --git a/drivers/platform/chrome/cros_typec_switch.c b/drivers/platform/chrome/cros_typec_switch.c
index 373e0e86ebfc..769de2889f2f 100644
--- a/drivers/platform/chrome/cros_typec_switch.c
+++ b/drivers/platform/chrome/cros_typec_switch.c
@@ -219,31 +219,23 @@ static int cros_typec_register_port(struct cros_typec_switch_data *sdata,
 	if (adev)
 		prop_name = "_ADR";
 
-	if (!adev) {
-		dev_err(fwnode->dev, "Couldn't get ACPI handle\n");
-		return -ENODEV;
-	}
+	if (!adev)
+		return dev_err_probe(fwnode->dev, -ENODEV, "Couldn't get ACPI handle\n");
 
 	ret = fwnode_property_read_u32(fwnode, prop_name, &index);
-	if (ret) {
-		dev_err(fwnode->dev, "%s property wasn't found\n", prop_name);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(fwnode->dev, ret, "%s property wasn't found\n", prop_name);
 
-	if (index >= EC_USB_PD_MAX_PORTS) {
-		dev_err(fwnode->dev, "Invalid port index number: %u\n", index);
-		return -EINVAL;
-	}
+	if (index >= EC_USB_PD_MAX_PORTS)
+		return dev_err_probe(fwnode->dev, -EINVAL, "Invalid port index number: %u\n", index);
 	port->sdata = sdata;
 	port->port_num = index;
 	sdata->ports[index] = port;
 
 	if (fwnode_property_present(fwnode, "retimer-switch")) {
 		ret = cros_typec_register_retimer(port, fwnode);
-		if (ret) {
-			dev_err(dev, "Retimer switch register failed\n");
-			return ret;
-		}
+		if (ret)
+			return dev_err_probe(dev, ret, "Retimer switch register failed\n");
 
 		dev_dbg(dev, "Retimer switch registered for index %u\n", index);
 	}
@@ -252,10 +244,8 @@ static int cros_typec_register_port(struct cros_typec_switch_data *sdata,
 		return 0;
 
 	ret = cros_typec_register_mode_switch(port, fwnode);
-	if (ret) {
-		dev_err(dev, "Mode switch register failed\n");
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret, "Mode switch register failed\n");
 
 	dev_dbg(dev, "Mode switch registered for index %u\n", index);
 
@@ -269,10 +259,8 @@ static int cros_typec_register_switches(struct cros_typec_switch_data *sdata)
 	int nports, ret;
 
 	nports = device_get_child_node_count(dev);
-	if (nports == 0) {
-		dev_err(dev, "No switch devices found.\n");
-		return -ENODEV;
-	}
+	if (nports == 0)
+		return dev_err_probe(dev, -ENODEV, "No switch devices found\n");
 
 	device_for_each_child_node(dev, fwnode) {
 		ret = cros_typec_register_port(sdata, fwnode);
-- 
https://chromeos.dev


