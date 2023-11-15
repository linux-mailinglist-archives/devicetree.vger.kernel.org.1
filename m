Return-Path: <devicetree+bounces-13942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C4C7E17F5
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 00:37:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 199CFB20D82
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 23:37:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBD6119BAB;
	Sun,  5 Nov 2023 23:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="GZmmwJj2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452DCB64D
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 23:37:11 +0000 (UTC)
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C889ED51;
	Sun,  5 Nov 2023 15:37:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1699227428; bh=qE7nH6H94GMs6nmY2PS6X8h2go3Ub6GdZ/t0WOTlQds=;
 b=GZmmwJj2vrehMzyYm+SU7CJeiaSIldQ6k1sT6e9Y3Ulx+QhjuTxtBAZSRs+79U892FMVwZCTr
 9SRUlvjvxT5WZYm4ecxpVwWW81Otlrt+wLa8chj26IT8sX8bEcoAxJiqndCho4R9p6sRok6zM9R
 5bl59D4b6cNoFYLNsM/GQ7ARmEyKaL23muUNGTULXXudIo0GQKNtsusTjusJ+t4OZD+eNW7idHz
 XdX4O3A+o+N3zt55zskikgltzQIveVkinqVvTN34NJ/9XpUoq2ikmP0zv7nr6pPjwBcsZPNfLur
 RUt3SUDO33LJfvsVUIeWFNx5zRTngZtk8eR7hY8/a6Ug==
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/9] media: dt-bindings: rockchip,vdec: Add RK3288 compatible
Date: Sun,  5 Nov 2023 23:36:13 +0000
Message-ID: <20231105233630.3927502-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231105233630.3927502-1-jonas@kwiboo.se>
References: <20231105233630.3927502-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 654827241b004d4cddbe0c9e

Add a RK3288 compatible for a version of the Rockchip VDEC IP that only
support HEVC decoding.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 08b02ec16755..0f00e9c86737 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -16,7 +16,9 @@ description: |-
 properties:
   compatible:
     oneOf:
-      - const: rockchip,rk3399-vdec
+      - enum:
+          - rockchip,rk3288-vdec
+          - rockchip,rk3399-vdec
       - items:
           - enum:
               - rockchip,rk3228-vdec
-- 
2.42.0


