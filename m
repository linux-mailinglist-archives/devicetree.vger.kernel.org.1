Return-Path: <devicetree+bounces-157418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67919A609D7
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 08:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C95D2167623
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 07:19:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60AED1FC7F6;
	Fri, 14 Mar 2025 07:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="C54Wa2RF"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842FA1FC7DF
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 07:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741936408; cv=none; b=aW2XBzywqnr4+X0ZSDAmvt/r7zpiJvXsVRPfl/SuapdwADvCQ/OnnxkWYdmwMrfmAgNWkLZsXVWI7aNIOpma3RnQTEjlOhPkv/We8xvNQsklsX6CzTwejIqnRrH31xzsPFNWR8ddqP+eELNuqoS+IUosgvJ0LiHKtvCS67TG6lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741936408; c=relaxed/simple;
	bh=NScUTvqdEVdw4ot7XhAHJw0HPUofLS8V64DuTYSuLuw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GMqyit1+tL4eKW3DXuyudbk57exd3uYl4nya8VuAvm8/F4eFUgzPIbgi1/W+a7XRxd3EpDiv4goEcCZXP4/b8dl1vi7SbF81sdNSRkb6QPoDyUq71mScNeyMkx6r+bGcYlhTAsrCB9IgQN9UH97wy8G+wOPke9z4/hf2JckWnMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=C54Wa2RF; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1741936405;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eJA/vIQPU2sfCgCaSqOtMt76smC5XY61sR3OGsGoH+M=;
	b=C54Wa2RFRbiN1RmDz0CIEf51iluBltyTG9OwxaWvBBVHqKbnqGqYxOdUz7LGTwK48DIEdI
	RteMzxp8u2GeuJxm2Rq/6i/MzZmRfpR/9C6wzyJZxLK9ub04g1f8kRzLbzeUC3xXHS8uwz
	CRIboCKMkKZPDfU41YlCu7IT3DnAUik=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-193-ttNDL78BM2GaAamgs_mB0Q-1; Fri,
 14 Mar 2025 03:13:21 -0400
X-MC-Unique: ttNDL78BM2GaAamgs_mB0Q-1
X-Mimecast-MFC-AGG-ID: ttNDL78BM2GaAamgs_mB0Q_1741936400
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AA1601956089;
	Fri, 14 Mar 2025 07:13:20 +0000 (UTC)
Received: from thuth-p1g4.redhat.com (unknown [10.44.32.82])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id E5ED318001DE;
	Fri, 14 Mar 2025 07:13:17 +0000 (UTC)
From: Thomas Huth <thuth@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-arch@vger.kernel.org,
	Thomas Huth <thuth@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	devicetree@vger.kernel.org
Subject: [PATCH 40/41] scripts/dtc: Update fdt.h to the latest version
Date: Fri, 14 Mar 2025 08:10:11 +0100
Message-ID: <20250314071013.1575167-41-thuth@redhat.com>
In-Reply-To: <20250314071013.1575167-1-thuth@redhat.com>
References: <20250314071013.1575167-1-thuth@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111

Update the header to this upstream version to change the
__ASSEMBLY__ macro into __ASSEMBLER__ :

https://web.git.kernel.org/pub/scm/utils/dtc/dtc.git/commit/?id=f4c53f4ebf78

Cc: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Thomas Huth <thuth@redhat.com>
---
 scripts/dtc/libfdt/fdt.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/dtc/libfdt/fdt.h b/scripts/dtc/libfdt/fdt.h
index 0c91aa7f67b5b..a07abfcc71089 100644
--- a/scripts/dtc/libfdt/fdt.h
+++ b/scripts/dtc/libfdt/fdt.h
@@ -7,7 +7,7 @@
  * Copyright 2012 Kim Phillips, Freescale Semiconductor.
  */
 
-#ifndef __ASSEMBLY__
+#ifndef __ASSEMBLER__
 
 struct fdt_header {
 	fdt32_t magic;			 /* magic word FDT_MAGIC */
@@ -45,7 +45,7 @@ struct fdt_property {
 	char data[];
 };
 
-#endif /* !__ASSEMBLY */
+#endif /* !__ASSEMBLER__ */
 
 #define FDT_MAGIC	0xd00dfeed	/* 4: version, 4: total size */
 #define FDT_TAGSIZE	sizeof(fdt32_t)
-- 
2.48.1


