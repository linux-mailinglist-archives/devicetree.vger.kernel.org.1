Return-Path: <devicetree+bounces-107597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8F998F2C4
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 17:41:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C94DB21096
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 15:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF1A1A4F11;
	Thu,  3 Oct 2024 15:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TL4Q4bWR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B921A4E9F
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 15:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727970091; cv=none; b=nr6UWSGEfWQMJXTONcLfTeWZi+yifBG9RfNmUaqroXJUnw0gc7t7DE/qG78GiiLpcP1tpTTbYyT/k4SS1ZdHVZCx/EcRqXdZCrwgRXA87dvvHheZgscGAHRabvk5mm9ZMC/ii0ZcjII6442VeN8oAps38OaEQLerQYAb5a4qd9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727970091; c=relaxed/simple;
	bh=vTwVvG8iZlHzHza+YS67mEwp2zyunt+kNzBDYWtFYWc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LHMQi++KQZeInc2geOYsXJLnlN7SPtH0J2kWC9w20HOzFnAXlqn/xO/aoyESOMJTawsVFRAcmlTV3pZn5IXoHMazKyPHg+JUV2fNgKzogowkwdvTXJZ0HOgdqhrxbd20Mlmujp2y7halDSedyaJzudVAipNfGqLsmK9aDdGBFd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TL4Q4bWR; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a90188ae58eso145161566b.1
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 08:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727970089; x=1728574889; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E7nKjwcfTxwC0PwN6GrPgJAgBaaTNk6QSx4URpDS/gc=;
        b=TL4Q4bWRRiP1qoLuPCXD3dOh8f7piOzc3j/QC/fg7+dMJurG4zzZpFMQuc5LodDfGI
         Y48u/kKB853zeg9aWe9EekI53lFE89U1xDldaOiIwykkwjyL6SFe4vvdatrFo3C1FEeS
         /nqgw5MhdUpDHBiH/PBn4Aim3tfOQ+1xD1uoeWUJJZPv40wH9surip0dhbNhD08SZ5VW
         t3zKtyaEJw4aKW69l1Z75fRYa1euthTu+2d1gmPSjAvEfV8ZcXlyKApTK/VNfJ7iHcCv
         4YY+Qun7qvdqzavRsnIWcYdJkO12B7CP9wFQWCMP6kTnSuvuM+9YsPwEghcgXisP7EVI
         46cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727970089; x=1728574889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E7nKjwcfTxwC0PwN6GrPgJAgBaaTNk6QSx4URpDS/gc=;
        b=V42B4pdxjGLmroWv6rOdodkUxTVlNGaZQ1wdKxQMpS49ad2wovTgBG/gay2nrtyhR0
         HfQLTLVScA3XaY+y0rEAQylBlUqtP6ZEjNhkeB82yuUOJeqY+OBiRweGsjqVGO8sZOSl
         VGExBynGBumAwsyEPHb1MrtwJ5LZO9I6uukaJxp8La/e80ZER+VB6XszcYVEJCke3VQ2
         5gV9y+apyxiGHf6p7gpXGjF37nkl8GBlJE+eFgg6eVchtqi39uODN5yaOk5AjUxz66zB
         BTGgVPgGAPo8uf3IKYO6N7of7JaC7ZtntI7RxV3biCO223bB24ChhLg56yklSsXK5/aS
         dTbg==
X-Forwarded-Encrypted: i=1; AJvYcCU5HM/F9EwYwqwjZHP5vBo2eghw1Ynzan/lPPMROKZG327aW9TrZ/yLR3DVvK5zWF00hPpBgRx6l/9c@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4ndh5BlDI27ou5kMYmts5Yw6ourzqWchpXtPwNIxu7vIGUgUQ
	QCi/vL0BTjJnjm1yYsb1W5FTQ0KmgAO1Bo3N0syB4HeJumlVEa96akxnF/HtOHo=
