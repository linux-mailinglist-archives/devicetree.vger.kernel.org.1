Return-Path: <devicetree+bounces-127467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2478D9E5836
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 15:16:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB35C1884091
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 14:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A460B21A453;
	Thu,  5 Dec 2024 14:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2L5cr7B"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7311417579;
	Thu,  5 Dec 2024 14:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733408166; cv=none; b=aNJqtr2H5jGJIRQoq7BC3F+Eb9k1CBVIWnDSe+epv53XqULsywDCGDXQEnsqRqNcfQSKF+HBn3Lolpgh0xOZbHT2yUiG+Da6QfxkJdoRQue9W6iHgvXnhEGwT+lzJLIkiflRhwKEg+PhSrAIWLxi7qm2Hz/pSxOdbvOrdRDXR7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733408166; c=relaxed/simple;
	bh=6EMLTiB3r1DAHJtnFlYpl6BfUpoo/tvp3QNluzHEEOw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E+GU55m2vQ59UcNgfma9YDa0fvQ4w5VcRUa26SWb49HhOiNq3SoBp7tAWwm0XgFByMCDyDnnLlygMhpcBWeJ13XcIkNI+9MJtD4qIe9IUgTmzp20dlknMFJWGwdq5iniSMEJHR4YmJCIvPE8Q4gLWr3O+bL6UF6E9XLgFz3ThVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2L5cr7B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D76FC4CEE0;
	Thu,  5 Dec 2024 14:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733408166;
	bh=6EMLTiB3r1DAHJtnFlYpl6BfUpoo/tvp3QNluzHEEOw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=b2L5cr7Bghrf3FAS1OHpQlDF/WiO1xi6n96HT945Va+sTTYkK66gu2gZXAxSKeJdm
	 +2HZiuf5gz6kLz5Yp9vtva6x19R+3qFx2q+1mo3ikadzz6S+WmJ++S4XM7ljEuAG0f
	 gQly9c2sItSbDNLjhVPr+0l7H+TybX6IbwxKc0dlFn0xfSbf/LtdF41GfQ+Ru7j2Np
	 kvNh9X/sXH1xRAcMGLV2mbqjdTP0NHJGPxVUcducEbPjpj0TDpu/rVMnEXueXsIh6R
	 9/a/GdLVcZCoar6DCaKd0xQh8V7EzJGKbq+RRyG2RW/ntlVUyaPYerQJJ1VB2pc33o
	 h4KP6B4k0jLuA==
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
	chrisi.schrefl@gmail.com
Cc: rust-for-linux@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Danilo Krummrich <dakr@kernel.org>,
	Wedson Almeida Filho <wedsonaf@gmail.com>
Subject: [PATCH v4 03/13] rust: implement `IdArray`, `IdTable` and `RawDeviceId`
Date: Thu,  5 Dec 2024 15:14:34 +0100
Message-ID: <20241205141533.111830-4-dakr@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241205141533.111830-1-dakr@kernel.org>
References: <20241205141533.111830-1-dakr@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Most subsystems use some kind of ID to match devices and drivers. Hence,
we have to provide Rust drivers an abstraction to register an ID table
for the driver to match.

Generally, those IDs are subsystem specific and hence need to be
implemented by the corresponding subsystem. However, the `IdArray`,
`IdTable` and `RawDeviceId` types provide a generalized implementation
that makes the life of subsystems easier to do so.

Co-developed-by: Wedson Almeida Filho <wedsonaf@gmail.com>
Signed-off-by: Wedson Almeida Filho <wedsonaf@gmail.com>
Co-developed-by: Gary Guo <gary@garyguo.net>
Signed-off-by: Gary Guo <gary@garyguo.net>
Co-developed-by: Fabien Parent <fabien.parent@linaro.org>
Signed-off-by: Fabien Parent <fabien.parent@linaro.org>
Signed-off-by: Danilo Krummrich <dakr@kernel.org>
---
 MAINTAINERS              |   1 +
 rust/kernel/device_id.rs | 166 +++++++++++++++++++++++++++++++++++++++
 rust/kernel/lib.rs       |   6 ++
 3 files changed, 173 insertions(+)
 create mode 100644 rust/kernel/device_id.rs

