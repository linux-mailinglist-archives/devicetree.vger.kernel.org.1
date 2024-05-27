Return-Path: <devicetree+bounces-69479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 323538CFF16
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 13:34:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DCC9280D04
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 11:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0276215D5D3;
	Mon, 27 May 2024 11:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qbbq6NuI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CAF15D5D2
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 11:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716809668; cv=none; b=q7jVMqWkh3F6h/aGePPS7VYHB9+yU45kJuAB1CZuXQKPtpbtcA9649cu+SaqB+Aoj12LyYpTFbJk7TapIU6XfvbybkO5Aw1gcWAQm/HgViBPQbd77bVnrU5hxRDQrH6Yar1aw427mMauj4QcR7UPl/jPc9u/cskS6Mn+LiB1xyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716809668; c=relaxed/simple;
	bh=OC1Rb60Ba8be4bnOiEGYyhY6UkqotkiIdasGqOZQU5s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BcAceEkXDgjFa7yH4nu/Oz4u5Sltzsna+GVwnhDUhsqzz2bg4gxsAsFkVpB0Yxujf9yWyZRh6+Ssmi18H+DRCNh8tdYgORhrkEznOLD8AWGIwGioIyf3zLYRaReBA0AdW5SBuRKen2xTCiWUNQcUJFUp/8dBTkQZD7snUkxWR+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qbbq6NuI; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2e72b8931caso93144621fa.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 04:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716809666; x=1717414466; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DbzLL2VPIDYK8tN1C3V377NJW7L8M+DWKxx9vVoK+64=;
        b=qbbq6NuIOxNj/iXnkdWaB+rRXC3HSBxRUUKOkhRMtyM0VcasJZWwNlOt5M2FuXHa/4
         qq6POBpE9vWzn+gNbqwA7Rs3e01zDAl2IDYSwzzlMu6Zn4IjzNlZtOdFjYHZcczpmliT
         TlZ4IoCM68INsSCbP11SjtNG5qV9D1cXK9IQQBZj3rd9NX1QCCRQpQIf9Q+wjxFZb5XF
         /ha/TaWxOnJX9+4jsAtjk2R06ukGE+tFANVyWMjOgWGqyzFTvs8WOxjFJ6Vso1PmDa/K
         L8Lse8BquyNfDiYcnUwaerDHU9XJj+W/EGZ2RHnZtUDTxDKmhkjw6Y3ZcIDdR1iSIOPr
         uQgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716809666; x=1717414466;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DbzLL2VPIDYK8tN1C3V377NJW7L8M+DWKxx9vVoK+64=;
        b=juUENXNclZtfv0gSTmDMNJkG4TkB81cu/BwqqGWqfn0k+ovOqeqgVf3cDPTS+zoE3k
         rKszlRaAM/qOp5d14/dVQuN3IqicR4iiiPgCYhh271/GRjT9BUwVj9GVZDKNK3Zh2pe7
         dQ/7GW2eLcU643RwUeMienPzQP9xnn9/Hnqvrtvi1nAb1VlzFrYU6El6QEgyChEHTgWx
         BfNP1yPz499gStt+rhKHBNKRA79qS+OK1bXMLCqbRuRYBNBH8746UUcumOwSAphjX4Gi
         F9m0sWTvZMYPeq9PRl/lCAtPkLngFKyVKp8EEkj76kq5ql59FZDrpDCZnDOKoRXpyr37
         0dKQ==
X-Gm-Message-State: AOJu0YwgRVtQRvmmfndY6X3Z4tgXpClgYWSSYcfqIz4Kh28N62zygUTz
	/0HE5cFFK7eZOlw+FvMH6eC/XGrryXSVCAkqFfJyPo1uzdurTD57ZOXyJ6mTGRU=
X-Google-Smtp-Source: AGHT+IFl4YHkdXAbKN66OtXSrxBgVM40Vwb/8rTssE8Y0aQJ3uhdSfmlhlJrjFCknibOqb+s9UdBOA==
X-Received: by 2002:a2e:b385:0:b0:2e3:93c2:4239 with SMTP id 38308e7fff4ca-2e95b094455mr53060481fa.21.1716809665556;
        Mon, 27 May 2024 04:34:25 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bdd34fcsm19074691fa.93.2024.05.27.04.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 04:34:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 27 May 2024 14:34:24 +0300
