Return-Path: <devicetree+bounces-161891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E19A75CB7
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 23:28:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 541CA3A7E03
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 21:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEE3C1DE4FB;
	Sun, 30 Mar 2025 21:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="Q/hhRpya"
X-Original-To: devicetree@vger.kernel.org
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D374AEEAA;
	Sun, 30 Mar 2025 21:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=90.155.92.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743370118; cv=none; b=SIpqFMxbW4J2YvJkEmBsIMdY5KeB48lag58lHPugEKEhUNHEyS26Gh9oTI46s07jVptS2FWZfyghnGXd7ZtXG78ZrHILXUTKI7k8rwk8A8WytLb6QAk6aZt00Fl5D+2WwXdxPFLI91HEgnOLlGkUOdxupTnHDz9LSZcg/4t+Yto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743370118; c=relaxed/simple;
	bh=HIpM9hYzjP/g9i1cY/OEycnx2DC+LjHysGz3lE5EyQg=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=UWA75+pB7DXXuKtPwtL/zczoagXPOoyrnC0Sp3OxHugFhMuPk1ThINmyDMCEOw9zrkX/2yiy0o0wOz0TFK1T6k5cqQX016NXtRNjybZbHy4aCtwWRNFG9+XTrLT52UCLgYTOOKx20dfoMSaIlZPLL+7iZN+ZT4ahUK2ui9+iGq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org; spf=none smtp.mailfrom=desiato.srs.infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=Q/hhRpya; arc=none smtp.client-ip=90.155.92.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=desiato.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=HIpM9hYzjP/g9i1cY/OEycnx2DC+LjHysGz3lE5EyQg=; b=Q/hhRpyamRXibNzigh2wG8/crc
	ROYh6p8GREOUEHn5tPI/fG9G8DE4L8N1epcO9IHxApYf/rGNhQ3VmRGxA6UzdctKclKmGUTgNIzsC
	76m1acHpB5W5m9TMue6N9Qra6ijIlHpw8lJLREto9is2YXLk+ebNigSoN5LCAytBqNH9COzHnEqeH
	z1RG3qddVWELJ3MWgOm3zk7kzSlb42TVr24uisl6/2Gmh4Hjf4XnKxoRmOv+ohFZkgIi/mZunziCi
	icx4CajoRfo+cML2Jfz1BONBydD5a/3hHnRie4i4JSIt5cdyrz/xRYarmiddiPFVCBqgWkFiu7Oce
	KThu+WDA==;
Received: from [172.31.31.142] (helo=[127.0.0.1])
	by desiato.infradead.org with esmtpsa (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz0CE-00000006YmG-0vmx;
	Sun, 30 Mar 2025 21:27:58 +0000
Date: Sun, 30 Mar 2025 22:27:58 +0100
From: David Woodhouse <dwmw2@infradead.org>
To: linuxppc-dev@lists.ozlabs.org, "Michael S. Tsirkin" <mst@redhat.com>
CC: Claire Chang <tientzu@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 mpe@ellerman.id.au, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>, heikki.krogerus@linux.intel.com,
 peterz@infradead.org, benh@kernel.crashing.org, grant.likely@arm.com,
 paulus@samba.org, mingo@kernel.org, sstabellini@kernel.org,
 Saravana Kannan <saravanak@google.com>, xypron.glpk@gmx.de,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 xen-devel@lists.xenproject.org, Thierry Reding <treding@nvidia.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>,
 Robin Murphy <robin.murphy@arm.com>, hch@infradead.org,
 Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 =?ISO-8859-1?Q?Eugenio_P=E9rez?= <eperezma@redhat.com>,
 virtualization@lists.linux.dev, graf@amazon.de
Subject: Re: Using Restricted DMA for virtio-pci
User-Agent: K-9 Mail for Android
In-Reply-To: <20250330125929-mutt-send-email-mst@kernel.org>
References: <20210209062131.2300005-1-tientzu@chromium.org> <979b6a34ca5724ced1d4871b58bf227065d7da57.camel@infradead.org> <20250321142947-mutt-send-email-mst@kernel.org> <d1382a6ee959f22dc5f6628d8648af77f4702418.camel@infradead.org> <20250330125929-mutt-send-email-mst@kernel.org>
Message-ID: <E3EE485D-AD74-457C-BDEC-F8C62DFE4909@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-SRS-Rewrite: SMTP reverse-path rewritten from <dwmw2@infradead.org> by desiato.infradead.org. See http://www.infradead.org/rpr.html

On 30 March 2025 18:06:47 BST, "Michael S=2E Tsirkin" <mst@redhat=2Ecom> wr=
ote:
>> It's basically just allowing us to expose through PCI, what I believe
>> we can already do for virtio in DT=2E
>
>I am not saying I am against this extension=2E
>The idea to restrict DMA has a lot of merit outside pkvm=2E
>For example, with a physical devices, limiting its DMA
>to a fixed range can be good for security at a cost of
>an extra data copy=2E
>
>So I am not saying we have to block this specific hack=2E
>
>what worries me fundamentally is I am not sure it works well
>e=2Eg=2E for physical virtio cards=2E

Not sure why it doesn't work for physical cards=2E They don't need to be b=
us-mastering; they just take data from a buffer in their own RAM=2E

>Attempts to pass data between devices will now also require
>extra data copies=2E

Yes=2E I think that's acceptable, but if we really cared we could perhaps =
extend the capability to refer to a range inside a given BAR on a specific =
*device*? Or maybe just *function*, and allow sharing of SWIOTLB buffer wit=
hin a multi-function device?

I think it's overkill though=2E

>Did you think about adding an swiotlb mode to virtio-iommu at all?
>Much easier than parsing page tables=2E

Often the guests which need this will have a real IOMMU for the true pass-=
through devices=2E Adding a virtio-iommu into the mix (or any other system-=
wide way of doing something different for certain devices) is problematic=
=2E

The on-device buffer keeps it nice and simple, and even allows us to do de=
vice support for operating systems like Windows where it's a lot harder to =
do anything generic in the core OS=2E


