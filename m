Return-Path: <devicetree+bounces-216210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 415C2B54080
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 04:38:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0A3CA04D77
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 02:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E47D2153ED;
	Fri, 12 Sep 2025 02:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N5LXNfWN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78780213E7A
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757644686; cv=none; b=FsIi1oKarXOvReNVf7yyV2fOebBGi8YUfoYNt/96B8/45Cpc1cs6DmBNd/1nRxUu/8guHGaTPsVTNAeJr74bARct3FvY8I4AoERWvcgrk76drh+1wghLLUv6+2vravIbj7h85cwA3QTGDhQaARYGOoirjHjyeqLbvFTBRxrHfdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757644686; c=relaxed/simple;
	bh=+sDUkA3o71u4xm0yCZaBibtMSUQ/NK+r5JUrUR+q7Ew=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cxXPy3A53cLnyuyUZHZbbD1MX3zQnbCFC5emkZHkP7uoaor1EqnzCQ+ehkh8WMvSKQ9DbItoaofSPS+HMTU4xfwFo7L6R2EJl0CaYlSY/qTJg8x0A11tDO7tv8fnv/0/QlOXh6UptNbPB8HaTg7yMUWIsPoLhcLoMsKEgTNfmXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N5LXNfWN; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7459de59821so1325088a34.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 19:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757644683; x=1758249483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/8dXK+URwMz/QYwLwmlxkiqTgmS0zDdGrSZfnYxwO4o=;
        b=N5LXNfWNVvZQsNNIZwv7wSw/tSOTGsuSWYr6//MoBK0UrPmK5cyI2ncLXows/NRYOI
         L44DU0osBtpE4btUSAi5siolPhO9nu5JM/a/qRi0F1jn37nsbBFppROjNQVi9ymr8HRG
         0KPFgsS3n+mko9t0sQCbuRAXPvljBJg2zzFAiK6zhbqq7ORYs8gvSu/IXP+WrIbNJ2xR
         7JUNp5GLGkC1ddEkpywEDSW9jjA/xVWYkkkE6iajDf1SqLeYFW+RaD5sEMHyUY6cxHKC
         /Vt8gRHYcptjezIsZFkTtWQxDLlgfiXw4mZqK0jOyRqqbRdQRaVr7hYFeM53ByontYx+
         xa5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757644683; x=1758249483;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/8dXK+URwMz/QYwLwmlxkiqTgmS0zDdGrSZfnYxwO4o=;
        b=aTrH+BZ/uPx+rH/AFJFvkcFuQMlOeKh32FO1p4PI3teyYQJ7YoMNVIb3AjXFYcnYvs
         ueDNHrO668OhdNKVu6Pwwq1d+M4t4F+n0fyEcjmM9GuO92MMjtXPh/D2xxen6eblhuCb
         cFwshLc9vscAJoIRvG62OBfUNHZfk7vs7cUvZUGeJrXkC9d4+hj1+hVUKM+5TrbarRza
         NDzS6JP6e2YvbBkdZO+XvD7mb0RvgxAD8A1chyY/FY7KDY3SHYZfoFqKdjmsLKnkHZIs
         J2gCnCFR/5BA8HXPP+lAzDeaJOB4ey9rtMSMqCMO041GUZYLuVhjOVk/pb4S7ybEARBT
         Wlfw==
X-Forwarded-Encrypted: i=1; AJvYcCWwgYvqis+HP//lJMpbxml5Npe3i1vl/DFxrTJRv/XxAQ40sZ9NelswKRW20nwSPboEKS4SYua6u/K7@vger.kernel.org
X-Gm-Message-State: AOJu0YyU8zQWHGldnNuV6toJ71yVf8QcXMt8o573nByuKkLfMgr+lb0p
	NBXuws57OvH7VDdbk7Q0O3nm3Hmn1MSoWvMSxx07jYA8/ih9sNqP8GMC
X-Gm-Gg: ASbGncuZI4UgKtLeKZBQYyHkG/if5H1fqJjkqNDGwe+J4O1g6ytLS4inb1zdBC5t0lw
	QTwX+i1es1krfgQIKjaAl9KlY0LIlKROBzaedJVnW7eR8l1wAwMs1x1ngr6aO4pnzurR3yZIkgC
	LzskiFnRtY8/jicMdXbiEa3h/Cd3BkIhUu35F3fxhNCYtEPS94WQKXPfbH93bNt5sr5EAHmwk2p
	De/EHewUofvyIEAhHHe0jsoyEkButgbhYdekPqbBWRbKVWwKJO7Zdc1Af04Jq/QrDXBsO2JpU2I
	l/yG6WFYKEAjEHiyU1thQmX3JrbwaK/RX/aMitGuqZJLYXkzozskSRv/OVf78Sf0qmXz7q2rcW5
	z1S0jCtUcXJTEllxxty3BVgSOzBzfutQd
X-Google-Smtp-Source: AGHT+IETqLmXYZmyiMH+mKY1KPo6Sff/q9RyP4s68oN/ZgPUPkjihsjoo2nIbRNYpa7WwZvbeHu73A==
X-Received: by 2002:a05:6808:470a:b0:439:b198:23c7 with SMTP id 5614622812f47-43b8da0c548mr626312b6e.31.1757644683591;
        Thu, 11 Sep 2025 19:38:03 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b8293163csm565701b6e.12.2025.09.11.19.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 19:38:02 -0700 (PDT)
From: Chen Wang <unicornxw@gmail.com>
To: kwilczynski@kernel.org,
	u.kleine-koenig@baylibre.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	arnd@arndb.de,
	bwawrzyn@cisco.com,
	bhelgaas@google.com,
	unicorn_wang@outlook.com,
	conor+dt@kernel.org,
	18255117159@163.com,
	inochiama@gmail.com,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	lpieralisi@kernel.org,
	mani@kernel.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh@kernel.org,
	s-vadapalli@ti.com,
	tglx@linutronix.de,
	thomas.richard@bootlin.com,
	sycamoremoon376@gmail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	rabenda.cn@gmail.com,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com,
	fengchun.li@sophgo.com,
	jeffbai@aosc.io
Subject: [PATCH v3 7/7] riscv: sophgo: dts: enable PCIe for SG2042_EVB_V2.0
Date: Fri, 12 Sep 2025 10:37:54 +0800
Message-Id: <16831a3277a6c8c19436a17ac199d2f9b80f9ce5.1757643388.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1757643388.git.unicorn_wang@outlook.com>
References: <cover.1757643388.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chen Wang <unicorn_wang@outlook.com>

Enable PCIe controllers for Sophgo SG2042_EVB_V2.0 board,
which uses SG2042 SoC.

Signed-off-by: Han Gao <rabenda.cn@gmail.com>
Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
---
 arch/riscv/boot/dts/sophgo/sg2042-evb-v2.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042-evb-v2.dts b/arch/riscv/boot/dts/sophgo/sg2042-evb-v2.dts
index 46980e41b886..0cd0dc0f537c 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042-evb-v2.dts
+++ b/arch/riscv/boot/dts/sophgo/sg2042-evb-v2.dts
@@ -152,6 +152,18 @@ phy0: phy@0 {
 	};
 };
 
+&pcie_rc0 {
+	status = "okay";
+};
+
+&pcie_rc1 {
+	status = "okay";
+};
+
+&pcie_rc2 {
+	status = "okay";
+};
+
 &pinctrl {
 	emmc_cfg: sdhci-emmc-cfg {
 		sdhci-emmc-wp-pins {
-- 
2.34.1


