Return-Path: <devicetree+bounces-169382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20266A96A2B
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 14:38:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D28463BF0C3
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 12:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9262727EC9D;
	Tue, 22 Apr 2025 12:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="HJf/CMuC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B378428A3F5
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 12:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745325216; cv=none; b=DSJyDxUYW9lPZDpdzXbe3580MZ/jCdftAdSsP4zNCF92g4Ql0rWW/i13mW/3lLl+e6G5YPj+xaU97f4hecclUmhX1QUwPUeKpyXJpZF+USLm7KYuPnWabWRQShj6KmgfyQDFoBSa+prImvwSa+mcF5emrRUjGZizV1DkjcuH3nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745325216; c=relaxed/simple;
	bh=2hKOBtEymVC7pOph+6w0vAePMoaCk9hfLbuLPBo2rQY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pViXgI2so6LMr0PcNLVNwms1bhpgkQGJ5Nygabgh09tk6NplqpFmoH/c/ZJm1OeUIYH+pwNsOOceuJWpFXGO5nWleZuZmxWBdvyTZsWf0H2qbYuTtqFMzKDCQcm3KG6PwBx5w0o7Y90ImDmWKNHR+eFC6wG/RGIGh5Y4GpXNHAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=HJf/CMuC; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2ff64550991so3712773a91.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 05:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1745325213; x=1745930013; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m1q04zJc7THaG84fNo5KZ+mZOArXNwFTM+IwGvnWiCY=;
        b=HJf/CMuCZVSnMSfLAtezt9an1lhZyJdbcp5qKTNmczHj+4d3tIVmbFQ7XC5/n1U3Zt
         waITk9nRez6l44HxDCNF4XyPyMlKf2NCMYK1WmN9oZrr8++7/AIqgKyaLYg3jBRTghKE
         PoYoY+OeWMEgmy6OCju2is649Bs3ux//ngwdvQfa5fsKmKrAO3TaZcBiDDSFud7RRRh6
         wXWDNMjZJuEjdKTGpGKo1q5T8KmglAgbbt35d5pos0hdIWI0Dpu4Nf6F1UpieNVvfJnP
         ZRYdmuMcXOiyZloZ8OwlNYj1cFWZDmv3tJfaUlMIuEKcGLlz8SfSN0yjNE+2YRzzfMPz
         G8rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745325213; x=1745930013;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m1q04zJc7THaG84fNo5KZ+mZOArXNwFTM+IwGvnWiCY=;
        b=nGLak+/6JC+sdWZxHmf63PnJLdIEAxK2+JwdWeUhCBloCeWhuRIEKQJ85yzigKCaeY
         00nA3aeu6jDriFo2jEICa8r8fcA0gHCe5wzaz7BZpe864KVwnS8DAEBVuz0pYcaORW79
         EoTJ8RQ0N+IgYAuCs0aDkk8jfgdXMEbfLiBjBTq+nbV8eHKVqJUF4KShzUZIX6VR8W1C
         +XfZP49TQnKx6k1o92hV7ymE+8izu8WSVjdgmhpJdrd80TAjjq7dSRhIE8ZIkuhFLDDp
         Izo4noQdfnRGrlSvWvXFnDpFuE9vX6XY1YZYzwgLptMlRnDhtxewboyAktHTZul5yLTg
         kNCg==
X-Forwarded-Encrypted: i=1; AJvYcCXwmtjqnz3dn6lmscS+6W1C356ZwiRpSY9U78OLmU8A53hh+ISD6430WFepfmpy/LvqE0dfPLNRIgqv@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq9E2FL9xc/nH7V0LNvQohan/5hwICNYvo1KCgsMuyViTWAl5H
	UZeCrA6RUtLyO5D4+JPUGj0veEENSLVa1gnZYWxvSAkT665ZKzMkUloDfEg9CuJllSmF848vaLs
	cwA==
X-Gm-Gg: ASbGncv1CLFqR4bIVeZkHxg3n4goAw9Hxa0zcJrn9WRe1KG8BBIEI5gQvs7uQ0vq411
	f9HFl06+86J/ywZ41Tpg6GOlQIXwKQnMxI1/Po/Y3Y+ylLPEINrhEUCyCLshXtHUYqhJfOZBNFF
	2ufLzbwhBmn1nF8LddSsQmMKcXaALUDlzsFOQlc6k7VADbfdknpb5kAkZrEM2JRllJRmUaW9WrA
	+ec78HylZKazfhcrfV6fqkNFkHwPn87cKiLYRqBneNYDSzfYia5EqiGG4XmEhNuRUaVq2E4FaIf
	yXxHiu270WgiEhyA5BIV0yBE1OtJIWQsNSiDC4EMJ94CC48=
X-Google-Smtp-Source: AGHT+IGu20M9Qhs1tQam3F0PU5r1lALwuixKsqUJEPY5jrVNGdDK0vNQAd2J3a3n3Jgdr5/F8PvPTg==
X-Received: by 2002:a17:90b:2dc6:b0:2ef:114d:7bf8 with SMTP id 98e67ed59e1d1-3087bb39b13mr19934311a91.6.1745325212943;
        Tue, 22 Apr 2025 05:33:32 -0700 (PDT)
