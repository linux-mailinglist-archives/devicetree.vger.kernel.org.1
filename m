Return-Path: <devicetree+bounces-129504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B60A49EBE34
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:52:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB27316AB47
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 22:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE48B22C340;
	Tue, 10 Dec 2024 22:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oD2xBlQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2C7211268;
	Tue, 10 Dec 2024 22:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733871050; cv=none; b=ieeUQAqw4mAS98R11d5OtC6RCztEEjihdom3HJs1YNUspoX7k3Qu5sM7I6Ule6Dhs0grVoZMYsM7YdxwQUlXpyDhG6gh0XmG94T6u5xUAEqHy/p+3kiwR2eNNAe/sUevLNUt/I9GnwdAVs5EveUoC5YCUHgbcEJoglz8v52Kbsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733871050; c=relaxed/simple;
	bh=TlLlX4Rtbi6oscGid+VN+DPCifp9S0fSYSH7d5BeoDI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YaKpmL2fPLulhoF219veY+br9PDd/FIrpsWrsRViPHv3KfgBCcRK+aroZtEbPp1QJWy3a4l8XYYRV6W0bcQNZhF97GXYF8LJ16K2FjwLzxLKu1G+HqnqZbLSvy1BQM1WhmGtNoqtdU+cr0wVD7M/1+5pgqJJzHadqbKDcQi1M4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oD2xBlQ1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CC90C4CEE2;
	Tue, 10 Dec 2024 22:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733871050;
	bh=TlLlX4Rtbi6oscGid+VN+DPCifp9S0fSYSH7d5BeoDI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oD2xBlQ1XrtCoN/NTUo8NvBND5kZuu2pkNRXF1C4xjf3fDyMmN+pw2YD55DNXIOi6
	 UK1MfoDo5AbFyMHzImxzY4Tt59A4vT5ffA+Erz4RkHLsJU2fnl8OGYKnvl+M0SyPlm
	 xNsd/tXlxOpX24HwLvDG6J/ew3Lr+36YM+4wRwC2LakNaihMwZZmWmnpR7aifevdgT
	 tkQHyCXR4oa96ODVAt99U7KR+8QEz1FtJEJI0E1uHmH8eCq9nMaRnU6dm1zk4Zbf65
	 b1Z5A1EOElblfwoCkhEpjQki1NmyvD1178N6P5JyJK87IsgHgPGhQM6ZajZNGQM2w5
	 qzgEO+4j2mgHA==
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
	Danilo Krummrich <dakr@kernel.org>
Subject: [PATCH v5 08/16] rust: add devres abstraction
Date: Tue, 10 Dec 2024 23:46:35 +0100
Message-ID: <20241210224947.23804-9-dakr@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241210224947.23804-1-dakr@kernel.org>
References: <20241210224947.23804-1-dakr@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a Rust abstraction for the kernel's devres (device resource
management) implementation.

The Devres type acts as a container to manage the lifetime and
accessibility of device bound resources. Therefore it registers a
devres callback and revokes access to the resource on invocation.

Users of the Devres abstraction can simply free the corresponding
resources in their Drop implementation, which is invoked when either the
Devres instance goes out of scope or the devres callback leads to the
resource being revoked, which implies a call to drop_in_place().

Signed-off-by: Danilo Krummrich <dakr@kernel.org>
---
 MAINTAINERS            |   1 +
 rust/helpers/device.c  |  10 +++
 rust/helpers/helpers.c |   1 +
 rust/kernel/devres.rs  | 179 +++++++++++++++++++++++++++++++++++++++++
 rust/kernel/lib.rs     |   1 +
 5 files changed, 192 insertions(+)
 create mode 100644 rust/helpers/device.c
 create mode 100644 rust/kernel/devres.rs

diff --git a/MAINTAINERS b/MAINTAINERS
index 1c12722bbe9a..3658d3eb921c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7034,6 +7034,7 @@ F:	include/linux/property.h
 F:	lib/kobj*
 F:	rust/kernel/device.rs
 F:	rust/kernel/device_id.rs
+F:	rust/kernel/devres.rs
 F:	rust/kernel/driver.rs
 
 DRIVERS FOR OMAP ADAPTIVE VOLTAGE SCALING (AVS)
