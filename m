Return-Path: <devicetree+bounces-104726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A76983FEF
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 10:07:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4732AB215E2
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 08:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EEF0149E17;
	Tue, 24 Sep 2024 08:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b="pTTBsRxt"
X-Original-To: devicetree@vger.kernel.org
Received: from va-2-53.ptr.blmpb.com (va-2-53.ptr.blmpb.com [209.127.231.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1166754FAD
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 08:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.127.231.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727165261; cv=none; b=mW9IundZ62ksOOWeTwy0+b7eK0spuL2fp2A9TF5yGWPeFMq1W92C965TsP1HUcjvS0gVub/uHAio4JVu5zDgsIrL+ntvWJk+Ex2WJvfWTQWu1HySwtJO+9FLafq+3U9ef/JRliEIzm8c3zThN0uW5k8gNm601F6hZp/4d712zWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727165261; c=relaxed/simple;
	bh=Jwg/VxDBpz9Eh5EMmXdQ5ngAAoQm03jMY7e4YlUGtuc=;
	h=To:From:Date:Message-Id:Cc:Subject:Content-Type:Mime-Version; b=qhpCoKlvUNg44LqIB0ZXV3sbb5n9tzUuu6a6puXi2wUNWDTB1lyQAV5Y1b22J9wG1NefLy4mtjX9eyV1hiWS27NLtoyDCtPVK7F8/RjQpNzfi/dYcBb06VAGgYoflTr3t/0jH9RpXtI+5N98J2TcW8u9hROvz1EocDp9Hz96K08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io; spf=pass smtp.mailfrom=deepcomputing.io; dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b=pTTBsRxt; arc=none smtp.client-ip=209.127.231.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deepcomputing.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=deepcomputing-io.20200927.dkim.feishu.cn; t=1727165243;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=n4FlAamSfqVt7limHNsws50tZuvmPfsWIXOGbBiq7G8=;
 b=pTTBsRxtcpT1X806nIPg1ilOeZVDPMla+E+UNcUaidTala1kf2rWiH/3BHGv6WSxyJkB+B
 1tx1uAPInS+qOHx5kvYU9m+tYOyPBYVPvy/BPaMToMoKzX5HcPcgcmguowp/FBiujL1y2K
 WGaMnZnl5qs2elGkAyeRUC5D7weO5EEgCFHYqIeDT5PEQhMWZKXrQxUciqZrpvQbymNA2m
 ClWo2lWGSlQiwvfwopvre+8h4Mej2cxwSW3rn353NCOM7DUcugf2mQw/Wsq0eeH4IKmqN+
 r4daMtxY5a38lUZ++3OUo+iOidLkjMX/nq9aN2sIQYxuvuzjFDsRlNPgkXFJ4w==
To: "Conor Dooley" <conor@kernel.org>
From: "Sandie Cao" <sandie.cao@deepcomputing.io>
Date: Tue, 24 Sep 2024 16:06:48 +0800
Message-Id: <20240924080650.1345485-2-sandie.cao@deepcomputing.io>
X-Mailer: git-send-email 2.34.1
Cc: "Emil Renner Berthing" <kernel@esmil.dk>, 
	"Rob Herring" <robh@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>, 
	"Paul Walmsley" <paul.walmsley@sifive.com>, 
	"Palmer Dabbelt" <palmer@dabbelt.com>, 
	"Albert Ou" <aou@eecs.berkeley.edu>, 
	"Heiko Stuebner" <heiko.stuebner@cherry.de>, 
	"Neil Armstrong" <neil.armstrong@linaro.org>, <rafal@milecki.pl>, 
	"Linus Walleij" <linus.walleij@linaro.org>, 
	"Michael Zhu" <michael.zhu@starfivetech.com>, 
	"Drew Fustini" <drew@beagleboard.org>, <linux-riscv@lists.infradead.org>, 
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, 
	<dhs@frame.work>, <ams@frame.work>, <gregkh@linuxfoundation.org>, 
	<yuning.liang@deepcomputing.io>, <huiming.qiu@deepcomputing.io>, 
	"Sandie Cao" <sandie.cao@deepcomputing.io>
X-Original-From: Sandie Cao <sandie.cao@deepcomputing.io>
Subject: [patch v2 1/3] dt-bindings: vendor: add deepcomputing
Received: from roma-MacBookPro.. ([61.141.249.39]) by smtp.feishu.cn with ESMTPS; Tue, 24 Sep 2024 16:07:21 +0800
X-Lms-Return-Path: <lba+266f2733a+730aeb+vger.kernel.org+sandie.cao@deepcomputing.io>
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

Add deepcomputing into vendor list.

Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 56d180f9c1cc..7803b53e9a6a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -356,6 +356,8 @@ patternProperties:
     description: DataImage, Inc.
   "^davicom,.*":
     description: DAVICOM Semiconductor, Inc.
+  "^deepcomputing,.*":
+    description: DeepComputing (HK) Limited
   "^dell,.*":
     description: Dell Inc.
   "^delta,.*":
-- 
2.34.1

