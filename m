Return-Path: <devicetree+bounces-232752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B277C1B225
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 988E81AA3A31
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2A335771E;
	Wed, 29 Oct 2025 13:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hgLu4PU5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2976C3570C1
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761746182; cv=none; b=pEEJZzqWcukhcU0kQEu0Qs4fpLUNQgdk3W4h/PVZ68qwm/+Zoh011UZTmT5QpvhzHotpsUoPlMR2dVXrCnjFdNMW6I72TlLSc1QynSJP5vm+aLU/rNwQdq6ZAOUN3EhshmmllXdEx8GSCq+wlJr5/YO0XWsZwbbwhL78I5r1NQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761746182; c=relaxed/simple;
	bh=1SwFiJpxAb50wR90lDV9GpdBP4ZnluzVr2Oqr/5Sic0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rp4EPuvUIwY055SK1grF3erxLqm7IQC6fJrg68Jrl2bHUwN8ixkq8zRxPihL3pintxGpLuCOSZoZUY877FdxxM3QbfrKsYxDYjPtR3YFS3ynWLuVY9Zr6PGyBb1SH/eIskBffK+3C0E3+2IKK7GD1CFffMTh4zNN+t5jp7whcvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hgLu4PU5; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b6d5e04e0d3so449994666b.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761746178; x=1762350978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j0cpIgxLTVdTLX0iNNMuhpQhnr9g2pYoxLx5ardGUNs=;
        b=hgLu4PU5YBghE+Bva5VnUOvc5VBOgH+VZGzwdK0exUJACfOFNEArxwR9T7Nj7JAr9e
         BdCNvEyOJ2EEqj27dz1vS1ONW91GtVrbRlKBuXvAKG3M04vh8Bte5+3d837FsrTc9hVf
         sZc1fLDVwucMViW6r+YeUw5JuoPTBAaOrZPXH9ZItn9qfBLrl2FcfZiLrvKDUZC7/cX3
         UiCMnMFEWZJLn6kC8ufkhyQqZ7w5zMq/HICTesCGYWD+ZeUywDvL5hWk1JgScbVm1moE
         ynbuytIcHNVKeAP7LVLBeqRxALjNrG5GC+HLO0p5t8IGHb8riLIjrtBL+3Hw6hfAyxvR
         feyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761746178; x=1762350978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j0cpIgxLTVdTLX0iNNMuhpQhnr9g2pYoxLx5ardGUNs=;
        b=FTEQdzdPR7MRYZtv28UUmzsG2CvNpggqRU97FFCZkfKUsHH2vMlAm/tfObHfX7yINA
         IGpuQTHNQWgyiApnkox/4cW/8dVVcFvB9NUX26Eg4qBO9fL9exjXOMFB3o38cTaIVNAH
         VaUGeZLT9unm9VOTG6i+jj31goKXpyNhg8SZk+8X/o7kg2gGdtLDuOlMUWFhWgxQonvM
         sdoHYQyqTF0pCykShSPA+wrOqNmpA3Bwm2PCWQvezF7q9k4sp2671N+T+6KwNP915q9E
         4QJj+IHHOtDNbcifkNUUiRJTXQ9lhlARJGg2Kq8eyqOvQlRo/cBFWLHtYzayzwl3lBwS
         9XZg==
X-Forwarded-Encrypted: i=1; AJvYcCVea6es4M8ZWrVg3hGntbUkFQLFpaeNaHPKP9bwVJQUf5SroVBQUBBKuR7Sv9kTz9BV+TPZhT9qJptJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxItkDio7UqFu7vSlxn20KFzh8YHGPOaoFLbh28c3AYKwJ6p+Fi
	RYMiqko9PVMJT9bbkwaDjt2bVHxXbJMy/aKVhPf6Rf1gjGST+3O6xhp2
X-Gm-Gg: ASbGncsS5zx90DW6vaTQWM0MckaGWwHy49zTkq+rCS6N3nHV1CTFKMPuxmhyofnvR4z
	hdLglQM/qwgS+BZFWvAVuvFlgyoKqTreN/nrWc7M2eLCmCT1/C2+IGbNh4MRf96FHsEz7fcTuG0
	wvl2vl/jzhsuH6uh/LQ/MckhnlLX7nv6b5Twlxe6b5OTlkqZL/6YFppuUn4LvZq3MbNIG1zMJKW
	8fDlN97b1mUV9nPwHEaHbEVAgXIRJ8oct0twpkeaSEUqV/ziz+JDzhgNL7c/jVr0FhtFGtHq6fR
	/oncNTHvDn8Ob5BtyK23VgpTby3XOXU+6U4ltYTQA9k6SyfyfnhGxGfB6PkxdcA7QOezNIo7AFM
	KMoAenvCEoYdfddgn4gjuAmvh+TehlnxJdS9vgcTY/fHl1JA1m6Ke50XhtK0Uj7vqIrnlt4oEuZ
	IaIJVkoDuj/09KJW98deFUY7QYbw==
X-Google-Smtp-Source: AGHT+IHh8OQ9HuceV0x8UwkKlSqVAt2/vQfWGgDAkzGZJb3jVpWZ2ATrrXxIPTpiHa8TEAAPPuvBtg==
X-Received: by 2002:a17:907:ea8:b0:b6d:55ce:fd29 with SMTP id a640c23a62f3a-b703d4d6347mr263106466b.34.1761746178397;
        Wed, 29 Oct 2025 06:56:18 -0700 (PDT)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8534d99dsm1444960766b.21.2025.10.29.06.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:56:18 -0700 (PDT)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 8/8] arm64: dts: imx8ulp: add sim lpav node
Date: Wed, 29 Oct 2025 06:52:29 -0700
Message-ID: <20251029135229.890-9-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029135229.890-1-laurentiumihalcea111@gmail.com>
References: <20251029135229.890-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Add DT node for the SIM LPAV module.

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8ulp.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
index 13b01f3aa2a4..9b5d98766512 100644
--- a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
@@ -776,6 +776,23 @@ edma2: dma-controller@2d800000 {
 						"ch28", "ch29", "ch30", "ch31";
 			};
 
+			sim_lpav: clock-controller@2da50000 {
+				compatible = "fsl,imx8ulp-sim-lpav";
+				reg = <0x2da50000 0x10000>;
+				clocks = <&cgc2 IMX8ULP_CLK_LPAV_BUS_DIV>,
+					 <&cgc2 IMX8ULP_CLK_HIFI_DIVCORE>,
+					 <&cgc2 IMX8ULP_CLK_HIFI_DIVPLAT>;
+				clock-names = "bus", "core", "plat";
+				#clock-cells = <1>;
+				#reset-cells = <1>;
+
+				sim_lpav_mux: mux-controller {
+					compatible = "reg-mux";
+					#mux-control-cells = <1>;
+					mux-reg-masks = <0x8 0x00000200>;
+				};
+			};
+
 			cgc2: clock-controller@2da60000 {
 				compatible = "fsl,imx8ulp-cgc2";
 				reg = <0x2da60000 0x10000>;
-- 
2.43.0


