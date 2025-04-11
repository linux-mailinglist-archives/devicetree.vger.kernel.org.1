Return-Path: <devicetree+bounces-166021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A8CA8622F
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 17:45:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 892987ABDB4
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B954C217668;
	Fri, 11 Apr 2025 15:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="WLJFZxg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BABE2144AC
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 15:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744386270; cv=none; b=XiggbegB54u5bdG0qhXpbJge2b2TYarpSQWvfMfWw2X9V+ZzRGdbOWl8hC9sLNcoiWZapd41pwxnk/yNuLdTb72gc1F1r2jZwPZKlEqsKLhFIQaAsSrv0iZAnobDl3bWNxOye3U7rSJPF953RJGW+fDGppVGYAF//VS6p0zQojQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744386270; c=relaxed/simple;
	bh=YTCOV5qFH6rsTE5f1V8QRlk7DYXjTy4SSao1Noq3mc8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PewcPR6Gqzholf3kyaNnSM4v3QofT46e3QFt3BMeK9PY0OBJumm8XR9MlvfFJj/vZiBZeCinUC9YMcYZDelfvKX/YHBNrvXgamZBhmUagQBt0OzEO9I5cJuXRWeKd1Zln3eMjjYl/KgEh32WJmnTvJrX55nAz5EikhZQ1V3PN+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=WLJFZxg1; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-86135aeca58so67934939f.0
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744386268; x=1744991068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pIR6+1UCymjCvWnHm+vRVxN4kx6Kunaak/TDrneY48s=;
        b=WLJFZxg1QCCV0kk3mFo2+q7h+KNKBsioJ2xaTCj2vdLR0j3oZKGIlc2MUudSE58LM7
         c1IYKHrD4iwv5/OT9YZzKrwnTZ4W1FgjhXaHcshWlUAzg08NHNE/EoKYW2woOxyIF3D1
         CiEV4Bc8OIfla7LUFeHOkd+g83pDscilKcVoKR0j+4PJ90Ko4fx85QxzxA48mSN3GYlc
         JDYbeJ2G0a1bEzlwPwrI3WRVcet6mkDykoBEMkJgszxem8MQp3uHE61SOT2oS7vPVmQb
         9EkMSnANAp7FHvXbm6tDbxMiEZF7DusrAktoeFvjDtyxN0dGwNpnfGIbvUL88C0EHCB5
         F4kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744386268; x=1744991068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pIR6+1UCymjCvWnHm+vRVxN4kx6Kunaak/TDrneY48s=;
        b=biJ+SO7KX0bRBPUb6Lb6MoZfeFdR2cLA8wjb2pfVUME9I5MEdN0MOG735+zxMRU7AU
         ciwQTKSPVxk2LVWArocb50ByT0zFRWrTLzYiMrdA0Y/eth+pMK4JlOttV/MyA16YQ3WG
         T22Hh8Sp89DwdsiKp/tAgbYxIpL/AIOcJ/9q1pNSanLw14Xhc5nWsDT1LMaBeKzLDJxD
         0qA4hy/ozv2XAZhtGWOOzC/18pswTJwkoXjv2oNNwnjSvQsR8A7NmVkVm+xqZYPtuivl
         OaCqqZUBYMd+8NNgm+u0VBJl9+mg/GvepPkTARQ6aCBSQjAzuWXc3T3VOpNPrMc5/4GO
         JO8A==
X-Forwarded-Encrypted: i=1; AJvYcCX4xFR1edBGfeXDfU4pak5QbX2TxEJVARJLzLMYgHi5bOn5E3YRNFRAGH2SQDgepCmwRnsc8wVr1K3w@vger.kernel.org
X-Gm-Message-State: AOJu0YwJndcjE/hbVt3naLbx0GjBOKs3KBJkwDn5+QZ0x3pFaUXJmiI9
	R7UbzDC+fpkI2niBBGE2YTEsvD9cv9ih2hdPor6Cz0l9BLo70AOmDANLFGruvc4=
