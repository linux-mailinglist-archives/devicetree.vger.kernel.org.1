Return-Path: <devicetree+bounces-229562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCBFBF9AE4
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 04:10:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 002273B4925
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 02:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCA5B20458A;
	Wed, 22 Oct 2025 02:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIU1x0YQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6EE617A309
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761099049; cv=none; b=aUeceVMbdv51v051wiJwgKnQALZnikreVoMUok1nXzghszkb1RRVNRz9BjhlW5MFuWRHSUDQBTORc8G5IKrPFrjJ12WxTmjDt7vRZMJe2XMYUajh4pRm3QDEWkrQcw4W1vyscXUgq6mzz21a/bF0u++gVX8ZJBlzMRWzMqMILKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761099049; c=relaxed/simple;
	bh=srCenhb+b8Osr4XRpewYsgCreOkGk3L5/aGzP5Vi2Zk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t+C+Gosoa1/3tAUDwnMdImJhQBAu4s63/1OuN8hhKCSTs1PVsx+JOaGzq9ST/RqxkC9lZSaILT+uHhaWYcdxDwG0otOgFnns0vGuAF57THGR0H8pFTzx6TSGaUaNzNMWaONFRv1UWyGXIMuKR9qGKKR73ODu73d05FhJZutgVes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIU1x0YQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5940C4CEFD;
	Wed, 22 Oct 2025 02:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761099049;
	bh=srCenhb+b8Osr4XRpewYsgCreOkGk3L5/aGzP5Vi2Zk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cIU1x0YQIKcc7zRT5Elvh48G6syRBdBN0IgeRIZMctsxVd2hq8X3ornxdtzFw+Sur
	 tfoNhkOWNAI3RDfmyfpmFj3RKmEK4y19PyeaEu6nTiIcaijlmmc2HNunfCeNjGSk3W
	 DTl9K/9i5alG7ejV7XNJg54sWm/v0/yfHxZe0xM3sHBfJA/0TwKlGS9BkRQIIWcbSM
	 00huy/QhUXI6+MSnuYiuUTfJTMt4cr+/+nXxbR8w4JiBSQQpQveU75gLcmqGu+Pfmq
	 F1joEVQFe4s+RQKJTRH8xWWwlt603A7NUUEmC0tMvDU+llVKAYm71oeKIHsuXvw3BI
	 GPRUTB+bmnH9g==
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Cc: dinguyen@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 2/3] arm64: dts: socfpga: agilex: fix dtbs_check warning for clock manager
Date: Tue, 21 Oct 2025 21:10:29 -0500
Message-ID: <20251022021030.171216-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20251022021030.171216-1-dinguyen@kernel.org>
References: <20251022021030.171216-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

clock-controller@ffd10000 (intel,agilex-clkmgr): 'clocks' is a required
property

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index b8e2f2c3c558..5c288cff48b8 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -167,6 +167,7 @@ clkmgr: clock-controller@ffd10000 {
 			compatible = "intel,agilex-clkmgr";
 			reg = <0xffd10000 0x1000>;
 			#clock-cells = <1>;
+			clocks = <&osc1>;
 		};
 
 		gmac0: ethernet@ff800000 {
-- 
2.42.0.411.g813d9a9188


