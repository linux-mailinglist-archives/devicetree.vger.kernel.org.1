Return-Path: <devicetree+bounces-127469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5B39E583E
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 15:17:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A097D188425B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 14:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA4A21C161;
	Thu,  5 Dec 2024 14:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cvy9hidS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C93F17579;
	Thu,  5 Dec 2024 14:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733408180; cv=none; b=jpqY1fTO5UIEQfe/Q8TX4PNrqAFZ7Riz0r4x9shFl75CE2aBsyJ4UV5udkRTJ5i3wVpKXTeRlVUwhqH4pZOEkRAyNRyw0lzyyine6m9ihE9BBfkWJW0woNyD4Zyx9ntriWZouXSzw2rL7XMJ6EapJeA8CQKMgfIR5wiv5Mfwyuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733408180; c=relaxed/simple;
	bh=b+B4IKAkpmrCPvfD37chV6RamAFj9xhafB8kgzuaFqg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V8HDN2Y9rjXEzj7fVk3VPiTNnyaolyQro2nbk5lxyl7vo63h/wC7TBbxcwRKhGdDgcwZSvrhU4RnngMu9sPQd/XjBlx4/dsW38ObFqR0hmlnQSEPwpRDycEIwALPVEALI/nwrG2FMazZM+ZEsKtsgA5J/epfWZ7cbSHAgdk+CxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cvy9hidS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA93EC4CED1;
	Thu,  5 Dec 2024 14:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733408178;
	bh=b+B4IKAkpmrCPvfD37chV6RamAFj9xhafB8kgzuaFqg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Cvy9hidSin/7UM7CwgLqIjaZtBeJJllkaJrXWWDJCFMP6Uy923ObMD1UrspQFfK/f
	 ySLp48WEmvQNaiwjeSqP7w3etkPWqpYOHXAvqLpJ3KbK8yoFTM5Kl8pXYqb8f6fDtO
	 XpP7Zv4KZJNMOulwUc7Lp2weB1QR/r50TjFg6cyGTGqhfMI3Is3aVkmoEQr9vwx9Ss
	 YEva1PzgR1iEBqmnumkDhPyrpDwBIF9jkwPDxoL1fBKlKSTdVen33cxu0FWQKPQazx
	 77JA7kFRunXdFQVNK1mG4r14JnmLQkmMEFSEt7mS2IileV8AVZwqYe+Y7qntn465KD
	 rhoj5E3NJtC1w==
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
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Danilo Krummrich <dakr@kernel.org>
Subject: [PATCH v4 05/13] rust: add `Revocable` type
Date: Thu,  5 Dec 2024 15:14:36 +0100
Message-ID: <20241205141533.111830-6-dakr@kernel.org>
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

From: Wedson Almeida Filho <wedsonaf@gmail.com>

Revocable allows access to objects to be safely revoked at run time.

This is useful, for example, for resources allocated during device probe;
when the device is removed, the driver should stop accessing the device
resources even if another state is kept in memory due to existing
references (i.e., device context data is ref-counted and has a non-zero
refcount after removal of the device).

Signed-off-by: Wedson Almeida Filho <wedsonaf@gmail.com>
Co-developed-by: Danilo Krummrich <dakr@kernel.org>
Signed-off-by: Danilo Krummrich <dakr@kernel.org>
---
 rust/kernel/lib.rs       |   1 +
 rust/kernel/revocable.rs | 235 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 236 insertions(+)
 create mode 100644 rust/kernel/revocable.rs

diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
index b5da7c520eb8..200c5f99a805 100644
--- a/rust/kernel/lib.rs
+++ b/rust/kernel/lib.rs
@@ -60,6 +60,7 @@
 pub mod prelude;
 pub mod print;
 pub mod rbtree;
+pub mod revocable;
 pub mod security;
 pub mod seq_file;
 pub mod sizes;
