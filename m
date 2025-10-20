Return-Path: <devicetree+bounces-228562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41012BEF310
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 05:33:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E16151898D05
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 03:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 471422BD035;
	Mon, 20 Oct 2025 03:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GfyndtTF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E473426B2CE
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 03:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760931188; cv=none; b=VA3NfOPdLUPXf1tFuauwhz+dI+GK9ZMX51+FbRy0EGO6o1+22pjEEe/UKXattVD2XS2zygbxrM68S42QoE66KPg7s4hn10M1HiCli5cvt3r3fj5PtsSCeCksaUawFtA7729N36qvXeeXV4Ax6+F+Bucb5R0MzneW8Y0iyZMcFs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760931188; c=relaxed/simple;
	bh=21dD031tGAH9diIPRFJcMBeyJ5+2PaqTPis2r+LU094=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=mm09UXxJc0SBz4e2pSfbnfJwjYjgbD+8AZyH5GHxY1UjO9yZWLXDdiFHfADuS3BkPFXgeN7JdDOQQotetPI8gSFtars1TkCGdYhf0ZRD8Xnzp/MOEyOisaY2Uc9+q8S/zwVIrKs4nNYXLluUzYCYNyRe6NfBRSabbUo/dCnuLlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GfyndtTF; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7c27698fde4so2342472a34.3
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 20:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760931185; x=1761535985; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=TM+5sZf5OooBDgSucBoXLeOFjPqmBCLK+QVbvsF8E6w=;
        b=GfyndtTFNrAF7WIXhe1fdSw0mmXehTJ/Q5htpm2usCaa91n2EmKTw55y8S7UUf/vTO
         hyQLBmt8HWFoXjOGRigC7NrHBNFgw5mTNx0ynkrE8w1UCB/o7iY/ikp2Z7PwXoe2riUV
         ornpPIG0z9HanrKoTzuSjGrHFJTR9AUjOy114VVY48k9QDfP7mB52nl1Njwh2ll3Zcc5
         UrLgrcE2YBAJEgFAB9/TUbImAnw9U6E5yJFE3chWq0GSIqPfBvIX5sdzwy496J7ni5UW
         x4EV5jDBUtHmAKdmmpqAKihmcn/gvjO/TN0IlWECnF7hvKQnJn24c+PAQH18fwwcohsM
         eeCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760931185; x=1761535985;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TM+5sZf5OooBDgSucBoXLeOFjPqmBCLK+QVbvsF8E6w=;
        b=O5Zeo5qP2FI+wBEBlDWMUjMK1cWdwiz0Te11OnE1QhOMK5EUGP7aHRvVOINhuYeBfP
         x/tr5SGjslxMzR4iFCLPtw/9aazo0Vok9Q8Bmx9tC8NDCbqAYgVxGelddWzbkrRVn7xM
         YVsbbDlyoUZTDKV+VTEi7O3WAKGfYZtibc0TlsgcWlFrL/WjJ+sakImkMKuffDnjQ6KU
         V+wDMfyeIh7cp4iRtNbRyBxr8MUO07J5pfidvUwOeL1xDFnads7655bVChSyGAQyuedm
         YlOkLpePYUL0zjEMYD9QJwyg/grmHrWKwll3gP4itkimCyvVVoaUuxAZv3sEccG6iXyL
         M1eg==
X-Forwarded-Encrypted: i=1; AJvYcCUMTjd5dyqLrZTHFC1uaojmbNgYlw/Cc6N+yHhIWlzbzI1wEzGBFyvWK6ochKq1tl7SGutj1QfJLWYC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzyp+ukySCr6+l2tcg4S6GYZLIPkY9g8AwJPe7IF8hePXbCMF1i
	UVBSRKUtGa/c2Ar8R8+nlmIvJx9l0dEWeQdKG3hWvQ6R+2bymiR0GDSQ
X-Gm-Gg: ASbGncvt+gmmsDrXkSBafDI3uAbQCygTZuiHJug0rYaOICSiGeEFWpSFmqk7RApHhD+
	21bJRr8YyTiJ/v4QIBRr1lk/mL2VEZLqzgvE1Qpxfb2RVanLHdToW45h79KhMq0gBfaB26KvTd+
	xhayn8J+S3tIiDtaQGKS103dBgA0d8Iy4iGaSJ6eWrKwdQ51fLqZbeL/oaYQEQCbzD/TtQS6/R1
	oPo94AjS1NKb6sMMoZCoqXUOi6wgnvEymS7BLBv9D8rrw4QoYJFQAoOrSz1hdpFkBfxXzXlG9Kg
	d22vVctbPCuHgRZcJhMKOFK9Tyswtk9eCJnAmoG2zUOVD74D9GINyzisuu02DyurVforPuQuOAt
	zgByjzGOBH+aDnrlQJzeT74tXkXAoAL350oQa6Z9PrO+scfuqIOy810v6ciQ6uHfVYKcEglELni
	0psLLLmAC91g==
X-Google-Smtp-Source: AGHT+IHSXRKU0H/Tj60xds+NdCJx8dzbIdYpjnBVmyNb0yUakAI7tZidFBFo9vJrXoitO39gS81lLQ==
X-Received: by 2002:a05:6830:3895:b0:7c2:7b5e:8cb2 with SMTP id 46e09a7af769-7c27cc4be1emr4547628a34.30.1760931184891;
        Sun, 19 Oct 2025 20:33:04 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c28890e24bsm2244146a34.23.2025.10.19.20.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 20:33:04 -0700 (PDT)
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
Subject: [PATCH 0/4] Add PCIe support in DTS for Sophgo SG2042 SoC
Date: Mon, 20 Oct 2025 11:32:55 +0800
Message-Id: <cover.1760929111.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chen Wang <unicorn_wang@outlook.com>

This new patch set is a continuation of the previous patchset
"[PATCH v3 0/7] Add PCIe support to Sophgo SG2042 SoC" [1].

The drivers and bindings have already been merged into the kernel
mainline, and this patchset will focus on submitting the remaining
DTS changes into the mainline.

This patchset is based on v6.18-rc1 and the only changes since v3
is a fix to address the comments from Manivannan Sadhasivam to make
sure PCI address of the I/O port to start from 0.

Link: https://lore.kernel.org/linux-riscv/cover.1757643388.git.unicorn_wang@outlook.com/ [1]

Chen Wang (4):
  riscv: sophgo: dts: add PCIe controllers for SG2042
  riscv: sophgo: dts: enable PCIe for PioneerBox
  riscv: sophgo: dts: enable PCIe for SG2042_EVB_V1.X
  riscv: sophgo: dts: enable PCIe for SG2042_EVB_V2.0

 arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts  | 12 +++
 arch/riscv/boot/dts/sophgo/sg2042-evb-v2.dts  | 12 +++
 .../boot/dts/sophgo/sg2042-milkv-pioneer.dts  | 12 +++
 arch/riscv/boot/dts/sophgo/sg2042.dtsi        | 88 +++++++++++++++++++
 4 files changed, 124 insertions(+)


base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
-- 
2.34.1


