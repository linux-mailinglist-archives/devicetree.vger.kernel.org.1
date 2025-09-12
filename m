Return-Path: <devicetree+bounces-216209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AFADEB5407D
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 04:37:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE1F87B9F02
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 02:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FA921F2371;
	Fri, 12 Sep 2025 02:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hdXvyRrH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7B12AE66
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757644668; cv=none; b=dV6j+ZiGksGz/3Cozhd/jqmcaNXZ81pXYHlxa9X2Z9AlzvyCjv7dwSdM+IwRjPXkwqTItXYbrJdgDl58theqpcxhN2R2BlVriJOEkaWZKqYVJQSPYzhGNZxg5TS1kK/n8urVLikEs0LSyTIFhOGMhm63Fhd2Jdt3eY0M09+yO9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757644668; c=relaxed/simple;
	bh=7ZMKBRn7WTwBL6qsn+lHI9SZa+lKRdoNg2FdbjpyDqE=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ioVHXj/yzNrfP8mU07oWTm+Jum1VXBjptkiYili7KCrppEiSyGI33D2j/wKIk6PEcpAvXJXL7OvyzI803ksZHdRk/8PLRinv1iWCJMjiT2AGDrOl04GTbQQUozFuLuPTccevlYhxrKeJvpQYCEJee/t5ImpH8c6SRxwop43IKVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hdXvyRrH; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-746c0ee5d77so1099243a34.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 19:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757644666; x=1758249466; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a0NX4YDlfnF2moHa0Gi9m7awPoXSV0rkM143rN50kIc=;
        b=hdXvyRrHc5YVCn7WlVNjOl4HsPgAykdmV0jOS1WpZfcsUsn1dRd9/DESpg3TY9nPJN
         DhvPoLOzCAIR+J0VWUY0LXkeSZ7IKrwGt2uhLE87rjrZq2l+HwRsKLyQGJabzPL0GAW4
         CEkQAMNwK++4Rrf4uiYJcncS5Hjc03C2JI2vNPJy/Imu+tAvQnmfdulMuDSZOnKB/mif
         1wecv/UtYrCbiu7FqUb6Nf6Bz8AD1XzfAEMANOW2kgLuEy1eiNUIEjl4hbFh/w6yMvhO
         U1yJZQq7AliAzhNfKJ2rIbpievQRuePcZkOuPRVUobHkthoOri8joTl4GyduhaiK3Tg4
         Nz0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757644666; x=1758249466;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a0NX4YDlfnF2moHa0Gi9m7awPoXSV0rkM143rN50kIc=;
        b=Sm9wFKnMQRRAU7itn/9ochmaAxrVRNCqlN+M+/dw8gGRRKZNfTDYiqVszUqVpsbT4c
         IEK6Bl6hyDtkJhUk1W1J3KwHC8pU4U1CLjfLVcXnmS/Cuy4Gl5iu/G5lJYrJFpey7QEx
         AvWqshdCtZWGPjgmUCZLGoigHuPIboAhrjt7TbAgUp4z7M1AKS8fqPHsJjPRABO0VU86
         vheuC4c+vwPQ8gCZV6jRQfTn5lUQnF55DP/tYHfGjBjX5yNb2E4HMX3XRuDzJMRM6UMV
         bI2ik13FeEBOPopqj7c7E5Q5ubAKF9kSWKw68SBmPz8CSZiJrD+DwiQ2fjnQAUgiXxOf
         r9wg==
X-Forwarded-Encrypted: i=1; AJvYcCV+GDLkg55LlvN5Kls3Q00BvBW1FlyidO4ilDQNqnwmupIOp6t90BsLYCOIkYxn+40fKLHlhgKsxfsk@vger.kernel.org
X-Gm-Message-State: AOJu0Yzxka6s5XY440qmLg/gfxVz+AK0MbXFePEpGcXXIuZerl807HGv
	FkU+Tq7xHzCfFhjQyf5B5k+D91oHfg850NmHfvI5djI2L2r611pcHaBq
X-Gm-Gg: ASbGncu/SglZFXEBOXkWKp29fSn/0wwAyYCQdj4vWq4iP0le65SM06wbclI0LD/3akd
	6/a2rWsswC7YIdXgmYlshA1pfdADMNR3o4V/5mdEFP06atoAN1rG5/XQb1F/GkjG247ZLWEUKgI
	iTwWdhU6ApM/XNFig8cPbke7eyI6fgGi8ONKv67KNToIwUHvIPLfZM3gMU+epAwnp99V65fNa68
	o/4saHNmdNMaGiF6UcO9JdoRaNYi46QomdM7MnHymPv19iaEmr0SgfHfOX/24DWoESixqgCvNc/
	iRoOpbucZcDc+GYrzHgGwD7iNrY2KOWwMlbVY3EDsS3a/x8JgN8IZ6UVD78SLQIIRkTMrajR8ei
	lS7Uq/7k2hIZDq01kKBUUXyNtmxNA7b6HymWrR4Ly33M=
X-Google-Smtp-Source: AGHT+IG0TQa2WVbWUOjIbbfIZ5nePfOY9XArUERpTrkKtked//q7vNW0k55MNp1jMcZH67KflOuh+Q==
X-Received: by 2002:a05:6808:4f24:b0:439:b198:23ab with SMTP id 5614622812f47-43b8d8cff2cmr506892b6e.18.1757644666012;
        Thu, 11 Sep 2025 19:37:46 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b82a7264asm586173b6e.21.2025.09.11.19.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 19:37:44 -0700 (PDT)
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
Subject: [PATCH v3 6/7] riscv: sophgo: dts: enable PCIe for SG2042_EVB_V1.X
Date: Fri, 12 Sep 2025 10:37:35 +0800
Message-Id: <76d4012e515dc3c3d4e406a237eadc55203f77b6.1757643388.git.unicorn_wang@outlook.com>
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

Enable PCIe controllers for Sophgo SG2042_EVB_V1.X board,
which uses SG2042 SoC.

Signed-off-by: Han Gao <rabenda.cn@gmail.com>
Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
---
 arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts b/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts
index 3320bc1dd2c6..a186d036cf36 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts
+++ b/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts
@@ -164,6 +164,18 @@ phy0: phy@0 {
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


