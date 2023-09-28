Return-Path: <devicetree+bounces-4394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B517B25A3
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 21:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E90BB2820DE
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 19:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68A261C693;
	Thu, 28 Sep 2023 19:03:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780CF5253
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 19:03:07 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DE5D194;
	Thu, 28 Sep 2023 12:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=8qfV6+XarzhmAa+YjW7gMWQ3/yom86jJ+dlvQAfmhFE=; b=za82yO7yAGggbOysnBRt3wHfbi
	NPOoIMfpj220OrDblWaZf4TTNC/Q9HCjGiMPYBZdXG8NYDa++XFOw+seUZX4E7xbv9WyJIjxZYr/I
	6YwaBHS6TFxbX+kIAEf597lxxgEb0VXtVkOHejVCjN6zYBRTmwD8fDihEDr3ncGmTpZ0=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:51996 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qlwHt-00067p-M3; Thu, 28 Sep 2023 15:03:02 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: hugo@hugovil.com,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Thu, 28 Sep 2023 15:02:59 -0400
Message-Id: <20230928190259.3497563-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.30.2
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
Subject: [PATCH] docs: dt: writing-schema: add example for multiple DT_SCHEMA_FILES
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Variable DT_SCHEMA_FILES can specify multiple files, but the
documentation does not indicate how to do it. Each entry needs to be
separated by a column symbol ':'.

Add an example to make it more obvious how to specify multiple
DT_SCHEMA_FILES.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 Documentation/devicetree/bindings/writing-schema.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
index 4a381d20f2b4..a500d3c2e12e 100644
--- a/Documentation/devicetree/bindings/writing-schema.rst
+++ b/Documentation/devicetree/bindings/writing-schema.rst
@@ -159,11 +159,13 @@ It is possible to run both in a single command::
     make dt_binding_check dtbs_check
 
 It is also possible to run checks with a subset of matching schema files by
-setting the ``DT_SCHEMA_FILES`` variable to a specific schema file or pattern.
+setting the ``DT_SCHEMA_FILES`` variable to a specific schema file, multiple
+schema files or pattern.
 
 ::
 
     make dt_binding_check DT_SCHEMA_FILES=trivial-devices.yaml
+    make dt_binding_check DT_SCHEMA_FILES=trivial-devices.yaml:rtc.yaml
     make dt_binding_check DT_SCHEMA_FILES=/gpio/
     make dtbs_check DT_SCHEMA_FILES=trivial-devices.yaml
 

base-commit: 633b47cb009d09dc8f4ba9cdb3a0ca138809c7c7
-- 
2.30.2


