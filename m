Return-Path: <devicetree+bounces-138804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C414A12538
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30B541882355
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 13:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 512322459A6;
	Wed, 15 Jan 2025 13:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B4GZhgqD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5E1242273
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736948652; cv=none; b=dmqYhx91bCqngKAaLz7FVzEtTaxCxbDYyj4jQMhaHqjAtLsBJ/G2/ZE2vCrk3VH1uvPIH8IfTndSQqcuiP5NOwxpXuUf2JSXm0HdyTpel4YKTvu9ry46JzdXDkcylUHKUnTl1yYgisrtgbQOO4EAkHD3PBJ7I0UPSs2+7H1YOO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736948652; c=relaxed/simple;
	bh=8GGzqyDgRXvGMsBLV5U6mpTGxtZYhoYGyXW1VL17GOc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rOLVP47lJTIA8BTrF5O2P/jLiNp6qCULxjckCsDjaZjcg2LnMU1cFvTt3sODQoOvzQw0u1zg24v7wsA1Bghx7/HkvwemVE7P1E1++JlO0VHXmxYRlTfQdNTC/fL4ElXWacwhugvaOdzjrUWUwuAZynbdey92WmIifATkrdjzUUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B4GZhgqD; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-38a8b17d7a7so3478523f8f.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 05:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736948645; x=1737553445; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uORY4Y49hLZb75HNfBaMVF6AGflZyce2VsoIYaEOkf0=;
        b=B4GZhgqDSP4DDf1hGD5dSigaNVjBRcYa+2OoInJAVmCIFAgycZzRIDRVffsJjrvQ3H
         R6FuqLHv2dPyhi+OlUkCkdXRN6Jsc3sxril1tqjhQ5CSBDjDaaxbtuil3CzfhUV+KtH0
         xcjalg6Cu3Oxl7WrGh7LhPwqWUbwozyRzTHTvLhwFlyFNjIt+4NXvks8RVvIDCYGhk6+
         SnYFXVQf6LmuxNFE0uEz91FDauorFHjeD6sDvWm7/2gQ3KHYO4FTiPuSu/ioBnL+/+OA
         xv2f3ChdmfFw/VZExOeDFWcNsZB3NJWyKdPRndvIczfIZDMfJGwUQR8dE9UVjDpwG6di
         rqLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736948645; x=1737553445;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uORY4Y49hLZb75HNfBaMVF6AGflZyce2VsoIYaEOkf0=;
        b=UCwMmaqcu4fzqzDi7ItS+IRSkS3eLFUjTEYx33u2D0u8/RknCnaujnKzHdpa4fC+RG
         GkHdglraYWGMfLmJJtipZISBbzL5AonkGrmw4MxlcSWpPWDJtdwFCq9p5I9rvbNaz2+E
         mEIGTnFsCKeeCLWfT06N/DIbJHXwY+Izkas+uuVD7wWrmKgK636R5dRx1+Z+q/wqQJBz
         k2KJv9ZYeomKbqgRKNls8ZfqJn8nF7ldxiCYS2g0RDg+jSZzJwGX3e0QGd0Kl/LRkKXb
         /0mE4fTsURjWXK3co+AXNTjYhSvz8bY29OI3ls8Kkj2qLSKBKRgwUmhe8QQwZEiU5Pnv
         kkiA==
X-Forwarded-Encrypted: i=1; AJvYcCXPb/DMGNhNyl59LWui+dfMCbYMo/okys7L/f87Umjwb41NsY7so2hifJI8GEYowcK4DYBJD9WDdPi7@vger.kernel.org
X-Gm-Message-State: AOJu0YxPXA/jcuW93Faa0NsxvbHWAN+nzEBmO/N+bTvRyeX7M7mk0Rxt
	2ZcxrO+Rtl6mO/73AmE+Zf0WvUcOjaSBG9/mBDYlh+Bu5qMLjfR2HAagOkPwMkc=
