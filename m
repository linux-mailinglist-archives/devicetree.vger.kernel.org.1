Return-Path: <devicetree+bounces-129507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AAE9EBE3F
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:53:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B8FD1889397
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 22:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EFDF235887;
	Tue, 10 Dec 2024 22:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3T6MoYi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA4F225A3F;
	Tue, 10 Dec 2024 22:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733871069; cv=none; b=Tnvrf4Wm31H2ujz/33GiZNwa3so15Akd2jlaJ68bB5bj8JNIffyrxSNh+8MYdEys3e5M+82kXBWb87EVDcm6kbqAS+bd4mVxnPmQO1pKAkJbvRyWjCrgoI4D4INpJ9D9T0mrafm1VnafOa8jUnE7Kpr1ZBPOy57bhe0iQIu/fR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733871069; c=relaxed/simple;
	bh=ZuS40/214DnXyFMeOW59WQkKQMQ2NHzojmHkGlB8s1U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DPw0mI/GTzqI8YZ2weSLyrwrt9YGVBeIUjyNjck91gcyH4dn68zfG5lheueo0mhP1YekBCsV2a9yDmbRD/uq13Dtuhfxhko+XI87B3MKgCPmxapQ6M0RNAz4TnLz1SO6bd6TPUaLoQI/68ge6f7xW7906yzz5GqFpKArAH7ADo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3T6MoYi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49E71C4CEE2;
	Tue, 10 Dec 2024 22:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733871069;
	bh=ZuS40/214DnXyFMeOW59WQkKQMQ2NHzojmHkGlB8s1U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=T3T6MoYiZ+aBC79LnE7e5RpIJYLXQR4+1771io5GCUH8x19iosGU+A4orLAjrmqJv
	 M+vfvPbZMKSgM9KP1W8T8LQ7QkAG4kF1gqNOdhMYtQW/jlATKeVltLMgENh22y9vxk
	 md/ICYayuhMFwo7RJji4mhfMutIScmQ6IRKv/N0ymLUM1GnA/4hJBLMyCUghfoJpN3
	 ChGuOaBgNlxT2qcMbHX6f86T5ln8UNqXFKsfCvCFiJsRJ3I9+rX72WusoXT31XyPpa
	 F6d8mxfjRZ9x7SPUaU+rWtEaQcPQz0qSqheJWSIVYDYcINDE/sh408xBfrB+n2EBfB
	 IIoVtn8jLPmIw==
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
Subject: [PATCH v5 11/16] samples: rust: add Rust PCI sample driver
Date: Tue, 10 Dec 2024 23:46:38 +0100
Message-ID: <20241210224947.23804-12-dakr@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241210224947.23804-1-dakr@kernel.org>
References: <20241210224947.23804-1-dakr@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This commit adds a sample Rust PCI driver for QEMU's "pci-testdev"
device. To enable this device QEMU has to be called with
`-device pci-testdev`.

The same driver shows how to use the PCI device / driver abstractions,
as well as how to request and map PCI BARs, including a short sequence of
MMIO operations.

Signed-off-by: Danilo Krummrich <dakr@kernel.org>
---
 MAINTAINERS                     |   1 +
 samples/rust/Kconfig            |  11 ++++
 samples/rust/Makefile           |   1 +
 samples/rust/rust_driver_pci.rs | 110 ++++++++++++++++++++++++++++++++
 4 files changed, 123 insertions(+)
 create mode 100644 samples/rust/rust_driver_pci.rs

diff --git a/MAINTAINERS b/MAINTAINERS
index c20469f46801..50995e0e4252 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18103,6 +18103,7 @@ F:	include/linux/of_pci.h
 F:	include/linux/pci*
 F:	include/uapi/linux/pci*
 F:	rust/kernel/pci.rs
+F:	samples/rust/rust_driver_pci.rs
 
 PCIE BANDWIDTH CONTROLLER
 M:	Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
diff --git a/samples/rust/Kconfig b/samples/rust/Kconfig
index b0f74a81c8f9..6d468193cdd8 100644
--- a/samples/rust/Kconfig
+++ b/samples/rust/Kconfig
@@ -30,6 +30,17 @@ config SAMPLE_RUST_PRINT
 
 	  If unsure, say N.
 
+config SAMPLE_RUST_DRIVER_PCI
+	tristate "PCI Driver"
+	depends on PCI
+	help
+	  This option builds the Rust PCI driver sample.
+
+	  To compile this as a module, choose M here:
+	  the module will be called driver_pci.
+
+	  If unsure, say N.
+
 config SAMPLE_RUST_HOSTPROGS
 	bool "Host programs"
 	help
