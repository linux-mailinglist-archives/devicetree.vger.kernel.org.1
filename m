Return-Path: <devicetree+bounces-134411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E07E9FD630
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A25D3A22B0
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F1EB1F8EEA;
	Fri, 27 Dec 2024 16:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="LsWlJDwd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BB11F8910
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318660; cv=none; b=CTrNErstsxsLtVMU/eRlcVKsTMeydnd4V+3HexiROi0KU3urJj7xasng0zW5EImM+u2SFnfaX39+WIPq1deAQfrgOxNI3f5q/WV5lHj10YSyl2QsrZ5DTfP/Q8CHFMT5wPMgU3ja6JrZ5IkOG6x52k6IDs5QSJ3NBMozTrJZn7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318660; c=relaxed/simple;
	bh=EfuJYR878rJ4Cw+YuO97nDjgeWj+F6WJVMj2hzhOd0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C6HupRhBH5EpV11JMoxQXs4y7+bHrWMB3G5L/9IiD9xxvWk/79WLhLTm3LglJLjkeZ/LIwHr95u+g3Nty/v8Fu4DVJ/YITcXwGkbayHomeEsyZFXthaPCU+XikMWtqTI1s/Iq42IeoRziboudOt5G8siertD1yvPioQTOYy9pMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=LsWlJDwd; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa66e4d1d5aso1195220666b.2
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318657; x=1735923457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=LsWlJDwdauQLdhr7odF0Ra0Qna6L11YP0kYKOG5KuHZ8BBTDTKK+xoi06Vq3vRayfG
         wEwIbhb/1VVnx/kP04J+RHe7a1IJ4jsgFyszVUX4PHl09NztjTwWMNywBL+w0Ct+Ckzj
         wib7RNzU06OLywHJ+XNC3TLEAci+OC/dvoTUQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318657; x=1735923457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=YzQvNRTwDt3E5WpT0yNsgbCMixNqNU3847tfNdNH+QUPhG+U9GrRRAn9wFvSsnWbRm
         ydXSYDDQyu95EbeN9L3gLjBQNRN03FL6kUDIsrezwSLFRhCdSMkRbjk7rkBwHcZt8shP
         pqfMHyud/RZ5l4n2dJkipHUsuIIuhnzeuYgl3lmV+uiKh2oQRGA+hliyB7+TeP+yaWMV
         FWrFHaio2InQjBegB0BX1a0oGoo8HLVZqvjg9evXwGmN1HzYbppz/1dDQp/pmRTgzWUs
         Cy3Aq2rVbEjwppqcjRzrKVqd6xZgfWU0DRyoa2RbnPQ1rBztozB+bhgsF/J9ylFzef2h
         f8yA==
X-Forwarded-Encrypted: i=1; AJvYcCUnbDtfjnpggmSqykZvofW6nIUONyxoVj7sEAV71VWJBT40UWsenVKAPyfi0fAZTIETW8QvA9xHTGWS@vger.kernel.org
X-Gm-Message-State: AOJu0Yya9A3JaoZR2cydH0R5BI/jp5YxbSOCpTdYu4R0n7KJYPcg07MW
	gZjRArfhM1nPog25Vx81qhkFw+yqrhApIoN72hLsz5kP+xuktIVeneuxRQ6Fzdg=
X-Gm-Gg: ASbGncv5525bJ0f5F3zN0qOWjNmeKQCzxI+uL1VmNAtzIOy32xjCIOuTDGhAFjRRfr8
	McAZaVPHyw14pJSYEFcQhHarn8tp0f7FkACgDXb/EfcwsHzA40Aw1BqKq6b3HEPUxQ8UljLyCUG
	NxwHCu0iQ66w/QNsJAU7tfEHaDsoVVMFMfFeXLBA+ldwibbHZm5utrvPkeoRKMuoT/IVHXRIokx
	6eob/RmmdwXycf0Pej5WvxhAQ4QJkEOCy8OxWZU4SoEnLc1rL+OAwuF9k5xWKA5f9sfKJ6B6bAS
	WJISlB4SsBOUizoYle00zQ==
X-Google-Smtp-Source: AGHT+IHqEpKvPrvAcl6AfnqPR2zMpwbkTUBZZsaRlEKFV18gzQEhapMBi6kOkudHyHxl8CuL5KGNTg==
X-Received: by 2002:a17:907:7f92:b0:aa6:a87e:f2e1 with SMTP id a640c23a62f3a-aac3378ef88mr2400967166b.56.1735318656917;
        Fri, 27 Dec 2024 08:57:36 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:36 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 08/23] arm64: dts: imx8mp: add anatop clocks
Date: Fri, 27 Dec 2024 17:56:11 +0100
Message-ID: <20241227165719.3902388-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index e0d3b8cba221..0b928e173f29 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -709,6 +709,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mp-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


