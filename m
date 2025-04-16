Return-Path: <devicetree+bounces-167557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6840CA8AC65
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 02:02:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E91C1770A8
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 00:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7741E18C008;
	Wed, 16 Apr 2025 00:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jDxg0ZmW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCA370808
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744761739; cv=none; b=cX6cX16Rc+z4yYb2FLNoadmXH7xrdp/nNdqRkKBAn0u6njO/2Rc77LI2bEaAQZ32whIpNEHsVGLx0nPb5LBZl2M4YvsfWVCSTNMNQRxUOOBXlHHqRjWLfB5MlFXU/6IBfiFl4DvBYzAm114XTGVWWOZ03ZG50bQFwf7nPxl4hYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744761739; c=relaxed/simple;
	bh=GwnkAZU+uW9fAkCDWWme3oB1O6PxoBs+pYMPoHkdFMQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aYHJDwgUecFp/raF+GoVkOOnALrHZwVPe8i3qqO+EU4c1heFEyjLzevJUL73Gu4UowBoCsMZZJPUsq5//r4Tf7V8HxkJabdevv9N/MryVNqX+HeCEiUeGL1e3opWRWxkI2F/Zs1ExKCHqq4Ja+zSjupimNCYPt1o9LwNUxXfRvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jDxg0ZmW; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-22409077c06so81399125ad.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 17:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744761737; x=1745366537; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pLpTjFW7p6ghiYRblP02dy0kbs1t/nRG9KfdA64BMng=;
        b=jDxg0ZmWXkY7/crCU4dh2s0ImdvGa3j7mKy8npK2BmZp6SxxErN+YJw5TL8PoSxTc6
         9G5uulvzJU1bR9eFHsBjgU2rEnJAtHWJb+7b+QmwwZqZ0JTBhAlU/34sZDLC6DnJjlNo
         J3DrfSpyMsN9ZDzq2VZpjr4riVdV+FqZlWbLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744761737; x=1745366537;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pLpTjFW7p6ghiYRblP02dy0kbs1t/nRG9KfdA64BMng=;
        b=uN9Zz/T81peZp4lH5nkQ8/Ug7ilVsToh6CnZwh36oibE/5jYCAGMCLWM73qudTdkWf
         6gFzxNbQ/h+6gb7QYjSYtE9cUPEQcmHYEZHlAbB8zzJrL1RGV6y8co2qIpm8B9yB8cMc
         ah3Q4V3id082TFvtHnzhnnATI6Et3HUsHxHy6ZmUTx+ZNIFsHX91pSHHt0D7nMdJOwjd
         En9Wxy/hHawhNZ4aYZ/L46WtRhKaW2r1WBV+QxpLV5X0KSdRY2LxihgE9UtRuumgEqGg
         3rM3+Wb5ekNJNetsBwn9cpt+Qb8+sEgYHuzB/4yUkdf/nFXnvTAGOVs8JuvblRA8BD4N
         sVRg==
X-Forwarded-Encrypted: i=1; AJvYcCVZHXvc1txKWIo0f4rrjQMlpeTH50OG3sWiTL9h2uzaLFRV7yLj1GMZHl3EbvPSEyB/uzlUTY+wg4rW@vger.kernel.org
X-Gm-Message-State: AOJu0YxyFdmbhBeBa/DrHFwgdLJ9l0tbDqdjcgNHy1FNaId4dag8vSe4
	1EIIBYRo47avOUOl8yXCKgEDjLnJHJwHsb0R/4igjCJF4eAI4A8GSS7lsbaoCg==
X-Gm-Gg: ASbGnctG/4PG7wbUkotUg171U58uZh4e0qXBCzWsxfrX5Jb9mdfNc5IoQDxTJUh5Idv
	+rNAYtE24Vtv9huaCXz1frpKWN00M/AWK3TFX4OiUFf0pCOVmrn6GIJ08wxLTRmTSAjZQu7J+zv
	rdYXNZr/lM/UU6yZDOzbh1KcRqirFHVppPO6+shm6Lr7FzdHXD4UbI57myTTJKsDdXpQD3usO+v
	zXlPmDkgDtgofZ7kz79UNBYyy9u8Beg4vyS7ey3AOZsDQT4AzcKpsv6VNDEn5BkY9MSBcjbYXhh
	pezGIX9Kg0ocr41TBmhATYYVOSy0stlETqyStf/nrFdpcCJ07mj15lTJy1383pCKB86nuoqG4+4
	2zg==
