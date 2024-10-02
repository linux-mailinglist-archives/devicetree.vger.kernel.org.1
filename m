Return-Path: <devicetree+bounces-107206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A6E98D26B
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 13:47:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51EAC1C21623
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 11:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3F3420011C;
	Wed,  2 Oct 2024 11:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bpZE3VUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E49200107
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 11:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727869613; cv=none; b=ElCAdMoWc8hHIxv6yf5o8wL70jSzYPdsqRk+sZ3gd7A3ePvwCsnziHk8iOvJITDnxRVv0Ctgzny7g15bfo2o/S6UrjWwajmNmdmIfbjlp1lCid6GNGBvoAzs8gfGwJ+8Nk+zqXyxmJdTA1d6mk2e9Npjdtj3oEVHXQv6jrwWqg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727869613; c=relaxed/simple;
	bh=QTGH4vttplaUn43XLxb9PnFRDrlWhMRsg+2iEh6QeFI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Egg/Q46OqIVJdMdQFmyVPJjT2kpUCpSpw08tWW13EHO+LG5JWcYpQuGAKJqDC1AMcYoIxgwT6UXTJ/c7LcOxREyq0KyBVcR7y9oW00wUGGk5cSpxgMSbt5kE4Qu5hyMCMfer0RI0NblokyzRQ9isxTseHCvwfv5oA2fDy+66wZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bpZE3VUo; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-71dd2b6cbe6so144840b3a.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 04:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727869611; x=1728474411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JAY/dXsUs9CkME3PSfZ8rKUo2mav2/+CmW1Y+16arGU=;
        b=bpZE3VUov/5UoGGZwz+Y3lStaMzCQWeyZIOBaTBy6rOvqFoGECSr1zuO9M0aEMnfGJ
         HUEB4zgLK/09VjrY3IkHdEiku4maGLYue6dSGIDAFk73FajvkX0+2wR1QGS+E9pvxcAW
         ELmdQp+T/tTFopfTzq3FpIIBV4LBQs1qSHqhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727869611; x=1728474411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JAY/dXsUs9CkME3PSfZ8rKUo2mav2/+CmW1Y+16arGU=;
        b=AERI7indyNbt2gU3o9Vz/JtfBgyik9a9iP1uMXTiHmVGY3JpsFMTKY3JhsDwvRMvPh
         +lgNFn/ZeEM0QuMf7F7cWBSPsNrWiy7dQj7JJ0PPVrLSobjzShMpNtWnh9U+wFMrSniH
         aGYqVzhSVzzhJlFBi2QlTrVhC7eNKew/VRL4ZY4ZB4i9ed3l2hvay9YcNhuW33A6LWB8
         BAzc1E1FI9iL3a6fp6LRjRHGDBG6Uqyr6O2yrqVHNtnZbbVms0NCoRzYUeLnU4v7D4B5
         ijOPAqzPV2rZ8p83YJH/3EMdWLB/JjA/E5t41Xrngc+R1qIce0/9MHDSiBdRQERvGyZL
         ShBA==
X-Forwarded-Encrypted: i=1; AJvYcCVfp3TkA0pUOhtY1W0baP7H/zRAuPh6fnMawfuom8Hk8B84KfTzJdYXC7e/fvGmDwafnGR9tl0WoUHT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz39XcUVrfy14yV1/eLcXX6UVqWY7XuA2ymhTJYZ5UyH2Un8zLm
	IYsmrtXXwAxvZxmDW2GSKQ8YmTXMQrVJHXzTCfySPN7V4/dRsDUves0jbAjSuw==
X-Google-Smtp-Source: AGHT+IHSlrdMuVKexAIEnpb0LlSgDCgS0LJ5jiyqKYhPJ24XMB513q/IRWvodzvlblB9Cry7cgSZxQ==
X-Received: by 2002:a05:6a00:198b:b0:717:950e:b589 with SMTP id d2e1a72fcca58-71dc5d429f1mr4913086b3a.19.1727869611476;
        Wed, 02 Oct 2024 04:46:51 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:3bd0:d371:4a25:3576])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b2652baefsm9639627b3a.180.2024.10.02.04.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 04:46:50 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 1/9] arm64: dts: mediatek: mt8188: Assign GCE aliases
Date: Wed,  2 Oct 2024 19:41:41 +0800
Message-ID: <20241002114614.847553-2-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241002114614.847553-1-fshao@chromium.org>
References: <20241002114614.847553-1-fshao@chromium.org>
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

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index bf15ac9901da..10195a4e4e9d 100644
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
2.46.1.824.gd892dcdcdd-goog


