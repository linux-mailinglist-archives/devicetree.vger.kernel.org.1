Return-Path: <devicetree+bounces-230994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E913C086F8
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 02:27:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FA733AA0CB
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 00:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33FD71C84AB;
	Sat, 25 Oct 2025 00:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m4nrRPYA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8994C1E3787
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761351965; cv=none; b=JCaEo+AFeCht/oVfE+4HggQyRjevOcR4ljyOaljI9yHbwto/EuoP9JL+SdXT1F3QQMD9UesyI1dCjydfzb+aRKiVANxAsNpQnll26cGLJsAAxnbCjAJp7rrOzqBywefVBiwzMDwc4/Up2Eh6vVNTVzix5jdZP0pNo1kyjm16JIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761351965; c=relaxed/simple;
	bh=9CvGSj3k52YgdYK4J0MHeIq2HkIZQxGeUJahNJ19td0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OnzVE54FGaW4dYANi3dEz/zEloB70hXGBdEzkR5rLLVF7A820I8wnIOR2wOUQ49M7gKXBPJMybL3ADY4OL0N2dZM303spgr4CoGlLiHLS9kKIXjj4Xmfa6AWpJVyB/qH8fAl7pRJoNajAu9YizCJ6ZtVFYIv/DFhgYClMV/JPbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m4nrRPYA; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b6cf07258e3so2042812a12.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761351963; x=1761956763; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6CiHvIx4iCcyVz9XM+n+OAI2ebsG3UALzSjgEuG0sIw=;
        b=m4nrRPYAqpvCSL3yZqRfzxNRxGeBAaJ2TXYKZDbuT43XN5SXQI/ymCC9VrLWsE9nDH
         MsiBtK+gZrxEDoXb1NTsXjdoqa1b0mQvN5kF1oCn5pdlJJIO7zxG/JAZdz2bd55le83R
         5Xc8ESFPlC7704BHUb0JgT8nnZACn3r5ElSTk0cCATWSK6sjDTYbw61tUNxqAznyzVWJ
         eJuB+uTmLwwMh7nQGpPbxDgd9aWtAPGiz6d6tetmS/Y0NFXqNElfro9V+L/xnl83FAwv
         4rhx2ipnVzXGxl+Slmk3vPa4n/jFUwMK2uTxYFNZu4CbaZ5cloh3SBR99Rh+jkv99Tav
         2wyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761351963; x=1761956763;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6CiHvIx4iCcyVz9XM+n+OAI2ebsG3UALzSjgEuG0sIw=;
        b=wylHCHtIoISQp7MbFFrJL350SP1yrDrFVfTykNr5nvZOoHvVkt4wg0+KK6ejeagzmd
         SZx02aVc4qAPKNTcNhQb0jr+H3dZmY5gKaO+S9Jh600CwKT+nupRrd36QcgyBjO6PzF4
         I0L3foc+RsIx8vljG1B6ULFkwmPXcf0cpobXNMj3b6lAaC3Vg5hbND4LeXmYNy2ORqVS
         FOaqxB7jw+MpIc4E3ltgnPoXaF61dLGsZqcdGk7nKsOT/NZqMx7N4utYA/HC7Rp5am5X
         TaBwkz6SvccRNgRUhpHkzcrdbAevsFUkbzoF1g8FpIx2H4Qzear1FbXHnaN1zw4oyW5F
         aLQw==
X-Forwarded-Encrypted: i=1; AJvYcCWRN7n0piz7kGTRjawk3XIgo3psWbk/91oo66+iNMaDQUXCbbpGrNfWfRooDzu6glOFuxyKS7Fh35Nl@vger.kernel.org
X-Gm-Message-State: AOJu0YyKVdb4mb5yBSvbFg5vVSSLTKBNmt63ZVzeNE/6wHY5coqaWvdr
	s5fhHa5EUWNVPHDbbdfpMtWlifMhFI7Kmpse7AIvSuKNi2TgXb/IMD/R
