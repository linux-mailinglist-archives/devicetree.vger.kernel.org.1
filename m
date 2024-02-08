Return-Path: <devicetree+bounces-39677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D35B84DED8
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 11:56:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BDC0A1F2B68E
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 10:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C98D878667;
	Thu,  8 Feb 2024 10:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kU7q5xc2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141A46BFB6
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 10:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707389589; cv=none; b=XDGizuJyHBKYbqloRW45uTafPpHT1ZhItGb3J3R6QXYjQ6njBamdFvcj5m5PCvPdBAFfpbmhJQxW7SZnR2CLUtc5S/TRQmdtS4dWL+ptA7I53GbO4Rp0pQ7cI7n7GHkShF16hsXRPMAUxUnoJFSconII2JGRYW2HdYwdeIArwpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707389589; c=relaxed/simple;
	bh=MZAwqIqKrU2y94/Ns3TN22kLxM0VGP3/4mnLhQusbZg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fn9MXGJkLoUZtdXsQewp4aeueygXDdYhMKOG1UzIBkFqqYbCbz7jo6FUNyXNI9SA8Cwgvvs0hArpEhjflvqRtJGm/vtG2307xeUJQQ0atFvyYF0EVnZvixMxpfdtOVKPPkBCWP65EV9+SNWsvKu9qdH8Hg5vKCSBguDOuSOFtVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kU7q5xc2; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-41047386c8dso1480495e9.0
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 02:53:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707389586; x=1707994386; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7mWzKWd+T8PsoQYOe4XSt67Daig4dIyeudjH6Sr2oBc=;
        b=kU7q5xc2ZZTrLCm4Glrp5SFCPr/Pl9y1mb4b7+yfP9Wy7dzeVakKsrRVjdQGl9zP46
         Kd+SOT7IIvoNK+bY9+EeqFR/1TDGrmbMLzzvrRdduxyUCBdS4zJHfnULYwm26yyn9xIV
         tjqC+5Epi0W20n/y/irreIpVreVrKSkb6NRCGSEaY60m0HqlXYR5D7GNCvGQu5bJ9TNg
         hrCxQdHSNu1IcaRzMgtxxpJHW6XVg7RbL+c/o8ZMoJ9an6t2r2ohAyr6gXI+7QB0wCng
         pR4pylE2EBIPbaLA+g7qqt8GOrAtqHbHbT7m2odIvJpTlR6PFCwWBtDYVvvVfFxhhbaI
         2Faw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707389586; x=1707994386;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7mWzKWd+T8PsoQYOe4XSt67Daig4dIyeudjH6Sr2oBc=;
        b=MHZvt1LhvEM7a/pZ6ZjgkgWqpSUrYUy+BeVcoCsNsdrIOFuDwgXB90PtDhsFHYcrVh
         ScdeWkcv3TEbBzeaTJThrISfKk+S+9WT//D0VF3UE7o7deCyA95p2mEnj88s/tNC0gga
         RqmPKEpDsVfmlynSzZWq2nPITaSnyz10pZLjBXUW2t9P0DFtLXBtUav0JywhFi4xMJqi
         YB7jMBJ1qe4vsItuLkuiAlOH9bwEvQTDRye7VR1XjeTPBPaiYiLZvT5FwkJzq5rC6SHc
         KEGs4bqj9ZRzKItP6+DW1xvYzxcB5NewZhpv+HLbhx+xh+iL21ty8+8EE7k1y7VrBCup
         jltA==
X-Gm-Message-State: AOJu0YwxiGeWuhAxXueRCW8MfFBpOY6HPYzEMxnBsyp+hsAnaxr1UqS/
	8KHNENzlhv6zIquQCAJkNshJ1iFvE/1NUYJd725sCpMqs3b2bh1KpBhrk8ViOwM=
X-Google-Smtp-Source: AGHT+IG0Zb001fVAHJZU8yomzCgm0LXfKKPq4aLuG2BOosKb06k0rgl0dn+3KVyOGyNEkllw2sxQNg==
X-Received: by 2002:adf:f051:0:b0:33b:26de:ea with SMTP id t17-20020adff051000000b0033b26de00eamr6647711wro.37.1707389586350;
        Thu, 08 Feb 2024 02:53:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUT5rF4rLVlPKJRWVJKuV4G43pCj8lNaPxXW6zxwv3GZE9s4c9dlrnojgp9fUQFZffLSPbUWIuwqZ+JjtevgNK4ljShOetxTS34QkcvucZMxKYimXm9gHCuN03gppqCs6QNUcEgwLGdVYW3clJhiAkAGV0e4JIRID56sAAqYPjTK75bdPAFwvycu/mN3kT2B47sOZd1pNf4DAMRWGj6n38bGl0Z0FKRWCkH8qVNAdrVRyQ37yqRODnkd16qFwLODT20zMTWB1Ba0X18vHkzatBNfg7N5pyzjAIkqWuWv+Dapbp8ozcJ6CwZqyTsZj4Sv71UssIP3PW5WJ3fswOm3A==
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id u10-20020a5d468a000000b0033b44b4da56sm3331975wrq.111.2024.02.08.02.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:53:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: allwinner: h616: minor whitespace cleanup
Date: Thu,  8 Feb 2024 11:53:01 +0100
Message-Id: <20240208105301.129005-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240208105301.129005-1-krzysztof.kozlowski@linaro.org>
References: <20240208105301.129005-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before '{'
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h616-bigtreetech-cb1.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616-bigtreetech-cb1.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616-bigtreetech-cb1.dtsi
index b2988f500231..af421ba24ce0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616-bigtreetech-cb1.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616-bigtreetech-cb1.dtsi
@@ -93,7 +93,7 @@ axp313a: pmic@36 {
 		interrupt-controller;
 		#interrupt-cells = <1>;
 
-		regulators{
+		regulators {
 			reg_dcdc1: dcdc1 {
 				regulator-name = "vdd-gpu-sys";
 				regulator-min-microvolt = <810000>;
-- 
2.34.1