X-Google-Smtp-Source: AGHT+IFgDSfSzHJQGblYKtBgX+uGjROsnXUma1oaTnVLcJEUU+QM71Xipmk/uC+evcJTJfTYjoWWzQ==
X-Received: by 2002:a17:902:d585:b0:223:536d:f67b with SMTP id d9443c01a7336-22c31a86b22mr19203715ad.38.1744761736701;
        Tue, 15 Apr 2025 17:02:16 -0700 (PDT)
Received: from localhost (199.24.125.34.bc.googleusercontent.com. [34.125.24.199])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-308613b3849sm196331a91.38.2025.04.15.17.02.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 17:02:16 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	chrome-platform@lists.linux.dev,
	Pin-yen Lin <treapking@chromium.org>,
	Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
	=?UTF-8?q?=C5=81ukasz=20Bartosik?= <ukaszb@chromium.org>,
	Jameson Thies <jthies@google.com>,
	Andrei Kuchynski <akuchynski@chromium.org>
Subject: [PATCH 3/7] platform/chrome: cros_ec_typec: Support EC mode entry
Date: Tue, 15 Apr 2025 17:02:03 -0700
Message-ID: <20250416000208.3568635-4-swboyd@chromium.org>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
In-Reply-To: <20250416000208.3568635-1-swboyd@chromium.org>
References: <20250416000208.3568635-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Support ChromeOS EC firmwares that don't support AP mode entry. Check
that the mode has been entered by querying the EC and reject mode entry
attempts if the EC hasn't already entered the mode requested. This
allows us to bind the DP altmode driver on devices that don't support AP
mode entry, i.e. most ChromeOS devices where the EC controls mode entry.

Cc: Benson Leung <bleung@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>
Cc: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Cc: Łukasz Bartosik <ukaszb@chromium.org>
Cc: Jameson Thies <jthies@google.com>
Cc: Andrei Kuchynski <akuchynski@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/platform/chrome/cros_typec_altmode.c | 112 +++++++++++++------
 1 file changed, 75 insertions(+), 37 deletions(-)