X-Google-Smtp-Source: AGHT+IG7VzE6KIRS5Oggy5S2KMymWBvAJcUH8H6bPiRroXsOEd0yFu8CHZMFl+zLCXUZVh4IIyvvxg==
X-Received: by 2002:a17:907:6093:b0:a8a:58c5:78f1 with SMTP id a640c23a62f3a-a98f8201512mr692467466b.11.1727970088513;
        Thu, 03 Oct 2024 08:41:28 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99104c4f3fsm98492866b.200.2024.10.03.08.41.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 08:41:28 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 03 Oct 2024 16:41:25 +0100
Subject: [PATCH v4 1/4] media: ov08x40: Fix burst write sequence
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241003-b4-master-24-11-25-ov08x40-v4-1-7ee2c45fdc8c@linaro.org>
References: <20241003-b4-master-24-11-25-ov08x40-v4-0-7ee2c45fdc8c@linaro.org>
In-Reply-To: <20241003-b4-master-24-11-25-ov08x40-v4-0-7ee2c45fdc8c@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Jason Chen <jason.z.chen@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sergey Senozhatsky <senozhatsky@chromium.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8

It is necessary to account for I2C quirks in the burst mode path of this
driver. Not all I2C controllers can accept arbitrarily long writes and this
is represented in the quirks field of the adapter structure.

Prior to this patch the following error message is seen on a Qualcomm
X1E80100 CRD.

[   38.773524] i2c i2c-2: adapter quirk: msg too long (addr 0x0036, size 290, write)
[   38.781454] ov08x40 2-0036: Failed regs transferred: -95
[   38.787076] ov08x40 2-0036: ov08x40_start_streaming failed to set regs

Fix the error by breaking up the write sequence into the advertised maximum
write size of the quirks field if the quirks field is populated.

Fixes: 8f667d202384 ("media: ov08x40: Reduce start streaming time")
Cc: stable@vger.kernel.org # v6.9+
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e80100-crd
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/i2c/ov08x40.c | 33 ++++++++++++++++++++++++++++-----
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/media/i2c/ov08x40.c b/drivers/media/i2c/ov08x40.c
index 48df077522ad0bb2b5f64a6def8844c02af6a193..be25e45175b1322145dca428e845242d8fea2698 100644
--- a/drivers/media/i2c/ov08x40.c
+++ b/drivers/media/i2c/ov08x40.c
@@ -1339,15 +1339,13 @@ static int ov08x40_read_reg(struct ov08x40 *ov08x,
 	return 0;
 }
 
-static int ov08x40_burst_fill_regs(struct ov08x40 *ov08x, u16 first_reg,
-				   u16 last_reg,  u8 val)
+static int __ov08x40_burst_fill_regs(struct i2c_client *client, u16 first_reg,
+				     u16 last_reg, size_t num_regs, u8 val)
 {
-	struct i2c_client *client = v4l2_get_subdevdata(&ov08x->sd);
 	struct i2c_msg msgs;
-	size_t i, num_regs;
+	size_t i;
 	int ret;
 
-	num_regs = last_reg - first_reg + 1;
 	msgs.addr = client->addr;
 	msgs.flags = 0;
 	msgs.len = 2 + num_regs;
@@ -1373,6 +1371,31 @@ static int ov08x40_burst_fill_regs(struct ov08x40 *ov08x, u16 first_reg,
 	return 0;
 }
 
+static int ov08x40_burst_fill_regs(struct ov08x40 *ov08x, u16 first_reg,
+				   u16 last_reg,  u8 val)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(&ov08x->sd);
+	size_t num_regs, num_write_regs;
+	int ret;
+
+	num_regs = last_reg - first_reg + 1;
+	num_write_regs = num_regs;
+
+	if (client->adapter->quirks && client->adapter->quirks->max_write_len)
+		num_write_regs = client->adapter->quirks->max_write_len - 2;
+
+	while (first_reg < last_reg) {
+		ret = __ov08x40_burst_fill_regs(client, first_reg, last_reg,
+						num_write_regs, val);
+		if (ret)
+			return ret;
+
+		first_reg += num_write_regs;
+	}
+
+	return 0;
+}
+
 /* Write registers up to 4 at a time */
 static int ov08x40_write_reg(struct ov08x40 *ov08x,
 			     u16 reg, u32 len, u32 __val)

-- 
2.46.2


