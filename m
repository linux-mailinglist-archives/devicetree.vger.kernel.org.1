Return-Path: <devicetree+bounces-225549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCC0BCEE38
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 03:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5475189F555
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 01:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B95C13777E;
	Sat, 11 Oct 2025 01:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O40rllHy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99290323E
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 01:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760147318; cv=none; b=juyh65oQ9WRwIu4VZZJfGAe/E7WYJnhCmqpyPr9gt4m17aOLkuDthkV1eAzMH2NaN8ypsqljR4G8GWBxeHdl/C2cQfuTMgk5cwS+JeEXJ1PRjFoSub22hcuiWUTK3WDGkwFHJrN71ZvvxJ2d6U1KVEX/LeIKM53goEPXndnk2bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760147318; c=relaxed/simple;
	bh=De7XYB6QHWScaXMrwuMMJ+W/6CHJ7mVgZNt3dfyxcgs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Hefd5X5x2I+E+mMad/GPd1MKChzZbpFrwLLusIfHD4W8eAbV7ZBtBbd+L0zmuy1n0BX2LjveSLpIOuumYCwXLKxZVnw+xFc4ThxUaf4YIO/r+eoRYxt5UfWtfJu9jJPPHM9PA3AwHxCAlTtrF/kgJhJ3t944j7ywso1vM+JPpo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O40rllHy; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-7900f7f4ba9so27977606d6.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760147315; x=1760752115; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dq1v/Nf3lHeaiUxgTl8qnZzG8T6G34OVI2HiAKdMAek=;
        b=O40rllHyskqQbefLQBAhUpJ15KoM/nBU70kiCPnQFdnm2jFZXWwdkd/uDzoQOgxOPw
         fOzl7qET/KP+seBf/d0NUdlmMRslsXpYma0dzb+cqkUze17XO84VCg0s82vN7M5aC/tM
         ovWiAYmUS3t9GEPS4eIVr88ecseA66UNGMLv8OPUdZUcsp1KXNsKOQUoEHWgkyFAOR4D
         xNNHagWWSNu6oNgDu+W+htH4DC4ILCyOgRcTn4RndLIHca1LLJu9Rb2V45V/zheCLX6t
         W+58k4L1NDm7J73MGHERTI+U+mgCsupF9OXl5PrBnGWqwdv61rltwrcwTp2X1G3rJUHV
         qLQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760147315; x=1760752115;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dq1v/Nf3lHeaiUxgTl8qnZzG8T6G34OVI2HiAKdMAek=;
        b=KPenPtwxeqxPyLEUELh+FeKWWDilWQPlTGoz8m6Mthevko+emSFP/Tky17AOBCIYm4
         0244Nka/MjaekmtJ2z8o+FgzOk0KQXaOK8h/mUkKJRKG/3Ietni/wtJ+3wfWzAHQ3KfI
         BX9HGY7987Ov32t9YyHf+kMFlJu7NuM+CZGDHLv+nIMjDF15hpNd+Ik6CLZPeWmjac1L
         s/eWyHcEbCc1nxtx/lCg5bJz0iNGoBB3MRvDv6vpNITWjknc8Pa8AR3zhpK+0DDsR+VU
         c+TW2IZWE+ByWqTrE5KEKP1f+2vl2wGLm/cPDGqQaf3sRKJIIGQAUjArCqxT1YMYH0wr
         IbGA==
X-Forwarded-Encrypted: i=1; AJvYcCVZoOam5m1DO7UmhsGIHsuWMcnfwaL7bggSgttmMQ3KKZ5MDvIn0a/dC8RV9aiiF28PvHeL3GwtphKJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzWSaKkoeuC3Lz8BET1X5YYXAdfOYQIcsGn4jbmw8WJbdpOSIzV
	GFPN0a1X4WuXntkguzbmgpxchg1M3JK6ajWS13MOxVeEWnZolfLRhMe1
X-Gm-Gg: ASbGncvqpvuww4FmDwiHME0TnmKkuBR3Drt1X43DF/QvQ94Zd3bXWqeB9Et8iiodJZ0
	JCRC4FzVsg6ZpQwRjfZwTE/99+uGUdyd5612PvEkZqXGOiEL18N6k5MDTA6o9V8ysFbxsK7sWGk
	cZ4vyTArO+D4D72csYgQZiI4aFnVZiilYtcytMVHLSTLJnZULYRhJrXw6pfuS/vwQCr2a2DB+uS
	S78VEi84SRjKRHt7JW7+od3VOTKp93OQnJfX3RldnpAY4U0jPIjcaLqkt4vFDsebQ+qPbbsiDii
	7WvQZBKkbv/Lyp1rG8nruLbPg9yxb7OltLQM/lR+PIih6EISxEPXBmjftcYfiJAupa4omLD+2xR
	/hqcy0Torri8UWwOJ08WgFjIuaFxD/0zRkY3rFl0KdHzTDisHfvUNzPRY1l7M2SwmOyilnu3a6u
	n5B1yi6BqEPg==
X-Google-Smtp-Source: AGHT+IEJw4orlmJ4tYBxRoLE7eRi8PKUBgmmkCLHKFSaNSJu+ZXO6O/fHEeJK38T18LVEo4ah+bedw==
X-Received: by 2002:a05:6214:268b:b0:796:6034:c0fb with SMTP id 6a1803df08f44-87b20ff9e9fmr191000946d6.13.1760147315339;
        Fri, 10 Oct 2025 18:48:35 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87bc3574e71sm25978806d6.36.2025.10.10.18.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 18:48:35 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com
Cc: josh.milas@gmail.com,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: soc: sophgo: add Milk-V Duo S board compatibles
Date: Fri, 10 Oct 2025 21:48:09 -0400
Message-ID: <20251011014811.28521-2-josh.milas@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251011014811.28521-1-josh.milas@gmail.com>
References: <20251011014811.28521-1-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible strings for the Milk-V Duo S board [1]
which uses the SOPHGO SG2000 SoC [2] on the ARM64 side. The RISCV
side uses the SOPHGO CV1812h [3].

Link: https://milkv.io/duo-s [1]
Link: https://en.sophgo.com/sophon-u/product/introduce/sg200x.html [2]
Link: https://www.sophgo.com/sophon-u/product/introduce/cv181xh.html [3]

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml b/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
index 1c502618de51..63773811b80f 100644
--- a/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
+++ b/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
@@ -25,12 +25,17 @@ properties:
       - items:
           - enum:
               - sophgo,huashan-pi
+              - milkv,duo-s
           - const: sophgo,cv1812h
       - items:
           - enum:
               - milkv,duo-module-01-evb
           - const: milkv,duo-module-01
           - const: sophgo,sg2000
+      - items:
+          - enum:
+              - milkv,duo-s
+          - const: sophgo,sg2000
       - items:
           - enum:
               - sipeed,licheerv-nano-b
-- 
2.51.0


