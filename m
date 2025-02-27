Return-Path: <devicetree+bounces-152266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9C7A4884A
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 19:53:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 058BD162EB0
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 18:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8CD126A0FD;
	Thu, 27 Feb 2025 18:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="ywpjxjll"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0814225EF9C
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 18:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.59
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740682336; cv=none; b=hUBmezaG7MtUstW7zgdSjmeo+EHoUQ8PF/oduRSqbKXChJz6swq0ir6ZSWPyDcKDeDCuwKbiLEjE2PkZkHoKFCTTrvu9U+JRN+4zBePxIK+4j+4y+5aGIZgb7GJ7xIWoa1b0wolvmt7UbepR0i/QOrJkWOH60wfyhViBwqCvO/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740682336; c=relaxed/simple;
	bh=9YT1d9GISltSTtz8dTBbWKTn8OXvk3sE1Jl32PtK2vw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c1XoKyOz4gDLDoVbwGdmHGB2Jcihjo3pyWh/4qjY+fQAtOtWBENorneIJnRmZ6C/BfE8gGbmmGT9JFE6hJ+z0OV+tPMq64gIbTMkOegUho+88AcNhfHNvLEJ3vN2EzR8fn1xCYEK6pgfplNJpeDuvV3HhWaHCfqRNvlCRp1b2XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=ywpjxjll; arc=none smtp.client-ip=121.127.44.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1740682334; bh=eS8EdvGPaOo7zCDoFD9uMhkn/FUO+ddnyL9qkYr6zIE=;
 b=ywpjxjll8cj4DqhTNj3MVwVR21+QmMNoC5xMyhMQWf9KvgkiXO10IycgR/TQW4pBxRo2oCdoz
 OSLABiASwnMhsmK+Kg3f071TzTBtOp1jwO0V/6+tY1Jdp2gfrA/UUsS+lev5BuaVF1St2cydIrg
 WlTXkQDzfgAuJVQyLku6n0jAfuhWXfXGG1Xap4JIU6tgsmKlfUar17jpyumi6ePrRLjNOyxfxCt
 5Ql86TylB5DHH2h95RrD2k9onaOJaKj6Gzd8NAq7SpSwTcSjbFTCtblOOBlVOhONgfEeHDxiqaX
 UEdf258HBILV4s4xbo5L/gf4E+oZLX/Ms0u+Pb01MmQw==
X-Forward-Email-ID: 67c0b1cebf572996e8621467
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/4] dt-bindings: iio: adc: Add rockchip,rk3528-saradc variant
Date: Thu, 27 Feb 2025 18:40:50 +0000
Message-ID: <20250227184058.2964204-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250227184058.2964204-1-jonas@kwiboo.se>
References: <20250227184058.2964204-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Successive Approximation ADC (SARADC) in RK3528 uses the v2
controller and support:
- 10-bit resolution
- Up to 1MS/s sampling rate
- 4 single-ended input channels
- Current consumption: 0.5mA @ 1MS/s

Add a rockchip,rk3562-saradc compatible string for the 4 channels of
10-bit resolution supported by SARADC in RK3528.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index fd93ed3991e0..86eae9672c04 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -15,6 +15,7 @@ properties:
       - const: rockchip,saradc
       - const: rockchip,rk3066-tsadc
       - const: rockchip,rk3399-saradc
+      - const: rockchip,rk3528-saradc
       - const: rockchip,rk3588-saradc
       - items:
           - const: rockchip,rk3576-saradc
-- 
2.48.1