diff --git a/rust/kernel/revocable.rs b/rust/kernel/revocable.rs
new file mode 100644
index 000000000000..fb675e58625a
--- /dev/null
+++ b/rust/kernel/revocable.rs
@@ -0,0 +1,235 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Revocable objects.
+//!
+//! The [`Revocable`] type wraps other types and allows access to them to be revoked. The existence
+//! of a [`RevocableGuard`] ensures that objects remain valid.
+
+use crate::{
+    bindings,
+    init::{self},
+    prelude::*,
+    sync::rcu,
+    types::Opaque,
+};
+use core::{
+    marker::PhantomData,
+    ops::Deref,
+    ptr::drop_in_place,
+    sync::atomic::{AtomicBool, Ordering},
+};
+
+/// An object that can become inaccessible at runtime.
+///
+/// Once access is revoked and all concurrent users complete (i.e., all existing instances of
+/// [`RevocableGuard`] are dropped), the wrapped object is also dropped.
+///
+/// # Examples
+///
+/// ```
+/// # use kernel::revocable::Revocable;
+///
+/// struct Example {
+///     a: u32,
+///     b: u32,
+/// }
+///
+/// fn add_two(v: &Revocable<Example>) -> Option<u32> {
+///     let guard = v.try_access()?;
+///     Some(guard.a + guard.b)
+/// }
+///
+/// let v = KBox::pin_init(Revocable::new(Example { a: 10, b: 20 }), GFP_KERNEL).unwrap();
+/// assert_eq!(add_two(&v), Some(30));
+/// v.revoke();
+/// assert_eq!(add_two(&v), None);
+/// ```
+///
+/// Sample example as above, but explicitly using the rcu read side lock.
+///
+/// ```
+/// # use kernel::revocable::Revocable;
+/// use kernel::sync::rcu;
+///
+/// struct Example {
+///     a: u32,
+///     b: u32,
+/// }
+///
+/// fn add_two(v: &Revocable<Example>) -> Option<u32> {
+///     let guard = rcu::read_lock();
+///     let e = v.try_access_with_guard(&guard)?;
+///     Some(e.a + e.b)
+/// }
+///
+/// let v = KBox::pin_init(Revocable::new(Example { a: 10, b: 20 }), GFP_KERNEL).unwrap();
+/// assert_eq!(add_two(&v), Some(30));
+/// v.revoke();
+/// assert_eq!(add_two(&v), None);
+/// ```
+#[pin_data(PinnedDrop)]
+pub struct Revocable<T> {
+    is_available: AtomicBool,
+    #[pin]
+    data: Opaque<T>,
+}
+
+// SAFETY: `Revocable` is `Send` if the wrapped object is also `Send`. This is because while the
+// functionality exposed by `Revocable` can be accessed from any thread/CPU, it is possible that
+// this isn't supported by the wrapped object.
+unsafe impl<T: Send> Send for Revocable<T> {}
+
+// SAFETY: `Revocable` is `Sync` if the wrapped object is both `Send` and `Sync`. We require `Send`
+// from the wrapped object as well because  of `Revocable::revoke`, which can trigger the `Drop`
+// implementation of the wrapped object from an arbitrary thread.
+unsafe impl<T: Sync + Send> Sync for Revocable<T> {}
+
+impl<T> Revocable<T> {
+    /// Creates a new revocable instance of the given data.
+    pub fn new(data: impl PinInit<T>) -> impl PinInit<Self> {
+        pin_init!(Self {
+            is_available: AtomicBool::new(true),
+            // SAFETY: The closure only returns `Ok(())` if `ptr` is fully initialized; on error
+            // `ptr` is not partially initialized and does not need to be dropped.
+            data <- unsafe {
+                Opaque::try_ffi_init(|ptr: *mut T| {
+                    init::PinInit::<T, core::convert::Infallible>::__pinned_init(data, ptr)
+                })
+            },
+        })
+    }
+
+    /// Tries to access the revocable wrapped object.
+    ///
+    /// Returns `None` if the object has been revoked and is therefore no longer accessible.
+    ///
+    /// Returns a guard that gives access to the object otherwise; the object is guaranteed to
+    /// remain accessible while the guard is alive. In such cases, callers are not allowed to sleep
+    /// because another CPU may be waiting to complete the revocation of this object.
+    pub fn try_access(&self) -> Option<RevocableGuard<'_, T>> {
+        let guard = rcu::read_lock();
+        if self.is_available.load(Ordering::Relaxed) {
+            // Since `self.is_available` is true, data is initialised and has to remain valid
+            // because the RCU read side lock prevents it from being dropped.
+            Some(RevocableGuard::new(self.data.get(), guard))
+        } else {
+            None
+        }
+    }
+
+    /// Tries to access the revocable wrapped object.
+    ///
+    /// Returns `None` if the object has been revoked and is therefore no longer accessible.
+    ///
+    /// Returns a shared reference to the object otherwise; the object is guaranteed to
+    /// remain accessible while the rcu read side guard is alive. In such cases, callers are not
+    /// allowed to sleep because another CPU may be waiting to complete the revocation of this
+    /// object.
+    pub fn try_access_with_guard<'a>(&'a self, _guard: &'a rcu::Guard) -> Option<&'a T> {
+        if self.is_available.load(Ordering::Relaxed) {
+            // SAFETY: Since `self.is_available` is true, data is initialised and has to remain
+            // valid because the RCU read side lock prevents it from being dropped.
+            Some(unsafe { &*self.data.get() })
+        } else {
+            None
+        }
+    }
+
+    /// # Safety
+    ///
+    /// Callers must ensure that there are no more concurrent users of the revocable object.
+    unsafe fn revoke_internal(&self, sync: bool) {
+        if self
+            .is_available
+            .compare_exchange(true, false, Ordering::Relaxed, Ordering::Relaxed)
+            .is_ok()
+        {
+            if sync {
+                // SAFETY: Just an FFI call, there are no further requirements.
+                unsafe { bindings::synchronize_rcu() };
+            }
+
+            // SAFETY: We know `self.data` is valid because only one CPU can succeed the
+            // `compare_exchange` above that takes `is_available` from `true` to `false`.
+            unsafe { drop_in_place(self.data.get()) };
+        }
+    }
+
+    /// Revokes access to and drops the wrapped object.
+    ///
+    /// Access to the object is revoked immediately to new callers of [`Revocable::try_access`],
+    /// expecting that there are no concurrent users of the object.
+    ///
+    /// # Safety
+    ///
+    /// Callers must ensure that there are no more concurrent users of the revocable object.
+    pub unsafe fn revoke_nosync(&self) {
+        // SAFETY: By the safety requirement of this function, the caller ensures that nobody is
+        // accessing the data anymore and hence we don't have to wait for the grace period to
+        // finish.
+        unsafe { self.revoke_internal(false) }
+    }
+
+    /// Revokes access to and drops the wrapped object.
+    ///
+    /// Access to the object is revoked immediately to new callers of [`Revocable::try_access`].
+    ///
+    /// If there are concurrent users of the object (i.e., ones that called
+    /// [`Revocable::try_access`] beforehand and still haven't dropped the returned guard), this
+    /// function waits for the concurrent access to complete before dropping the wrapped object.
+    pub fn revoke(&self) {
+        // SAFETY: By passing `true` we ask `revoke_internal` to wait for the grace period to
+        // finish.
+        unsafe { self.revoke_internal(true) }
+    }
+}
+
+#[pinned_drop]
+impl<T> PinnedDrop for Revocable<T> {
+    fn drop(self: Pin<&mut Self>) {
+        // Drop only if the data hasn't been revoked yet (in which case it has already been
+        // dropped).
+        // SAFETY: We are not moving out of `p`, only dropping in place
+        let p = unsafe { self.get_unchecked_mut() };
+        if *p.is_available.get_mut() {
+            // SAFETY: We know `self.data` is valid because no other CPU has changed
+            // `is_available` to `false` yet, and no other CPU can do it anymore because this CPU
+            // holds the only reference (mutable) to `self` now.
+            unsafe { drop_in_place(p.data.get()) };
+        }
+    }
+}
+
+/// A guard that allows access to a revocable object and keeps it alive.
+///
+/// CPUs may not sleep while holding on to [`RevocableGuard`] because it's in atomic context
+/// holding the RCU read-side lock.
+///
+/// # Invariants
+///
+/// The RCU read-side lock is held while the guard is alive.
+pub struct RevocableGuard<'a, T> {
+    data_ref: *const T,
+    _rcu_guard: rcu::Guard,
+    _p: PhantomData<&'a ()>,
+}
+
+impl<T> RevocableGuard<'_, T> {
+    fn new(data_ref: *const T, rcu_guard: rcu::Guard) -> Self {
+        Self {
+            data_ref,
+            _rcu_guard: rcu_guard,
+            _p: PhantomData,
+        }
+    }
+}
+
+impl<T> Deref for RevocableGuard<'_, T> {
+    type Target = T;
+
+    fn deref(&self) -> &Self::Target {
+        // SAFETY: By the type invariants, we hold the rcu read-side lock, so the object is
+        // guaranteed to remain valid.
+        unsafe { &*self.data_ref }
+    }
+}
-- 
2.47.0


