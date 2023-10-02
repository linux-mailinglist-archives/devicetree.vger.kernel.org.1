Return-Path: <devicetree+bounces-5221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 711AB7B5A46
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:38:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 20AA82823FB
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77B631EA94;
	Mon,  2 Oct 2023 18:38:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7069E1EA7E
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:38:35 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29945AD;
	Mon,  2 Oct 2023 11:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=k5VmxsvhsCQHD3qaOAKUM4fWSbgtj0T8aIQI/Dh/xjE=; b=rzkH8izgNXdp83B9qsa2qgLVv9
	g1kWOmOPN26C4M8exKZO/XyU+ENbRP9yd+Uz3nhv6gXN3vEE2PCSJD8fYGj99UV76fyy1zWFq4IOW
	3SXKBlXJymdIZOsdByyqVbvDmbczGgRjVeKbWlrVQAjeQq9nVAbuLKvcBNu/kAh77JvA=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:39414 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qnNoI-00047v-DE; Mon, 02 Oct 2023 14:38:27 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: hugo@hugovil.com,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Mon,  2 Oct 2023 14:38:12 -0400
Message-Id: <20231002183813.1702052-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
Subject: [PATCH v2] docs: dt: writing-schema: add example for multiple DT_SCHEMA_FILES
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Variable DT_SCHEMA_FILES can specify multiple files or patterns, but the
documentation does not indicate how to do it. Each entry needs to be
separated by a column symbol ':'.

Add an example to make it more obvious how to specify multiple
DT_SCHEMA_FILES.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
Link: [v1] https://lore.kernel.org/all/20230928190259.3497563-1-hugo@hugovil.com/

Changes for V2:
- Change description to indicate that multiple patterns can also be specified

 Documentation/devicetree/bindings/writing-schema.rst | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
index 4a381d20f2b4..0a6cf19a1459 100644
--- a/Documentation/devicetree/bindings/writing-schema.rst
+++ b/Documentation/devicetree/bindings/writing-schema.rst
@@ -159,11 +159,14 @@ It is possible to run both in a single command::
     make dt_binding_check dtbs_check
 
 It is also possible to run checks with a subset of matching schema files by
-setting the ``DT_SCHEMA_FILES`` variable to a specific schema file or pattern.
+setting the ``DT_SCHEMA_FILES`` variable to 1 or more specific schema files or
+patterns (partial match of a fixed string). Each file or pattern should be
+separated by ':'.
 
 ::
 
     make dt_binding_check DT_SCHEMA_FILES=trivial-devices.yaml
+    make dt_binding_check DT_SCHEMA_FILES=trivial-devices.yaml:rtc.yaml
     make dt_binding_check DT_SCHEMA_FILES=/gpio/
     make dtbs_check DT_SCHEMA_FILES=trivial-devices.yaml
 

base-commit: 8a749fd1a8720d4619c91c8b6e7528c0a355c0aa
-- 
2.39.2


