Return-Path: <devicetree+bounces-12396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E387D9413
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:46:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C57B1C20F9D
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B697168BC;
	Fri, 27 Oct 2023 09:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=openmail.cc header.i=@openmail.cc header.b="TNj9Q7hm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74739FBE3
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 09:46:39 +0000 (UTC)
Received: from smtp161.vfemail.net (smtp161.vfemail.net [146.59.185.161])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B49DECE
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 02:46:37 -0700 (PDT)
Received: (qmail 28605 invoked from network); 27 Oct 2023 09:46:35 +0000
Received: from localhost (HELO nl101-3.vfemail.net) ()
  by smtpout.vfemail.net with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted); 27 Oct 2023 09:46:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=openmail.cc; h=from:to:cc
	:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding; s=2018; bh=e/fxR6YN2xfO3OOXNQJoLD0l/
	XKbPIRpysCe8SRGnEY=; b=TNj9Q7hmJlSBMUtz2Lpd5RugEr9Y2/WrOsjJ9amWh
	9MxWnjBmhjfnVVImCjlh1ftaxMb5m66a/LWrwX1v/DKgVwgcChupRLCEjsMuXuAV
	ODq+AIpBYc6fQorWonYIq8D7sMJydWwyLgNFfUJAH6ALysK67mf+zBOeE6+TfdLr
	qU=
Received: (qmail 19138 invoked from network); 27 Oct 2023 09:46:35 -0000
Received: by simscan 1.4.0 ppid: 19049, pid: 19125, t: 0.5299s
         scanners:none
Received: from unknown (HELO bmwxMDEudmZlbWFpbC5uZXQ=) (ZXF1dUBvcGVubWFpbC5jYw==@MTkyLjE2OC4xLjE5Mg==)
  by nl101.vfemail.net with ESMTPA; 27 Oct 2023 09:46:34 -0000
From: Edward Chow <equu@openmail.cc>
To: Rob Herring <robh+dt@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lech Perczak <lech.perczak@camlingroup.com>,
	Edward Chow <equu@openmail.cc>
Subject: [PATCH v2 0/2] dt-bindings: mtd: partitions: Export special values
Date: Fri, 27 Oct 2023 17:46:08 +0800
Message-ID: <20231027094610.1022114-1-equu@openmail.cc>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231025052937.830813-1-equu@openmail.cc>
References: <20231025052937.830813-1-equu@openmail.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are special "offset" and "size" values defined and documented in
linux/mtd/partitions.h:

/* consume as much as possible, leaving size after the end of partition. */
 #define MTDPART_OFS_RETAIN (uint64_t)(-3)

/* the partition will start at the next erase block. */
 #define MTDPART_OFS_NXTBLK (uint64_t)(-2)

/* the partition will start where the previous one ended. */
 #define MTDPART_OFS_APPEND (uint64_t)(-1)

(Though not explicitly, they are compared against variables in uint64_t
in drivers/mtd/mtdpart.c, so they had better be considered as such.)

/* the partition will extend to the end of the master MTD device. */
 #define MTDPART_SIZ_FULL (0)

These special values could be used to define partitions automatically
fitting to the size of the master MTD device at runtime.

However, these values used not to be exported to dt-bindings, thus
seldom used before, since they might have been only used in numeric form,
such as "(-1) (-3)" for MTDPART_OFS_RETAIN.

Now, they are exported in dt-bindings/mtd/partitions.h as 32-bit cell
values, so 2-cell addressed should be defined to use special offset values,
such as "MTDPART_OFS_SPECIAL MTDPART_OFS_RETAIN" for MTDPART_OFS_RETAIN in
linux/mtd/partitions.h. An example is added to fixed-partitions.yaml.

Edward Chow (2):
  dt-bindings: mtd: partitions: Export special values
  dt-bindings: mtd: partitions: Document special values

 .../mtd/partitions/fixed-partitions.yaml      | 30 +++++++++++++++++++
 MAINTAINERS                                   |  2 ++
 include/dt-bindings/mtd/partitions.h          | 15 ++++++++++
 3 files changed, 47 insertions(+)
 create mode 100644 include/dt-bindings/mtd/partitions.h

--
2.42.0

