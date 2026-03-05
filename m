Return-Path: <devicetree+bounces-271541-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELX5GDRyqWnH7AAAu9opvQ
	(envelope-from <devicetree+bounces-271541-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:08:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF782114F3
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:08:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AAF17301F3AD
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 12:07:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAF30395D8F;
	Thu,  5 Mar 2026 12:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="EsUqP7An"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9F0334C3D
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 12:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772712432; cv=none; b=KRfXlLuCQU8Zp8BlrPVzUgsmwHEkRo7siBoKd0BXNI6phW2UgX2rZpVFjsbSRPCWlFpAPQWwr6JkIZ32GnjhMIolLlHkh8eDlbG3WetUxG88e6T9+BO4464BjF6oAsGzRgCdgtL0rRDOHAHiHfGXkm0w7bfXMUbpHHTLdTIadtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772712432; c=relaxed/simple;
	bh=o+YCp1uaBUkEEJZ/7aQgj62Jd4ostEEU5tMF6V36m/o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uxRyFBJzmJIy1sVz6KKVyeuY2WN6yXFnixRf+NaaRE7WRMc3RttVSSwtNvzIDklEbsICHtr2a5cwpsf5dqGYeWtGOeLuQ2pPGtipTbtUtEBwfTrnshT8Ke2SV/gXT+1CyR7FzJMca8xE5YrHhEf9ZYtLq/RfJ0JR5PqikMZhCcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=EsUqP7An; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1772712419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=u827sJWQwU3javZmJbO1M5tiwo6JeGPU3XiLOVja7Ag=;
	b=EsUqP7AnCln9wX3WGvVEodNcCvRH7F7m0zb7KGngCHgVNhGfgE8E7KIR/gu10BlMFILXqG
	QjI92XosiaYSdPzKsJE6uYPMFJYQSl1KROCmjUchbKHcAP5/PZ7JGp+LoD1KWFn+ORNa8p
	Ziy6ItjkptLXCd85iQtDv/pWoqFghdr6uj92rDHYvdWba1HdqoHVZyXh+y3Io74vLa7Utg
	Qgar9fKlUhvY53qPWczKbgaawQeDDYz5S/3tzZ17iVzJK61Wgz1djUMdGkSYUyzwkaLavo
	FV1vJjAidlucNYxUwvTOzeU7kSbrKuhGurCyMdOzk3pXrUwfI6r024EpNukpjg==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Samuel Holland <samuel@sholland.org>,
	Andreas Kemnade <andreas@kemnade.info>,
	Maximilian Weigand <mweigand@mweigand.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	hrdl <git@hrdl.eu>,
	phantomas <phantomas@phantomas.xyz>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH] arm64: dts: rockchip: Enable GPU on rk3566-pinenote
Date: Thu,  5 Mar 2026 13:05:40 +0100
Message-ID: <20260305120620.173600-1-diederik@cknow-tech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: EFF782114F3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-271541-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sholland.org:email]
X-Rspamd-Action: no action

From: Samuel Holland <samuel@sholland.org>

The GPU is most useful when used together with the EBC on the PineNote,
which is not yet described. But there's no reason not to define the GPU
already as the hardware is present and could be used without the EBC.

Signed-off-by: Samuel Holland <samuel@sholland.org>
Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 551d551a113b..071cbdc3f6d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -234,6 +234,11 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_npu>;
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
-- 
2.53.0


