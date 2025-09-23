Return-Path: <devicetree+bounces-220460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAC4B9671A
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 16:54:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 949753AD6AB
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 14:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72A79242D83;
	Tue, 23 Sep 2025 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="EA1ZpKqc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E31623A984
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 14:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758638967; cv=none; b=ucu1zHB/UWjC2O/DsaMDwPcloGbLcOw1SSc8TTr0ItYJmCZaBogWS1rtxsqoJwEN5kSY0cKFELQQahnZjPXEonTGatbe75yumRFJRXG7ZNLhn8b3jsNkBSQ3r3TkR6hU3kyfCtiuFonf22Whqfvn2kcq5tYpsbr1YewPGiKtoRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758638967; c=relaxed/simple;
	bh=DNqQwxK29Us8xfmOHYcY1uinDcMdwRcq4PUlWc2Tuv0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rY5W+V5Sy3DsJDVcRFVOwc2pQFBuaR5NcqGZimFboeHQbg7P5l/zbmdC0IXozmpeWzSNMCOz7IIhioxmHj8ylSS5U1rI2f0hHYR0+/HIwStS8RlZ2Ud+JG8Y5yWB/f4+L2t2pz7OuVgFaSQxLvy/NHPJK5cn4lx+PXpRO9JzZLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=EA1ZpKqc; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b0787fdb137so880701966b.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 07:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758638964; x=1759243764; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xur5ogzlO3BxY7k/WpoKiidJ69mrTNy6lGE5CvTWMk4=;
        b=EA1ZpKqcLVjvLr7gkPplFePyPjUMD7JuWm3xMlkUBjARo8zGY4AM8SEk9/LfUsxZzs
         JEW8YQpeIfII9ugr0Bt+yPcgPq2tCpazJvgcN1vZ3U4ctQQ7p5SfF4Jy97RtT06fiJIi
         jR2jrGBwNkCkDDff9no2VkqvZCL71LXZF6KSE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758638964; x=1759243764;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xur5ogzlO3BxY7k/WpoKiidJ69mrTNy6lGE5CvTWMk4=;
        b=dQ0S94PAI544UF95VIjwStAGqGSHnLny8jmxMrQMMy5sZ5TNf8xuqeL6+x77ZEJoR6
         DceN25DOgSrvuJIdEr6JYWJvwj1g1snaVO3fkK0f60dW91LzAEi6QA9vz4+i8ciVwLS6
         KeVZsWO5lMXnVjjyhf2RCQr5vjJ7PBW46Ym5DVleVnMt4pOy2FCmPZCIUZsRNxch7llM
         ZcDt6yB8sHFlYg30UUXx97twMJGLoKj9bvoMQgCinaFBvA8PSMOBfFoHh/v1Y/zT0ikE
         mINAtgYaTfwO5O01jvI4ygdt7DRWXFMxjv8xhJYuB9V8ffzyjOYmtTH5pOBeLCslZ7jQ
         /srw==
X-Forwarded-Encrypted: i=1; AJvYcCXY4/brS4mnu32+v6+E7aMTv8n80GBx5gGlGfuGo9FqW7NtxP4aQ5AkFqOKPCWYz1/qOusWHx+kPKYt@vger.kernel.org
X-Gm-Message-State: AOJu0YzbnSK02n+CCAmDY/d+hZhZzWpazfvVoN6/zZHY/stesWjgMqye
	DKJ6B59dfs6xCDACUnrQtZ5gMsyK/dYumsKTKAuOefajMfXg6uxuvruN6LVcB+rnaOY=
X-Gm-Gg: ASbGncvKinZrzR5AMnxUoQO3MdeKOPtCJCfmsHZpPyLbUNteWFpg/UBu8Wr3ta/nX/i
	HKxDXBShAwfL7nq29IRwfKNIqjmrf3POPGTpEMTlLFl89q8ve7wjkgYPg6vgdLQ7QoVOSJLUroe
	x9hZX4M/1s7SbQpIBiBtcvQknwZkrZmm3oPyTiEu38Zf7P1+xcAk4Q9Zov30BZ6m50oYGatI9I/
	J3EXeLYleNLj64HTBDRcMURIJ1VjR7ypQylK9nVHTUfh1zhWVdT6g3Wl97wYD6ADIuwmogeE5XC
	g7eH0XAluj+rag2A8qgkJSy7owMeKtCFBUFDvBMDkD2rcLInO0dSATbapJQq0Uj2/1SGpA2LPhh
	oYEQ7eO/4g7iFROhp2P1AhHuCtnlTcu1I8I+wINTYUXvidLkzf2Ua7uSqtzt+QpATcWhv/nqDfE
	h5R1eZY+Vcrp2Uv4hvE80zHlHqZ3GzvmeZYcohb/mzLcVi+fM6dd0uQJKb4w+GTR/M
X-Google-Smtp-Source: AGHT+IFdTyE8sOB500lABprpHvm3+W8fwHKLli2EEJnbWm8PCy1bRjTjWqFurJ5b3114azHIHI936g==
X-Received: by 2002:a17:907:3f92:b0:afe:87bd:da59 with SMTP id a640c23a62f3a-b302a07b5demr278688766b.42.1758638963797;
        Tue, 23 Sep 2025 07:49:23 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2c0e7f7b01sm515746166b.91.2025.09.23.07.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 07:49:23 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frank Li <Frank.Li@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [RESEND PATCH] ARM: dts: imx6ull-engicam-microgea-rmm: fix report-rate-hz value
Date: Tue, 23 Sep 2025 16:49:10 +0200
Message-ID: <20250923144920.2858693-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The 'report-rate-hz' property for the edt-ft5x06 driver was added and
handled in the Linux kernel by me with patches [1] and [2] for this
specific board.

The v1 upstream version, which was the one applied to the customer's
kernel, used the 'report-rate' property, which was written directly to
the controller register. During review, the 'hz' suffix was added,
changing its handling so that writing the value directly to the register
was no longer possible for the M06 controller.

Once the patches were accepted in mainline, I did not reapply them to
the customer's kernel, and when upstreaming the DTS for this board, I
forgot to correct the 'report-rate-hz' property value.

The property must be set to 60 because this board uses the M06 controller,
which expects the report rate in units of 10 Hz, meaning the actual value
written to the register is 6.

[1] 625f829586ea ("dt-bindings: input: touchscreen: edt-ft5x06: add report-rate-hz")
[2] 5bcee83a406c ("Input: edt-ft5x06 - set report rate by dts property")
Fixes: ffea3cac94ba ("ARM: dts: imx6ul: support Engicam MicroGEA RMM board")
Co-developed-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
index 5d1cc8a1f555..8d41f76ae270 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
@@ -136,7 +136,7 @@ touchscreen: touchscreen@38 {
 		interrupt-parent = <&gpio2>;
 		interrupts = <8 IRQ_TYPE_EDGE_FALLING>;
 		reset-gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
-		report-rate-hz = <6>;
+		report-rate-hz = <60>;
 		/* settings valid only for Hycon touchscreen */
 		touchscreen-size-x = <1280>;
 		touchscreen-size-y = <800>;
-- 
2.43.0

base-commit: f975f08c2e899ae2484407d7bba6bb7f8b6d9d40
branch: report-rate-hz-on-microgea-rmm