X-Gm-Gg: ASbGncvAZgL5wToP4rEGoH3gKqRLbku1ymGii76YZqC9HOga02oogVKtNDVwqAVNuNL
	qtVRZlMqfPculmI/Cs2aSV5I1p79rqG/QqONzfWtXGMk1KfSc0KbcUyJ6/jXt6ijE1/rk0n1rGk
	Cd1DLDP7oJ7f4x1tLMGty6UTPt8HoOxerPYFSaSPrF4WSL5IXVnt36my2dFldbqd0VtGvMNDs78
	f1RwpU9B+klE8e1dLNGCqp3Rmu5M7wIQstSzKb5lICz++AnT0vL3o9YKX84EOYV4FDCcXJYeTOH
	qQ==
X-Google-Smtp-Source: AGHT+IEwiniYqhzHG1C8N+bxWjffQo46qfiXaSQwN1+XPay+T6DbYTafZNsF3ehKYHvSozYZeXJcZw==
X-Received: by 2002:a05:6000:712:b0:388:da10:ff13 with SMTP id ffacd0b85a97d-38a87306e8bmr28158478f8f.21.1736948645336;
        Wed, 15 Jan 2025 05:44:05 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c7540ae7sm23454655e9.33.2025.01.15.05.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 05:44:04 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 15 Jan 2025 14:43:58 +0100
Subject: [PATCH 06/10] arm64: dts: qcom: sm8650: set CPU interconnect paths
 as ACTIVE_ONLY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-6-eaa8b10e2af7@linaro.org>
References: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
In-Reply-To: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=24175;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=8GGzqyDgRXvGMsBLV5U6mpTGxtZYhoYGyXW1VL17GOc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnh7ud721QAErqoBqpS2UeVPHKRsRUcmsNvTTbhRt9
 wvi8Ry6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ4e7nQAKCRB33NvayMhJ0cUlEA
 C/wF9RP+yz1rzErq4y/rtA/BgBtRnZeCczNqW/HTyCVwhBlvYfHvRaZ78pnGwUQ4goiB7nuyJNGeIF
 pcSq9Lyl9vfdOe+Cpzha2UdoAHeII8SLzXKBjdhswgQvdINvu7DWdOjUCyf5Z17PbrXxLQNR7iUJg8
 SLVCAkVI6VL1SoFRsMzKD7AfwZAZ8+ft+5VLTgpN7akIuxurbRWmBL8ESKmavaNcrbw6PlxRKKmQSy
 qbveMMAQUFywSrJBijF6bqluPPkRc23zsa2P0m/jLhLWAJ5ub4+osIpzAi7vWrmJRsX4UrmcdHfK0z
 n4g0y/8vppnaNlKSJsf3/z7oafLjZos98/dvoog8kez530wm2HaMjFp/VvImHcY77or4C/iO6ZdiYU
 Wk4madYRfzsQZMNE9hjykNNmVFuWnfJUPnWsvDewW9JiAZynV/icbfMo9zAsrvh6lX2impCv3VMvi0
 1j3ziazpvp7//s4y15hYXGkzHD4xYnCx/iHGAKSnnBJdGMuFkZ6ebWx9p2nSUmINWEP90yI5CtlGe3
 jpe6VABWWFApgMSUKNmE9oqcuoq4NHYakUqvT4Ic51vMFQBJU71DJhX46e5EWh8hp4mo2nJzxS9yoj
 /zexZmdAlrRpjboZwDiahaQBuEG23t7CrFfrjDow9EStH5U/JFJdVjzc2Odw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

