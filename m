Return-Path: <devicetree+bounces-128001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F17109E6FC0
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:01:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABD98284648
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 14:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E69207E14;
	Fri,  6 Dec 2024 14:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="mDIhXhw4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4532040BD
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 14:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733493696; cv=none; b=HmKB/S1jCmGUn3Ep2+gHHLkaRRMOj7q8DFWntca/YRSuU6yKqMVmUoVkPD4fngPIxaS3ldPEelpQol21DBP8L+ahCWenDxGsgooXWLQEImKZfs20kfUMPqpn3GSjfWlZqjQ6yNs3a9ux1B71a7oK4eTdPtEUvvffLWGr6ALEAiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733493696; c=relaxed/simple;
	bh=ztPyo3yGt6f1hEMGIcmrfUZRowJBSTmCSEvYULhwgIY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RaI1HPt7R/UkqKb5xjFRcOqEPAJnyIy1zlx2ddZNb0hBX6JEOE9ITA1Eze8BpvR9I+s5aJ57amc2jqRHAUG8jKHD0O1zPKyRgrWIxJV3yZTQTgw4ax7UjZeIfurQURzz5+WGU/Eu2gEwR8br4H8roX0BabAbnSvy8QXFp1dxkQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=mDIhXhw4; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3862d16b4f5so382125f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 06:01:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733493693; x=1734098493; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HIROnSpI7QIsIhdgjfBPj1aXSKLxengS8TtSGx06igQ=;
        b=mDIhXhw43Q9O+B8djqlmEMzF9SVSh8Pvrlt1yiqCLy+hbqNvThz6cOotnXdnXR9Rmd
         GULhRHCQot/gDpsJiQw8JXPnXozdaEhwM9cYf2xK4NnvHYJu/u0WL1LB3/I2UdEs55tR
         6aekZ8ZbxT5nrOCxYxTx1uhQY2PJ7sRlHr1RK/vo/gpxPHSZ5ruMZQa7y+Xc/dbMQpJt
         RgNnjAKw4iHdsBRniVwK58Ar7WvpbjxbzqJkYUQFJ99q4ysilIayuyHx64s1oXTNDMFS
         /B2C/z2j13m/WUkhRTw7WagPYknOSQ3JMNtowLnTs8sGkvmoYX1n0JNvSRJDurw++u0m
         mUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733493693; x=1734098493;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HIROnSpI7QIsIhdgjfBPj1aXSKLxengS8TtSGx06igQ=;
        b=lXLPuFhoAktcXsDeVkzepKqgPgav7Dsp9bilhslke2BmOF1FPHJzDmw3RyTwXmqj1l
         kIbI7X3RfM/Axz7X0ec1MQOhffQSwR5Nmf2JFNXdc8gSTq4h6bhvFVN60eDNLZqGuMOO
         gr8En8kHMcDuqEazZg/Uwzl/1Pfttyiy//shK9yM+cgagplCA/gnJSvzMljasH1QXird
         LV9lkTsSf+Bk0d7tYGTV/8/xL4tiCu4U9ojhFjSwvyCpdmJs0/wbVGoap6+3+ud9WXbq
         +FKNz3f1OSWO/UpAHavtoxkDcyf1OD4WDrF8kVI4uwSR8v2NNWWT6+GSJtkWEzxogZim
         IbWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXU9gQvAHQZkeI9UjVH90SHTpIUMkACLnSzhIM4ICTFuaqVXtyMfTpc7dAPyFbsM/HGC3hRb7vrHecM@vger.kernel.org
X-Gm-Message-State: AOJu0YyB3F4gohBrqBcH7oz3oR73r7Oy0MdQ8U4I6Ks8Ifvk9wAAGHc8
	nDGGXpdQEAZHG9xOJFmyF3ADL9GHjxtEDNRPte8jzLB/ZsShe0FkydGYcD8eHPIrXbRGRPI9iII
	K0iXCN8Uf+OiUkdi466bFmMELOGutnNqQ1XPQ
X-Gm-Gg: ASbGncvo2k9z8lbSREofdILzGEzDi35ICHe/tUM7f3AViWVhTuw8o8zswve1QTBnqX9
	nCiHldqBhtjvh8o1+ks99+pydPV0jUplT
X-Google-Smtp-Source: AGHT+IHLpOzFOhY4mfA0Js1CKJtdFnnaFfAgbZ1a1gRtRIpN5wpQ0aUSs985OPEDReg41RO5SuCiAM0IAzD3hXlS/+o=
X-Received: by 2002:a05:6000:402c:b0:382:45db:6a1e with SMTP id
 ffacd0b85a97d-3862a8b30c2mr2623645f8f.14.1733493692399; Fri, 06 Dec 2024
 06:01:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241205141533.111830-1-dakr@kernel.org> <20241205141533.111830-9-dakr@kernel.org>
