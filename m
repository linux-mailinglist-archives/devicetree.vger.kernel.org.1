Return-Path: <devicetree+bounces-239898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DC094C6A767
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 17:00:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D87F5359107
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 086A436654F;
	Tue, 18 Nov 2025 15:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="ANCwTTzE"
X-Original-To: devicetree@vger.kernel.org
Received: from panther.cherry.relay.mailchannels.net (panther.cherry.relay.mailchannels.net [23.83.223.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1272F39BF;
	Tue, 18 Nov 2025 15:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.223.141
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763481421; cv=pass; b=blqYl4bqkncg8HI7W7ua+CXraxs0nfJmrzORtZLKhi/qphNgmHyYsgkGYpil6BTO/Sg2p0coyS5nj6TD1TXVNr9DfHYWRf8soiDi05V3lrgst+rflwb1tgZSIzTUaEYDgE6t1CNiv9I8s4jMSLX6qJ/t3241+ldpNbZn6xQr6oA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763481421; c=relaxed/simple;
	bh=C/yEnwr6qcCyjMfV+PiCQOgm11IQziYXpTxKpHLSsmU=;
	h=From:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc:Date; b=aFk8DCVzcghQ6FUJuuGy2URYBSEMY/fPfdB30DwkUtOUYURjwUrziqGsydMSZhe9w/cECtNC8idmwxK7STYlsrM77K0Dr1aOAw4FOPkwXLFNk8vXq4wh8tCkEx4fH0/jkdYdo/7gUUkljH9o6y1XejRmiZFczw1UFuTxYYVFKKc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=ANCwTTzE; arc=pass smtp.client-ip=23.83.223.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 831FF92306F;
	Tue, 18 Nov 2025 15:56:51 +0000 (UTC)
Received: from de-fra-smtpout8.hostinger.io (100-96-202-58.trex-nlb.outbound.svc.cluster.local [100.96.202.58])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id F196D923194;
	Tue, 18 Nov 2025 15:56:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763481411;
	b=WxQcU7pVGZT1/VhTgNg9S6PMtt+g2FvGp9/KY/As/4kWFBlKNfo3ZUYK1VBr5mYxErYhtr
	uKlcxIMC0c4/f+kl9qyiB/OJ1rmgy382ECvymlxIcxHYX77r6zjIc/Ak9IgpQf9nXK6MrS
	8z31Lvds1mWpV158cyw7Nth/yZUUJJ13fkugimAw1X5anGwsEVSv4MRo/xWCTAejLrXsZ9
	tQEIWx+1Joyjvd3Bsq4g/TXEX8rkbWCWkTtxM0B/MHQsBFXJA4YAH93Aus2DHeUnd6MZWm
	768/YOlOrhMHgnJ3QNFqIhP7kgNqdNbnD5FsgxfbDJfM4fCI96qeHUIp7cuiVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763481411;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=gq9UixTYOGF5lJMMtrTQ7J1H2j6p2P/BMXvvWlNxBtU=;
	b=fELg2NyAIHOblqT/ynx81L6Fa0K6pgfjBHSgwtxYfsgEXxEcF7pL9Zqg8Wy1e+bIiC/wyD
	SSLgC0WMcN/E6g+Jm+s/UNoakPBSqd5UiSxbBGBQ0MXRWLtoZdwWNCCWdzQpoY+WEGyp6i
	UwuOF9H7sHomHQmsgaKjpcMLF4st8LG7IvMdYnsWb8m+r+VVo89BDW22w8H8wVsNZ4G/1s
	7eA+iwLDQ3c3lqER/GH6ZgjuPc2iby3HeXZZL/og06Ufa7SuB0aN9z4RYqt+bakMzQWJVM
	3hyPpnYyIyUelpWML1b4Ca7/4Qk8tJuvpJyDBteb68FF3QM7fXhDJcJuqUNo1A==
ARC-Authentication-Results: i=1;
	rspamd-55b59744f-dbrd8;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Trouble-Absorbed: 35d4bb854b23fe28_1763481411403_921510503
X-MC-Loop-Signature: 1763481411403:1783158274
X-MC-Ingress-Time: 1763481411403
Received: from de-fra-smtpout8.hostinger.io (de-fra-smtpout8.hostinger.io
 [148.222.55.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.96.202.58 (trex/7.1.3);
	Tue, 18 Nov 2025 15:56:51 +0000
Received: from [127.0.1.1] (unknown [IPv6:2001:861:4450:d360:70a8:5f6b:5afe:c6b5])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4d9q3t6bHxz3wl4;
	Tue, 18 Nov 2025 15:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763481403;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gq9UixTYOGF5lJMMtrTQ7J1H2j6p2P/BMXvvWlNxBtU=;
	b=ANCwTTzEm+C4AARXO5+gHn+BG8kbd96cJEqfCl43J06Q9tyFAeesoMvsDmv9JdjB4beGbE
	DwSWTJdoxI6NGri3MzEDg+6LJPhdigW/YzkucYXfJ3O/iLJeBOiqUDxIVjTWs2KJpRHWCT
	T8/2nRV3Y61vrHDbaG8RSrBAtVJbD/wDTkIqm/N2dmwzDsUYR2yboOOEpFuieOuxraRM8J
	5VgQTx1PUk2EbKJfVYpZIxV7JE9QulQPxy533Z9raAKKTokzkM9R6xTHvXoyWt8uaA0ysB
	UcMlScc5WDZzMy3nkBC1xlyXyAp6P4txd25MyH+ffr3kMDPzC+x7yafPkw/T5g==
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Asus Tinker Board
 3/3S
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
In-Reply-To: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Michael Opdenacker <michael.opdenacker@rootcommit.com>
X-Mailer: b4 0.13.0
Date: Tue, 18 Nov 2025 15:56:42 +0000 (UTC)
X-CM-Envelope: MS4xfMFw51Stt3Un0K0zM4Z95zpqyol8woZIB9KlstAIWgIOX8YE2t4fZhchdppWT+ohAD8IPdS1SDL4/mjP7izHxmfuBTZHmUYRsgaJtDU7819imWnKzUqr 50UllCkp+x2/RJoeGotvEn9flb/Ispvg/rrQV5LIyIsmH2aNkOwOGmrtpf3TkrCKVWCS/7Y+xI6sp1qzdw1+ISeYQipWqDE+YXDylmFmUhj+MWDnMMODjJgn QftAYHRqw73rGGMdXzyluqVPYr5cO1MoQrQTG671u/InL+GUcPIHFVfJ5k7RECFRApgH/zr+oMV14kjtcaWh6iO1M7ohYtoylmTBTmz8njxmAvj69lkcW7NN y4fUy14AuOFJE4BNovcfokelgizJ92Fc5FVKT23g0jAp4sKNJ7FGlVDuMHbomtCxEl9U5TJj2/2EPeqDLxm6q9SPe4Xym4kbJzGhPMUGNxkSUsbw7yw6L/CL FYjpMND9xWxCLf2gRG81hBh9W9oXJKzQhdN2lBrOCWD1TXwbaAlJZosb9j102MUBW99NCY/cyZuLj6v1KOhLOWuDaabvFd8HXHm4nsNrw3y3e11Qgr6p2NC6 f1ifvAJ7Q22uWFEb/5dhBpv/mF3Gylm2bAakdt6BwTaN/A==
X-CM-Analysis: v=2.4 cv=Ceda56rl c=1 sm=1 tr=0 ts=691c973b a=Ph0lQeLb5o4XXq6kAtNexw==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=-Yt9tNsTAAAA:8 a=d70CFdQeAAAA:8 a=KKAkSRfTAAAA:8 a=3JIPYtb0mk-80_rjy1QA:9 a=QEXdDO2ut3YA:10 a=qPQde0g9OtMA:10 a=HTceBwxjnJgA:10 a=NcxpMcIZDGm-g932nG_k:22 a=cvBusfyB2V15izCimMoJ:22
X-AuthUser: michael.opdenacker@rootcommit.com

Document the compatible strings for Asus Tinker Board 3 [1] and 3S [2],
which are SBCs based on the Rockchip 3566 SoC.

The "3S" version ("S" for "storage") just adds a 16 GB eMMC
and a "mask ROM" DIP switch to the "3" version.

[1] https://tinker-board.asus.com/series/tinker-board-3.html
[2] https://tinker-board.asus.com/series/tinker-board-3s.html

Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>

---

Changes in V3:

- Remove this Acked-by as the binding code changed substantially:
  Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..800c11323a4f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -86,6 +86,13 @@ properties:
           - const: asus,rk3288-tinker-s
           - const: rockchip,rk3288
 
+      - description: Asus Tinker Board 3/3S
+        items:
+          - enum:
+              - asus,rk3566-tinker-board-3
+              - asus,rk3566-tinker-board-3s
+          - const: rockchip,rk3566
+
       - description: Beelink A1
         items:
           - const: azw,beelink-a1

-- 
2.43.0


