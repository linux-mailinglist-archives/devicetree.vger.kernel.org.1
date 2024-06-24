Return-Path: <devicetree+bounces-79157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F29579142C0
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 08:31:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F1621C22AA8
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 06:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 976462E62F;
	Mon, 24 Jun 2024 06:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="J+N1DK0J"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7327F18EB8
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 06:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719210672; cv=none; b=RWmFg8DeCgm/ZPDuZv4Eh+99WE4bRazlWoYtEK8W27HQlOsZRt0mMpfQVw0T2nSxfaRTTWdjrJjM5sNxmZxm6lMXM97IMRNHOMmYkG2f4rSGHfFdWq7H+trekMS+hi0VT/o1NukzAUm+u0EG/y+74ZnsppGoALzNqCLrrZ3geSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719210672; c=relaxed/simple;
	bh=GBpWOXMsKL3GYxAb3Orjzf76eSvZ0XMeiMBTBZX3MI8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MJG8+3KEkb0knwz7KoORtxrgFmLEsSZOX+EE5WhvQHFx2hUIE4amBoRvER8MUOHnqPb6NqGUvHf9zR0FvUFVKWpy3oYZGrH6rh97OUm46aXkzKMwi3C2vGWSLb9wwnPYELFpAojk/7SL5C8r2OIf+BtcuPSpvAAkESSXjN+3JME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=J+N1DK0J; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 20240624062053c11692631f745e42c1
        for <devicetree@vger.kernel.org>;
        Mon, 24 Jun 2024 08:20:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=HX3rEphaegaz4eT+TeSVcevgXPEnRQToTXmTZCSA234=;
 b=J+N1DK0JJeqEzorZgZTlNZXwKsX3KOhLUSnOWtz2coIFg+5ZdfjB0uG9lsqAOqRyVAhW4r
 Y+VIs0B/2oxmhOlhIWaQvq4I8ERuIVQmU452Y2sKUCaGAwNyh9nLW31eH+nLyTn7AIaPa334
 TCVJ3p9Lb8kGFEEUl+lI2LfR1N+ak=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH 4/4] arm64: dts: ti: k3-am65-main: add system controller compatible
Date: Mon, 24 Jun 2024 08:20:50 +0200
Message-ID: <919937773a001233b65fd1bac13370d410c43384.1719210050.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1719210050.git.jan.kiszka@siemens.com>
References: <cover.1719210050.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Now that the TI K3 AM654 system controller bindings also cover the usage
in the main domain, add its compatible to address dtbs_check complaints:

  k3-am654-base-board.dtb: scm-conf@100000: compatible: ['syscon', 'simple-mfd'] is too short

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 30c514e458a3..fe90e84c34fc 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -471,7 +471,7 @@ sdhci1: mmc@4fa0000 {
 	};
 
 	scm_conf: scm-conf@100000 {
-		compatible = "syscon", "simple-mfd";
+		compatible = "ti,am654-system-controller", "syscon", "simple-mfd";
 		reg = <0 0x00100000 0 0x1c000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.43.0


