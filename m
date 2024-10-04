Return-Path: <devicetree+bounces-107753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C55D98FEAE
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 10:13:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1B58282A2E
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 08:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 944C813DDB9;
	Fri,  4 Oct 2024 08:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LmeB0Dk7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8DA13D2A9
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 08:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728029570; cv=none; b=ARQtBb3A7nhrU4A7vunQoowxSo8Pp6ug/wEdnTdC1KTvGjOPJXkqig1LfBMvFdNYRKlNlVQwp++MnBEJ/dIBFt3xhKg8aW2P0n73+vx17FGWI+3v0SxoHZHEeG1CeDmN5jvqU84XxeJoprpruSgLeBCjf24w63r9l35SDZcPBlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728029570; c=relaxed/simple;
	bh=2FE5Szrtx2z+QOK/4TmvKwIbSBj3Q+NVD/05cUMaC3I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jFVAaTdU42de/EUL3NtP6SNCTgCL34vQ+B59T6eOfWIKQxnCn8ybyNLBaMkMi7pmgeiuZuLdPxE6tZFmr9r9JS1Z1SJNWs6tsNDR2CYLcDf2Ln4iV0dskBvdcBFNDKxpEmLLi2En6Vn2yX77hPQkYhigPyjlJWZ+lrF5EattJTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LmeB0Dk7; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2e077a4b8c0so1341021a91.1
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 01:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728029568; x=1728634368; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8gil00WTRUs28RjwOxxPhf1SQACB/MVsyKZW95qYNQ4=;
        b=LmeB0Dk7Uelv18Fa05kmyhREI5GaJ4zazzEXAJioIPGE1I0kte5XInJHnk8SjOvVk5
         qYeC4BJvAlCFAXpNlAmZyis1dChFguXnwW79/3QU3yFOtrPlnfKBK+rV6IcZHQqr/3vc
         0Z//qkEWXJ1DePesa/3aM9N2J+J96O1K6zS90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728029568; x=1728634368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8gil00WTRUs28RjwOxxPhf1SQACB/MVsyKZW95qYNQ4=;
        b=A+/LEjsCgQKTgSRbHQMhOxMLBlCXI3T3oGqimXVQrQgNQ9vgupbUgXGmjwmPAG3uJ6
         eHmsqEAdJpPEpylrbunuJ59LKM3I9zLcp1iY4xD/o/RZo6uZ3EZHaQLqM1XVSdjKONlm
         mpLYz7gor6Ku/L9w4C6vh79+tTCMg/VGclJ83nCuA4dVsuu2sO2MeU1xfS2snTbky1ec
         OPSSo6N6xL8tLbsbgL9QdlkYo1Iw9Us+zfIKlREBbHpGzF6jfLmZ4Fj6wQySkPR/b053
         CKLOZSp/q29oJbvwWwBmv9TC5yPtUEc3U1NoFdV6d7uvIBr5H3NvfdYv8WB21LHj3hlf
         bNwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtr7kV2uaqeK0voCEUtRWqXOcMM1u2zsuBMkRp+fCJDUBwMJVKDzcNAuKrZ7BFA5X08vZhXuAMhokE@vger.kernel.org
X-Gm-Message-State: AOJu0YxlhZTm0ZRLIAq2I0BiPbxgJ2WIdrGX8H85iO8KGr5/n+C4C2Fz
	eY2AsFPxvKTUgbFvyXIJS/I6K6gadDoCr77ypvePWI/ZB6U6+LYzXR2KTvf2Ng==
X-Google-Smtp-Source: AGHT+IFn9dbv1FKSmefLnlaSAgdh6flAWmhvi+pxqutep67yPjijwY7klZoIY7dKHPFmh46np4cNkA==
X-Received: by 2002:a17:90a:a004:b0:2c9:90fa:b9f8 with SMTP id 98e67ed59e1d1-2e1e5d62794mr2987730a91.10.1728029568545;
        Fri, 04 Oct 2024 01:12:48 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:73bb:cecf:e651:2ce6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20beefad264sm19401305ad.205.2024.10.04.01.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 01:12:48 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 1/9] arm64: dts: mediatek: mt8188: Assign GCE aliases
Date: Fri,  4 Oct 2024 16:11:53 +0800
Message-ID: <20241004081218.55962-2-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc0.187.ge670bccf7e-goog
In-Reply-To: <20241004081218.55962-1-fshao@chromium.org>
References: <20241004081218.55962-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Create and assign aliases for the MediaTek GCE mailboxes.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index c02a93c1663f..e216a0b40b9e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -23,6 +23,11 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		gce0 = &gce0;
+		gce1 = &gce1;
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.47.0.rc0.187.ge670bccf7e-goog


