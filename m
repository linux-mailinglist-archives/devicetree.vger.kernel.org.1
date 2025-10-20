Return-Path: <devicetree+bounces-228566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EC7BEF331
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 05:40:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E17364E2225
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 03:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC9D2BDC0E;
	Mon, 20 Oct 2025 03:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OycazayL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5DC1E3762
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 03:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760931619; cv=none; b=XHoFBsZRpktcP8j1Yy9wQYwEoBCH0L6id0/3HxaffCmQAyigsAk+VYiJYqknB0po8qeKFCfvEp0dEQZq/STCZfLiVlCqg3ZyuYGGqbmPzksVLLXZtoUyo+zU52XLc9RSywyDWsEG0ABN4uUBcSuw5XbGQzMixvR05q5eEzHPZcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760931619; c=relaxed/simple;
	bh=+sDUkA3o71u4xm0yCZaBibtMSUQ/NK+r5JUrUR+q7Ew=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BYOtZjdnSSTpwlry5lP3lAuycFSNq4LCd2MzSjxG3VUv6/vhHSaW9lwVzK4nQJBOqxFDbh5qoqn8XjOvD3xz7DWOPQMsOawud0+dBafxndqsWvfBZ+rib87xBHqeyDb8CPINED3lpEBW7a4VmkQRW0H6g3O434SzaErFxT40YB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OycazayL; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7c28378681cso890256a34.1
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 20:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760931617; x=1761536417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/8dXK+URwMz/QYwLwmlxkiqTgmS0zDdGrSZfnYxwO4o=;
        b=OycazayLuc21zYUDqYAON198ZetLiDvjX7YIUDT9YKlrfPNXXSn9tEJgqhI0irc9Ru
         GvFyTkX5fz/FdqeMlrEeOXJM0oGiQlXnenpBAuCLMuGZ7nUagQ9REIwk1uKI2Eloj0Dh
         hxPPlW7N9T9sZEJS5ATOIJ4b8bMmH/LwfUz1sSipFE7N4UMVH3xjcwVHYMM3SFJ5Euht
         6cVVHb7Ho73qkiSwrRyAoICD3BOnMhbzZNB+pSFxNPxgmHl0pvyFPYicnNqnSWF3giKy
         UCSvjsEjDD/M+MwBvDh/Qc/2Jp3i9x8DtXuuNL21cyB/sdB8mllrhal+qOVqJCsmg2jM
         kfLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760931617; x=1761536417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/8dXK+URwMz/QYwLwmlxkiqTgmS0zDdGrSZfnYxwO4o=;
        b=uRkA6Vnd2NXPFnMuJ9VpMrGrtgk2MIvk9/udehmUK8ICA74Zr28DN75bwHXrRupvsX
         WRCYGLBHHYcmf+mvv6qFACtWC/okjzJZylSMgg9yV3PVzdIAenhcHyPZZ4ECwwLw3zvZ
         dIB/qqYDeQQLzyREXpp9RNjkOOO1WuipBRBm0hnp1iZGTXzpb9iRC+Akf6BKSgVMKrXx
         EOtJeduiLyBOcSvtzVdVu3DBrwdGvXJPE4VzMeMRagzULNwKHs1XuAQsjXEXSkeIOqQS
         fu/iEjxLkjQ6eqcnL/yLc76cxXB8EBMnrFGQHHnm88bq/E2SR5d6xbucUVoN1Af+vS+f
         quvA==
X-Forwarded-Encrypted: i=1; AJvYcCX6JGJAERdwmD0XJy1Lqguc0TD3TO0bOp8pyOHwjdUUNBh7sSuZflw/hUcxKLTLVPS+FeO4RMQERUmd@vger.kernel.org
X-Gm-Message-State: AOJu0YxNIVeOEorIEN2/OhaXixnLnzBclV3BsXK5YdnpxGd2KkvWngCb
	DlktX0Dyat0CoS8q+xBB/dunfAA1bsPqN3o9lD5++Rw5TuUsx/GCcAlq
X-Gm-Gg: ASbGncsUm+0T3Nwia5vHAg6CA/yQJEP9gcdeEz4VAeu6DoQnDI0pVvmZYx6J6U3DkaY
	FM3nHN565mhA4ugKPyV+9gpyDyt5r45eneV98fMWTc1iVpCNgo2ZZcmK2mTn740pOmijJav03Qg
	0i0yXc1ezkgodF6blaQDedUyIdX4P49oAaHxGT2TYFbcYtPe+yj9biEXMQPI82z3hCNESRVk5yd
	CIt3MAsRAiEhlphBMzk1zBiTUFJb+3y823AbSQjL8Ph3yxrD/IAUYCXktD7CRCRgr0fWII9pNPu
	iR2BZhWSPeIQnRdfEk9yEvIaiFPkG0mYV3wOOsPPPz60TiE3gbh6Te2E8YEJKU2Eh+48emYjcej
	LP9LBP3vgRDbo4DDf4O9rchbszBHuqlwvQL8UtVZxNNIWb8g0AHcIu+Ka0j+BBT2LeruzAfPYln
	jp98FnC6OHzA==
X-Google-Smtp-Source: AGHT+IEVqNvKS9S5hpOT/qYLHXX7hyjUj6rvW+z7uFgHoCnVtZJK6EaIoHbVUJTxxJ6dp8W5m9QPZQ==
X-Received: by 2002:a05:6830:910:b0:7bf:75e6:5ba with SMTP id 46e09a7af769-7c27cb0a0dfmr6276999a34.15.1760931616913;
        Sun, 19 Oct 2025 20:40:16 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c28879e8d5sm2272678a34.5.2025.10.19.20.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 20:40:16 -0700 (PDT)
From: Chen Wang <unicornxw@gmail.com>
To: u.kleine-koenig@baylibre.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	unicorn_wang@outlook.com,
	conor+dt@kernel.org,
	rabenda.cn@gmail.com,
	inochiama@gmail.com,
	krzk+dt@kernel.org,
	mani@kernel.org,
	liujingqi@lanxincomputing.com,
	palmer@dabbelt.com,
	pjw@kernel.org,
	robh@kernel.org,
	tglx@linutronix.de,
	sycamoremoon376@gmail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com,
	fengchun.li@sophgo.com
Subject: [PATCH 4/4] riscv: sophgo: dts: enable PCIe for SG2042_EVB_V2.0
Date: Mon, 20 Oct 2025 11:40:09 +0800
Message-Id: <50a753f9b8cbd5a90b5b2df737f87fc77a9b33a7.1760929111.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1760929111.git.unicorn_wang@outlook.com>
References: <cover.1760929111.git.unicorn_wang@outlook.com>
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