diff --git a/rust/helpers/device.c b/rust/helpers/device.c
new file mode 100644
index 000000000000..b2135c6686b0
--- /dev/null
+++ b/rust/helpers/device.c
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/device.h>
+
+int rust_helper_devm_add_action(struct device *dev,
+				void (*action)(void *),
+				void *data)
+{
+	return devm_add_action(dev, action, data);
+}
diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
index 63f9b1da179f..a3b52aa021de 100644
--- a/rust/helpers/helpers.c
+++ b/rust/helpers/helpers.c
@@ -12,6 +12,7 @@
 #include "build_assert.c"
 #include "build_bug.c"
 #include "cred.c"
+#include "device.c"
 #include "err.c"
 #include "fs.c"
 #include "io.c"
diff --git a/rust/kernel/devres.rs b/rust/kernel/devres.rs
new file mode 100644
index 000000000000..57ddb49fde1d
--- /dev/null
+++ b/rust/kernel/devres.rs
@@ -0,0 +1,179 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Devres abstraction
+//!
+//! [`Devres`] represents an abstraction for the kernel devres (device resource management)
+//! implementation.
+
+use crate::{
+    alloc::Flags,
+    bindings,
+    device::Device,
+    error::{Error, Result},
+    prelude::*,
+    revocable::Revocable,
+    sync::Arc,
+};
+
+use core::ffi::c_void;
+use core::ops::Deref;
+
+#[pin_data]
+struct DevresInner<T> {
+    #[pin]
+    data: Revocable<T>,
+}
+
+/// This abstraction is meant to be used by subsystems to containerize [`Device`] bound resources to
+/// manage their lifetime.
+///
+/// [`Device`] bound resources should be freed when either the resource goes out of scope or the
+/// [`Device`] is unbound respectively, depending on what happens first.
+///
+/// To achieve that [`Devres`] registers a devres callback on creation, which is called once the
+/// [`Device`] is unbound, revoking access to the encapsulated resource (see also [`Revocable`]).
+///
+/// After the [`Devres`] has been unbound it is not possible to access the encapsulated resource
+/// anymore.
+///
+/// [`Devres`] users should make sure to simply free the corresponding backing resource in `T`'s
+/// [`Drop`] implementation.
+///
+/// # Example
+///
+/// ```no_run
+/// # use kernel::{bindings, c_str, device::Device, devres::Devres, io::{Io, IoRaw}};
+/// # use core::ops::Deref;
+///
+/// // See also [`pci::Bar`] for a real example.
+/// struct IoMem<const SIZE: usize>(IoRaw<SIZE>);
+///
+/// impl<const SIZE: usize> IoMem<SIZE> {
+///     /// # Safety
+///     ///
+///     /// [`paddr`, `paddr` + `SIZE`) must be a valid MMIO region that is mappable into the CPUs
+///     /// virtual address space.
+///     unsafe fn new(paddr: usize) -> Result<Self>{
+///         // SAFETY: By the safety requirements of this function [`paddr`, `paddr` + `SIZE`) is
+///         // valid for `ioremap`.
+///         let addr = unsafe { bindings::ioremap(paddr as _, SIZE.try_into().unwrap()) };
+///         if addr.is_null() {
+///             return Err(ENOMEM);
+///         }
+///
+///         Ok(IoMem(IoRaw::new(addr as _, SIZE)?))
+///     }
+/// }
+///
+/// impl<const SIZE: usize> Drop for IoMem<SIZE> {
+///     fn drop(&mut self) {
+///         // SAFETY: `self.0.addr()` is guaranteed to be properly mapped by `Self::new`.
+///         unsafe { bindings::iounmap(self.0.addr() as _); };
+///     }
+/// }
+///
+/// impl<const SIZE: usize> Deref for IoMem<SIZE> {
+///    type Target = Io<SIZE>;
+///
+///    fn deref(&self) -> &Self::Target {
+///         // SAFETY: The memory range stored in `self` has been properly mapped in `Self::new`.
+///         unsafe { Io::from_raw(&self.0) }
+///    }
+/// }
+/// # fn no_run() -> Result<(), Error> {
+/// # // SAFETY: Invalid usage; just for the example to get an `ARef<Device>` instance.
+/// # let dev = unsafe { Device::get_device(core::ptr::null_mut()) };
+///
+/// // SAFETY: Invalid usage for example purposes.
+/// let iomem = unsafe { IoMem::<{ core::mem::size_of::<u32>() }>::new(0xBAAAAAAD)? };
+/// let devres = Devres::new(&dev, iomem, GFP_KERNEL)?;
+///
+/// let res = devres.try_access().ok_or(ENXIO)?;
+/// res.writel(0x42, 0x0);
+/// # Ok(())
+/// # }
+/// ```
+pub struct Devres<T>(Arc<DevresInner<T>>);
+
+impl<T> DevresInner<T> {
+    fn new(dev: &Device, data: T, flags: Flags) -> Result<Arc<DevresInner<T>>> {
+        let inner = Arc::pin_init(
+            pin_init!( DevresInner {
+                data <- Revocable::new(data),
+            }),
+            flags,
+        )?;
+
+        // Convert `Arc<DevresInner>` into a raw pointer and make devres own this reference until
+        // `Self::devres_callback` is called.
+        let data = inner.clone().into_raw();
+
+        // SAFETY: `devm_add_action` guarantees to call `Self::devres_callback` once `dev` is
+        // detached.
+        let ret = unsafe {
+            bindings::devm_add_action(dev.as_raw(), Some(Self::devres_callback), data as _)
+        };
+
+        if ret != 0 {
+            // SAFETY: We just created another reference to `inner` in order to pass it to
+            // `bindings::devm_add_action`. If `bindings::devm_add_action` fails, we have to drop
+            // this reference accordingly.
+            let _ = unsafe { Arc::from_raw(data) };
+            return Err(Error::from_errno(ret));
+        }
+
+        Ok(inner)
+    }
+
+    #[allow(clippy::missing_safety_doc)]
+    unsafe extern "C" fn devres_callback(ptr: *mut c_void) {
+        let ptr = ptr as *mut DevresInner<T>;
+        // Devres owned this memory; now that we received the callback, drop the `Arc` and hence the
+        // reference.
+        // SAFETY: Safe, since we leaked an `Arc` reference to devm_add_action() in
+        //         `DevresInner::new`.
+        let inner = unsafe { Arc::from_raw(ptr) };
+
+        inner.data.revoke();
+    }
+}
+
+impl<T> Devres<T> {
+    /// Creates a new [`Devres`] instance of the given `data`. The `data` encapsulated within the
+    /// returned `Devres` instance' `data` will be revoked once the device is detached.
+    pub fn new(dev: &Device, data: T, flags: Flags) -> Result<Self> {
+        let inner = DevresInner::new(dev, data, flags)?;
+
+        Ok(Devres(inner))
+    }
+
+    /// Same as [`Devres::new`], but does not return a `Devres` instance. Instead the given `data`
+    /// is owned by devres and will be revoked / dropped, once the device is detached.
+    pub fn new_foreign_owned(dev: &Device, data: T, flags: Flags) -> Result {
+        let _ = DevresInner::new(dev, data, flags)?;
+
+        Ok(())
+    }
+}
+
+impl<T> Deref for Devres<T> {
+    type Target = Revocable<T>;
+
+    fn deref(&self) -> &Self::Target {
+        &self.0.data
+    }
+}
+
+impl<T> Drop for Devres<T> {
+    fn drop(&mut self) {
+        // Revoke the data, such that it gets dropped already and the actual resource is freed.
+        //
+        // `DevresInner` has to stay alive until the devres callback has been called. This is
+        // necessary since we don't know when `Devres` is dropped and calling
+        // `devm_remove_action()` instead could race with `devres_release_all()`.
+        //
+        // SAFETY: When `drop` runs, it's guaranteed that nobody is accessing the revocable data
+        // anymore, hence it is safe not to wait for the grace period to finish.
+        unsafe { self.revoke_nosync() };
+    }
+}
diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
index d1f30b1a05fb..4b94e6072c63 100644
--- a/rust/kernel/lib.rs
+++ b/rust/kernel/lib.rs
@@ -41,6 +41,7 @@
 pub mod cred;
 pub mod device;
 pub mod device_id;
+pub mod devres;
 pub mod driver;
 pub mod error;
 #[cfg(CONFIG_RUST_FW_LOADER_ABSTRACTIONS)]
-- 
2.47.0