diff --git a/samples/rust/Makefile b/samples/rust/Makefile
index c1a5c1655395..2f5b6bdb2fa5 100644
--- a/samples/rust/Makefile
+++ b/samples/rust/Makefile
@@ -3,6 +3,7 @@ ccflags-y += -I$(src)				# needed for trace events
 
 obj-$(CONFIG_SAMPLE_RUST_MINIMAL)		+= rust_minimal.o
 obj-$(CONFIG_SAMPLE_RUST_PRINT)			+= rust_print.o
+obj-$(CONFIG_SAMPLE_RUST_DRIVER_PCI)		+= rust_driver_pci.o
 
 rust_print-y := rust_print_main.o rust_print_events.o
 
diff --git a/samples/rust/rust_driver_pci.rs b/samples/rust/rust_driver_pci.rs
new file mode 100644
index 000000000000..94710b245834
--- /dev/null
+++ b/samples/rust/rust_driver_pci.rs
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Rust PCI driver sample (based on QEMU's `pci-testdev`).
+//!
+//! To make this driver probe, QEMU must be run with `-device pci-testdev`.
+
+use kernel::{bindings, c_str, devres::Devres, pci, prelude::*};
+
+struct Regs;
+
+impl Regs {
+    const TEST: usize = 0x0;
+    const OFFSET: usize = 0x4;
+    const DATA: usize = 0x8;
+    const COUNT: usize = 0xC;
+    const END: usize = 0x10;
+}
+
+type Bar0 = pci::Bar<{ Regs::END }>;
+
+#[derive(Debug)]
+struct TestIndex(u8);
+
+impl TestIndex {
+    const NO_EVENTFD: Self = Self(0);
+}
+
+struct SampleDriver {
+    pdev: pci::Device,
+    bar: Devres<Bar0>,
+}
+
+kernel::pci_device_table!(
+    PCI_TABLE,
+    MODULE_PCI_TABLE,
+    <SampleDriver as pci::Driver>::IdInfo,
+    [(
+        pci::DeviceId::new(bindings::PCI_VENDOR_ID_REDHAT, 0x5),
+        TestIndex::NO_EVENTFD
+    )]
+);
+
+impl SampleDriver {
+    fn testdev(index: &TestIndex, bar: &Bar0) -> Result<u32> {
+        // Select the test.
+        bar.writeb(index.0, Regs::TEST);
+
+        let offset = u32::from_le(bar.readl(Regs::OFFSET)) as usize;
+        let data = bar.readb(Regs::DATA);
+
+        // Write `data` to `offset` to increase `count` by one.
+        //
+        // Note that we need `try_writeb`, since `offset` can't be checked at compile-time.
+        bar.try_writeb(data, offset)?;
+
+        Ok(bar.readl(Regs::COUNT))
+    }
+}
+
+impl pci::Driver for SampleDriver {
+    type IdInfo = TestIndex;
+
+    const ID_TABLE: pci::IdTable<Self::IdInfo> = &PCI_TABLE;
+
+    fn probe(pdev: &mut pci::Device, info: &Self::IdInfo) -> Result<Pin<KBox<Self>>> {
+        dev_dbg!(
+            pdev.as_ref(),
+            "Probe Rust PCI driver sample (PCI ID: 0x{:x}, 0x{:x}).\n",
+            pdev.vendor_id(),
+            pdev.device_id()
+        );
+
+        pdev.enable_device_mem()?;
+        pdev.set_master();
+
+        let bar = pdev.iomap_region_sized::<{ Regs::END }>(0, c_str!("rust_driver_pci"))?;
+
+        let drvdata = KBox::new(
+            Self {
+                pdev: pdev.clone(),
+                bar,
+            },
+            GFP_KERNEL,
+        )?;
+
+        let bar = drvdata.bar.try_access().ok_or(ENXIO)?;
+
+        dev_info!(
+            pdev.as_ref(),
+            "pci-testdev data-match count: {}\n",
+            Self::testdev(info, &bar)?
+        );
+
+        Ok(drvdata.into())
+    }
+}
+
+impl Drop for SampleDriver {
+    fn drop(&mut self) {
+        dev_dbg!(self.pdev.as_ref(), "Remove Rust PCI driver sample.\n");
+    }
+}
+
+kernel::module_pci_driver! {
+    type: SampleDriver,
+    name: "rust_driver_pci",
+    author: "Danilo Krummrich",
+    description: "Rust PCI driver",
+    license: "GPL v2",
+}
-- 
2.47.0


