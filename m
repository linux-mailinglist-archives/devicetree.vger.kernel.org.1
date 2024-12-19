Return-Path: <devicetree+bounces-132770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D739F815E
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DE8918968B2
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 17:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 782701C5CC9;
	Thu, 19 Dec 2024 17:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVz0Esoh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E2419F117;
	Thu, 19 Dec 2024 17:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734627983; cv=none; b=R9KslVDv0QpIXnEL3Vz3JH3iHPSupYCu610FMN3xcT6FCLR010LpLMTf/m03HMewp13gNj0rDiVdCfHBOlX5Ia7l8ez7foKAuR4UBtYCiE1YVO1TUpg3oVsgEGW5mmTpFUiF98FsV1X7bOaexlNLUaCD+3kLKJ8SmFes4EPHWGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734627983; c=relaxed/simple;
	bh=GT+27vqY17YH/pjwzvOKAHmA0mrVjnDblNyfUajrdXc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tL8/FG0rywyH+JvJDzydwKC/88YPgKFsQmNIqexzsnAeidJEDnKWSfFSDpoMm37Dh00NWsDSbLHjYOfGUohdMN+7bWe7pqsLA8vzLn2xCr8u9FS/q5Y/64M2NGy1tqy0kqWP9qjo1f8TRcSFJwP/fqXgaZ3+QavYMGljG/k+JaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVz0Esoh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86FD0C4CED6;
	Thu, 19 Dec 2024 17:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734627982;
	bh=GT+27vqY17YH/pjwzvOKAHmA0mrVjnDblNyfUajrdXc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uVz0EsohsS4BjqEAgEIanGvx8N/fl1rnKmfaQzKDtZweDXB4RJer/1hoJb8VOObF4
	 z6hN6MBwuwITjIoaNiwfUEOxqC69s7ebJhqvKeklu49plKOKx5pGSABXTcWp7UZtcp
	 ry6fOhW4AdMnOWzNVO6JjWxzC7C/TsWg0yJz/GvmAY+aiN38XTAR4dIA1B+X/ISjAt
	 ou/OQNO6r641ZLCRwZcBepHizaM0xkBqlZnv0/yaFpYAy0Nsx2fH1h3w+tnjLAcXry
	 GJmZAmI1rDG0Pc/RKD5YeWimMptQCXJhuUuaC/EKxPmlkQ3s8TPX0x1NzEB5gN3JwA
	 08qXAs2ShT/Qg==
From: Danilo Krummrich <dakr@kernel.org>
To: gregkh@linuxfoundation.org,
	rafael@kernel.org,
	bhelgaas@google.com,
	ojeda@kernel.org,
	alex.gaynor@gmail.com,
	boqun.feng@gmail.com,
	gary@garyguo.net,
	bjorn3_gh@protonmail.com,
	benno.lossin@proton.me,
	tmgross@umich.edu,
	a.hindborg@samsung.com,
	aliceryhl@google.com,
	airlied@gmail.com,
	fujita.tomonori@gmail.com,
	lina@asahilina.net,
	pstanner@redhat.com,
	ajanulgu@redhat.com,
	lyude@redhat.com,
	robh@kernel.org,
	daniel.almeida@collabora.com,
	saravanak@google.com,
	dirk.behme@de.bosch.com,
	j@jannau.net,
	fabien.parent@linaro.org,
	chrisi.schrefl@gmail.com,
	paulmck@kernel.org
Cc: rust-for-linux@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	rcu@vger.kernel.org,
	Danilo Krummrich <dakr@kernel.org>
Subject: [PATCH v7 16/16] MAINTAINERS: add Danilo to DRIVER CORE
Date: Thu, 19 Dec 2024 18:04:18 +0100
Message-ID: <20241219170425.12036-17-dakr@kernel.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241219170425.12036-1-dakr@kernel.org>
References: <20241219170425.12036-1-dakr@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Let's keep an eye on the Rust abstractions; add myself as reviewer to
DRIVER CORE.

Signed-off-by: Danilo Krummrich <dakr@kernel.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ed4b293b1baa..15c8df5b3590 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7021,6 +7021,7 @@ F:	include/linux/component.h
 DRIVER CORE, KOBJECTS, DEBUGFS AND SYSFS
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 R:	"Rafael J. Wysocki" <rafael@kernel.org>
+R:	Danilo Krummrich <dakr@kernel.org>
 S:	Supported
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
 F:	Documentation/core-api/kobject.rst
-- 
2.47.1


