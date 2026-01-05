Return-Path: <devicetree+bounces-251351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 44260CF2300
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 08:21:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A8B88300BA1C
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 07:21:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEFF9301493;
	Mon,  5 Jan 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OfaUhey8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D84A2FF160
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 07:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767597293; cv=none; b=jOng536RLug89180fTH5rs+PCWWHXwbyPAiCNWuZ4VFCKDgCF1n2jnmX0nFwZeIdPoFHa5i4Py/AmcDhtg7WAieRzpuni8kkM0gLtA+21pAz6wJ3djlt1wCTeEPqNNCrSMLxQiY8ESQ2ZfoyOhTGVAs3MaXWo66+AQwcse19/qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767597293; c=relaxed/simple;
	bh=Qz2RwYF5op0fgZk+kqY/IBcQu5bf9JLkopGyU2Lh5pw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mpXZfuegd1WZ5o4OH83kDfNOutpnEbrS9r8o2X1973fYt4UmKwr0TNmHSsawGo/b0Vqxw56W0tKXHVbdBrEuJq8l1Lx3lhTCy0Ks3wr2Abuz3NkuHqYSJewGAS4rnRbEsSNA/kirx2LNSzO5IMxDFa3U/YUtPNKF+zRBbfoeTLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OfaUhey8; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-34c21417781so14507485a91.3
        for <devicetree@vger.kernel.org>; Sun, 04 Jan 2026 23:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767597291; x=1768202091; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eUHw25NGQsrcl9rOD/QRFS39Fxhsx8ixc4+FBk8HjuM=;
        b=OfaUhey8//7Nsv77+vGc0hZoilphxlqcYd7EPBdDQpRo1/6NgKq5yYCFVqOxyW0krJ
         EOtaywKwEihIrCdbSwUPk7RqlzRShOVs/Nza0gTj4WAxW0RaqtgBNwqRQ9xwepivYZk8
         1MnAi6Qg2E+7gX4s9N891FkkJzC7g4hM8967Iy/EcRjuAQqJrkrSYLXlg/yJ5znZ8aC2
         rHpEIi8UUrF2XLhkg+5Uzhfsids0QRHU8YJUv2gMsuL7dGRpOZ8miuXvIt8T+7Tz1oHj
         ZqSG292RmclCKOzyPbskxZgMGoXMwlSGKqie1QkSa1TWr8QJuSaD4dV9sHiowRjjWBB7
         mGJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767597291; x=1768202091;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eUHw25NGQsrcl9rOD/QRFS39Fxhsx8ixc4+FBk8HjuM=;
        b=bHAQtoyzauKktGTvjVp0jB5b9oZnwwxlF80oXp3AKF9cBSLbq/9PQxLgzvoxJwpdzE
         NOZ94QP+OCf7egAOKB+RQfCcwP1f4wRpvU2YGu+h7mADZSCp/ew0nHCO1ezMFDLlaoKl
         vjtcQCbj1wyvLlvv02KxyL5K5A8Q4/PITBYkg+zHvPZz0xkUo2mI9xzWU3e+Grfee/TB
         oo5I3g4XGfb5QVnSeycIZpBoAA5HDTJLtuykJ+Yt1gzfOH5sDh8emf0tBu1b9EWO3yS2
         uM3ghilUqi+OtpO1FZabXarK3cyG9BhqJM4VgX7guLMbfSmbn7Tat/+wdY4k3K3U+sKH
         NE2g==
X-Gm-Message-State: AOJu0YycC50mTL8n2UN530QYP/gk75OdyTcbmmYdTM0y4LE/UcJ72B5z
	5OdpKBr1eCxs5KGB+c1ylqrYQ6a8n7e58MKMrpJRhgvyda48WKfkiqBdkqsb0USU
X-Gm-Gg: AY/fxX7jDLDMmdiHZso2Gnk8Wn+PtKGLO7I90plu9wyIbta11RwnoUj3I9ssHn7b4fr
	qzONF8x+oxAgcCfp0sQYx7Uge/KYr3CdF5jaMEmQQV6kOHmpt2bibn114Hih+vTEbKzr2zFAOi1
	9PCyCLYp3qVpY6DfmseH1li/RE3EIg1PuIBioU/G9eGPbpzO9olEO7LZo+5xMKQTuMxKRE9KxZq
	ROVUi2sQzwx+k2+aBhYOoirhXkl1nbHm8uy9Z+ri2JgGpStdT1/iQIMrskmlabZYvwPXW4hQ+a4
	0WD+cz8Vyfjp2kB3D4NF313egJA1mtCO6D3n5oV/BD3X9SnNzbNkbU5j0o/7Dl4BZcJR8o4XmXO
	wxV93n9Tr2mEiSZJtz5opZdMOA4uQS7oolkJxmmhRXMOpCofC486EqHYRX8nG0tg+M59E+aA=
X-Google-Smtp-Source: AGHT+IFe4WIaO9ozYXfXHaY7XO3a8e595bEIqJaMyR/ooPGGBnr8tW0YWRKmtUn1G3EzDuvJwJUqvQ==
X-Received: by 2002:a17:90a:dfc6:b0:340:d1a1:af8e with SMTP id 98e67ed59e1d1-34e921e60d9mr42814526a91.37.1767597291434;
        Sun, 04 Jan 2026 23:14:51 -0800 (PST)
Received: from oslab.. ([2402:f000:4:1006:809:0:a77:18ea])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b31c479sm46996054b3a.24.2026.01.04.23.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jan 2026 23:14:51 -0800 (PST)
From: Tuo Li <islituo@gmail.com>
To: robh@kernel.org,
	saravanak@google.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tuo Li <islituo@gmail.com>
Subject: [PATCH] of: unittest: fix possible null-pointer dereferences in of_unittest_property_copy()
Date: Mon,  5 Jan 2026 15:14:38 +0800
Message-ID: <20260105071438.156186-1-islituo@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This function first duplicates p1 and p2 into new, and then checks whether
the duplication succeeds. However, if the duplication fails (e.g., 
kzalloc() returns NULL in __of_prop_dup()), new will be NULL but is still
dereferenced in __of_prop_free(). To ensure that the unit test continues to
run even when duplication fails, add a NULL check before calling 
__of_prop_free().

Fixes: 1c5e3d9bf33b ("of: Add a helper to free property struct")
Signed-off-by: Tuo Li <islituo@gmail.com>
---
 drivers/of/unittest.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index 388e9ec2cccf..ea650a9ca2d9 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -804,11 +804,13 @@ static void __init of_unittest_property_copy(void)
 
 	new = __of_prop_dup(&p1, GFP_KERNEL);
 	unittest(new && propcmp(&p1, new), "empty property didn't copy correctly\n");
-	__of_prop_free(new);
+	if (new)
+		__of_prop_free(new);
 
 	new = __of_prop_dup(&p2, GFP_KERNEL);
 	unittest(new && propcmp(&p2, new), "non-empty property didn't copy correctly\n");
-	__of_prop_free(new);
+	if (new)
+		__of_prop_free(new);
 #endif
 }
 
-- 
2.43.0


