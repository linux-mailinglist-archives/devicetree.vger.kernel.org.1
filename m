Return-Path: <devicetree+bounces-122490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF9B9D0BD7
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 10:35:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF76CB2405F
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 09:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7496194082;
	Mon, 18 Nov 2024 09:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BAcTIGwI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78692193062
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 09:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731922453; cv=none; b=HmBGxiirxrbsg8idRWI5oZ/z7Hp4QqR3zqCWdmr5HfmNma6f0gLtUXjr9b0BqBH/pECf/0aDgR3r3uQ6B6R12iVNmdEPwkiuwCzTU15rqJvRYVWcvP/FmJPPvlOSMaIUJoKbxqz/9Nt4Z+xikeA+LAyHXRMTAu/GauZU0pBYtpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731922453; c=relaxed/simple;
	bh=uAG+q77If4uu42qh15gAWVauifcVeZPLI5R8Z0hp1us=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XPdw9y3TCD5mGkha4ksBe0GMdLDQrGm+VxWz7VmbX0mJsyD7pGf/Bt7HbFrjDuSg6Ay6OGfyl0NFdriravZtDos2BuCvDeNNVq3JWeuYwpr9pXTWPMCtRxaHX+iYQ2NKljGA9R3546JtuGZxp3hyFcvByQJ1mjXydUmIo++aVOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BAcTIGwI; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2e56750bb0dso1138183a91.0
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 01:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731922451; x=1732527251; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B1gi99T1COw3fo/A7RXmsrRNqipSiwXe7IPFAyxh3nQ=;
        b=BAcTIGwISKpxaWQuK6lozMHI2+6aehvO/rc6lAmQOVkcFnK1I9HDhEcRmoComPzqwC
         2g5KFNmjLo/0DVMNwdVakFgmULMebXMiFNg9QqRVNTSCP1xPXZlVFkbz9i6WsGdUGGF7
         Ss1maA1BhfpBbCbe4g71MiETKzDFnx/24kVvQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731922451; x=1732527251;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B1gi99T1COw3fo/A7RXmsrRNqipSiwXe7IPFAyxh3nQ=;
        b=tkBaR4f0YbD9BGBIxY9MfnLcxBxfsC3hUSNU3Ir89gBZLqsZuY13sPmI7oy6K3aK23
         F8aVbAAzP8V9VVcNxH2Z7aCbgER/N+WQ7mMzf+vk+6bYkaJQrohrO9Pzna/3P8zLMeYm
         Vhu0kfFzFmZu4ukocmjMHeG3kD1hsrVIGpmVqXuW+fYg1hp2sPX3/IY6dW70Kg9/Q5fG
         Ngpl976HUCULQgSqIAIQw7iaucg7LMh637mCP0t2wksU0Ijg2M/lspLI2yco5/xDqaGA
         l1yDDYnSwpHJ1sqA+rRiJzHn2QkHJJHtW08dzH4FiY/Emu/zlfeKbg7HYNRuG9FlkQtG
         d/hA==
X-Forwarded-Encrypted: i=1; AJvYcCWbLPD9Z7tUWHjSCtxA6wcWxA4eAVY+ixsv0PMevJ5TMGMrhcgRJWuabI/+/QKHlfTpnsQDukayKCpU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1MZ53bzVBrzadpYbzQrdaRtJsZ0Ft84TI81Krqz/MRV6fz7sp
	uiwdo5RLsQ/g6v8uR+Q8ei2sagfCDwZfwu45POlln6KcbfVcF5wDw5y+nNhwHQ==
X-Google-Smtp-Source: AGHT+IGXhjKQWR0KaYkQWRGmrJux1znHSMqcGsFKjVw/B9Ofkc26uXXYB4L/tgF/ZNdQ+bFvpHZU2w==
X-Received: by 2002:a17:90b:3a91:b0:2ea:7cd5:4ade with SMTP id 98e67ed59e1d1-2ea7cd54b4cmr2877384a91.30.1731922450867;
        Mon, 18 Nov 2024 01:34:10 -0800 (PST)
Received: from lschyi-p920.tpe.corp.google.com ([2401:fa00:1:10:e40d:fa29:75db:2caa])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9f1e24ce4sm8333500a91.0.2024.11.18.01.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 01:34:10 -0800 (PST)
From: "Sung-Chi, Li" <lschyi@chromium.org>
Date: Mon, 18 Nov 2024 17:33:48 +0800
Subject: [PATCH 3/3] mfd: cros_ec: Add charge state control cell
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241118-add_charger_state-v1-3-94997079f35a@chromium.org>
References: <20241118-add_charger_state-v1-0-94997079f35a@chromium.org>
In-Reply-To: <20241118-add_charger_state-v1-0-94997079f35a@chromium.org>
To: Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
 Guenter Roeck <groeck@chromium.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, chrome-platform@lists.linux.dev, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731922439; l=1453;
 i=lschyi@chromium.org; s=20241113; h=from:subject:message-id;
 bh=uAG+q77If4uu42qh15gAWVauifcVeZPLI5R8Z0hp1us=;
 b=w4UcQxVgEZXHMCl9ZfUByBz4hpcE6oLHmGnYGMAyCfy29Q31/pkyHjtwS/WdcFDy/n4DbMxgt
 UgelA/S3WGbAYMdCVwNS8dtLFkYxQjx3GC2nRh8IwDJIXPMf5LFCzXB
X-Developer-Key: i=lschyi@chromium.org; a=ed25519;
 pk=nE3PJlqSK35GdWfB4oVLOwi4njfaUZRhM66HGos9P6o=

The driver of controlling the charge chip connected on the ChromeOS
Embedded Controller (EC) is added in the commit "platform/chrome:
cros_ec_charge_state: add new driver to control charge". To register
the charge state sub-devices, add mfd cells in the cros-ec-dev mfd
driver, and register charge state sub-devices based on whether the EC
supports battery feature.

Signed-off-by: Sung-Chi, Li <lschyi@chromium.org>
---
 drivers/mfd/cros_ec_dev.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mfd/cros_ec_dev.c b/drivers/mfd/cros_ec_dev.c
index 9f84a52b48d6..fcb4deac3bf3 100644
--- a/drivers/mfd/cros_ec_dev.c
+++ b/drivers/mfd/cros_ec_dev.c
@@ -112,6 +112,10 @@ static const struct mfd_cell cros_ec_ucsi_cells[] = {
 	{ .name = "cros_ec_ucsi", },
 };
 
+static const struct mfd_cell cros_ec_charge_state_cells[] = {
+	{ .name = "cros-ec-charge-state", },
+};
+
 static const struct cros_feature_to_cells cros_subdevices[] = {
 	{
 		.id		= EC_FEATURE_CEC,
@@ -148,6 +152,11 @@ static const struct cros_feature_to_cells cros_subdevices[] = {
 		.mfd_cells	= cros_ec_keyboard_leds_cells,
 		.num_cells	= ARRAY_SIZE(cros_ec_keyboard_leds_cells),
 	},
+	{
+		.id		= EC_FEATURE_BATTERY,
+		.mfd_cells	= cros_ec_charge_state_cells,
+		.num_cells	= ARRAY_SIZE(cros_ec_charge_state_cells),
+	},
 };
 
 static const struct mfd_cell cros_ec_platform_cells[] = {

-- 
2.47.0.338.g60cca15819-goog


