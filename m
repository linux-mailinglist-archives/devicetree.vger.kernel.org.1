Return-Path: <devicetree+bounces-120512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9629C2F69
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 20:52:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2889D1C2146C
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 19:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 679E41A2C25;
	Sat,  9 Nov 2024 19:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="YhfMgXXU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C051A00F8
	for <devicetree@vger.kernel.org>; Sat,  9 Nov 2024 19:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731181937; cv=none; b=u03MZvHzbN3SLzu46Sjnrsz+/1s1qNG4f5zosrz92wMT4I831oKMcCndgWGtjNVZQvUyzEzMGW83zEXmdiyejFcUhxH1aJf+jpxiGtpBL/qkTMffMA5k8dKdWftAM1KTSm+iIz7FaTmWzXocqbgNVNARRk1L/psnIJVD7+nBAQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731181937; c=relaxed/simple;
	bh=FE5OKahuQbeKkOcWp0inYK+4t5zKMypUJZaonXoh7Sw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qwsdFc3BF/oX/FH85yMkA/7bWK8ezNKLiUQnMz/cLXJjP7arf/Y5VGmZXcDLjQ/Z6hW+MUJ5iLuYxq1eOy3C7mZKiHLlk30SFY3XOoLRSmozNRYCtH18Tid5n6q4wz3UwacKy8RcpSPVxIFVnWucieL1PTdP24nYtxS1HFCXQnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=YhfMgXXU; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-720c2db824eso3593478b3a.0
        for <devicetree@vger.kernel.org>; Sat, 09 Nov 2024 11:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1731181935; x=1731786735; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6/6W91RQBKdWea/k2P+RWwcZxX0A/q3VyEVyWhYVDwQ=;
        b=YhfMgXXU6MJHxeYtpe/71jd8UyK3f+/yP7lyut+bzpe4iXrCzzNep/l/44g93GVlYy
         Od49bVYxN+oMVavc9vwApJm0LxeFc9NfYAqh855nWm3KFOBYVrAakSiq7guCh3Po2PSo
         Lrgjnh0DbvDURfN2JQiqIcatk1rXYuzE7WD0oOScwJEXgtHXWI2oLNj7J+v6E4rKVQTR
         DyrpBlpqVBUo6PwuaYG5tGh8JAmCnijiDrO+d6fyDmBORi2DqiV/IshdCr/Em2edCLgT
         cM7u1TLuUMfmm4rL+9xGcfJGzjx7A44KEKh5IIoiyIHycM185Pl8w3sMbXb4JzCUlZNM
         QEQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731181935; x=1731786735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6/6W91RQBKdWea/k2P+RWwcZxX0A/q3VyEVyWhYVDwQ=;
        b=P5AudvlAxVz+RlJlBcCuglBLOL6Sbh7KzNjopg700QVcN9eEpd+R1QBRoL1NN1BZDL
         OY++CVOPyLx5DenKpUw5GCr+QpM3o/ks1wasVSPeusYf8jJwIp6Hs8FLayttnFTx+aRh
         crjShsfJ6t4tdvNVzNycv/wBYan1VUFaC9qdP0TguGtt6gupchKO1i1CaX/I6cP0La8M
         dn8IxL6HwrqqXxdZgZ1leRUAe0cmcTMt4ngPDiVretQj41pVrTWuVmnTbcfwFbQaLgv2
         V5PU3caF3JeVd69Yxug8uX7+cIAsHd3gff7MOtY2XnQx60q1YLyxkkUeNaJuFzMb0bie
         Cdvg==
X-Gm-Message-State: AOJu0YxX/xVuREWSteO30U22Bel2tI8EQm9SVKnrYL4FF1mPWMr46R7B
	yuOii5C8BMVAmWQkWTEImwkMi83jLgdqBMYfnyKUaSbKZ6imCLUuI3pIgAodqg==
X-Google-Smtp-Source: AGHT+IFndOxsMdOpWc5B2xO4LeTRwkyKUS80N00ci5n9+MxvfL5ryT4r8diucBi3Siep0unb4PjQtg==
X-Received: by 2002:a05:6a00:1252:b0:71e:5e04:be9b with SMTP id d2e1a72fcca58-724132c0d20mr10606164b3a.12.1731181935217;
        Sat, 09 Nov 2024 11:52:15 -0800 (PST)
