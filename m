Return-Path: <devicetree+bounces-216208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 48661B54078
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 04:37:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 900981C87E61
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 02:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1BB21D5146;
	Fri, 12 Sep 2025 02:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T3IKT1ye"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523D41E5B72
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757644644; cv=none; b=kG+nysMoVQQlZFNpTwFg0qOiXlnP9MaKQsEDYuCCC/XecV7dnr9iO3N6ZmSv5QanUGLbxbe8Ihi1IYolCUvzfoYWXhwBSIR14FgvjBWgz+T8j3sjSdLACOlhTkTYe/B3coLLPDnhMMkIiXXjU4xZxQtD1Zo2/WLaMYXgzSW4psc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757644644; c=relaxed/simple;
	bh=dgpNPFFxsdIAjczNzjU4PLG/4kOomJBC5GhTApKNwOw=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HexigT/47tNaOR0W5Z9kKUbWbBB5Y6FcRHSvfdU4cjGTCNw9cVaXZXQoa//jHu2P7lboXlXTwYAthdG2DWoFYk/s7crR47C6Di41bxJxsDk40fx2S4WIMP3uqrqdiwxC/9x/cGDLSNyDUF4p/WympsILqtCWrID6GZHw4IcVgnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T3IKT1ye; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-31d6e39817fso1893453fac.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 19:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757644642; x=1758249442; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7rSqoF1bhRIMRZ/Ngttka/3cr36QgYmwYc1FwmVj14E=;
        b=T3IKT1yeV7eN6n5TExZxfQfQakjM1wZeabZoi1rq+7P1jsBXhZo2TbPOTbZjXxyXmG
         Xxra69XqJvW7IgnWCWJd2GEYFvM5HkxOacE+8oPcbReRI/0kR2ljyWt81s7TXZOb4X1P
         MIvBvJOQSHV+338IdxjYh3Lr7FMHGZkpKGEzwbpVI4LjdbBVOtvqPiZIvf7VqfBt2OxF
         VVdA/BdsHkfjD/+tKsRPSNGnhRXETfJqKHGplxxEnkHufwFc9Gc0ZLQ5xl/dF24lM0RB
         M14dYanxriEiQDg+e1AP9IqH4wNtzDaVLweBnK8ozXOd700MoDXnhGmsiL2uIbJ9Cgud
         yrEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757644642; x=1758249442;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7rSqoF1bhRIMRZ/Ngttka/3cr36QgYmwYc1FwmVj14E=;
        b=Xsq0MNv8O/150nVvJFSPk99I1lP4W7OlA108MwE2vhdrw7N1O/mktrImP0F42e4W6Q
         4pVqTOak2P1APOclZ3LMfrmfIFr6gaGhV7U2WUK4YcuYNfwFKEeGY3tJis575xrsqrNy
         aIz3NkMmfgJEz5JynfcVg+6WODRSA0qFpGIYePUBsYrNuUy4Gh0SzXcV4/5yrf2YR34i
         JWWOrzyK6c5iKQbmK3R0OrC/xViW3x24XLz/UmtjENhPL+TkGukEnNQgKudO7fLhPG/7
         Q1G+pnwOJ8C41Vx1Tz4zmsYMYsCtvVHDtW9ydR6+K0rKP7rpgcSqzXmhXHABzupsS7rC
         PqTA==
X-Forwarded-Encrypted: i=1; AJvYcCX5RMtEnyhFjvyGCqreFEo/l+6pZSJ5aDi3hbi9GnrzRMyFhDTLKlq1GqN/lIBl+S7ErxnrWy3tmSWj@vger.kernel.org
X-Gm-Message-State: AOJu0YxKuw0KATta82Sd04yYWLhsecvbGf6PnwfkRTRIqMnOGVp4z4WD
	FQi+P6yz+Buz8oPs2LtA772fWNDpcLy++LN+tWmh9vOdV2a1gcPK3vDs
X-Gm-Gg: ASbGnct6Qd7wFS9klL1bAjYPgUU3ZPLUfgq+8Cg81L814sx3ij7+hO27tC5YfC80dUY
	/lvhvztgwKYdOBPsbp0NoeOUmIP9HxHTag3IvXiUeULGEtsUHlV1ZXbcYJsYgsRKDS32XwSj1Go
	NS1xrAnH1fUMM3bnsfzJWlMKVrTBurCEH2uzLWL2s7sPMs7n0Gw33lAY6sIeNel/wuglNr6W629
	fM2XATMDaE2ISOymUYj2/AkevsUyJc7G/E9wZKtClvl3iR5KfMc8w43/iI3EQjPPguqozutb2j7
	M4NmXnv20HxmUTfGsTghD5TkVI5FfcBAhjOFSVym53PeU0qfDq6YHYqg+YBnYBNsuT8GzhLl6Co
	dnxn9l/V6zmVMjLJYtsdakV9DqIdVLZZ8nkZTGCmyMYw=
X-Google-Smtp-Source: AGHT+IFJlDg83j9kDJr9JJPfps+eRdqlRn3OyrAApBvHJZ97334vhQbAuQiDLCanW42L2b91pkrT9A==
X-Received: by 2002:a05:6808:6552:20b0:43b:6639:7307 with SMTP id 5614622812f47-43b8da12395mr687917b6e.23.1757644642421;
        Thu, 11 Sep 2025 19:37:22 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b828d2ee3sm565466b6e.5.2025.09.11.19.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 19:37:21 -0700 (PDT)
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
Subject: [PATCH v3 5/7] riscv: sophgo: dts: enable PCIe for PioneerBox
Date: Fri, 12 Sep 2025 10:37:13 +0800
Message-Id: <a499a1c17f317ea57de8769032ec65e1e18b4b36.1757643388.git.unicorn_wang@outlook.com>
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

Enable PCIe controllers for PioneerBox, which uses SG2042 SoC.

Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
---
 arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
index ef3a602172b1..c4d5f8d7d4ad 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
+++ b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
@@ -128,6 +128,18 @@ uart0-rx-pins {
 	};
 };
 
+&pcie_rc0 {
+	status = "okay";
+};
+
+&pcie_rc2 {
+	status = "okay";
+};
+
+&pcie_rc3 {
+	status = "okay";
+};
+
 &sd {
 	pinctrl-0 = <&sd_cfg>;
 	pinctrl-names = "default";
-- 
2.34.1


