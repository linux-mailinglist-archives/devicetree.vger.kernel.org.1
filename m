Return-Path: <devicetree+bounces-38377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D144848C8D
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 10:44:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9056B1C20777
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 09:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 072A818E3A;
	Sun,  4 Feb 2024 09:44:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07AE018E2E
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 09:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707039862; cv=none; b=BH1NP7WCiDHBHvC4XZW7xprEpkxps2uYaW8B/TcNzQfAAu0T6ULE7QW2nPahC81j7OcRZwbEJ41i5AQ0hZMKMAY14nsWgV9/lAZV2rMvRxIqei1Jf7QN5yOwntbwglIXZOC8ZDs+d+VqXvP6SREPVo1dEJu+kT9jUDzrpb59ddg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707039862; c=relaxed/simple;
	bh=SzIk5uOwPqCcEa3otgEgu+zY4KWuvVCHpUZUkQTHmUI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qNY4rF4TvkzDOyzVa3f1boOR42w2KD1Vnvc8ExVzQcHpsmmhNmtKVCOkvuPOlpsLJIV+Bc2C80etizWhG0EiB9jqHnrSaf/h5CKLD0p1QbaxzBZvvdkcTKPtucEFLYoG5Ks+rA60HYWS+V6HYHttOt9XDUDEdLcUDzG0ZOQ7S74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75253113E;
	Sun,  4 Feb 2024 01:45:01 -0800 (PST)
Received: from e110479.fosdem.net (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 104553F738;
	Sun,  4 Feb 2024 01:44:15 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Nick Alilovic <nickalilovic@gmail.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add Jide
Date: Sun,  4 Feb 2024 10:44:02 +0100
Message-Id: <20240204094404.149776-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204094404.149776-1-andre.przywara@arm.com>
References: <20240204094404.149776-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Jide tech once create the Remix OS Android system, and shipped it on
some custom hardware. Add their name to the bindings.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 1a0dc04f1db4..dfb834a9279f 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -719,6 +719,8 @@ patternProperties:
     description: JetHome (IP Sokolov P.A.)
   "^jianda,.*":
     description: Jiandangjing Technology Co., Ltd.
+  "^jide,.*":
+    description: Jide Tech
   "^joz,.*":
     description: JOZ BV
   "^kam,.*":
-- 
2.25.1