X-Gm-Gg: ASbGncuJazYOX8GF8n6p0b9qRwuiziHvvOrpanY62HZm4ie3itnupfy0poRq9ox0yWu
	EDV34DMGCnsh719I11FPLReXsgOtGnWYg0+g5Ko6rt+ohZCpCkGnScwCyyw7EgdKaiNjRk5jBbi
	EJg7/9x2pgWmxalq4WB1cWVmTM25raleCfq5Tct2IUpdBm63cr/FSCxDvqiPPylwv247U+BVGoZ
	6cyiWn1rNRzPP9FxIvVeX3kER4KVQm/uJCqj5GtplVpXlMDIogBqdoL2WfRr3J0Ilkl/I+TX5xj
	8iidV+KTbJ/JHVp1QDolP5aXQGviwZsdres1kt5mY3EPkBk+Kij1BF2T8nYY31HS3K1O0m+YFkb
	+GRcGamaXW/+fnLIdyO4IU0fMRKDLnbd+K2oBIiaUq3GW6t6SIQON/i+x7SoO4LeZLXOlePKr+6
	ngZoXQg42mzr+q2+TsABIvOpPVJGobLEdS+navtQOjNyEJ9GCwP/4forNtW3rzei6uUTGegohQL
	q7s+ss7fsSE65Mprrx7O58Um2q3qXQxWF/aTmjTyWvBpUToRtT5Iw==
X-Google-Smtp-Source: AGHT+IHSa7MdO+RyudQ13l7ZBDW5YjuDQoXfBKNGzygwW/8ijBbpH54bUrATc3DfIp5eGwuXkgv2HQ==
X-Received: by 2002:a17:902:fc44:b0:26d:58d6:3fb2 with SMTP id d9443c01a7336-290c9c89697mr387774495ad.12.1761351962920;
        Fri, 24 Oct 2025 17:26:02 -0700 (PDT)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf3f4asm4728885ad.11.2025.10.24.17.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:26:02 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sat, 25 Oct 2025 10:24:40 +1000
Subject: [PATCH v4 09/11] mfd: macsmc: Wire up Apple SMC input subdevice
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251025-macsmc-subdevs-v4-9-374d5c9eba0e@gmail.com>
References: <20251025-macsmc-subdevs-v4-0-374d5c9eba0e@gmail.com>
In-Reply-To: <20251025-macsmc-subdevs-v4-0-374d5c9eba0e@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Jonathan Corbet <corbet@lwn.net>, 
 James Calligeros <jcalligeros99@gmail.com>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rtc@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=737;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=9CvGSj3k52YgdYK4J0MHeIq2HkIZQxGeUJahNJ19td0=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDBl/JM4d3hJqcNPewfPwlleiK7fkXZLhtVltl2i2UGbKY
 wMxq6iQjoksDGJcDJZiiiwbmoQ8Zhux3ewXqdwLM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GuoY6xgxcHEKwFQ32DP8D1tQvEl5SoUQr3Tpeel9LQEufdveGjjeWpK55erOQgadQ4wMBy1+6wZ
 LhiSptYttjWV5voFZ8fr10xZCNt+PsEww+B/ACgA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Add the new SMC input function to the mfd device

Reviewed-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 drivers/mfd/macsmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/macsmc.c b/drivers/mfd/macsmc.c
index 51dd667d3b5f..3b69eb6d032a 100644
--- a/drivers/mfd/macsmc.c
+++ b/drivers/mfd/macsmc.c
@@ -45,6 +45,7 @@
 #define SMC_TIMEOUT_MS		500
 
 static const struct mfd_cell apple_smc_devs[] = {
+	MFD_CELL_NAME("macsmc-input"),
 	MFD_CELL_OF("macsmc-gpio", NULL, NULL, 0, 0, "apple,smc-gpio"),
 	MFD_CELL_OF("macsmc-hwmon", NULL, NULL, 0, 0, "apple,smc-hwmon"),
 	MFD_CELL_OF("macsmc-reboot", NULL, NULL, 0, 0, "apple,smc-reboot"),

-- 
2.51.0