Received: from [172.22.58.163] ([117.250.76.240])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724079a4177sm5972288b3a.99.2024.11.09.11.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Nov 2024 11:52:13 -0800 (PST)
From: Ayush Singh <ayush@beagleboard.org>
Date: Sun, 10 Nov 2024 01:21:34 +0530
Subject: [PATCH v2 2/3] of: Add of_alias_destroy()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241110-of-alias-v2-2-16da9844a93e@beagleboard.org>
References: <20241110-of-alias-v2-0-16da9844a93e@beagleboard.org>
In-Reply-To: <20241110-of-alias-v2-0-16da9844a93e@beagleboard.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 d-gole@ti.com, jkridner@beagleboard.org, lorforlinux@beagleboard.org, 
 Geert Uytterhoeven <geert@linux-m68k.org>, Andrew Davis <afd@ti.com>, 
 robertcnelson@beagleboard.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1027; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=FE5OKahuQbeKkOcWp0inYK+4t5zKMypUJZaonXoh7Sw=;
 b=owEBbQKS/ZANAwAIAQXO9ceJ5Vp0AcsmYgBnL71fymQFG8xdl/TB1Jum+jcjavL/0Lu3s/7lP
 58tzd3711iJAjMEAAEIAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCZy+9XwAKCRAFzvXHieVa
 dMi7D/9bkd2pD0Qwumvco5P1YYaxKcdGjrmi/8xNl3bg3bVP2uwRqeZSjU9RcOEPF6sm+moNNYG
 suakf1sfGR5JV709ygjewizb8c0DpgvKcl4jHNGfsU4UkhNiy4Ijhv7v/VBFLkf1QIFBB2Dh0oh
 lytSrANDYKls0+uLAy7/MUHLVQ+k6ioeUjuwLdFCxI1wjx0dKUCmWOy62Dd1WTUyLIPtsenghTJ
 J/h4HtDoQgzHXOgBCABvRx/t9zT+4V5kfGd0xS310clFSvuvaq5XPnLo6/STEThp2R/MCQ0qaCi
 jGu2gF35HZvP2CeRyBCNMipqPi06ruW/Mo/MTL2ynCWn4wuJmA+3LXO71/GIE67yZmjgOZWzXqa
 tCJU2IuCAsLlr96oNfRaLPP4D/mf7ZM4H4XFsOiLTi1hrG8uYzxeQ7TAfpHn4QR6o3wovqvmgeH
 B4WgbnmLCwOMz6nKbMPkIFp6nWAX/UwAZjhuf9P90mu7cunWvwqZ99WI2ehxSe16L3hZihJZ88E
 zXRJyDyEBEAFq6Mkvv4YAyKuBo5az47Tpdh8/rnEhnrpx5XuJjD1nEsB/05avO/fmArWg3dq1So
 9HgFd466RVosGepjMN+HrxoRHTqK5c9s4al3PhBlJKil/Zd4DQsiVHylRgLuD95ZqWquQIehfEZ
 rOvx9rahqhOf0CQ==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

Add a helper function to find an alias, remove it from the list of
aliases, and destroy it.

Co-developed-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 drivers/of/base.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index e5cd75fca95132060334aa8547c58951d2132cfb..1cfb3cd4493e17d16868981288115798c6a6a151 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -221,6 +221,20 @@ static void of_alias_create(const struct property *pp,
 	of_alias_add(ap, np, id, start, len);
 }
 
+static void of_alias_destroy(const char *name, void (*dt_free)(void *))
+{
+	struct alias_prop *ap;
+
+	list_for_each_entry(ap, &aliases_lookup, link) {
+		if (strcmp(ap->alias, name))
+			continue;
+
+		list_del(&ap->link);
+		dt_free(ap);
+		return;
+	}
+}
+
 void __init of_core_init(void)
 {
 	struct device_node *np;

-- 
2.47.0


