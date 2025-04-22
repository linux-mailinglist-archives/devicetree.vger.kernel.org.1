Return-Path: <devicetree+bounces-169383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C46A96A25
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 14:38:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99B6F189D515
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 12:38:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CBC28A40C;
	Tue, 22 Apr 2025 12:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="XUDMePRR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF5027F4E7
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 12:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745325223; cv=none; b=LWfKV61GO825y7DI4qGZCree1JNImejEIERvoeL+sKXxmtDIKlxeq/LoIhB2qM6cP0L5DYWwypemvHP0Oz0eLvQcaLqWv3OfLHCw3MdbLlHuhI2JCGz3WFF7FxxBNUikQdWMOGnNwp/w6seHTWb6A8O8p5CCF5EWUw6SGuiDwu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745325223; c=relaxed/simple;
	bh=/9yWr4VyyEEe4/M0GRL7z9tF1e9qb+Lnb8mwvJ2P5Pk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l6zUpd//SKFRpbzIRlydbm/rK3EfwmniyXk/97ee38Z/E/cDhoAsm+zPcVQA2P1LYMZwQGOEuNjatkBiU3Yj42alIErCCeY7wCvzEboC/0VLhD6G8DwHInDCmz6DUt4sU3I3VDER7fve1J/1trS/CkS5dxnYiV7DeKNieMFtieU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=XUDMePRR; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b07d607dc83so3791387a12.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 05:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1745325221; x=1745930021; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u26R6OPpO9Ptto2bJTGXyxlaV262RvFifNUIYuW77gA=;
        b=XUDMePRRwau6hbXp2DRrqU0H80nbAERLpL9U41YiV6qEHRBkoRybdeYEgx/Qe97W/5
         kIFrkYY1znVsixHCClQDjbmHFScc6kQpNBiZQrpl4SvjvzUosXdaaLVkHkR+y6fBhMbN
         NmsqF7pxqdyMt7ivV32Do8fiXMGbN6nW0B87yzfFU81W2kEljZ2M9eJRcaMZLAgM4oD4
         Z9YmUL8oN6Q9+4fwL2BQsm94IcvoTsuPav1xYdc6m/Qhwc2ayUtoBj/7rxERNPB+d8XK
         X7QiHgad+jA5yPPqn++8LjTUqmUKJRg/ZcZR8yS+JyHYRKT2Ddnt8f2G5OLdJIqje6+o
         5pUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745325221; x=1745930021;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u26R6OPpO9Ptto2bJTGXyxlaV262RvFifNUIYuW77gA=;
        b=CUsMpwpP2144RVs0fMZrfYNOGL59nT77KeXdhCbIuyX9VUqPqw+N98NRzkYMr8W5D0
         el6eEkAI7ZeJlafMUNa0gCokCk7UlbDItGbc2n0yQoQCd1ux4iCtWW4GhBNOGtIU0a42
         5b0epv3c2SZPzWlkKLEMbXAHFWOKVpHNw8McWsU/ytKYtia0WqK+hU2zMmiTfvkpfhmg
         OQiNw1BIZBOddsQ5xorJsXx78OUnemtbMtkepVgXwzKplfjEz3EDUHNVTnBD20T3TnI6
         +7feywoCsLNJr+KMAmCVeWQkNfoU2fV4Q72cz6pJkgboNCxCRmwahVY/XhCsbYi3dTnV
         TnEw==
X-Forwarded-Encrypted: i=1; AJvYcCXVegE5qjutwU7LdwcplCsPzQnODTsBs9bXd3hG2FHf7lIe7MjvSzEAwQThzB9lksmCCje29k3qZxxR@vger.kernel.org
X-Gm-Message-State: AOJu0YwA/EQdn1ZnPEqIeejplfFQR0VE5Hg+Zx+8E+mdGqDkfb9sb1mH
	Gc8y8L5CApoyV5wEDXdLAGj7QXuI/QWg+KLFHNORc5+KlLOT+q5ZVwNaFMQPbw==
X-Gm-Gg: ASbGnct6u55yJC7pDR6w8hLnEzi6fFbBGqAQJ4qyKlnfdqKTN4FpTbEzTdYMMSCJYxr
	v7uAPUYLcfxwAtihWjLjRqIpf3eK4kYqq5SV5n4v+I14msSfAuYHUhoWJK8aenIa8n6RK6wcpUm
	cEJwEcU/X3PKUbUCM58ySknCV7t/IUz/5YDtJANETWV66d6CU1xAAl1NIOtP0AcKzCUv9Ia8n64
	djBVBPfuC/6rCKtGmZqAV7w4xlibyvaWhZJymum8rwOTw1orh+y7h9ukYajgVUCzSRY2aQWzrMo
	7GXx69V4bk3XcUVq5VvQex269CYo/5+hmRGkd3eTeZmGRzM=
