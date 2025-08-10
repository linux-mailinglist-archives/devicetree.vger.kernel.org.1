Return-Path: <devicetree+bounces-203078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22843B1FF81
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 08:46:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6073E7A6753
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 06:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D14E2D027F;
	Mon, 11 Aug 2025 06:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=git.sr.ht header.i=@git.sr.ht header.b="aOhXig8q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-a.sr.ht (mail-a.sr.ht [46.23.81.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0917329CEB;
	Mon, 11 Aug 2025 06:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.23.81.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754894766; cv=none; b=TckdbyIgd5f0hcKkdh6bcPzHXnTV5sSYdNpOh8uc3DPlkpmmBzfq0TiizJpeEL4+0JzIvzTr1bhHjFzYaR0JNrP9RYjxUlSLTKb86e1+u/tu0RqS9RdeZ/lyvTij7VRNY2FYfkdhFAGY0QZKG5M4P7Z1jW2XS4a+KS9Uas0Y0Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754894766; c=relaxed/simple;
	bh=jpLSXSBah9slzYu2s2qSaIHeilBmgKVaot04kvQpRRA=;
	h=From:Date:Subject:Message-ID:To:Cc:Content-Type:MIME-Version; b=KztGiv8lFDo7d6CI6NF4o2Mmvou1yJam66owkb0gSEugat9mHCKVF2GbYswqSkc/fSUScxXgqH8RySLeMhqrt6w64ubM85DMd10l45rLItyaLopblLHv1Z+NVhB/auUMzpguoJF+1IJjYZJ71yDYX7wlfVfrukQU9PYCMweepJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=git.sr.ht; spf=pass smtp.mailfrom=sr.ht; dkim=fail (0-bit key) header.d=git.sr.ht header.i=@git.sr.ht header.b=aOhXig8q reason="key not found in DNS"; arc=none smtp.client-ip=46.23.81.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=git.sr.ht
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sr.ht
DKIM-Signature: a=rsa-sha256; bh=jpLSXSBah9slzYu2s2qSaIHeilBmgKVaot04kvQpRRA=;
 c=simple/simple; d=git.sr.ht; h=From:Date:Subject:Reply-to:To:Cc;
 q=dns/txt; s=20240113; t=1754894290; v=1;
 b=aOhXig8qs6fwoJEK+0SYlhq3OCPpAdCc/xSF4V7Nj3ajg/AzkKRFtXC3AaFeTXR313zGaHa7
 fVqiRQjcNZs74RGHvKr3FMWYkktTsfw+HsdWxrzI6acwoyRuW673eN9CCaN8yk7ZZFN6JzN8hU4
 peT1dm27Ia/GH9nhzYL1YmtJh/Jkj+vl2ShvDgJeqPmueLyRmlRuS0kQ5kH5oaIdngjZitBYgDI
 8OpfnpDa5ACfKP5krRfg9ficSK8MQ/QJnV1NWl1lF15qCeG+vcnAZZFI/y4IU0uCvyLLwjEbO2G
 dkhpURODyy3Tw16u4zxJpVyyAYGwLzogs5/6zqatKE2zw==
Received: from git.sr.ht (unknown [46.23.81.155])
	by mail-a.sr.ht (Postfix) with ESMTPSA id 0412E22E58;
	Mon, 11 Aug 2025 06:38:10 +0000 (UTC)
From: ~_xllx_ <_xllx_@git.sr.ht>
Date: Sun, 10 Aug 2025 23:23:55 +0000
Subject: [PATCH linux] of: resolves TODO for copy_from_slice
Message-ID: <175489428990.9320.6825335165759789458-0@git.sr.ht>
X-Mailer: git.sr.ht
Reply-to: ~_xllx_ <elle@weathered-steel.dev>
To: Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>
Cc: Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, rust-for-linux@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

From: elle <elle@weathered-steel.dev>

Replaces the copy loop with `copy_from_slice` which became `const` in
stable Rust with version `1.87.0`.

Authored-by: elle <elle@weathered-steel.dev>
Signed-off-by: elle <elle@weathered-steel.dev>
---
 rust/kernel/of.rs | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/rust/kernel/of.rs b/rust/kernel/of.rs
index b76b35265df2..6a5d27b741c6 100644
--- a/rust/kernel/of.rs
+++ b/rust/kernel/of.rs
@@ -39,12 +39,7 @@ impl DeviceId {
         // SAFETY: FFI type is valid to be zero-initialized.
         let mut of: bindings::of_device_id = unsafe { core::mem::zeroed() };
 
-        // TODO: Use `copy_from_slice` once stabilized for `const`.
-        let mut i = 0;
-        while i < src.len() {
-            of.compatible[i] = src[i];
-            i += 1;
-        }
+        of.compatible.copy_from_slice(src);
 
         Self(of)
     }
-- 
2.49.1