In-Reply-To: <20241205141533.111830-9-dakr@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Fri, 6 Dec 2024 15:01:18 +0100
Message-ID: <CAH5fLgh6qgQ=SBn17biSRbqO8pNtSEq=5fDY3iuGzbuf2Aqjeg@mail.gmail.com>
Subject: Re: [PATCH v4 08/13] rust: pci: add basic PCI device / driver abstractions
To: Danilo Krummrich <dakr@kernel.org>
Cc: gregkh@linuxfoundation.org, rafael@kernel.org, bhelgaas@google.com, 
	ojeda@kernel.org, alex.gaynor@gmail.com, boqun.feng@gmail.com, 
	gary@garyguo.net, bjorn3_gh@protonmail.com, benno.lossin@proton.me, 
	tmgross@umich.edu, a.hindborg@samsung.com, airlied@gmail.com, 
	fujita.tomonori@gmail.com, lina@asahilina.net, pstanner@redhat.com, 
	ajanulgu@redhat.com, lyude@redhat.com, robh@kernel.org, 
	daniel.almeida@collabora.com, saravanak@google.com, dirk.behme@de.bosch.com, 
	j@jannau.net, fabien.parent@linaro.org, chrisi.schrefl@gmail.com, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 5, 2024 at 3:16=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> w=
rote:
>
> Implement the basic PCI abstractions required to write a basic PCI
> driver. This includes the following data structures:
>
> The `pci::Driver` trait represents the interface to the driver and
> provides `pci::Driver::probe` for the driver to implement.
>
> The `pci::Device` abstraction represents a `struct pci_dev` and provides
> abstractions for common functions, such as `pci::Device::set_master`.
>
> In order to provide the PCI specific parts to a generic
> `driver::Registration` the `driver::RegistrationOps` trait is implemented
> by `pci::Adapter`.
>
> `pci::DeviceId` implements PCI device IDs based on the generic
> `device_id::RawDevceId` abstraction.
>
> Co-developed-by: FUJITA Tomonori <fujita.tomonori@gmail.com>
> Signed-off-by: FUJITA Tomonori <fujita.tomonori@gmail.com>
> Signed-off-by: Danilo Krummrich <dakr@kernel.org>

> +/// The PCI device representation.
> +///
> +/// A PCI device is based on an always reference counted `device:Device`=
 instance. Cloning a PCI
> +/// device, hence, also increments the base device' reference count.
> +#[derive(Clone)]
> +pub struct Device(ARef<device::Device>);

It seems more natural for this to be a wrapper around
`Opaque<bindings::pci_dev>`. Then you can have both &Device and
ARef<Device> depending on whether you want to hold a refcount or not.

Alice

> +impl Device {
> +    /// Create a PCI Device instance from an existing `device::Device`.
> +    ///
> +    /// # Safety
> +    ///
> +    /// `dev` must be an `ARef<device::Device>` whose underlying `bindin=
gs::device` is a member of
> +    /// a `bindings::pci_dev`.
> +    pub unsafe fn from_dev(dev: ARef<device::Device>) -> Self {
> +        Self(dev)
> +    }
> +
> +    fn as_raw(&self) -> *mut bindings::pci_dev {
> +        // SAFETY: By the type invariant `self.0.as_raw` is a pointer to=
 the `struct device`
> +        // embedded in `struct pci_dev`.
> +        unsafe { container_of!(self.0.as_raw(), bindings::pci_dev, dev) =
as _ }
> +    }
> +
> +    /// Enable memory resources for this device.
> +    pub fn enable_device_mem(&self) -> Result {
> +        // SAFETY: `self.as_raw` is guaranteed to be a pointer to a vali=
d `struct pci_dev`.
> +        let ret =3D unsafe { bindings::pci_enable_device_mem(self.as_raw=
()) };
> +        if ret !=3D 0 {
> +            Err(Error::from_errno(ret))
> +        } else {
> +            Ok(())
> +        }
> +    }
> +
> +    /// Enable bus-mastering for this device.
> +    pub fn set_master(&self) {
> +        // SAFETY: `self.as_raw` is guaranteed to be a pointer to a vali=
d `struct pci_dev`.
> +        unsafe { bindings::pci_set_master(self.as_raw()) };
> +    }
> +}
> +
> +impl AsRef<device::Device> for Device {
> +    fn as_ref(&self) -> &device::Device {
> +        &self.0
> +    }
> +}
> --
> 2.47.0
>

