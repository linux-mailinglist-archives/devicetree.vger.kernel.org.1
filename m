Return-Path: <devicetree+bounces-138535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D8661A10FA2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 19:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A1151883624
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 18:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 623371FBCB7;
	Tue, 14 Jan 2025 18:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RP76AX8P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACF81FA8F3;
	Tue, 14 Jan 2025 18:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736878501; cv=none; b=jwqczaeUaJXG3PkHv70cGMidGSG9+p7n0t9E5hyFIWugxY+DIe+jifsTfBCqlQJLM1taUrro2J+j+OnNLE+XeLdL0nbb25yP2s7EYpXunZixsUuSCPwyJAdMli9XuFMGy7EvHiM42xjva5RBbjHW4VqViKj0UcXHSeTOpgmLLfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736878501; c=relaxed/simple;
	bh=q7pee8LrMaif6k6BA66qapoE0HqFyZmTUIujhYuO6n0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VLvTiznQmKLn8yhgUwlZcN4PsUYIJGfGW0yUHDUH8TeZwS5aLkpnH45Dy7qNnNzw/P9eS+Jr/BxiNzGNTS9rV6pMx9J7162U3B8ChnoF7pcRZk0R1vIRQdTz+e1/FqNSGegq4L0TVpmJJUJhHjQ7voO8hM/e1+FVOBTlXVMYEsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RP76AX8P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C830C4CEDD;
	Tue, 14 Jan 2025 18:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736878500;
	bh=q7pee8LrMaif6k6BA66qapoE0HqFyZmTUIujhYuO6n0=;
	h=From:To:Cc:Subject:Date:From;
	b=RP76AX8PvT/v//Ukvar3hfWFUiWqun2Lp9LQVfyqnxld8PoizyN+Ia4kVYMsJCkHb
	 ra2BwjVeoMj6UXsgajl60s2RFO4/L4sD8BXvuVcxYAlUFXisYkxcptNbh4zXrDuoon
	 /4bmH5EVERG5z/alyaCEzZwk1PV0Z/wKY/4ub/LGvHOGIhTGR6djztoEQA6LW9LAw5
	 kFs8h3V25ChtXmyET4LIA3c94MP/dyJgTrj9J7Kb77yzs770wgnTTI73IBcmyjUxOc
	 b5Sdd45qk8plync5q3/PUe8tn8tZy6VTwLtW5EVl/dGhHd5rs6WfbOho04pYQKjy5b
	 z7p/nZHPOQ/pw==
From: Masahiro Yamada <masahiroy@kernel.org>
To: Michal Simek <monstr@monstr.eu>
Cc: linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/4] microblaze: fix 'FORCE prerequisite is missing' warning
Date: Wed, 15 Jan 2025 03:13:51 +0900
Message-ID: <20250114181359.4192564-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

If you add foo.dtb into the arch/microblaze/boot/dts/ directory and
run 'make simpleImage.foo', you will observe the following warning:

  arch/microblaze/boot/dts/Makefile:15: FORCE prerequisite is missing

Without FORCE, if_changed cannot detect the command line changes.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/microblaze/boot/dts/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/microblaze/boot/dts/Makefile b/arch/microblaze/boot/dts/Makefile
index b84e2cbb20ee..932dc7550a1b 100644
--- a/arch/microblaze/boot/dts/Makefile
+++ b/arch/microblaze/boot/dts/Makefile
@@ -11,7 +11,7 @@ $(obj)/linked_dtb.o: $(obj)/system.dtb
 
 # Generate system.dtb from $(DTB).dtb
 ifneq ($(DTB),system)
-$(obj)/system.dtb: $(obj)/$(DTB).dtb
+$(obj)/system.dtb: $(obj)/$(DTB).dtb FORCE
 	$(call if_changed,copy)
 endif
 endif
-- 
2.43.0


