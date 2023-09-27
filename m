Return-Path: <devicetree+bounces-3722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBCD7AFF45
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:01:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 87B31B20A93
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74DD51F5F9;
	Wed, 27 Sep 2023 09:01:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72AF01C684
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:01:11 +0000 (UTC)
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 646BBCE5;
	Wed, 27 Sep 2023 02:01:09 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1dceb2b8823so3541600fac.1;
        Wed, 27 Sep 2023 02:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695805268; x=1696410068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ODqNNHjxC0NVeM1m9gAP6A0kzi93bZeVY7W7icOmVaE=;
        b=JV5PGvlUCkmdtdLC6F8HbnYq7EXIZM2sPxSm69GJpaYqlmkLiEQu+Tq0Jo9nl+CYuY
         1FblEJsBdFr7AjUBAyuhOHLXoJ9LZayr6mqsXTesvG3jq+wd+XszD7OdGeu3RT8/5qGi
         2pIDfKgwJ0TRnluxsZV7L6XKeC8wXjpzfRMH8GjQg9juyoR8uYB7oIXcNQzmX8bSobHl
         PC+URUg4pIqbXrRKFEmjDXF70X0KUFqys0mxF/HmbFQR96rwaB2wm8uunzc06WOX4cZB
         r9ixkQrGLVICnB1gN8fwk9dkQk3lgp1td6fUVKTn+6BDDYhZrOZHzSEHL2VwmFXMHtZf
         aiiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695805268; x=1696410068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ODqNNHjxC0NVeM1m9gAP6A0kzi93bZeVY7W7icOmVaE=;
        b=mooeP53QGNo4jtESuze1qfpWjiQJg6m2yOiJWj86CPswtaD/FPYH1f/vOFyrJVnBd7
         1CxPz33K+/Ui4KL6BhID9Nb2y8e5+nSgUYQGZ2SD91FpAZGjy3X9JdOqY2fyLYEJ+41C
         n1Wvb+EMg8TeXZxuVy2T57a88OKR2UVkF/c61hPKsql+0HgxZnkjg/p+oRN2MWjHzMyc
         GdDQq+fdkE1fXk+0pBTwf8Mdj9RY1Ng2244eQoElUsLF41bVN29JDyV6V1UJdSSeBiI4
         x7NmlQKO0fSahCgd3xP/Svkc7Ork13g7KXCdmREETTTLiaHWumAGMaYE4P1mGpp03afZ
         ZSKA==
X-Gm-Message-State: AOJu0YwI8XwWI5z45IVx4Yc3uR6EZVEFmKk8t8l++8SsAgfE7i3zvwBX
	Pldcf/e2tBkPY7EjEfPCimo=
X-Google-Smtp-Source: AGHT+IGTYEQQtusE0CyCmkiDlDcs60WYT32tt0Bi2KqDaJl4xc9ZEqgZU2IC1fpPCb/OSam53TE05w==
X-Received: by 2002:a05:6870:2383:b0:1bf:42a8:2cd2 with SMTP id e3-20020a056870238300b001bf42a82cd2mr3169881oap.25.1695805268582;
        Wed, 27 Sep 2023 02:01:08 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id ms17-20020a0568706b9100b001dd842cc563sm402554oab.26.2023.09.27.02.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 02:01:08 -0700 (PDT)
From: Chen Wang <unicornxw@gmail.com>
To: aou@eecs.berkeley.edu,
	chao.wei@sophgo.com,
	conor@kernel.org,
	devicetree@vger.kernel.org,
	guoren@kernel.org,
	jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com,
	apatel@ventanamicro.com
Cc: Chen Wang <unicornxw@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Chen Wang <wangchen20@iscas.ac.cn>
Subject: [PATCH v3 04/11] dt-bindings: riscv: Add T-HEAD C920 compatibles
Date: Wed, 27 Sep 2023 17:01:01 +0800
Message-Id: <f7e71c60389973eea49e9e97ca50fc8c9c34e637.1695804418.git.unicornxw@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1695804418.git.unicornxw@gmail.com>
References: <cover.1695804418.git.unicornxw@gmail.com>
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

The C920 is RISC-V CPU cores from T-HEAD Semiconductor.
Notably, the C920 core is used in the SOPHGO's SG2042 SoC.

Acked-by: Chao Wei <chao.wei@sophgo.com>
Reviewed-by: Guo Ren <guoren@kernel.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
Signed-off-by: Chen Wang <unicornxw@gmail.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 38c0b5213736..185a0191bad6 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -47,6 +47,7 @@ properties:
               - sifive,u74-mc
               - thead,c906
               - thead,c910
+              - thead,c920
           - const: riscv
       - items:
           - enum:
-- 
2.25.1


