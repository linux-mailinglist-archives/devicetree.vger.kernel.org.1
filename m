Return-Path: <devicetree+bounces-101369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5DF97166C
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:19:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AB2B2836E3
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11B921B81D5;
	Mon,  9 Sep 2024 11:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XlHstpjn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E1D1B81B6
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725880683; cv=none; b=kSMIMA7q74Q5OIzwvqoex3GRHD+hquqDRK1IlSunnWqo+Ap7NCoFYKiofMFjpGc/eNkGUX8H8PUZ3gVKyc8zaxFf/ZR0HGcUGne4xxKf97PQI0n0pKZXSNANU9QBzaITd+dHZugmaabq19oNqOTXtmEUegcyFpGEErFyBO9uoN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725880683; c=relaxed/simple;
	bh=OfaNXpIVOcun7tAFbJU9wVbgLLuQ52GRIm7j44u8m9I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LhHQBN7+mSm2BwxVUqUcKRSVKWZB8J/7U2YNXl29jwPJW6xIihfG0VUntzBZ7IF/laYB5YiTHMYvj2DxOiUOh14p/3jaI8+iSCumZ96cj5WxnQhNTw3ouXR3HeeQ4W9ugNplEzI76Mrf5hoBx+QGQ5WuJZ+760yolADCIAYaAq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XlHstpjn; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-205722ba00cso35105225ad.0
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725880681; x=1726485481; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eSPMDqXmxOOBZ2+bT3H0bytGBe/kVJSeEJXvBbWjwBM=;
        b=XlHstpjn3yKnkUAkdyHT0npI6PRcZteXF3coOTBgXgJxgQcKEk+KGn8lESrcRLHGBm
         VEL2tRU19yNXys5bI/oZ6Rn8LOho8kiagyfsEc0WGW5ZZkm6SJTq3zzIw2R+d46RxlxL
         oT12hmTBxSdw5FTNJ6VwQrbSAc+PZ75X70F1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725880681; x=1726485481;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eSPMDqXmxOOBZ2+bT3H0bytGBe/kVJSeEJXvBbWjwBM=;
        b=lJvp/U8Vy2rGZNFPCVqwFlmRpjkNRgJeA5+8OgbJiwBjIb8idUWHLqd01dUR59FeUN
         10gXk+jU9njjcm6uJnwhVC1bbyDBkylSC0RwHXJdwGkSeCARBpUs5icD34lNzQItML7i
         /2bQbRf0XUs26P90lM9DQGa0PsJGH9BOMgZpMLp7U6dxrpmBJAhZ6DHbKBUO5YBDQj+f
         wNbIGsviMUHnfWIBDY/amN1Ur6FJ4ILyPv9TjnwjYg4TLy2Zw2Y2nfkETBkQv550YBFx
         8eS29DTDRbp4duNszeKUvPZTelQNxRaWgYWRU9nb6LSXTVFDbxKkXJJP3Vw+x565sWjD
         qA/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVugnmiR3ZWinP0VSVHAW8VrxFaSKpCkykqVuVMQ2QgbD8KBDEqSoqHpCneaTtay9r54oqdoWoVakFM@vger.kernel.org
X-Gm-Message-State: AOJu0YygyTcVMuHAKrW1sO/sr1nxP9klcV5arLe05RZptaT+nFUWkvQA
	EZyHOLg9txi30zBwedHCr9PeZ7kC0PMMJRgEtLyb1AughUjwLGeDcbTnXL/rVw==
X-Google-Smtp-Source: AGHT+IGHVTuEQzGi8BTEcqf2mCRiL5XS1yhXsk1hu/kaz1W0RCb0r+W6kSM7h0W7qrtU4wtKiSxLSw==
X-Received: by 2002:a17:903:22c1:b0:1fd:5eab:8c76 with SMTP id d9443c01a7336-206f05e7881mr97040825ad.41.1725880680731;
        Mon, 09 Sep 2024 04:18:00 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:6647:6d5f:dd48:8f5c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710f1dc55sm32039745ad.186.2024.09.09.04.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 04:18:00 -0700 (PDT)
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
Subject: [PATCH 05/13] arm64: dts: mediatek: mt8188: Add missing GCE clock names
Date: Mon,  9 Sep 2024 19:14:18 +0800
Message-ID: <20240909111535.528624-6-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240909111535.528624-1-fshao@chromium.org>
References: <20240909111535.528624-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the missing clock-names property for GCE nodes to fix errors from
`make CHECK_DTBS=y mediatek/mt8188-evb.dtb`.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 445d30eee2a1..2900d78b7ceb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1316,6 +1316,7 @@ gce0: mailbox@10320000 {
 			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH 0>;
 			#mbox-cells = <2>;
 			clocks = <&infracfg_ao CLK_INFRA_AO_GCE>;
+			clock-names = "gce";
 		};
 
 		gce1: mailbox@10330000 {
@@ -1324,6 +1325,7 @@ gce1: mailbox@10330000 {
 			interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH 0>;
 			#mbox-cells = <2>;
 			clocks = <&infracfg_ao CLK_INFRA_AO_GCE2>;
+			clock-names = "gce";
 		};
 
 		scp: scp@10500000 {
-- 
2.46.0.469.g59c65b2a67-goog