In all interconnect paths involving the cpu (MASTER_APPSS_PROC), use
the QCOM_ICC_TAG_ACTIVE_ONLY which will only retain the vote if
the CPU is online, leaving the firmware disabling the path when the
CPUs goes in suspend-idle.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 180 +++++++++++++++++------------------
 1 file changed, 90 insertions(+), 90 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 0658982a748ef4d9df0fe12ecc68c4c23e3c2566..a72087d5255899fba03ac90a3f0241ee3905504e 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -881,8 +881,8 @@ i2c8: i2c@880000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -914,8 +914,8 @@ spi8: spi@880000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -947,8 +947,8 @@ i2c9: i2c@884000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -980,8 +980,8 @@ spi9: spi@884000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1013,8 +1013,8 @@ i2c10: i2c@888000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1046,8 +1046,8 @@ spi10: spi@888000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1079,8 +1079,8 @@ i2c11: i2c@88c000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1112,8 +1112,8 @@ spi11: spi@88c000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1145,8 +1145,8 @@ i2c12: i2c@890000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1178,8 +1178,8 @@ spi12: spi@890000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1211,8 +1211,8 @@ i2c13: i2c@894000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1244,8 +1244,8 @@ spi13: spi@894000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre2_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1277,8 +1277,8 @@ uart14: serial@898000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1299,8 +1299,8 @@ uart15: serial@89c000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1337,8 +1337,8 @@ i2c_hub_0: i2c@980000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1364,8 +1364,8 @@ i2c_hub_1: i2c@984000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1391,8 +1391,8 @@ i2c_hub_2: i2c@988000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1418,8 +1418,8 @@ i2c_hub_3: i2c@98c000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1445,8 +1445,8 @@ i2c_hub_4: i2c@990000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1472,8 +1472,8 @@ i2c_hub_5: i2c@994000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1499,8 +1499,8 @@ i2c_hub_6: i2c@998000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1526,8 +1526,8 @@ i2c_hub_7: i2c@99c000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1553,8 +1553,8 @@ i2c_hub_8: i2c@9a0000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1580,8 +1580,8 @@ i2c_hub_9: i2c@9a4000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ALWAYS>;
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_I2C QCOM_ICC_TAG_ACTIVE_ONLY>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 
@@ -1656,8 +1656,8 @@ i2c0: i2c@a80000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1689,8 +1689,8 @@ spi0: spi@a80000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1722,8 +1722,8 @@ i2c1: i2c@a84000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1755,8 +1755,8 @@ spi1: spi@a84000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1788,8 +1788,8 @@ i2c2: i2c@a88000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1821,8 +1821,8 @@ spi2: spi@a88000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1854,8 +1854,8 @@ i2c3: i2c@a8c000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1887,8 +1887,8 @@ spi3: spi@a8c000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1920,8 +1920,8 @@ i2c4: i2c@a90000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1953,8 +1953,8 @@ spi4: spi@a90000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -1986,8 +1986,8 @@ i2c5: i2c@a94000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -2019,8 +2019,8 @@ spi5: spi@a94000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -2052,8 +2052,8 @@ i2c6: i2c@a98000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -2085,8 +2085,8 @@ spi6: spi@a98000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -2118,8 +2118,8 @@ i2c7: i2c@a9c000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -2151,8 +2151,8 @@ spi7: spi@a9c000 {
 
 				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
-						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						<&aggre1_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt  SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 				interconnect-names = "qup-core",
@@ -2301,8 +2301,8 @@ pcie0: pcie@1c00000 {
 
 			interconnects = <&pcie_noc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
 					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
-					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-					 &cnoc_main SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &cnoc_main SLAVE_PCIE_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
 			interconnect-names = "pcie-mem",
 					     "cpu-pcie";
 
@@ -2440,8 +2440,8 @@ pcie1: pcie@1c08000 {
 
 			interconnects = <&pcie_noc MASTER_PCIE_1 QCOM_ICC_TAG_ALWAYS
 					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
-					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-					 &cnoc_main SLAVE_PCIE_1 QCOM_ICC_TAG_ALWAYS>;
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &cnoc_main SLAVE_PCIE_1 QCOM_ICC_TAG_ACTIVE_ONLY>;
 			interconnect-names = "pcie-mem",
 					     "cpu-pcie";
 
@@ -2609,8 +2609,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
 					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
-					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
 			interconnect-names = "ufs-ddr",
 					     "cpu-ufs";
 
@@ -2891,8 +2891,8 @@ ipa: ipa@3f40000 {
 
 			interconnects = <&aggre2_noc MASTER_IPA QCOM_ICC_TAG_ALWAYS
 					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
-					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-					 &config_noc SLAVE_IPA_CFG QCOM_ICC_TAG_ALWAYS>;
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_IPA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
 			interconnect-names = "memory",
 					     "config";
 
@@ -3474,8 +3474,8 @@ sdhc_2: mmc@8804000 {
 
 			interconnects = <&aggre2_noc MASTER_SDCC_2 QCOM_ICC_TAG_ALWAYS
 					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
-					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
-					 &config_noc SLAVE_SDCC_2 QCOM_ICC_TAG_ALWAYS>;
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_SDCC_2 QCOM_ICC_TAG_ACTIVE_ONLY>;
 			interconnect-names = "sdhc-ddr",
 					     "cpu-sdhc";
 

-- 
2.34.1


