Return-Path: <devicetree+bounces-4434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3B17B295C
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 02:07:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8D87528257F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 00:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDC0919C;
	Fri, 29 Sep 2023 00:07:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97CD915A0
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 00:07:45 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 427AB180;
	Thu, 28 Sep 2023 17:07:44 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4064876e8b8so33732875e9.0;
        Thu, 28 Sep 2023 17:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695946062; x=1696550862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QykmGOhFH5Jg2YbpjBw5TT8uCu2shmkEPyDr16ah5mo=;
        b=gzZNZaN9YLQXtDOgmzrITqdifrwrXZtF/B2/wdcbjbhKI1cwZ42Oq4K74l5zlB3Enc
         ODVidH1NDX/RvcXIyhmu7rbuNxB8IKN1JEajk7q9+ONkZaGg9Zlou8iQG1gH1iaN5ssa
         HMGSVVhmTDF7QCZ64Fs4nJBOfabD0MwHWBGHxnYI9ZFeQ5KmzukInNjRdf1JnVZbPckZ
         pW+uvrhAhNZBReooCHggAcgpo5llwE+h0vfcNu/aok0EKEKb1loE2FnaOVlBnruBYf6v
         uj1215D8zpg6Vh6+qgh5qmsp+P47wPpk8bjm97vCzF/5UCgI1+63J/MiYk8M01A6l0C5
         FgyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695946062; x=1696550862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QykmGOhFH5Jg2YbpjBw5TT8uCu2shmkEPyDr16ah5mo=;
        b=RcPFumi52wFM6kfbbKRXOrD2UVlCbrNowORzjEwlupDA+FU1FVxv3RgicTAsL/nD4G
         OFRYoreInaW2lbDIG9HP2dT4lC5/ovAJoBNMAWPUuAOBmPaKgD1/9HJRaJse955nZalt
         EniLJBynJacb6SfoQ8UrakBLbCEGR2IqTHQLefiucR7LEffyLodT2ZWM0c9bHNCKc91V
         KHPvVBz7XGdFExbmwytIN1LFV08R6rS4vI0+V/ugUorY/fHdltSHhWc1dqOek+gR3RqP
         SLv0d8lxr6G3SYf9rfHKzbyhMIx2lIO9Tak+bIuVX5XqBsV+YyTbimLDwDusaHniCUc9
         qaXg==
X-Gm-Message-State: AOJu0YxH5p4lC06RCDMVIdTCoyfwQ5XQnwpdxT/oUu/Te6KOiKBkG0wN
	KdVfsfiQfKnmUDo51a39YZE=
X-Google-Smtp-Source: AGHT+IGcyD2e2QJk+LbGAQCmTqrP38BeiU/fWbbAOj645xzShm9qaJzxb8HaVmLacKAeJbhw5CVjJw==
X-Received: by 2002:a05:600c:21c5:b0:406:45c1:a657 with SMTP id x5-20020a05600c21c500b0040645c1a657mr2522204wmj.6.1695946062630;
        Thu, 28 Sep 2023 17:07:42 -0700 (PDT)
Received: from prasmi.home ([2a00:23c8:2501:c701:fe98:5e2c:1821:4cb6])
        by smtp.gmail.com with ESMTPSA id y20-20020a7bcd94000000b004030e8ff964sm245667wmj.34.2023.09.28.17.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 17:07:42 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 4/5] riscv: dts: renesas: rzfive-smarc: Drop dma properties from SSI1 node
Date: Fri, 29 Sep 2023 01:07:03 +0100
Message-Id: <20230929000704.53217-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230929000704.53217-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20230929000704.53217-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

With DMA enabled audio capture/playback has some echo noise. So for
now switch to PIO mode until fixed.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi b/arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi
index a8573fdfd8b1..85f96e24a96e 100644
--- a/arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi
+++ b/arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi
@@ -6,3 +6,8 @@
  */
 
 #include <arm64/renesas/rzg2ul-smarc.dtsi>
+
+&ssi1 {
+	/delete-property/ dmas;
+	/delete-property/ dma-names;
+};
-- 
2.34.1