X-Gm-Gg: ASbGnctOS7nqm8thQI4yzXQAsTAIbkbIZJlzIKqmPwopT015aRbfi6kBTU+pFzKCuoh
	A48S3ak8vOurkjjlUqQJ7pNInQ/OyXrhxFrKr8I4zAuUPUu1PlHmnU53+efj9EuxjGV0UWKnTN4
	bHAhcsY3CQt3FHg95hDkk+CpyjqgbDddDIdMgmVQIcU+7W7hXaX4jEq7KSWYO2N4q3Qb2/av/Eq
	yfKUMuuaKRFqTUDFiq1JOiFyr/uxW3ZIMP/juUVRmIF9glGzL+cfMr9TuVBqi9BjDdnBl6Kj2kV
	3Gemr2vZAuVPFqmotIvO5J8SrjQuLILpFZ/zXfcaUrYs4vWyn34Ndx0xsny41myxDcAn7ADz7vg
	hc94vLO2YI4gzYQ==
X-Google-Smtp-Source: AGHT+IGFDCID2V9OQ58DdGxUCrdRPix2Sm9SOyZ970XE5klNUQUYc7yCAtoOB8Vh9getD8RZI/2TFA==
X-Received: by 2002:a05:6e02:3601:b0:3d4:3d8c:d5b4 with SMTP id e9e14a558f8ab-3d7ec207fdbmr28814495ab.11.1744386268085;
        Fri, 11 Apr 2025 08:44:28 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505cf812dsm1276326173.18.2025.04.11.08.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 08:44:27 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlan@gentoo.org,
	benjamin.larsson@genexis.eu,
	bastien.curutchet@bootlin.com,
	andriy.shevchenko@linux.intel.com,
	u.kleine-koenig@baylibre.com,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] serial: 8250_of: manage bus clock in suspend/resume
Date: Fri, 11 Apr 2025 10:44:18 -0500
Message-ID: <20250411154419.1379529-4-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250411154419.1379529-1-elder@riscstar.com>
References: <20250411154419.1379529-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Save the bus clock pointer in the of_serial_info structure, and use
that to disable the bus clock on suspend and re-enable it on resume.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v3: New patch, managing the bus clock during suspend and resume

 drivers/tty/serial/8250/8250_of.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_of.c b/drivers/tty/serial/8250/8250_of.c
index a90a5462aa72a..8f2529f699e0a 100644
--- a/drivers/tty/serial/8250/8250_of.c
+++ b/drivers/tty/serial/8250/8250_of.c
@@ -24,6 +24,7 @@
 
 struct of_serial_info {
 	struct clk *clk;
+	struct clk *bus_clk;
 	struct reset_control *rst;
 	int type;
 	int line;
@@ -123,16 +124,15 @@ static int of_platform_serial_setup(struct platform_device *ofdev,
 
 	/* Get clk rate through clk driver if present */
 	if (!port->uartclk) {
-		struct clk *bus_clk;
-
-		bus_clk = devm_clk_get_optional_enabled(dev, "bus");
-		if (IS_ERR(bus_clk)) {
-			ret = dev_err_probe(dev, PTR_ERR(bus_clk), "failed to get bus clock\n");
+		info->bus_clk = devm_clk_get_optional_enabled(dev, "bus");
+		if (IS_ERR(info->bus_clk)) {
+			ret = dev_err_probe(dev, PTR_ERR(info->bus_clk),
+					    "failed to get bus clock\n");
 			goto err_pmruntime;
 		}
 
 		/* If the bus clock is required, core clock must be named */
-		info->clk = devm_clk_get_enabled(dev, bus_clk ? "core" : NULL);
+		info->clk = devm_clk_get_enabled(dev, info->bus_clk ? "core" : NULL);
 		if (IS_ERR(info->clk)) {
 			ret = dev_err_probe(dev, PTR_ERR(info->clk), "failed to get clock\n");
 			goto err_pmruntime;
@@ -299,6 +299,7 @@ static int of_serial_suspend(struct device *dev)
 	if (!uart_console(port) || console_suspend_enabled) {
 		pm_runtime_put_sync(dev);
 		clk_disable_unprepare(info->clk);
+		clk_disable_unprepare(info->bus_clk);
 	}
 	return 0;
 }
@@ -311,6 +312,7 @@ static int of_serial_resume(struct device *dev)
 
 	if (!uart_console(port) || console_suspend_enabled) {
 		pm_runtime_get_sync(dev);
+		clk_prepare_enable(info->bus_clk);
 		clk_prepare_enable(info->clk);
 	}
 
-- 
2.45.2


