Return-Path: <devicetree+bounces-111607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EE01999F70B
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 21:19:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6FA25B2206B
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 19:19:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FDF51FE0F2;
	Tue, 15 Oct 2024 19:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KO6S99S9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688201FBF5C
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 19:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729019841; cv=none; b=DQVXCg8UebQRpck2CEMIXXL56B21aPAn8fpnlEWC9RSoDIyUAmOWeMnpX1gA9kfMg1tfdtffcIesYudz+i4xijbIZPxYKDUYwkDZviOAQdHTBnmLxrOiqGKJ5SlHu5AnJq5ctBeRR/BcYs1Z99Q16vb8WvBFe1YNS5hHNmQ1Goo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729019841; c=relaxed/simple;
	bh=L5jePk++a0uY91JQrASnpEj/bjSiMyJjUq1CjjPGGl0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gNazzHAG4G4S5hLaQmH5Bk8YrxAuo/HjmE16Xcb9h7f1cCrShfgBWuJ82Ppl/2Y+odUwGybAZepZ+UFa9TMPpgJDhS1iyovDIQy0Nw1hRkja0dKyfFO3G30V540ySdOvte6kpmumJ1TWU/W52mSErMd3Dc3ScKHp6vGTzU/DqJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KO6S99S9; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5c9428152c0so7420023a12.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 12:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729019838; x=1729624638; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=81ZVnQPK5cdOXNd0U587x7C4r0h4m8ObdC4H2ODABA8=;
        b=KO6S99S9vvJC6jPwferK4Qdwsv3qaOE13nUZWqwJ0ZcbEsoxDEamDK7YKwSHV5Hm5z
         zwzHV0HqOIKYGNnPQyHu9j1XRfruafAwsFOlb76Nty6agI1sVXPbljeC8yOmT7R3u+xs
         PRuEyMVFZKIk9ZJPDX7gnuhYYlUsv8h1BsVSuNAtUxB7pm9bbiBA2Y6TA5uAd5S7S1d2
         eNVfpyHLviBQi+yvZtPuAeWlRVzdIAS3ZCdxlv0xPPiKoxTOZyN7/c9+ZR2ITAIPkoW+
         dG9L7zxK6xB1oS7MHgkA3KwQdjbz7VLZIeWp3A9/mTJyBN6QcLqLZxUVavgbzc73RHqO
         Tp4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729019838; x=1729624638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=81ZVnQPK5cdOXNd0U587x7C4r0h4m8ObdC4H2ODABA8=;
        b=FKMK+09XISwihy9OCB8O4DyCFhKWzmarD3QjLFQrjfAVj8k7U3xeHIo/W/TB7LR3lv
         FsyUFVGSHYosJgC+dSrzCb+Io5zDC1uHHH12E+H1nd344iENpj52Hy2k01WfJhfqo9Gw
         tir8TdkCHkwMrQiL9aFWV7P4MgYGudOJME5YmD1d9CCT65VjKPcIxAhyG0HdxFzN8k9u
         CiZ6NARwzGu5lvzEQtxyG0XdptSkuxNcQet+qe3y2SUeMK/7mA2u1GdPGsXxuEcV+P8E
         A5grUhlWlt/tb/NWq7a+4pT1XVQ636lKn+RkDk5Fp6Pf3YqmBQAGvZAQUhAoFZjYjuwm
         fFpA==
X-Forwarded-Encrypted: i=1; AJvYcCVLZaUZMiGnc1W5jTmytc5+mJYC0OmWM0669G9Mb6cFaf59vFQ1D0xSROKidLa5RkGtaa9FE/3M6CLl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6lwrd7QrSQVRfsAYN1s3VMv497L556Zp2LEVsAuzpniRAuPCr
	cITckFFsVbDvjWry8SRKvHs3Ps+pAXUVhSxrpmnYRsIENgAZk88r374XNNu3WP4=
X-Google-Smtp-Source: AGHT+IFe6y5YxcAp7iE8drp6DyY0gA3+wgMZd7L0bgY5EMYWR88rCbdnKDAk49FEAypBphut0IJ6yA==
X-Received: by 2002:a17:907:d2e7:b0:a99:ffef:aec5 with SMTP id a640c23a62f3a-a9a34d6e9aamr112640966b.23.1729019837837;
        Tue, 15 Oct 2024 12:17:17 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:2517:2666:43c9:d0d3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a29719196sm102080566b.33.2024.10.15.12.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 12:17:17 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Tue, 15 Oct 2024 21:16:01 +0200
Subject: [PATCH v4 7/9] arm64: dts: ti: k3-am62: Mark mcu_mcan0/1 as
 wakeup-source
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-topic-mcan-wakeup-source-v6-12-v4-7-fdac1d1e7aa6@baylibre.com>
References: <20241015-topic-mcan-wakeup-source-v6-12-v4-0-fdac1d1e7aa6@baylibre.com>
In-Reply-To: <20241015-topic-mcan-wakeup-source-v6-12-v4-0-fdac1d1e7aa6@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
 Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Simon Horman <horms@kernel.org>, 
 Vincent MAILHOL <mailhol.vincent@wanadoo.fr>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1023; i=msp@baylibre.com;
 h=from:subject:message-id; bh=L5jePk++a0uY91JQrASnpEj/bjSiMyJjUq1CjjPGGl0=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNL59i+ZPGmy1PW/eRuvPTjolT7riMnqP14vVzI8zrkwQ
 ZTN5MC9VR2lLAxiHAyyYoosdz8sfFcnd31BxLpHjjBzWJlAhjBwcQrARBYwMjIsYM/J0lA7kHP4
 Q/++E0fME6Re9uxXntPq4Zd84HR8z+/vDP8Lzq/Z6PgoQWlP5tqAreWOy+cnel2cfj5mb2c653X
 Jl4XMAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

mcu_mcan0 and mcu_mcan1 can be wakeup sources for the SoC. Mark them
accordingly in the devicetree.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
index bb43a411f59b281df476afcb1a71b988ca27f002..e22177b9dfecb541e99b0807f8b79e7b878b6514 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
@@ -160,6 +160,7 @@ mcu_mcan0: can@4e08000 {
 		clocks = <&k3_clks 188 6>, <&k3_clks 188 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 
@@ -172,6 +173,7 @@ mcu_mcan1: can@4e18000 {
 		clocks = <&k3_clks 189 6>, <&k3_clks 189 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 };

-- 
2.45.2


