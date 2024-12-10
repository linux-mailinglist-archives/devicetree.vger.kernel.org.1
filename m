Return-Path: <devicetree+bounces-129503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9E19EBE31
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:52:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE04C18899CC
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 22:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5122163A7;
	Tue, 10 Dec 2024 22:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqJc8nTp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D478211268;
	Tue, 10 Dec 2024 22:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733871044; cv=none; b=ru69c2Q+TTdCgk4pUASgY7Z7tzCfYDVl4MbZFf/7uwpoGtdtL5ZDhKNHUD8ldnDx4MANQ6GyloDhKuJhfvD2WkLpFPhaZfqNqb49UF8RTUx/94/v5CMTcZ1b26iZTr1wOeQ1PcGYXu7paMPlNyQrMv1/ZgTgLWWogO4krBZVo20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733871044; c=relaxed/simple;
	bh=qM1PZUrMhMKvPYUtNI4/Y8sdEpDf+2bDizAE+AXycdA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C+2fetjOqcC/J/9FMlf0SUwyoFfJmqGuCKQGfGWcMNQE1bEcedvqr42cmp+AROJNHVPNwhtfZztppsVZ6H0QH1cGuzS+62ffWLk2ZkhCMtXhlNAl7UEgDzyWjresuPh0sX8cM7CfinAiaMbyEiSRCJ2K072PMBt2ivjSL/avSd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqJc8nTp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FAD8C4CEDF;
	Tue, 10 Dec 2024 22:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733871044;
	bh=qM1PZUrMhMKvPYUtNI4/Y8sdEpDf+2bDizAE+AXycdA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mqJc8nTpzqR4fJCY2VJSCHkTNRqRbwCwDO1osce96M1FYqbRK1/Iu6bu3geL0uQND
	 Cp2e+i/DvrqPWTfdc81I+Ii24Kgftj6mqyCYxJrchZXHhkmhCjP+OY9dic+GtvQV8Y
	 5ou9WLqP5vj0ht/or63ipUp49J/DoBH5TNhF2ePYheIxqDt5IehjguVZ4M9IoKsV03
	 25HTeXwk7gospHh6GIHVDaEOjJl0vdcD1sEh/iR78QDvaqNm+uU+6e2a3iEsgaGs2g
	 GD1laivLaMwebBvByJMcxwqHXpRGJHn+MR4qEx0kt5sTaFhIDPKsXc+Kks1GKVnWO1
	 pEkArYy3gxCdg==
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
Subject: [PATCH v5 07/16] rust: add `io::{Io, IoRaw}` base types
Date: Tue, 10 Dec 2024 23:46:34 +0100
Message-ID: <20241210224947.23804-8-dakr@kernel.org>
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

I/O memory is typically either mapped through direct calls to ioremap()
or subsystem / bus specific ones such as pci_iomap().

Even though subsystem / bus specific functions to map I/O memory are
based on ioremap() / iounmap() it is not desirable to re-implement them
in Rust.

Instead, implement a base type for I/O mapped memory, which generically
provides the corresponding accessors, such as `Io::readb` or
`Io:try_readb`.

`Io` supports an optional const generic, such that a driver can indicate
the minimal expected and required size of the mapping at compile time.
Correspondingly, calls to the 'non-try' accessors, support compile time
checks of the I/O memory offset to read / write, while the 'try'
accessors, provide boundary checks on runtime.

`IoRaw` is meant to be embedded into a structure (e.g. pci::Bar or
io::IoMem) which creates the actual I/O memory mapping and initializes
`IoRaw` accordingly.

To ensure that I/O mapped memory can't out-live the device it may be
bound to, subsystems must embed the corresponding I/O memory type (e.g.
pci::Bar) into a `Devres` container, such that it gets revoked once the
device is unbound.

Reviewed-by: Alice Ryhl <aliceryhl@google.com>
Signed-off-by: Danilo Krummrich <dakr@kernel.org>
---
 rust/helpers/helpers.c |   1 +
 rust/helpers/io.c      | 101 ++++++++++++++++
 rust/kernel/io.rs      | 260 +++++++++++++++++++++++++++++++++++++++++
 rust/kernel/lib.rs     |   1 +
 4 files changed, 363 insertions(+)
 create mode 100644 rust/helpers/io.c
 create mode 100644 rust/kernel/io.rs

diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
index 060750af6524..63f9b1da179f 100644
--- a/rust/helpers/helpers.c
+++ b/rust/helpers/helpers.c
@@ -14,6 +14,7 @@
 #include "cred.c"
 #include "err.c"
 #include "fs.c"
+#include "io.c"
 #include "jump_label.c"
 #include "kunit.c"
 #include "mutex.c"
diff --git a/rust/helpers/io.c b/rust/helpers/io.c
new file mode 100644
index 000000000000..1dde6374c0e2
--- /dev/null
+++ b/rust/helpers/io.c
@@ -0,0 +1,101 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/io.h>
+
+void __iomem *rust_helper_ioremap(phys_addr_t offset, size_t size)
+{
+	return ioremap(offset, size);
+}
+
+void rust_helper_iounmap(volatile void __iomem *addr)
+{
+	return iounmap(addr);
+}
+
+u8 rust_helper_readb(const volatile void __iomem *addr)
+{
+	return readb(addr);
+}
+
+u16 rust_helper_readw(const volatile void __iomem *addr)
+{
+	return readw(addr);
+}
+
+u32 rust_helper_readl(const volatile void __iomem *addr)
+{
+	return readl(addr);
+}
+
+#ifdef CONFIG_64BIT
+u64 rust_helper_readq(const volatile void __iomem *addr)
+{
+	return readq(addr);
+}
+#endif
+
+void rust_helper_writeb(u8 value, volatile void __iomem *addr)
+{
+	writeb(value, addr);
+}
+
+void rust_helper_writew(u16 value, volatile void __iomem *addr)
+{
+	writew(value, addr);
+}
+
+void rust_helper_writel(u32 value, volatile void __iomem *addr)
+{
+	writel(value, addr);
+}
+
+#ifdef CONFIG_64BIT
+void rust_helper_writeq(u64 value, volatile void __iomem *addr)
+{
+	writeq(value, addr);
+}
+#endif
+
+u8 rust_helper_readb_relaxed(const volatile void __iomem *addr)
+{
+	return readb_relaxed(addr);
+}
+
+u16 rust_helper_readw_relaxed(const volatile void __iomem *addr)
+{
+	return readw_relaxed(addr);
+}
+
+u32 rust_helper_readl_relaxed(const volatile void __iomem *addr)
+{
+	return readl_relaxed(addr);
+}
+
+#ifdef CONFIG_64BIT
+u64 rust_helper_readq_relaxed(const volatile void __iomem *addr)
+{
+	return readq_relaxed(addr);
+}
+#endif
+
+void rust_helper_writeb_relaxed(u8 value, volatile void __iomem *addr)
+{
+	writeb_relaxed(value, addr);
+}
+
+void rust_helper_writew_relaxed(u16 value, volatile void __iomem *addr)
+{
+	writew_relaxed(value, addr);
+}
+
+void rust_helper_writel_relaxed(u32 value, volatile void __iomem *addr)
+{
+	writel_relaxed(value, addr);
+}
+
+#ifdef CONFIG_64BIT
+void rust_helper_writeq_relaxed(u64 value, volatile void __iomem *addr)
+{
+	writeq_relaxed(value, addr);
+}
+#endif
diff --git a/rust/kernel/io.rs b/rust/kernel/io.rs
new file mode 100644
index 000000000000..7ec3341bb411
--- /dev/null
+++ b/rust/kernel/io.rs
@@ -0,0 +1,260 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Memory-mapped IO.
+//!
+//! C header: [`include/asm-generic/io.h`](srctree/include/asm-generic/io.h)
+
+use crate::error::{code::EINVAL, Result};
+use crate::{bindings, build_assert};
+
+/// Raw representation of an MMIO region.
+///
+/// By itself, the existence of an instance of this structure does not provide any guarantees that
+/// the represented MMIO region does exist or is properly mapped.
+///
+/// Instead, the bus specific MMIO implementation must convert this raw representation into an `Io`
+/// instance providing the actual memory accessors. Only by the conversion into an `Io` structure
+/// any guarantees are given.
+pub struct IoRaw<const SIZE: usize = 0> {
+    addr: usize,
+    maxsize: usize,
+}
+
+impl<const SIZE: usize> IoRaw<SIZE> {
+    /// Returns a new `IoRaw` instance on success, an error otherwise.
+    pub fn new(addr: usize, maxsize: usize) -> Result<Self> {
+        if maxsize < SIZE {
+            return Err(EINVAL);
+        }
+
+        Ok(Self { addr, maxsize })
+    }
+
+    /// Returns the base address of the MMIO region.
+    #[inline]
+    pub fn addr(&self) -> usize {
+        self.addr
+    }
+
+    /// Returns the maximum size of the MMIO region.
+    #[inline]
+    pub fn maxsize(&self) -> usize {
+        self.maxsize
+    }
+}
+
+/// IO-mapped memory, starting at the base address @addr and spanning @maxlen bytes.
+///
+/// The creator (usually a subsystem / bus such as PCI) is responsible for creating the
+/// mapping, performing an additional region request etc.
+///
+/// # Invariant
+///
+/// `addr` is the start and `maxsize` the length of valid I/O mapped memory region of size
+/// `maxsize`.
+///
+/// # Examples
+///
+/// ```no_run
+/// # use kernel::{bindings, io::{Io, IoRaw}};
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
+///
+///# fn no_run() -> Result<(), Error> {
+/// // SAFETY: Invalid usage for example purposes.
+/// let iomem = unsafe { IoMem::<{ core::mem::size_of::<u32>() }>::new(0xBAAAAAAD)? };
+/// iomem.writel(0x42, 0x0);
+/// assert!(iomem.try_writel(0x42, 0x0).is_ok());
+/// assert!(iomem.try_writel(0x42, 0x4).is_err());
+/// # Ok(())
+/// # }
+/// ```
+#[repr(transparent)]
+pub struct Io<const SIZE: usize = 0>(IoRaw<SIZE>);
+
+macro_rules! define_read {
+    ($(#[$attr:meta])* $name:ident, $try_name:ident, $type_name:ty) => {
+        /// Read IO data from a given offset known at compile time.
+        ///
+        /// Bound checks are performed on compile time, hence if the offset is not known at compile
+        /// time, the build will fail.
+        $(#[$attr])*
+        #[inline]
+        pub fn $name(&self, offset: usize) -> $type_name {
+            let addr = self.io_addr_assert::<$type_name>(offset);
+
+            // SAFETY: By the type invariant `addr` is a valid address for MMIO operations.
+            unsafe { bindings::$name(addr as _) }
+        }
+
+        /// Read IO data from a given offset.
+        ///
+        /// Bound checks are performed on runtime, it fails if the offset (plus the type size) is
+        /// out of bounds.
+        $(#[$attr])*
+        pub fn $try_name(&self, offset: usize) -> Result<$type_name> {
+            let addr = self.io_addr::<$type_name>(offset)?;
+
+            // SAFETY: By the type invariant `addr` is a valid address for MMIO operations.
+            Ok(unsafe { bindings::$name(addr as _) })
+        }
+    };
+}
+
+macro_rules! define_write {
+    ($(#[$attr:meta])* $name:ident, $try_name:ident, $type_name:ty) => {
+        /// Write IO data from a given offset known at compile time.
+        ///
+        /// Bound checks are performed on compile time, hence if the offset is not known at compile
+        /// time, the build will fail.
+        $(#[$attr])*
+        #[inline]
+        pub fn $name(&self, value: $type_name, offset: usize) {
+            let addr = self.io_addr_assert::<$type_name>(offset);
+
+            // SAFETY: By the type invariant `addr` is a valid address for MMIO operations.
+            unsafe { bindings::$name(value, addr as _, ) }
+        }
+
+        /// Write IO data from a given offset.
+        ///
+        /// Bound checks are performed on runtime, it fails if the offset (plus the type size) is
+        /// out of bounds.
+        $(#[$attr])*
+        pub fn $try_name(&self, value: $type_name, offset: usize) -> Result {
+            let addr = self.io_addr::<$type_name>(offset)?;
+
+            // SAFETY: By the type invariant `addr` is a valid address for MMIO operations.
+            unsafe { bindings::$name(value, addr as _) }
+            Ok(())
+        }
+    };
+}
+
+impl<const SIZE: usize> Io<SIZE> {
+    /// Converts an `IoRaw` into an `Io` instance, providing the accessors to the MMIO mapping.
+    ///
+    /// # Safety
+    ///
+    /// Callers must ensure that `addr` is the start of a valid I/O mapped memory region of size
+    /// `maxsize`.
+    pub unsafe fn from_raw(raw: &IoRaw<SIZE>) -> &Self {
+        // SAFETY: `Io` is a transparent wrapper around `IoRaw`.
+        unsafe { &*core::ptr::from_ref(raw).cast() }
+    }
+
+    /// Returns the base address of this mapping.
+    #[inline]
+    pub fn addr(&self) -> usize {
+        self.0.addr()
+    }
+
+    /// Returns the maximum size of this mapping.
+    #[inline]
+    pub fn maxsize(&self) -> usize {
+        self.0.maxsize()
+    }
+
+    #[inline]
+    const fn offset_valid<U>(offset: usize, size: usize) -> bool {
+        let type_size = core::mem::size_of::<U>();
+        if let Some(end) = offset.checked_add(type_size) {
+            end <= size && offset % type_size == 0
+        } else {
+            false
+        }
+    }
+
+    #[inline]
+    fn io_addr<U>(&self, offset: usize) -> Result<usize> {
+        if !Self::offset_valid::<U>(offset, self.maxsize()) {
+            return Err(EINVAL);
+        }
+
+        // Probably no need to check, since the safety requirements of `Self::new` guarantee that
+        // this can't overflow.
+        self.addr().checked_add(offset).ok_or(EINVAL)
+    }
+
+    #[inline]
+    fn io_addr_assert<U>(&self, offset: usize) -> usize {
+        build_assert!(Self::offset_valid::<U>(offset, SIZE));
+
+        self.addr() + offset
+    }
+
+    define_read!(readb, try_readb, u8);
+    define_read!(readw, try_readw, u16);
+    define_read!(readl, try_readl, u32);
+    define_read!(
+        #[cfg(CONFIG_64BIT)]
+        readq,
+        try_readq,
+        u64
+    );
+
+    define_read!(readb_relaxed, try_readb_relaxed, u8);
+    define_read!(readw_relaxed, try_readw_relaxed, u16);
+    define_read!(readl_relaxed, try_readl_relaxed, u32);
+    define_read!(
+        #[cfg(CONFIG_64BIT)]
+        readq_relaxed,
+        try_readq_relaxed,
+        u64
+    );
+
+    define_write!(writeb, try_writeb, u8);
+    define_write!(writew, try_writew, u16);
+    define_write!(writel, try_writel, u32);
+    define_write!(
+        #[cfg(CONFIG_64BIT)]
+        writeq,
+        try_writeq,
+        u64
+    );
+
+    define_write!(writeb_relaxed, try_writeb_relaxed, u8);
+    define_write!(writew_relaxed, try_writew_relaxed, u16);
+    define_write!(writel_relaxed, try_writel_relaxed, u32);
+    define_write!(
+        #[cfg(CONFIG_64BIT)]
+        writeq_relaxed,
+        try_writeq_relaxed,
+        u64
+    );
+}
diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
index 200c5f99a805..d1f30b1a05fb 100644
--- a/rust/kernel/lib.rs
+++ b/rust/kernel/lib.rs
@@ -79,6 +79,7 @@
 
 #[doc(hidden)]
 pub use bindings;
+pub mod io;
 pub use macros;
 pub use uapi;
 
-- 
2.47.0


