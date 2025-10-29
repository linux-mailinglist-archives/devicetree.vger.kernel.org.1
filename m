Return-Path: <devicetree+bounces-232738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B46C1B01C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:56:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F2741AA12E7
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FDDA3451A6;
	Wed, 29 Oct 2025 13:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="a0JFJJ9n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012043469F1
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761745050; cv=none; b=czQ+69ZZmasoC6EiPlnztdj96PMtKTEz86SMfkK2Xf+WClOIzD4i+m6D8fZiNw0Je1xrjj1MYgy2IS4UIAxkgkS8lNoFmO9fj/wUszgYwz/dA74dB2eFtFOe7t0oEi0u214jYw7g1hS0H7k7A+PfSgCb+xwMfzZ0Ph7F0mDhLbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761745050; c=relaxed/simple;
	bh=GZ10kK+pYLUSiMaANpNaBmHbt+19wn5/MQvWC5jgaQU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qyi7c7EIuz4CEr57ckmd4zS3+laBVPLlZ9wQa3fC3AzyK+UnGyjN8bFqY0PwHFBxKdkbVtlolQ7UBRzn+t6fB8T+Znav+ck6e2C5k36PHCqcl0TdTFMAiRYcs9+jamX8sJlpZFPos3gQ4gciAh+SyS89531bfCmkayb6VIuxe8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=a0JFJJ9n; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47114a40161so81918535e9.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761745046; x=1762349846; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=US6TL4WKOMJYPiF+qfjdrtMs7INfn6qweemcxJelWcY=;
        b=a0JFJJ9nJIw5ExDu00WgC5AVmKvQoezQe5B5Tj/XTdMsCpN2bkIpayke9NZCMmLoWJ
         LM0E0BY/nyUcoiN6nniVYJjPtiFypCYZtnkmKbpJ7rPOEZPxI2ASOsMCsU8nycyQZNpO
         g5GQC5/Vw+eRI78sYt2pQ1Hpry7yeBljNcsIi1UcJD6fTFV7eFH53XDlFm0PgQIxUW/j
         U8Bg8dLBEcZVgFLqHlyt+qeLjFJr4FjljmSS2hw4dRY2H9cxd8lRXJIhPkAObqMYefuv
         gVNG2ptY7QxmuS3u0Lv12/vNMs4W60jE5qjkF9NF2wwJra6QltjtfWh+jRlF4a/RMnKU
         JZaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761745046; x=1762349846;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=US6TL4WKOMJYPiF+qfjdrtMs7INfn6qweemcxJelWcY=;
        b=wRrsf3/exF6C9BHBBVTnzZVp+vkZ2HIZJRJkDpS8fsw8ncLIbQYH2pmtNiOvfVPB9x
         6EZn6Jyk0kCmNP7EIdrhqhxP/Rzch6Tdhnw0tx9fbuvTmkbe9Q/zOq1HOJfQL84orfzj
         kg7xqWqSiPVnujWYi7EiNN363Us5qyMM3B6upsQnN6hC0fD9iDVlUU6b6jfn9qr9vZyI
         5+eUzGsg7FwcwppVIRX8LBEqW6pGJAzJnxBUfSWamSsP3awzgiuH+OL4fSSZj366HrtH
         +2ix48Rxi5+9L3giF23toYMIX0mShpDajUq5gQRmfj9dygwFgdsdGaSjECOn8vM1808E
         JDfA==
X-Forwarded-Encrypted: i=1; AJvYcCUgaqi4bi5iETM11qpC/Funi7ebglug5A7g+dpQQ7D9J42ZNBD0/I6pMbFTnZi85DLIvK7LEmMO2/WM@vger.kernel.org
X-Gm-Message-State: AOJu0YyAA1V/1CDztKLpguPy3Lf6SiFQvSkWW0qzcWSH/qZnzLXO2LIX
	pdA4A6sDNmn2ZUb9Rs3IqBhFSpPBaJzFUCNUguuMJjwZ711W0ayo9sLnZuDOlvFWnxc=
X-Gm-Gg: ASbGncsNOA1GmyRtW8fhY1bl91PM4ZQEQyJ+2JKNrrU49nJleuhWm7NkoFEpO83Ye0W
	wfoYExhp8x0jgmRSKx+LH0lj52GpTFtNFGuflK4aCsPSZcX5vUgwcUk4tIwTmowhm3I/+RLoMpY
	gGDwJXY3W+JSggNVkDhUjTuVEfdeCZwOxfE7Co7ME3BuFIih7Dj3yE3RdZ7USU317t/6eXVX111
	BqVC9SebUThzGdjdZKWwPDTKsfRHMmQzSYjidXUfV3p+S9cf4C9dZQomWLBmfU1/H6HqWIO6rmh
	yV2JCqRFhKXfxSc5YWSDexrLOyjydbo5v4mb8kfhiDHCYIppuCLCtV71WOAne0y23vRSlTNBM8j
	mH6GXb2kuWMWfclStW0sQD9L8Zw3HcTLmS17wH9K3jJolTHlJzK4e9npLFwYEy5AQBD+HJuUwcS
	Tr90MHpFHuTX/J2noLdnxTci7kibEoYAuErOdOdVEwR1P5vcirvUU8pVnmoNF9
X-Google-Smtp-Source: AGHT+IEtPz0Owa/uEAi7Mu4+EoNUOeaQ///6DG4yCtEM4dUCCiUVnDE6W6H21Mp9cuh5kJvNRIk1EQ==
X-Received: by 2002:a05:600c:4e56:b0:475:dd59:d8da with SMTP id 5b1f17b1804b1-4771e3ccf23mr25357735e9.40.1761745046169;
        Wed, 29 Oct 2025 06:37:26 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:6302:7900:aafe:5712:6974:4a42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e22280fsm49774795e9.14.2025.10.29.06.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:37:25 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	bhelgaas@google.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v6 4/6] arm64: dts: renesas: rzg3s-smarc-som: Add PCIe reference clock
Date: Wed, 29 Oct 2025 15:36:51 +0200
Message-ID: <20251029133653.2437024-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029133653.2437024-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251029133653.2437024-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Versa3 clock generator available on RZ/G3S SMARC Module provides the
reference clock for SoC PCIe interface. Update the device tree to reflect
this connection.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v6:
- collected tags

Changes in v5:
- this patch is the result of dropping the updates to dma-ranges for
  secure area and keeping only the remaining bits

 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 6f25ab617982..982f17aafbc5 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -168,6 +168,11 @@ a0 80 30 30 9c
 	};
 };
 
+&pcie_port0 {
+	clocks = <&versa3 5>;
+	clock-names = "ref";
+};
+
 #if SW_CONFIG2 == SW_ON
 /* SD0 slot */
 &sdhi0 {
-- 
2.43.0


