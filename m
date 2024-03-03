Return-Path: <devicetree+bounces-47919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9DF86F47C
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 11:49:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDBFA2828C8
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 10:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161A8B664;
	Sun,  3 Mar 2024 10:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="yyGQN/T3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423C0B641
	for <devicetree@vger.kernel.org>; Sun,  3 Mar 2024 10:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709462941; cv=none; b=Slu7m2ZqpKUIhmZfdfPyC0TCMYUBOUvvowT40lhUxj9qfGUEbpBCFnInfyZGAF7xjHcPBFtfkbxKE9SosV0NzfWU0vg8utqqjoSKtq6RAjQS3d2NXu1Bk8DlpVcdrAnqicZv4X+tkw4uA9RoOBLyt+zDoI8UdI/ChVVdCtiNiCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709462941; c=relaxed/simple;
	bh=wdMZvlY9a5pjvdej/k7MCIk+lVgoJHMV1KhOOpZkf8I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LSG/B/KyCzL65DGJ/Ts4xouDSslIOuoZEcRWyG19LrXKDEHOSFFH+R43VIBbUuKIxQffl5GIXLNdFgD125ZDt4v6qSTVinuMHQkTOTbbo9v6SFhMsSp4RP6gttKaoneAgwiU1b9M00IrkuFaTpteCerXwoaCBDw8udVb5BVbQ/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=yyGQN/T3; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a450615d1c4so77142266b.0
        for <devicetree@vger.kernel.org>; Sun, 03 Mar 2024 02:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1709462937; x=1710067737; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qntDsCq8rgJuk7hdQSQYmfEUmAPY9qw4QwTul/rj/lU=;
        b=yyGQN/T3j++gHMHFi+q96mX9ZYpLRXZHUtxxVLrSfY4jPIzs4FBiHMO7v27ugR4dAM
         1UjVs383IAWeFD7qt4qIdbI8XBzLrlTtvhYvS34X01jFQLeXA4UZOpaciWbQiKWPtKey
         aOBLp8NkSH6Noh/5qAywHzIh4gVpnluzTbVTIySJdTjoy0fxQDknTqKVYepxt8v/Vl8z
         R3lvZDhnBd1I+cDwEZiQvTS+DswITDf4n/1T7UvsbT0RuvD8IVO0onooq6XKdXkGQ431
         YsZWai15/A4qYLmnfVfy4mLbL8JPh7MNgpG6QLBrSVnZ6Eo8xk/P57k8mXyLpLFYIn8N
         VRew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709462937; x=1710067737;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qntDsCq8rgJuk7hdQSQYmfEUmAPY9qw4QwTul/rj/lU=;
        b=ZE8p3OmpbiZ/ARRWwFx71SWPY96HCUWttemObo9OtaoPfyzqdJvpA8C3R/C9C864Fa
         yS9+8cblkvLOwJod4h6lQDBbIWZ9q7KN7OoRyczXjsxtFiu+NOHYGfq1/idJO8IQmyoi
         g048kk/EfDvRe+O0lOZ5kNjSgiseh4QIKibbTPmS9o63wN32xoanuD4qsuXc4HVg89sz
         unxddwn6c9583MQK7H8cZSesSvfXdVb0/0JMHAuvC64poxYwvk/IO3vUaT24VxKxC3IW
         8J9glvA+nHudo8wpL81expLzBsCwzgbVAXAZpmc2HyOQZ7/T/AyDCggxQPPVEeJKceis
         XT0A==
X-Gm-Message-State: AOJu0Yw9+nx3M0Y46vR1X7AgKuWthgz4c3sNiRGJ+a+MvNhaW4P8uOcd
	dQ2/0V1RxFSG3yTdIV77tDVzQjL5VbZc6ybia5hDVlOEBkvkx3NjaxTJLWMo4/E=
X-Google-Smtp-Source: AGHT+IFpd7/0A8HZA8X0BaCKoqokGmayqMEq28RDQ2RuXymWMt5xBJCQfQZs2Qv/VI3r31VlyOkWcA==
X-Received: by 2002:a17:906:6c97:b0:a45:2cf3:6c65 with SMTP id s23-20020a1709066c9700b00a452cf36c65mr445528ejr.25.1709462937430;
        Sun, 03 Mar 2024 02:48:57 -0800 (PST)
Received: from brgl-uxlite.. (5-226-109-134.static.ip.netia.com.pl. [5.226.109.134])
        by smtp.gmail.com with ESMTPSA id he44-20020a1709073dac00b00a4323d1b18fsm3582303ejc.34.2024.03.03.02.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Mar 2024 02:48:57 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH] of: make for_each_property_of_node() available to to !OF
Date: Sun,  3 Mar 2024 11:48:53 +0100
Message-Id: <20240303104853.31511-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

for_each_property_of_node() is a macro and so doesn't have a stub inline
function for !OF. Move it out of the relevant #ifdef to make it available
to all users.

Fixes: 611cad720148 ("dt: add of_alias_scan and of_alias_get_id")
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
I have an upcoming driver that will use this but which can also be built
on non-DT systems. I'd like to get that in as a fix to avoid inter-tree
dependencies later.

 include/linux/of.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/linux/of.h b/include/linux/of.h
index 6a9ddf20e79a..a3e8e429ad7f 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -362,9 +362,6 @@ extern struct device_node *of_get_cpu_state_node(struct device_node *cpu_node,
 						 int index);
 extern u64 of_get_cpu_hwid(struct device_node *cpun, unsigned int thread);
 
-#define for_each_property_of_node(dn, pp) \
-	for (pp = dn->properties; pp != NULL; pp = pp->next)
-
 extern int of_n_addr_cells(struct device_node *np);
 extern int of_n_size_cells(struct device_node *np);
 extern const struct of_device_id *of_match_node(
@@ -892,6 +889,9 @@ static inline int of_prop_val_eq(struct property *p1, struct property *p2)
 	       !memcmp(p1->value, p2->value, (size_t)p1->length);
 }
 
+#define for_each_property_of_node(dn, pp) \
+	for (pp = dn->properties; pp != NULL; pp = pp->next)
+
 #if defined(CONFIG_OF) && defined(CONFIG_NUMA)
 extern int of_node_to_nid(struct device_node *np);
 #else
-- 
2.40.1