Subject: [PATCH] kbuild: verify dtoverlay files against schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240527-dtbo-check-schema-v1-1-ee1094f88f74@linaro.org>
X-B4-Tracking: v=1; b=H4sIAL9vVGYC/x2MSQqAMAwAvyI5G9DSun1FPNQ2ahAXGhFB+neLp
 2EOMy8IBSaBLnsh0M3Cx56kzDNwi91nQvbJQRVKF0bV6K/xQLeQW1ESNot6qlrjxrbxZCB1Z6C
 Jn//ZDzF+O8wTfGMAAAA=
To: Masahiro Yamada <masahiroy@kernel.org>, 
 Nathan Chancellor <nathan@kernel.org>, Nicolas Schier <nicolas@fjasle.eu>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1837;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=OC1Rb60Ba8be4bnOiEGYyhY6UkqotkiIdasGqOZQU5s=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVG/A60GyIkk2vaLbu3ajqx6tKSHcr3PfniHwo
 fy6qgCMOKOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlRvwAAKCRCLPIo+Aiko
 1SRNB/9A33+w18LGzSBgOy6BeVyfVoBE2rJJu7vYjEi5q78BnT4HSc2Uj9QGgcNIfRMSilfKvdD
 Wof8ST1tE/Omq5DGSHO23ETp93YKlot5FIfcwyED/lrA77usXKDpmaomU0nDhTx2erK8JwoNfgI
 4FyOiWDKt9N7mIcHi47B6fjYcJItAIbZQ+enCVoMsou034RE6Pc2wyssJ7TGB+BFKPD+xL4jo5W
 TRTbv2BITkzO/SEdU1mrUAm/liLPgvztJffA64JesDrazxKHDKNdf9Vu1TniyzCl3pC82IYEXt4
 yM0XcVBP3Fj8WccQ4irUPv0tX2l39aza/TFcn1NIW1Its4k3
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Currently only the single part device trees are validated against DT
schema. For the multipart schema files only the first file is validated.
Extend the fdtoverlay commands to validate the resulting DTB file
against schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 scripts/Makefile.lib | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 9f06f6aaf7fc..29da0dc9776d 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -407,8 +407,15 @@ cmd_dtc = $(HOSTCC) -E $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ;
 		-d $(depfile).dtc.tmp $(dtc-tmp) ; \
 	cat $(depfile).pre.tmp $(depfile).dtc.tmp > $(depfile)
 
+DT_CHECK_CMD = $(DT_CHECKER) $(DT_CHECKER_FLAGS) -u $(srctree)/$(DT_BINDING_DIR) -p $(DT_TMP_SCHEMA)
+
+ifneq ($(CHECK_DTBS),)
+quiet_cmd_fdtoverlay = DTOVLCH $@
+      cmd_fdtoverlay = $(objtree)/scripts/dtc/fdtoverlay -o $@ -i $(real-prereqs) ; $(DT_CHECK_CMD) $@ || true
+else
 quiet_cmd_fdtoverlay = DTOVL   $@
       cmd_fdtoverlay = $(objtree)/scripts/dtc/fdtoverlay -o $@ -i $(real-prereqs)
+endif
 
 $(multi-dtb-y): FORCE
 	$(call if_changed,fdtoverlay)
@@ -421,7 +428,7 @@ DT_BINDING_DIR := Documentation/devicetree/bindings
 DT_TMP_SCHEMA := $(objtree)/$(DT_BINDING_DIR)/processed-schema.json
 
 quiet_cmd_dtb =	DTC_CHK $@
-      cmd_dtb =	$(cmd_dtc) ; $(DT_CHECKER) $(DT_CHECKER_FLAGS) -u $(srctree)/$(DT_BINDING_DIR) -p $(DT_TMP_SCHEMA) $@ || true
+      cmd_dtb =	$(cmd_dtc) ; $(DT_CHECK_CMD) $@ || true
 else
 quiet_cmd_dtb = $(quiet_cmd_dtc)
       cmd_dtb = $(cmd_dtc)

---
base-commit: 8314289a8d50a4e05d8ece1ae0445a3b57bb4d3b
change-id: 20240527-dtbo-check-schema-4f695cb98de5

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