Received: from [172.16.116.85] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3087df05025sm8484220a91.13.2025.04.22.05.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 05:33:32 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Tue, 22 Apr 2025 18:02:09 +0530
Subject: [PATCH 1/2] rust: kernel: of: Add DeviceNode abstraction
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250422-rust-overlay-abs-v1-1-85779c1b853d@beagleboard.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3126; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=2hKOBtEymVC7pOph+6w0vAePMoaCk9hfLbuLPBo2rQY=;
 b=owEBbQKS/ZANAwAKAQXO9ceJ5Vp0AcsmYgBoB4yIWeZ6wvm2A43M+0O/4rYHRi7DvyqaA9MO0
 1OUzFZf6XaJAjMEAAEKAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCaAeMiAAKCRAFzvXHieVa
 dIZ9EACsOK1pnoJSbxFxKDgZCFjFpYrqyfORf2yAfTi6eFK9xMJGEnqdn0NGwNVYqghYJJmeMd/
 WQTjUOTQunjo4ToQcQj+xMPXl3H2ox2UnuMVgX/eQVAeK+B961EjCGbmOg/GLvkkkn1JWf/TFXN
 TenPUCLh91mPXzlklNxcfRsV588gzbhOEc6bw03SiVol5fhwduKSsYPtkXBJhK3pPZl76Bf7HP8
 JX0Xp/zewx6l+5hJmPTbu8SaZmLf/9X/kRaBLOVE1rqnyFqAEGJrV5Jaz7InN/zucISTo+miTP5
 e+Esl+f+xsZnzK7S+WQqcSMCxayq2bmuGqQLwRevLYtaiLaU7fdY1PCZmv5/LQlIxXAPjG/ff5w
 xRDPJv9cKRisoEzZ5Xqumdr7t3yDrlLydlD+HTKdqn0jEKCmL0g8g5SryrIPZmIhaX2IuhGjPia
 /1wMfYxfvecCO/BTVxeGRwSSQu+3KRWbqiqPmVHj8bDxJ6HjyEdM8KChiIqt5J6D8TIgBGLLtD0
 Irqjdjji8ZR3JF0QIBPD0mWSzIgHw9FC7pUjAiq05Q6pDFuUMOsjiCgJrpELGG/ca5K8w8jdTW/
 qD5u+AJ8iyRp7w+9+mvdleYKaCQ0lZi60mchjQnj6K1pEYic+V4OTtl9ifDrCW6ov5/uTv+MaP6
 ob2R7iiP78bnf5w==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

Allow getting struct device_node from struct device. This is required
when applying devicetree overlays using the `of_overlay_fdt_apply`.

This structure is never read/constructed from Rust side.

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 rust/bindings/bindings_helper.h |  1 +
 rust/kernel/device.rs           |  5 +++++
 rust/kernel/of.rs               | 24 +++++++++++++++++++++++-
 3 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_helper.h
index ab37e1d35c70d52e69b754bf855bc19911d156d8..95ccd7772006f17c126acc70776b7a19f5768683 100644
--- a/rust/bindings/bindings_helper.h
+++ b/rust/bindings/bindings_helper.h
@@ -23,6 +23,7 @@
 #include <linux/jump_label.h>
 #include <linux/mdio.h>
 #include <linux/miscdevice.h>
+#include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/pci.h>
 #include <linux/phy.h>
diff --git a/rust/kernel/device.rs b/rust/kernel/device.rs
index 21b343a1dc4d2b4ba75c3886ba954be53ada88c2..77ef5addb76f67e952ccf7fadcda59ad72975670 100644
--- a/rust/kernel/device.rs
+++ b/rust/kernel/device.rs
@@ -187,6 +187,11 @@ pub fn property_present(&self, name: &CStr) -> bool {
         // SAFETY: By the invariant of `CStr`, `name` is null-terminated.
         unsafe { bindings::device_property_present(self.as_raw().cast_const(), name.as_char_ptr()) }
     }
+
+    /// Get refernce to the device_node property
+    pub fn device_node(&self) -> &kernel::of::DeviceNode {
+        unsafe { kernel::of::DeviceNode::as_ref((*self.as_raw()).of_node) }
+    }
 }
 
 // SAFETY: Instances of `Device` are always reference-counted.
diff --git a/rust/kernel/of.rs b/rust/kernel/of.rs
index 04f2d8ef29cb953907ae26b5b2ebce926b6feef2..db4ec26ff7de024f5e513a2223cfd841f57b1434 100644
--- a/rust/kernel/of.rs
+++ b/rust/kernel/of.rs
@@ -2,7 +2,7 @@
 
 //! Device Tree / Open Firmware abstractions.
 
-use crate::{bindings, device_id::RawDeviceId, prelude::*};
+use crate::{bindings, device_id::RawDeviceId, prelude::*, types::Opaque};
 
 /// IdTable type for OF drivers.
 pub type IdTable<T> = &'static dyn kernel::device_id::IdTable<DeviceId, T>;
@@ -58,3 +58,25 @@ macro_rules! of_device_table {
         $crate::module_device_table!("of", $module_table_name, $table_name);
     };
 }
+
+/// Devicetree device node
+#[repr(transparent)]
+pub struct DeviceNode(Opaque<bindings::device_node>);
+
+impl DeviceNode {
+    /// Convert a raw C `struct device_node` pointer to a `&'a DeviceNode`.
+    ///
+    /// # Safety
+    ///
+    /// Callers must ensure that `ptr` is valid, non-null. for the duration of this function call
+    /// and the entire duration when the returned reference exists.
+    pub unsafe fn as_ref<'a>(ptr: *mut bindings::device_node) -> &'a Self {
+        // SAFETY: Guaranteed by the safety requirements of the function.
+        unsafe { &*ptr.cast() }
+    }
+
+    /// Obtain the raw `struct device_node *`.
+    pub fn as_raw(&self) -> *mut bindings::device_node {
+        self.0.get()
+    }
+}

-- 
2.49.0


