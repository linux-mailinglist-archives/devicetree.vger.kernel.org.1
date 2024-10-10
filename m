Return-Path: <devicetree+bounces-109892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C9C998614
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 14:33:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C339E28154F
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 12:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 343571C57A3;
	Thu, 10 Oct 2024 12:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TTO1LpHX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8611C460F
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 12:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728563604; cv=none; b=p7Z+QmaShtumJsz1HRdQIMCFaUdnfXjgsacpJVPl4I+9SvwKGhZu9dRL9urtCy6pQ0Q2sgwPCoGMxgodKU5gOBQkNrW2AyYFqPDaoqZZ8znAfXMfaL8K8BKYvP2Zk81A4+kSNiBm+cSlSAXs31SZn88KJgW8NXOypWlubP7N7oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728563604; c=relaxed/simple;
	bh=vTwVvG8iZlHzHza+YS67mEwp2zyunt+kNzBDYWtFYWc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VtPX0ynzeDoqUG/U2GE4cnmMBRvuVGeU0M7SuSBXVzGGzMj2aUeCMhKOGvzKfiAFmbJ2LxvYAj9Fy7iDlj6CPN/PycINFJNWDjFSS+tuX34Laa41/P2tNxhNk4UNOUVdmn+6P0frPiQFTDOXig9sq4YqU0HQ+RpaKG7FFNM6Pbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TTO1LpHX; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a998a5ca499so125799566b.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 05:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728563600; x=1729168400; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E7nKjwcfTxwC0PwN6GrPgJAgBaaTNk6QSx4URpDS/gc=;
        b=TTO1LpHXOLabmIAmzM91/snWCtvv6wO0vkh5YbV7/cznHuH8zI/UVqt/Yn1UFIjZfG
         Vwag2pcC6OZJN5VypGZvB5CwaKs9HTVj4XAoBJbosK94m5nyzBfvFdzW+w5rb3Us67b2
         vOD2mx5tmBZWLokuzquBO3aILt5mrfOq21VBbGRF/K6v0G2WQj9EaMTh38GH7nGtbfpN
         eDVQxW577vO/D/JRQfkhFHbOkK6DyTpP7dTsmjAbAnPXT2UiAEnOZBOjsqdTFhzevE+/
         wW12RzmUA7q9+NAJlTNDtYHuhoO0OdTj01X6Kd9Hjh9fyWC5cXpEreQ5DMjg30zAYvU3
         HutA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728563600; x=1729168400;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E7nKjwcfTxwC0PwN6GrPgJAgBaaTNk6QSx4URpDS/gc=;
        b=tm3R52oRiyC0fANX6eMmAQv+mWfvV4ltV2u8gOjsyq/cOt+xXex1IsmgQ/DO5wq8Bg
         Tm6wo3q5j3JLZiO9i+/IPYrupev08WELfxmrT0/gpn3uRKl36O3ySXHWX/DW1w+C/V5g
         ADT7lNethE3OEkv+A7hXWQxe77eBK4dP7X6k5W/TsU2F85MVaPlEMohozbVKsmfkvB/t
         wC/bsvfe+eDUkCY0DjSk3rLsiSDNZ4S1oDdt2HRigxk5GI4DXCFCPJuz6RGa0dDWAgSF
         qNtkJDvyKWoJNGyM1xtSFT86IDrJxYqgU719XEUnlBu6sf4qfICTRftxx/nbQOmAnX3X
         /VaA==
X-Forwarded-Encrypted: i=1; AJvYcCU/EcAeSlbpo4z24WPb5XfyWarlPijure+N63IGy6sPZXEpYHWgJ3DWqf5nahfujTxj5Vyzob3L8aSW@vger.kernel.org
X-Gm-Message-State: AOJu0YxX+J2MA4BeCbBNYG+Wbe2mqrSpvJU6VNUo9ZpSyyVwOvYpHcXi
	4iTCoYLCGCthn7ujb7zcfCw0J1h5UeU82XJAebaTzwXLjl44TefKEggLVc+9AlU=
X-Google-Smtp-Source: AGHT+IHqASwGUMnDVgJgb4WJeQPIBPzArPqf/9fuxIBXwaaZeDpGjQ9ON98FkBxOBIkv3lrX0VtBMg==
X-Received: by 2002:a17:907:7f94:b0:a7a:aa35:408c with SMTP id a640c23a62f3a-a998d10df8bmr555871766b.8.1728563600518;
        Thu, 10 Oct 2024 05:33:20 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80c0723sm82416666b.135.2024.10.10.05.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 05:33:20 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 10 Oct 2024 13:33:17 +0100
Subject: [PATCH v6 1/4] media: ov08x40: Fix burst write sequence
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241010-b4-master-24-11-25-ov08x40-v6-1-cf966e34e685@linaro.org>
References: <20241010-b4-master-24-11-25-ov08x40-v6-0-cf966e34e685@linaro.org>
In-Reply-To: <20241010-b4-master-24-11-25-ov08x40-v6-0-cf966e34e685@linaro.org>
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