diff --git a/MAINTAINERS b/MAINTAINERS
index 085b20dc5c0b..6f952d5508e9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7031,6 +7031,7 @@ F:	include/linux/kobj*
 F:	include/linux/property.h
 F:	lib/kobj*
 F:	rust/kernel/device.rs
+F:	rust/kernel/device_id.rs
 F:	rust/kernel/driver.rs
 
 DRIVERS FOR OMAP ADAPTIVE VOLTAGE SCALING (AVS)
diff --git a/rust/kernel/device_id.rs b/rust/kernel/device_id.rs
new file mode 100644
index 000000000000..8ba227dc3d3a
--- /dev/null
+++ b/rust/kernel/device_id.rs
@@ -0,0 +1,166 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Generic implementation of device IDs.
+//!
+//! Each bus / subsystem that matches device and driver through a bus / subsystem specific ID is
+//! expected to implement [`RawDeviceId`].
+
+use core::mem::MaybeUninit;
+
+/// Marker trait to indicate a Rust device ID type represents a corresponding C device ID type.
+///
+/// This is meant to be implemented by buses/subsystems so that they can use [`IdTable`] to
+/// guarantee (at compile-time) zero-termination of device id tables provided by drivers.
+///
+/// # Safety
+///
+/// Implementers must ensure that:
+///   - `Self` is layout-compatible with [`RawDeviceId::RawType`]; i.e. it's safe to transmute to
+///     `RawDeviceId`.
+///
+///     This requirement is needed so `IdArray::new` can convert `Self` to `RawType` when building
+///     the ID table.
+///
+///     Ideally, this should be achieved using a const function that does conversion instead of
+///     transmute; however, const trait functions relies on `const_trait_impl` unstable feature,
+///     which is broken/gone in Rust 1.73.
+///
+///   - `DRIVER_DATA_OFFSET` is the offset of context/data field of the device ID (usually named
+///     `driver_data`) of the device ID, the field is suitable sized to write a `usize` value.
+///
+///     Similar to the previous requirement, the data should ideally be added during `Self` to
+///     `RawType` conversion, but there's currently no way to do it when using traits in const.
+pub unsafe trait RawDeviceId {
+    /// The raw type that holds the device id.
+    ///
+    /// Id tables created from [`Self`] are going to hold this type in its zero-terminated array.
+    type RawType: Copy;
+
+    /// The offset to the context/data field.
+    const DRIVER_DATA_OFFSET: usize;
+
+    /// The index stored at `DRIVER_DATA_OFFSET` of the implementor of the [`RawDeviceId`] trait.
+    fn index(&self) -> usize;
+}
+
+/// A zero-terminated device id array.
+#[repr(C)]
+pub struct RawIdArray<T: RawDeviceId, const N: usize> {
+    ids: [T::RawType; N],
+    sentinel: MaybeUninit<T::RawType>,
+}
+
+impl<T: RawDeviceId, const N: usize> RawIdArray<T, N> {
+    #[doc(hidden)]
+    pub const fn size(&self) -> usize {
+        core::mem::size_of::<Self>()
+    }
+}
+
+/// A zero-terminated device id array, followed by context data.
+#[repr(C)]
+pub struct IdArray<T: RawDeviceId, U, const N: usize> {
+    raw_ids: RawIdArray<T, N>,
+    id_infos: [U; N],
+}
+
+impl<T: RawDeviceId, U, const N: usize> IdArray<T, U, N> {
+    /// Creates a new instance of the array.
+    ///
+    /// The contents are derived from the given identifiers and context information.
+    pub const fn new(ids: [(T, U); N]) -> Self {
+        let mut raw_ids = [const { MaybeUninit::<T::RawType>::uninit() }; N];
+        let mut infos = [const { MaybeUninit::uninit() }; N];
+
+        let mut i = 0usize;
+        while i < N {
+            // SAFETY: by the safety requirement of `RawDeviceId`, we're guaranteed that `T` is
+            // layout-wise compatible with `RawType`.
+            raw_ids[i] = unsafe { core::mem::transmute_copy(&ids[i].0) };
+            // SAFETY: by the safety requirement of `RawDeviceId`, this would be effectively
+            // `raw_ids[i].driver_data = i;`.
+            unsafe {
+                raw_ids[i]
+                    .as_mut_ptr()
+                    .byte_offset(T::DRIVER_DATA_OFFSET as _)
+                    .cast::<usize>()
+                    .write(i);
+            }
+
+            // SAFETY: this is effectively a move: `infos[i] = ids[i].1`. We make a copy here but
+            // later forget `ids`.
+            infos[i] = MaybeUninit::new(unsafe { core::ptr::read(&ids[i].1) });
+            i += 1;
+        }
+
+        core::mem::forget(ids);
+
+        Self {
+            raw_ids: RawIdArray {
+                // SAFETY: this is effectively `array_assume_init`, which is unstable, so we use
+                // `transmute_copy` instead. We have initialized all elements of `raw_ids` so this
+                // `array_assume_init` is safe.
+                ids: unsafe { core::mem::transmute_copy(&raw_ids) },
+                sentinel: MaybeUninit::zeroed(),
+            },
+            // SAFETY: We have initialized all elements of `infos` so this `array_assume_init` is
+            // safe.
+            id_infos: unsafe { core::mem::transmute_copy(&infos) },
+        }
+    }
+
+    /// Reference to the contained [`RawIdArray`].
+    pub const fn raw_ids(&self) -> &RawIdArray<T, N> {
+        &self.raw_ids
+    }
+}
+
+/// A device id table.
+///
+/// This trait is only implemented by `IdArray`.
+///
+/// The purpose of this trait is to allow `&'static dyn IdArray<T, U>` to be in context when `N` in
+/// `IdArray` doesn't matter.
+pub trait IdTable<T: RawDeviceId, U> {
+    /// Obtain the pointer to the ID table.
+    fn as_ptr(&self) -> *const T::RawType;
+
+    /// Obtain the pointer to the bus specific device ID from an index.
+    fn id(&self, index: usize) -> &T::RawType;
+
+    /// Obtain the pointer to the driver-specific information from an index.
+    fn info(&self, index: usize) -> &U;
+}
+
+impl<T: RawDeviceId, U, const N: usize> IdTable<T, U> for IdArray<T, U, N> {
+    fn as_ptr(&self) -> *const T::RawType {
+        // This cannot be `self.ids.as_ptr()`, as the return pointer must have correct provenance
+        // to access the sentinel.
+        (self as *const Self).cast()
+    }
+
+    fn id(&self, index: usize) -> &T::RawType {
+        &self.raw_ids.ids[index]
+    }
+
+    fn info(&self, index: usize) -> &U {
+        &self.id_infos[index]
+    }
+}
+
+/// Create device table alias for modpost.
+#[macro_export]
+macro_rules! module_device_table {
+    ($table_type: literal, $module_table_name:ident, $table_name:ident) => {
+        #[rustfmt::skip]
+        #[export_name =
+            concat!("__mod_", $table_type,
+                    "__", module_path!(),
+                    "_", line!(),
+                    "_", stringify!($table_name),
+                    "_device_table")
+        ]
+        static $module_table_name: [core::mem::MaybeUninit<u8>; $table_name.raw_ids().size()] =
+            unsafe { core::mem::transmute_copy($table_name.raw_ids()) };
+    };
+}
diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
index 0a719396256f..b5da7c520eb8 100644
--- a/rust/kernel/lib.rs
+++ b/rust/kernel/lib.rs
@@ -18,6 +18,11 @@
 #![feature(inline_const)]
 #![feature(lint_reasons)]
 #![feature(unsize)]
+// Stable in Rust 1.83
+#![feature(const_maybe_uninit_as_mut_ptr)]
+#![feature(const_mut_refs)]
+#![feature(const_ptr_write)]
+#![feature(const_refs_to_cell)]
 
 // Ensure conditional compilation based on the kernel configuration works;
 // otherwise we may silently break things like initcall handling.
@@ -35,6 +40,7 @@
 mod build_assert;
 pub mod cred;
 pub mod device;
+pub mod device_id;
 pub mod driver;
 pub mod error;
 #[cfg(CONFIG_RUST_FW_LOADER_ABSTRACTIONS)]
-- 
2.47.0


