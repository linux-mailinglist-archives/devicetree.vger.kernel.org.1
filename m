Return-Path: <devicetree+bounces-222480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3C6BA9764
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 16:00:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2846E7A581E
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8587D1FBC91;
	Mon, 29 Sep 2025 14:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="f27ejkcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4DD2AD31
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 14:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759154441; cv=none; b=qSlZVWs5AXVGvzz3rCjUh6zQ7SBJ23wvpgkaa12Zg/y94MJ3YLbP1pBgdiko+3gkUSHmK5gOxL547NoJ9VOuG/O782fRAU+yYGBlx3Id101WyZyea18FjRVwktPhfE9fRS1ABCkT9JckjUeXUpe3qorSApW9o4Gm7EegifD9AJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759154441; c=relaxed/simple;
	bh=/rZIgoqHP4hybIGJFYRo6kNc6M4mFvq0IexLoj0CxCg=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=jhqunXShW4itgUYYEdessR3i6GgFhU0dI1XfkBN+5qAMkhGZFaqBLN3mTYHsRByiEQhDZw47bUNIJyzlXmWsSUm9nBEoi/ts8Tn2Sq2p45ShcfCGcn/KoWWTcT7SVbiTKNV6LuK00DYkAQ9I1V0lkVZPzbF8sf1/wQpHfaL5Eqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de; spf=pass smtp.mailfrom=posteo.de; dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b=f27ejkcH; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id A60B9240101
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 16:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.de; s=2017;
	t=1759154437; bh=ZFeWq2TuJxUaER/eT6mgF7f/ylLj4fPrV6Ts3mgVW/M=;
	h=Message-ID:Subject:From:To:Cc:Date:Autocrypt:Content-Type:
	 Content-Transfer-Encoding:MIME-Version:OpenPGP:From;
	b=f27ejkcHaIayUKNqWtvIaG95tPY7QixkYmzOqfU/38r92PXq+0yP3zxBs4QJW/dNn
	 b0Hy/KKz/YolAPJaB+PY5ak6yHr6UDgA5QG6PN2Ygo8tUkUtyW8xLcXMRW37kgyrZG
	 Rb0znnai1eOpsPPJ3ybswuvzvVPDidawW6OjbrHBoTd2Ik0Z18QylTlPhnB2QBRMnP
	 4GhncZVnJhBjYrOKP5AprzgPaMN0BUIrBf/cmyS3di3/2nW18dQaZCFOtl/q48K2+2
	 RSANAc6uGGeXweDoKY6sUrAY8S4/TcZfyXBp5korXr4qIdUtlcUubiL0wQGZx/VB+b
	 oFLA6CnS4zqoA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4cb2rz4Nl1z6twd;
	Mon, 29 Sep 2025 16:00:35 +0200 (CEST)
Message-ID: <09c855b24873ba71b1c1e968d0b6d0c010843699.camel@posteo.de>
Subject: [PATCH v2] rust: of: Add basic DeviceNode abstractions,
From: Markus Probst <markus.probst@posteo.de>
To: devicetree@vger.kernel.org, rust-for-linux@vger.kernel.org, Rob Herring
	 <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Miguel Ojeda
	 <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>
Cc: Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
 =?ISO-8859-1?Q?Bj=F6rn?= Roy Baron	 <bjorn3_gh@protonmail.com>, Benno
 Lossin <lossin@kernel.org>, Andreas Hindborg	 <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross	 <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>
Date: Mon, 29 Sep 2025 14:00:36 +0000
Autocrypt: addr=markus.probst@posteo.de; prefer-encrypt=mutual;
 keydata=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
 R3rOFHA==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
OpenPGP: url=https://posteo.de/keys/markus.probst@posteo.de.asc; preference=encrypt

Add a safe wrapper arround `struct device_node`, which is capable of:

* reading string, u32 and bool properties

* iterating over children

Signed-off-by: Markus Probst <markus.probst@posteo.de>
---
 rust/bindings/bindings_helper.h |   1 +
 rust/helpers/of.c               |  10 +++
 rust/kernel/of.rs               | 150 ++++++++++++++++++++++++++++++++
 3 files changed, 161 insertions(+)

diff --git a/rust/bindings/bindings_helper.h
b/rust/bindings/bindings_helper.h
index 81796d5e16e8..e670b8e42787 100644
--- a/rust/bindings/bindings_helper.h
+++ b/rust/bindings/bindings_helper.h
@@ -59,6 +59,7 @@
 #include <linux/jump_label.h>
 #include <linux/mdio.h>
 #include <linux/miscdevice.h>
