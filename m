Return-Path: <devicetree+bounces-5283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5BE7B5D39
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 00:40:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 8ED4E1C208EE
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 22:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A3D520335;
	Mon,  2 Oct 2023 22:40:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3946A1E521
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 22:40:26 +0000 (UTC)
X-Greylist: delayed 469 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 02 Oct 2023 15:40:24 PDT
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32FD69D;
	Mon,  2 Oct 2023 15:40:24 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 3F024828597D;
	Mon,  2 Oct 2023 17:32:35 -0500 (CDT)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id Dcw0G3nmlXZQ; Mon,  2 Oct 2023 17:32:34 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id F3ADF82859F5;
	Mon,  2 Oct 2023 17:32:33 -0500 (CDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com F3ADF82859F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1696285954; bh=LufzGIQ23pbgUD0Ke1CGyp8zeUOTPZspVJDLvGFGfgY=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=eF4bxsy7wgoMOs7K3EjAhBoDZgP2Z/Tg8yq+IrMrXBnffBHoyXNj0nIsRmvwPVkz6
	 8eQPEQIXPBAMTr8kLh0RthdEst3+xA65gUDGK+T/WMsdQM8pnjg7fPgckug/XQTUO2
	 PZTiebt4i5QNMK/N0g655gSF7020iXbmGWS3VbO0=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id jAgWyKlAZhMy; Mon,  2 Oct 2023 17:32:33 -0500 (CDT)
Received: from raptor-ewks-026.lan (5.edge.rptsys.com [23.155.224.38])
	by mail.rptsys.com (Postfix) with ESMTPSA id 651DA8285418;
	Mon,  2 Oct 2023 17:32:33 -0500 (CDT)
From: Shawn Anastasio <sanastasio@raptorengineering.com>
To: devicetree@vger.kernel.org,
	lee@kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Shawn Anastasio <sanastasio@raptorengineering.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Icenowy Zheng <uwu@icenowy.me>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add prefix for SIE
Date: Mon,  2 Oct 2023 17:32:20 -0500
Message-Id: <e2fb7a1924bf5642204c50d73d414b5d41e09e93.1696285339.git.sanastasio@raptorengineering.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1696285339.git.sanastasio@raptorengineering.com>
References: <cover.1696285339.git.sanastasio@raptorengineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a vendor prefix for Sony Interactive Entertainment LLC (SIE).

Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..cff35e68a34d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1211,6 +1211,8 @@ patternProperties:
     description: Si-En Technology Ltd.
   "^si-linux,.*":
     description: Silicon Linux Corporation
+  "^sie,.*":
+    description: Sony Interactive Entertainment LLC
   "^siemens,.*":
     description: Siemens AG
   "^sifive,.*":
-- 
2.30.2