diff --git a/drivers/platform/chrome/cros_typec_altmode.c b/drivers/platform/chrome/cros_typec_altmode.c
index c2d9c548b5e8..97ca4cfabbc0 100644
--- a/drivers/platform/chrome/cros_typec_altmode.c
+++ b/drivers/platform/chrome/cros_typec_altmode.c
@@ -58,31 +58,50 @@ static void cros_typec_altmode_work(struct work_struct *work)
 static int cros_typec_altmode_enter(struct typec_altmode *alt, u32 *vdo)
 {
 	struct cros_typec_altmode_data *adata = typec_altmode_get_drvdata(alt);
-	struct ec_params_typec_control req = {
-		.port = adata->port->port_num,
-		.command = TYPEC_CONTROL_COMMAND_ENTER_MODE,
-	};
+	struct cros_ec_device *ec = adata->port->typec_data->ec;
+	unsigned int port = adata->port->port_num;
 	int svdm_version;
 	int ret;
 
 	if (!adata->ap_mode_entry) {
-		dev_warn(&alt->dev,
-			 "EC does not support AP driven mode entry\n");
-		return -EOPNOTSUPP;
+		struct ec_response_usb_pd_mux_info resp;
+		struct ec_params_usb_pd_mux_info req = {
+			.port = port,
+		};
+		uint8_t flags;
+
+		if (adata->sid == USB_TYPEC_DP_SID)
+			flags = USB_PD_MUX_DP_ENABLED;
+		else if (adata->sid == USB_TYPEC_TBT_SID)
+			flags = USB_PD_MUX_TBT_COMPAT_ENABLED;
+		else
+			return -EOPNOTSUPP;
+
+		ret = cros_ec_cmd(ec, 0, EC_CMD_USB_PD_MUX_INFO,
+				  &req, sizeof(req), &resp, sizeof(resp));
+		if (ret < 0)
+			return ret;
+
+		if (!(resp.flags & flags))
+			return -EINVAL;
+	} else {
+		struct ec_params_typec_control req = {
+			.port = port,
+			.command = TYPEC_CONTROL_COMMAND_ENTER_MODE,
+		};
+
+		if (adata->sid == USB_TYPEC_DP_SID)
+			req.mode_to_enter = CROS_EC_ALTMODE_DP;
+		else if (adata->sid == USB_TYPEC_TBT_SID)
+			req.mode_to_enter = CROS_EC_ALTMODE_TBT;
+		else
+			return -EOPNOTSUPP;
+
+		ret = cros_ec_cmd(ec, 0, EC_CMD_TYPEC_CONTROL, &req, sizeof(req), NULL, 0);
+		if (ret < 0)
+			return ret;
 	}
 
-	if (adata->sid == USB_TYPEC_DP_SID)
-		req.mode_to_enter = CROS_EC_ALTMODE_DP;
-	else if (adata->sid == USB_TYPEC_TBT_SID)
-		req.mode_to_enter = CROS_EC_ALTMODE_TBT;
-	else
-		return -EOPNOTSUPP;
-
-	ret = cros_ec_cmd(adata->port->typec_data->ec, 0, EC_CMD_TYPEC_CONTROL,
-			  &req, sizeof(req), NULL, 0);
-	if (ret < 0)
-		return ret;
-
 	svdm_version = typec_altmode_get_svdm_version(alt);
 	if (svdm_version < 0)
 		return svdm_version;
@@ -97,31 +116,52 @@ static int cros_typec_altmode_enter(struct typec_altmode *alt, u32 *vdo)
 	schedule_work(&adata->work);
 
 	mutex_unlock(&adata->lock);
-	return ret;
+
+	return 0;
 }
 
 static int cros_typec_altmode_exit(struct typec_altmode *alt)
 {
 	struct cros_typec_altmode_data *adata = typec_altmode_get_drvdata(alt);
-	struct ec_params_typec_control req = {
-		.port = adata->port->port_num,
-		.command = TYPEC_CONTROL_COMMAND_EXIT_MODES,
-	};
+	struct cros_ec_device *ec = adata->port->typec_data->ec;
+	unsigned int port = adata->port->port_num;
 	int svdm_version;
 	int ret;
 
 	if (!adata->ap_mode_entry) {
-		dev_warn(&alt->dev,
-			 "EC does not support AP driven mode exit\n");
-		return -EOPNOTSUPP;
+		struct ec_response_usb_pd_mux_info resp;
+		struct ec_params_usb_pd_mux_info req = {
+			.port = port,
+		};
+		uint8_t flags;
+
+		if (adata->sid == USB_TYPEC_DP_SID)
+			flags = USB_PD_MUX_DP_ENABLED;
+		else if (adata->sid == USB_TYPEC_TBT_SID)
+			flags = USB_PD_MUX_TBT_COMPAT_ENABLED;
+		else
+			return -EOPNOTSUPP;
+
+		ret = cros_ec_cmd(ec, 0, EC_CMD_USB_PD_MUX_INFO,
+				  &req, sizeof(req), &resp, sizeof(resp));
+		if (ret < 0)
+			return ret;
+
+		if (resp.flags & flags)
+			return -EINVAL;
+	} else {
+		struct ec_params_typec_control req = {
+			.port = port,
+			.command = TYPEC_CONTROL_COMMAND_EXIT_MODES,
+		};
+
+		ret = cros_ec_cmd(adata->port->typec_data->ec, 0, EC_CMD_TYPEC_CONTROL,
+				  &req, sizeof(req), NULL, 0);
+
+		if (ret < 0)
+			return ret;
 	}
 
-	ret = cros_ec_cmd(adata->port->typec_data->ec, 0, EC_CMD_TYPEC_CONTROL,
-			  &req, sizeof(req), NULL, 0);
-
-	if (ret < 0)
-		return ret;
-
 	svdm_version = typec_altmode_get_svdm_version(alt);
 	if (svdm_version < 0)
 		return svdm_version;
@@ -136,7 +176,8 @@ static int cros_typec_altmode_exit(struct typec_altmode *alt)
 	schedule_work(&adata->work);
 
 	mutex_unlock(&adata->lock);
-	return ret;
+
+	return 0;
 }
 
 static int cros_typec_displayport_vdm(struct typec_altmode *alt, u32 header,
@@ -254,9 +295,6 @@ static int cros_typec_altmode_vdm(struct typec_altmode *alt, u32 header,
 {
 	struct cros_typec_altmode_data *adata = typec_altmode_get_drvdata(alt);
 
-	if (!adata->ap_mode_entry)
-		return -EOPNOTSUPP;
-
 	if (adata->sid == USB_TYPEC_DP_SID)
 		return cros_typec_displayport_vdm(alt, header, data, count);
 
-- 
https://chromeos.dev