+#include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/pci.h>
 #include <linux/phy.h>
diff --git a/rust/helpers/of.c b/rust/helpers/of.c
index 86b51167c913..293cc43452aa 100644
--- a/rust/helpers/of.c
+++ b/rust/helpers/of.c
@@ -6,3 +6,13 @@ bool rust_helper_is_of_node(const struct fwnode_handle
*fwnode)
 {
 	return is_of_node(fwnode);
 }
+
+struct device_node *rust_helper_of_node_get(struct device_node *node)
+{
+	return of_node_get(node);
+}
+
+void rust_helper_of_node_put(struct device_node *node)
+{
+	of_node_put(node);
+}
diff --git a/rust/kernel/of.rs b/rust/kernel/of.rs
index b76b35265df2..e1a3114de686 100644
--- a/rust/kernel/of.rs
+++ b/rust/kernel/of.rs
@@ -1,12 +1,16 @@
 // SPDX-License-Identifier: GPL-2.0
=20
 //! Device Tree / Open Firmware abstractions.
+//!
+//! C header: [`include/linux/of.h`](srctree/include/linux/of.h)
=20
 use crate::{
     bindings,
     device_id::{RawDeviceId, RawDeviceIdIndex},
     prelude::*,
+    types::{ARef, Opaque},
 };
+use core::ptr::NonNull;
=20
 /// IdTable type for OF drivers.
 pub type IdTable<T> =3D &'static dyn
kernel::device_id::IdTable<DeviceId, T>;
@@ -16,6 +20,20 @@
 #[derive(Clone, Copy)]
 pub struct DeviceId(bindings::of_device_id);
=20
+/// The device node representation.
+///
+/// This structure represents the Rust abstraction for a C `struct
device_node`. The implementation
+/// abstracts the usage of an already existing C `struct device_node`
within Rust code that we get
+/// passed from the C side.
+///
+/// # Invariants
+///
+/// A [`DeviceNode`] instance represents a valid `struct device_node`
created by the C portion of the kernel.
+#[repr(transparent)]
+pub struct DeviceNode(Opaque<bindings::device_node>);
+
+struct DeviceNodeIterator<'a>(&'a DeviceNode,
Option<NonNull<bindings::device_node>>);
+
 // SAFETY: `DeviceId` is a `#[repr(transparent)]` wrapper of `struct
