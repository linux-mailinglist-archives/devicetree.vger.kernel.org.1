Return-Path: <devicetree+bounces-1625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF3D7A7309
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:43:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D15211C20A28
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 06:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75DFB8484;
	Wed, 20 Sep 2023 06:40:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E4A523B
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:40:25 +0000 (UTC)
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49F0DC6;
	Tue, 19 Sep 2023 23:40:23 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6bee392fe9dso4081302a34.1;
        Tue, 19 Sep 2023 23:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695192022; x=1695796822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HvjyR1db7d2pAH1Oe6CLGqKy2lWY6VTA87peNvZDQh4=;
        b=bKTSTe3DNPtEnSrDeJP1uNJMb1pGo081102nKwOy+DQ7/DPNoEMtE8F0pY1iii4kXF
         QaZ2ipnv0Wjgi/j+4jHpmojHCMSw4jt2RBVbpK+LBJPesboo+SYbtxFK2T2sZsjO8DJx
         kwz+UTRZ0gdJHLBc3N6ZzjMJXfv2mr5h54wj4jbmNwL2L4JwlgTXXWyL+aBkTkC3RXkD
         RaaN3VZtNM3jrnOn/jKhRnw+pVehLir2Vv8JzcZqfKIkt8fL99lyas6cFgbqFtIZVR88
         jdAaqgvUqr9xac+grx4Th9grmDNYYCI5auZnNgOv8ArywbHQAaCBG9Ecq9fa9AyvZVib
         MYQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695192022; x=1695796822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HvjyR1db7d2pAH1Oe6CLGqKy2lWY6VTA87peNvZDQh4=;
        b=b80oXV6/Jox4Ds4ku2YNsw8XUSCcuoniAwGcW053NN5UnTyuCRkB2KxDrHq03SlNMu
         VC151rYc+Ob/YdM+k6mOasZhrwFI13QG2yZk0rGdkBflj3L+kyjR1grqgbIp370S+NgC
         HbkVb5i6bITJMClvKvKWBj8h83pJlyBWDmkNZuGI0hkFGhIeD20zktbxwkEkejjN9z6V
         OcZztsKLoadSUn88bWpDouDVZOBmNUDbUqI1fEemLrsrtAM4xBnWA2qsnH1106AEsctn
         8a4dbOvrn0MHSjRsET1V7YC3zoEnJfAh6g4VHvjSPAjkdlOY/j1c4xViB9EjRZYoS8vV
         InJg==
X-Gm-Message-State: AOJu0YxAn9NMbA32MjBRFlzx9LVzQfKeROFDpOnxhfvqKHD+s4j0TkGN
	cV+aZcdn97WhCtyanOIFklW1+VRAmzyLa6G9
X-Google-Smtp-Source: AGHT+IE4D6SNgVtGxMtnCASWGFtAKbY4L4o7i1dznoOhLX1rHn4j63mgSA5ddd38liKZSzACfqWz+g==
X-Received: by 2002:a05:6830:4a6:b0:6b9:a926:4a12 with SMTP id l6-20020a05683004a600b006b9a9264a12mr1762757otd.28.1695192022495;
        Tue, 19 Sep 2023 23:40:22 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id r10-20020a05683001ca00b006b8c6eb962esm5769619ota.52.2023.09.19.23.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 23:40:22 -0700 (PDT)
From: Chen Wang <unicornxw@gmail.com>
X-Google-Original-From: Chen Wang <wangchen20@iscas.ac.cn>
To: aou@eecs.berkeley.edu,
	chao.wei@sophgo.com,
	conor@kernel.org,
	devicetree@vger.kernel.org,
	emil.renner.berthing@canonical.com,
	guoren@kernel.org,
	jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com
Cc: Chen Wang <wangchen20@iscas.ac.cn>
Subject: [PATCH v2 08/11] serial: 8250_dw: Add Sophgo SG2042 support
Date: Wed, 20 Sep 2023 14:40:15 +0800
Message-Id: <888d57a2d5e62affb8e29e0098402e428facd969.1695189879.git.wangchen20@iscas.ac.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1695189879.git.wangchen20@iscas.ac.cn>
References: <cover.1695189879.git.wangchen20@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Add quirk to skip setting the input clock rate for the uarts on the
Sophgo SG2042 SoC similar to the StarFive JH7100.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
---
 drivers/tty/serial/8250/8250_dw.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
index f4cafca1a7da..6c344877a07f 100644
--- a/drivers/tty/serial/8250/8250_dw.c
+++ b/drivers/tty/serial/8250/8250_dw.c
@@ -770,7 +770,7 @@ static const struct dw8250_platform_data dw8250_renesas_rzn1_data = {
 	.quirks = DW_UART_QUIRK_IS_DMA_FC,
 };
 
-static const struct dw8250_platform_data dw8250_starfive_jh7100_data = {
+static const struct dw8250_platform_data dw8250_skip_set_rate_data = {
 	.usr_reg = DW_UART_USR,
 	.quirks = DW_UART_QUIRK_SKIP_SET_RATE,
 };
@@ -780,7 +780,8 @@ static const struct of_device_id dw8250_of_match[] = {
 	{ .compatible = "cavium,octeon-3860-uart", .data = &dw8250_octeon_3860_data },
 	{ .compatible = "marvell,armada-38x-uart", .data = &dw8250_armada_38x_data },
 	{ .compatible = "renesas,rzn1-uart", .data = &dw8250_renesas_rzn1_data },
-	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_starfive_jh7100_data },
+	{ .compatible = "sophgo,sg2042-uart", .data = &dw8250_skip_set_rate_data },
+	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_skip_set_rate_data },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, dw8250_of_match);
-- 
2.25.1


