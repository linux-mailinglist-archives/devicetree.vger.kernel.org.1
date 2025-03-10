Return-Path: <devicetree+bounces-156051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A38B8A58FD7
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 10:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7AF016A4F9
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 09:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B03A4224B04;
	Mon, 10 Mar 2025 09:37:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8141D224B08
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 09:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741599441; cv=none; b=bBVJyfvZRaCu953iLOfZrePuEAqCpKnlPevKmAyPCxVgMAnJ2OXMJCL5NtLdISIYgIWJnX6CiLo0TrnfTNMzUb/8Mk3LRIBjv+me0wbcLcJv+RqlDl9FNAPneCZsltLAF/akVCMzrugHATeApdIWaSoXumD2TORxKOKW6NGVpxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741599441; c=relaxed/simple;
	bh=1aGhiZHMGgQfaxqi/b9zRwQDObMhBPEiD7gUnGXwfdQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qFQyijv65xnMXUu93T+VTSyet8HlRzjg1HlxGSExQHcPQh8mbf5h5KGX9AN9Q40bCawRfTjUvl5RFmwlMYp8rJUmbG61+nllujxpT+tqOwzR2BZCYIZ2NqXLFy5kV/6sIoUlph6JGEwo26f9m6VLQe43h95gRjC4Nlz4Lx6urIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4724F15A1;
	Mon, 10 Mar 2025 02:37:30 -0700 (PDT)
Received: from e132581.cambridge.arm.com (e132581.arm.com [10.1.196.87])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7FD473F5A1;
	Mon, 10 Mar 2025 02:37:17 -0700 (PDT)
From: Leo Yan <leo.yan@arm.com>
To: Wei Xu <xuwei5@hisilicon.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	coresight@lists.linaro.org
Cc: Leo Yan <leo.yan@arm.com>
Subject: [PATCH] arm64: dts: hi3660: Add property for fixing CPUIdle
Date: Mon, 10 Mar 2025 09:37:08 +0000
Message-Id: <20250310093708.9332-1-leo.yan@arm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

During CPU low power modes, ETM components will lose their context.  Add
the "arm,coresight-loses-context-with-cpu" property to ETM nodes to save
and restore ETM context for CPU idle states.

Signed-off-by: Leo Yan <leo.yan@arm.com>
---
 arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
index 79a55a0fa2f1..4c6a075908d1 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
@@ -17,6 +17,7 @@ etm@ecc40000 {
 			clocks = <&crg_ctrl HI3660_PCLK>;
 			clock-names = "apb_pclk";
 			cpu = <&cpu0>;
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -34,6 +35,7 @@ etm@ecd40000 {
 			clocks = <&crg_ctrl HI3660_PCLK>;
 			clock-names = "apb_pclk";
 			cpu = <&cpu1>;
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -51,6 +53,7 @@ etm@ece40000 {
 			clocks = <&crg_ctrl HI3660_PCLK>;
 			clock-names = "apb_pclk";
 			cpu = <&cpu2>;
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -68,6 +71,7 @@ etm@ecf40000 {
 			clocks = <&crg_ctrl HI3660_PCLK>;
 			clock-names = "apb_pclk";
 			cpu = <&cpu3>;
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -160,6 +164,7 @@ etm@ed440000 {
 			clocks = <&crg_ctrl HI3660_PCLK>;
 			clock-names = "apb_pclk";
 			cpu = <&cpu4>;
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -177,6 +182,7 @@ etm@ed540000 {
 			clocks = <&crg_ctrl HI3660_PCLK>;
 			clock-names = "apb_pclk";
 			cpu = <&cpu5>;
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -194,6 +200,7 @@ etm@ed640000 {
 			clocks = <&crg_ctrl HI3660_PCLK>;
 			clock-names = "apb_pclk";
 			cpu = <&cpu6>;
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -211,6 +218,7 @@ etm@ed740000 {
 			clocks = <&crg_ctrl HI3660_PCLK>;
 			clock-names = "apb_pclk";
 			cpu = <&cpu7>;
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
-- 
2.34.1