of_device_id` and
 // does not add additional invariants, so it's safe to transmute to
`RawType`.
 unsafe impl RawDeviceId for DeviceId {
@@ -63,3 +81,135 @@ macro_rules! of_device_table {
         $crate::module_device_table!("of", $module_table_name,
$table_name);
     };
 }
+
+impl DeviceNode {
+    const fn as_raw(&self) -> *mut bindings::device_node {
+        self.0.get()
+    }
+
+    /// Returns the device tree populated by the bootloader.
+    pub fn root() -> Option<&'static DeviceNode> {
+        // SAFETY: `of_root` is guaranteed to be a pointer to a valid
`struct device_node` or a null-pointer.
+        NonNull::new(unsafe { bindings::of_root })
+            // CAST: `DeviceNode` is a transparent wrapper of
`Opaque<bindings::device_node>`.
+            // SAFETY: `ptr` is guaranteed to be a pointer to a valid
`struct device_node`.
+            .map(|ptr| unsafe { ptr.cast().as_ref() })
+    }
+
+    /// Returns an iterator over the children of this device node.
+    pub fn children(&self) -> impl Iterator<Item =3D ARef<DeviceNode>> +
use<'_> {
+        // SAFETY: `self.as_raw` is guaranteed to be a pointer to a
valid `struct device_node`.
+        let initial =3D unsafe {
bindings::of_get_next_child(self.as_raw(), core::ptr::null_mut()) };
+        DeviceNodeIterator(self, NonNull::new(initial.cast()))
+    }
+
+    /// Returns the name of the device node.
+    pub fn name(&self) -> Option<&CStr> {
+        // SAFETY: `self.as_raw` is guaranteed to be a pointer to a
valid `struct device_node`.
+        let name =3D unsafe { (*self.as_raw()).name };
+        if name.is_null() {
+            None
+        } else {
+            // SAFETY: `name` is valid by the safety requirements.
+            Some(unsafe { CStr::from_char_ptr(name) })
+        }
+    }
+
+    /// Returns the full name (name including the full_name of the
parent) of the device node.
+    pub fn full_name(&self) -> Option<&CStr> {
+        // SAFETY: `self.as_raw` is guaranteed to be a pointer to a
valid `struct device_node`.
+        let full_name =3D unsafe { (*self.as_raw()).full_name };
+        if full_name.is_null() {
+            None
+        } else {
+            // SAFETY: `full_name` is valid by the safety
requirements.
+            Some(unsafe { CStr::from_char_ptr(full_name) })
+        }
+    }
+
+    /// Find and read a u32 from a multi-value property.
+    pub fn property_read_u32_index(&self, propname: &CStr, index: u32)
-> Result<u32> {
+        let mut value =3D 0;
+        // SAFETY: `self.as_raw` is guaranteed to be a pointer to a
valid `struct device_node`.
+        let ret =3D unsafe {
+            bindings::of_property_read_u32_index(
+                self.as_raw(),
+                propname.as_char_ptr(),
+                index,
+                &mut value,
+            )
+        };
+        if ret !=3D 0 {
+            return Err(Error::from_errno(ret));
+        }
+        Ok(value)
+    }
+
+    /// Find and read a string from a property.
+    pub fn property_read_string(&self, propname: &CStr) ->
Result<&CStr> {
+        let mut value =3D core::ptr::null();
+        // SAFETY: `self.as_raw` is guaranteed to be a pointer to a
valid `struct device_node`.
+        let ret =3D unsafe {
+            bindings::of_property_read_string(self.as_raw(),
propname.as_char_ptr(), &mut value)
+        };
+        if ret !=3D 0 {
+            return Err(Error::from_errno(ret));
+        }
+        // SAFETY: `value` is guaranteed to be a valid C string
pointer.
+        Ok(unsafe { CStr::from_char_ptr(value) })
+    }
+
+    /// Find a property.
+    ///
+    /// Returns true if the property exists false otherwise.
+    pub fn property_read_bool(&self, propname: &CStr) -> bool {
+        // SAFETY: `self.as_raw` is guaranteed to be a pointer to a
valid `struct device_node`.
+        unsafe { bindings::of_property_read_bool(self.as_raw(),
propname.as_char_ptr()) }
+    }
+
+    /// Find the child node by name for this device node.
+    pub fn child_by_name(&self, name: &CStr) ->
Option<ARef<DeviceNode>> {
+        // SAFETY: `self.as_raw` is guaranteed to be a pointer to a
valid `struct device_node`.
+        let node =3D unsafe {
bindings::of_get_child_by_name(self.as_raw(), name.as_char_ptr()) };
+        // SAFETY: `node` is guaranteed to be a pointer to a valid
`struct device_node` or a null-pointer.
+        Some(unsafe { ARef::from_raw(NonNull::new(node)?.cast()) })
+    }
+}
+
+// SAFETY: A `DeviceNode` is always reference-counted and can be
released from any thread.
+unsafe impl Send for DeviceNode {}
+
+// SAFETY: `DeviceNode` can be shared among threads because all
methods of `DeviceNode` are thread safe.
+unsafe impl Sync for DeviceNode {}
+
+// SAFETY: Instances of `DeviceNode` are always reference-counted.
+unsafe impl kernel::types::AlwaysRefCounted for DeviceNode {
+    fn inc_ref(&self) {
+        // SAFETY: The existence of a shared reference guarantees that
the refcount is non-zero.
+        unsafe { bindings::of_node_get(self.as_raw()) };
+    }
+
+    unsafe fn dec_ref(obj: NonNull<Self>) {
+        // SAFETY: The safety requirements guarantee that the refcount
is non-zero.
+        unsafe { bindings::of_node_put(obj.cast().as_ptr()) }
+    }
+}
+
+impl<'a> Iterator for DeviceNodeIterator<'a> {
+    type Item =3D ARef<DeviceNode>;
+
+    fn next(&mut self) -> Option<Self::Item> {
+        let prev =3D self.1.take()?;
+
+        // CAST: `DeviceNode` is a transparent wrapper of
`Opaque<bindings::device_node>`.
+        // SAFETY: `ptr` is guaranteed to be a pointer to a valid
`struct device_node`.
+        let result =3D ARef::from(unsafe {
prev.cast::<DeviceNode>().as_ref() });
+
+        // SAFETY:
+        // - `self.0.as_raw` is guaranteed to be a pointer to a valid
`struct device_node`.
+        // - `prev` is guaranteed to be a pointer to a valid `struct
device_node`.
+        self.1 =3D
+            NonNull::new(unsafe {
bindings::of_get_next_child(self.0.as_raw(), prev.as_ptr()) });
+        Some(result)
+    }
+}
--=20
2.49.1

