Return-Path: <devicetree+bounces-6442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C41B7BB658
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:21:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6828F1C2096F
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 11:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C5F81C68F;
	Fri,  6 Oct 2023 11:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F17E1C689
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 11:21:21 +0000 (UTC)
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl [79.96.170.134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04A8F10D;
	Fri,  6 Oct 2023 04:21:16 -0700 (PDT)
Received: from localhost (127.0.0.1) (HELO v370.home.net.pl)
 by /usr/run/smtp (/usr/run/postfix/private/idea_relay_lmtp) via UNIX with SMTP (IdeaSmtpServer 5.2.0)
 id 9a1c822740487185; Fri, 6 Oct 2023 13:21:15 +0200
Received: from kreacher.localnet (unknown [195.136.19.94])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by v370.home.net.pl (Postfix) with ESMTPSA id 8DA8A665D0E;
	Fri,  6 Oct 2023 13:21:14 +0200 (CEST)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Linux PM <linux-pm@vger.kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Lukasz Luba <lukasz.luba@arm.com>, Amit Kucheria <amitk@kernel.org>
Subject: [PATCH v1] thermal: Remove Amit Kucheria from MAINTAINERS
Date: Fri, 06 Oct 2023 13:21:14 +0200
Message-ID: <5716404.DvuYhMxLoT@kreacher>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"
X-CLIENT-IP: 195.136.19.94
X-CLIENT-HOSTNAME: 195.136.19.94
X-VADE-SPAMSTATE: clean
X-VADE-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrgeeigdefjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfjqffogffrnfdpggftiffpkfenuceurghilhhouhhtmecuudehtdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvefufffkggfgtgesthfuredttddtjeenucfhrhhomhepfdftrghfrggvlhculfdrucghhihsohgtkhhifdcuoehrjhifsehrjhifhihsohgtkhhirdhnvghtqeenucggtffrrghtthgvrhhnpeefvddtfeffveeguefgtdeiuddtieelheegkefhhefgkeefuddutdehgfdvudduieenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppeduleehrddufeeirdduledrleegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepudelhedrudefiedrudelrdelgedphhgvlhhopehkrhgvrggthhgvrhdrlhhotggrlhhnvghtpdhmrghilhhfrhhomhepfdftrghfrggvlhculfdrucghhihsohgtkhhifdcuoehrjhifsehrjhifhihsohgtkhhirdhnvghtqedpnhgspghrtghpthhtohepuddupdhrtghpthhtoheplhhinhhugidqphhmsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprhgrfhgrvghlsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehsrhhinhhivhgrshdrphgrnhgurhhuvhgruggrsehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepuggrnhhivghlrdhlvgii
 tggrnhhosehlihhnrghrohdrohhrghdprhgtphhtthhopehruhhirdiihhgrnhhgsehinhhtvghlrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-DCC--Metrics: v370.home.net.pl 1024; Body=11 Fuz1=11 Fuz2=11
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Amit Kucheria has not been participating in kernel development in any
way or form for quite some time, so it is not useful to list him as a
designated reviewer for the thermal subsystem or as the maintainer of
the thermal zone device bindings.

Remove him from those two places accordingly.

Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---
 Documentation/devicetree/bindings/thermal/thermal-zones.yaml |    3 ---
 MAINTAINERS                                                  |    1 -
 2 files changed, 4 deletions(-)

Index: linux-pm/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
===================================================================
--- linux-pm.orig/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
+++ linux-pm/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
@@ -7,9 +7,6 @@ $schema: http://devicetree.org/meta-sche
 
 title: Thermal zone
 
-maintainers:
-  - Amit Kucheria <amitk@kernel.org>
-
 description: |
   Thermal management is achieved in devicetree by describing the sensor hardware
   and the software abstraction of cooling devices and thermal zones required to
Index: linux-pm/MAINTAINERS
===================================================================
--- linux-pm.orig/MAINTAINERS
+++ linux-pm/MAINTAINERS
@@ -21363,7 +21363,6 @@ F:	drivers/media/radio/radio-raremono.c
 THERMAL
 M:	Rafael J. Wysocki <rafael@kernel.org>
 M:	Daniel Lezcano <daniel.lezcano@linaro.org>
-R:	Amit Kucheria <amitk@kernel.org>
 R:	Zhang Rui <rui.zhang@intel.com>
 L:	linux-pm@vger.kernel.org
 S:	Supported




