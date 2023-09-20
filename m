Return-Path: <devicetree+bounces-1628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C957A730C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:43:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E19B81C20A4D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 06:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8EC46B8;
	Wed, 20 Sep 2023 06:41:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23461847A
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:41:25 +0000 (UTC)
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8280CF;
	Tue, 19 Sep 2023 23:41:20 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5735282d713so3955061eaf.2;
        Tue, 19 Sep 2023 23:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695192079; x=1695796879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CPzRtbGVAyCieAczzidwpR61L2JC0XRU2iih1ur/Z2g=;
        b=IAax/uPsrEoqtah8cBrvsL21PtYQOWnbUTGdtu84Uxkzn/kFuf5I7Bj2CFYHph6ZXH
         4cmStyKjd8HSJo9HqV2BcAftUWPz8D/kmYILmbSyuzSQE0dPEsTfzX6tpCjLgQ5XBgaB
         nn91H/nPRynz675uckOe7+29fgLWcYZAvscb2eWqveCPHGd3BVedK/vwWXoey5wPcVlZ
         Q/POd0S8WeeUcoocgi4dXkzS2tQqSrTJRhSLGavRYWujXemKOrgtO87OyjSmXFNaNZVz
         ok7gwb4zNfugQT99LndtKwunKjrP7mt74Z8yk5hbzOoHghzQllYYH3HsP7g1uyJETUzW
         NEtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695192079; x=1695796879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CPzRtbGVAyCieAczzidwpR61L2JC0XRU2iih1ur/Z2g=;
        b=ZZfIGHwiaT456eevUTnW06gIxYwHWqQSDUlFaPcsFTas+6ORnBHhUCR6clMAWyKqQL
         WlIltsLzFBEf7d4XF35fNGGPvEbndqPeumN69dGXZ4eyivPfv88ugtRqwe84JW6z0Gip
         xwYnaa27/sLyOvJVVp7PzcnJ8PVBOnxTZFStR2QkpxBinQAXGFGWNT0PQwZMkoDAzVzK
         h3H8x4Xdsw0aV1rfhjMf//l1CGC1m51QGwZiwjxl1LZ70vPTJdcTOMf3hr5AD8xY3gBV
         Si9pZ6cB7mQ/dTO3WlJPDdrjZ6R520yMaqWr6/z3az5291UpRVQM7Ro7yUGrA8pjKo6t
         aE1A==
X-Gm-Message-State: AOJu0YxoI3LNusOcFm2/wHud2aHtNDttM42lbrQEtbnt3w+8qlThns81
	AUT46r2CgFUODGEpkEddpww=
X-Google-Smtp-Source: AGHT+IHPq6IFe9QBQQR+FnLEJiN55AB/ok6hOPAoJV6EieiQGia1ukQ+myI+nr9AP44rQ2wojZmBsA==
X-Received: by 2002:a05:6870:b313:b0:1bb:4606:5be with SMTP id a19-20020a056870b31300b001bb460605bemr1792059oao.9.1695192079100;
        Tue, 19 Sep 2023 23:41:19 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id ch17-20020a056871c41100b001d4c5e4c2c5sm6860300oac.25.2023.09.19.23.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 23:41:18 -0700 (PDT)
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
Subject: [PATCH v2 11/11] riscv: defconfig: enable SOPHGO SoC
Date: Wed, 20 Sep 2023 14:41:12 +0800
Message-Id: <835006e5c76ba1c53eed1b7806a08ddea3390bc5.1695189879.git.wangchen20@iscas.ac.cn>
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
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable SOPHGO SoC config in defconfig to allow the default
upstream kernel to boot on Milk-V Pioneer board.

Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
---
 arch/riscv/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index ab86ec3b9eab..bf737cfa1d2c 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -32,6 +32,7 @@ CONFIG_SOC_SIFIVE=y
 CONFIG_SOC_STARFIVE=y
 CONFIG_ARCH_SUNXI=y
 CONFIG_SOC_VIRT=y
+CONFIG_ARCH_SOPHGO=y
 CONFIG_SMP=y
 CONFIG_HOTPLUG_CPU=y
 CONFIG_PM=y
-- 
2.25.1