X-Google-Smtp-Source: AGHT+IFvDd9T69BUDT328lJpIDvCDubF8fDxhHEgU/5Y0HSLsI63u546lW0N0LUSJcs29JlcJhJ4yA==
X-Received: by 2002:a17:90b:2b87:b0:2fa:228d:5b03 with SMTP id 98e67ed59e1d1-3087bb66561mr18646220a91.19.1745325221022;
        Tue, 22 Apr 2025 05:33:41 -0700 (PDT)
Received: from [172.16.116.85] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3087df05025sm8484220a91.13.2025.04.22.05.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 05:33:40 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Tue, 22 Apr 2025 18:02:10 +0530
Subject: [PATCH 2/2] rust: kernel: of: Add overlay id abstraction
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250422-rust-overlay-abs-v1-2-85779c1b853d@beagleboard.org>
References: <20250422-rust-overlay-abs-v1-0-85779c1b853d@beagleboard.org>
In-Reply-To: <20250422-rust-overlay-abs-v1-0-85779c1b853d@beagleboard.org>
To: Jason Kridner <jkridner@beagleboard.org>, 
 Deepak Khatri <lorforlinux@beagleboard.org>, 
 Robert Nelson <robertcnelson@beagleboard.org>, 
 Miguel Ojeda <ojeda@kernel.org>, Dhruva Gole <d-gole@ti.com>, 
 Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
 Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <benno.lossin@proton.me>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
 Saravana Kannan <saravanak@google.com>
Cc: rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1368; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=/9yWr4VyyEEe4/M0GRL7z9tF1e9qb+Lnb8mwvJ2P5Pk=;
 b=owEBbQKS/ZANAwAKAQXO9ceJ5Vp0AcsmYgBoB4yIwAGNB+SDnon22g0SDNe6UGP4QO7zgqflx
 mIGzfE0+LyJAjMEAAEKAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCaAeMiAAKCRAFzvXHieVa
 dAtwEACrLPZNxfutVOjabHDh4MFYxyKWCDyQ+EKjWeTyzYHUoGw1isI9YJCjoPGDDL0aRw+rjah
 XWhzpQoVr1ttEYP/81Tma/JhowNJObfA/0JrTvL5Uj7A4709Nf3Fvrm9E8hSHe7n9EC2d8l4CYH
 YiP13Z1TPZ9LhkVnrr94BTcxLHDeLn0X25q0GqI0jbkZkkHJjYz1vZL9X8QUFRYNwBZkMPOnGYh
 mLv1ZLDNMjOfNAVWL1Fv75VsEHRnJV+l/+NPbT+3mK6ByKdfwOvusIIsUWq/WVWOBWC4INB4D7L
 jaG21kcGMdvjc1G8dovf11tEB+CNdNN5oZihDU3i6mwWHt4T4uVFTtnroZur2deBe75V/AAEvY1
 U0OL87i3J2HqWZcEoHBd72c5kdDFlwpfl/N75Q/tSKENWklpNt1DSzXahtUJgAiMsZ4BBuMmlpP
 ifSqdPIcDKuYG+Cat3CMA0fGxFzrA79GUAUh1T49fERjGZg1lcEDBtuycudwzwwvCnVEWpd8QiM
 WMD8jGIdAyeJ+NJDg4nDPNn7ClLcbIkQAE6+IJp2yv4RxfAadYczEVyugal90RmnemM99dq8D0/
 BJ6mssrg+sACgD9zjSnKeGWXapLrCx6Uz0e07yIJkHfm+geIad03YWMwlD0Plfqbgah6p3et+fQ
 xnKep5NwyFwMv8w==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

Allow applying devicetree overlays from Rust.

The overlay is removed on Drop.

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 rust/kernel/of.rs | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/rust/kernel/of.rs b/rust/kernel/of.rs
index db4ec26ff7de024f5e513a2223cfd841f57b1434..76dbb118d2dc21d1174e0a1ca8f8610d1d176119 100644
--- a/rust/kernel/of.rs
+++ b/rust/kernel/of.rs
@@ -80,3 +80,32 @@ pub fn as_raw(&self) -> *mut bindings::device_node {
         self.0.get()
     }
 }
+
+/// Devicetree overlay present in livetree.
+///
+/// The overlay is removed on Drop
+pub struct OvcsId(kernel::ffi::c_int);
+
+impl OvcsId {
+    /// Create and apply an overlay changeset to the live tree.
+    pub fn of_overlay_fdt_apply(overlay: &[u8], base: &DeviceNode) -> Result<Self> {
+        let mut ovcs_id: kernel::ffi::c_int = 0;
+
+        crate::error::to_result(unsafe {
+            bindings::of_overlay_fdt_apply(
+                overlay.as_ptr().cast(),
+                overlay.len().try_into().unwrap(),
+                &mut ovcs_id,
+                base.as_raw(),
+            )
+        })?;
+
+        Ok(Self(ovcs_id))
+    }
+}
+
+impl Drop for OvcsId {
+    fn drop(&mut self) {
+        unsafe { bindings::of_overlay_remove(&mut self.0) };
+    }
+}

-- 
2.49.0


