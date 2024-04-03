Return-Path: <devicetree+bounces-55858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9756896A60
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 11:21:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FAEA28C2AE
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 09:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ABA970CC5;
	Wed,  3 Apr 2024 09:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rbIFSyD5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969446EB51
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 09:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712136084; cv=none; b=G3IaEdjH/bVA2BWhQQ/3+V0oOjs7ET1SYpk0jT/iv9J+O+6BXHSAfl9nNfUpzDPqNYSHoK6/DMDV0fkkPwZNtKZob5XN/9lHWTMVagP4fpwKiMZGtb635j7KHLV1o4f+ubGvXDm4I4cFWtiTfCXGn0AMy/Lb+TAKtisEwXfQat8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712136084; c=relaxed/simple;
	bh=H5d8DlzGND/H/f1KN3Yf4Lvv14SA1lkHDdHDkosRGD4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ccyk2Kqq4c5WnW1sLyioMJ7u3ySGVvBK+Y1YZxgqP379FCxrJvfFraE2ly8XmZ9PQrGs3Lyptl6U5IAQWQT8B5hAVl5sXjRDX29a60jfdtYgLW28otmp1Ab9evG5iqxXxeMqFy/WtH6gGgw57pwoX1/T9kgIw2HYDbDfW9k5fvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rbIFSyD5; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6e703e0e5deso4979407b3a.3
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 02:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712136082; x=1712740882; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vtLqEmydzrCNnRTSENhA+AKBW/+wQJ0+bubWJxgXh7o=;
        b=rbIFSyD5ctdxcZva8oXACTINt88ARST4xLi7z4YPRUHD8j4D02O8VUadGBWMwPZ8gN
         zF7J3lHfdz+sEjMm1XcD62KWDae5mwA+wxiVLMisGNyG4IFwduVisstvQw9oAHv+7+PG
         kTpYUg77xl/MbeAVLQ4bLPIN/axilV4dq3pOJ7Wp0pQNz480ILFmNJQZx61FwUf/nnts
         t3jlQfDjmm4kALVRX2tEl/2FKexf3NLfHdO9YgVgUtEgPe8mQp0AYLOGOcubNJzflghM
         2Wqho9+ANeGCJv7Uw2kqNp+kkmpvkXCnjd3XYNlVFL6Od09V6zxqXAx3rEY/ScM2pMOC
         IS8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712136082; x=1712740882;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vtLqEmydzrCNnRTSENhA+AKBW/+wQJ0+bubWJxgXh7o=;
        b=HTu6WeIbiJJSwdEewEf25FbkJTa0y8UIm9KZbfQaxbZ8D/j7LRZ3Gs+oBoIPphheLc
         sI7X3FL4+u7UgLGb6ZIfsxjXEHxFzRYhA4svKNOfghyxxtjx33lsj3r7bGBOQIt83jar
         I9cP+ed53NRinwndpoJMZRzy1JytOoRxD7m4o1FLYlv4eESHWAX4w0omPhGUJ+Hqa0S3
         AR836mIfOMDvCWHTVl7DXqJtmHk3HBI+WA0ds76R4VzNwdXp1KCtKZpSRvnNOGcZNnJH
         B1YgrIEG5jr5NkS+GyJVM6WQ54GgqsacO6OZTtsYmAUja5z8QftL95xTtOR2AQa32JTu
         ccsA==
X-Forwarded-Encrypted: i=1; AJvYcCWPhJddwRWTi5FtbRtwgg037HBQdD7Dg+2N8OyOVQHtatteVF+wTAuddXaVUlAeguh5Xfp2KVmDJObarHeO4dndiJXTkcsMmtoBiQ==
X-Gm-Message-State: AOJu0YzfG1Dj/CC3DVaH3gy46CKXePN69h9SdBPyPLMEicnIvb8BxtX6
	PRnj+fj+fLp2lVq/IMqaMG4Y/3YpFCFEdSDNwCWO+nNhkHCZv9RF3HIdI2IzwA==
X-Google-Smtp-Source: AGHT+IHI/Dy9/VZiFVNF4MsqF+YXBPtwtdyt2Oqfn6ZAyRQOCFBvez6QTVmfCs6rxrt5RobVKu/RUw==
X-Received: by 2002:a05:6a00:391b:b0:6ea:b690:f146 with SMTP id fh27-20020a056a00391b00b006eab690f146mr16024936pfb.15.1712136081817;
        Wed, 03 Apr 2024 02:21:21 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id d12-20020a056a00244c00b006ecd9cb9035sm216831pfj.177.2024.04.03.02.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 02:21:21 -0700 (PDT)
Date: Wed, 3 Apr 2024 14:51:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v2 02/18] PCI: endpoint: Introduce pci_epc_map_align()
Message-ID: <20240403092114.GG25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-3-dlemoal@kernel.org>
 <20240403074520.GC25309@thinkpad>
 <eb580d64-1110-479a-9a0b-c2f1eacd23e7@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <eb580d64-1110-479a-9a0b-c2f1eacd23e7@kernel.org>

On Wed, Apr 03, 2024 at 04:54:32PM +0900, Damien Le Moal wrote:
> On 4/3/24 16:45, Manivannan Sadhasivam wrote:
> > On Sat, Mar 30, 2024 at 01:19:12PM +0900, Damien Le Moal wrote:
> >> Some endpoint controllers have requirements on the alignment of the
> >> controller physical memory address that must be used to map a RC PCI
> >> address region. For instance, the rockchip endpoint controller uses
> >> at most the lower 20 bits of a physical memory address region as the
> >> lower bits of an RC PCI address. For mapping a PCI address region of
> >> size bytes starting from pci_addr, the exact number of address bits
> >> used is the number of address bits changing in the address range
> >> [pci_addr..pci_addr + size - 1].
> >>
> >> For this example, this creates the following constraints:
> >> 1) The offset into the controller physical memory allocated for a
> >>    mapping depends on the mapping size *and* the starting PCI address
> >>    for the mapping.
> >> 2) A mapping size cannot exceed the controller windows size (1MB) minus
> >>    the offset needed into the allocated physical memory, which can end
> >>    up being a smaller size than the desired mapping size.
> >>
> >> Handling these constraints independently of the controller being used in
> >> a PCI EP function driver is not possible with the current EPC API as
> >> it only provides the ->align field in struct pci_epc_features.
> >> Furthermore, this alignment is static and does not depend on a mapping
> >> pci address and size.
> >>
> >> Solve this by introducing the function pci_epc_map_align() and the
> >> endpoint controller operation ->map_align to allow endpoint function
> >> drivers to obtain the size and the offset into a controller address
> >> region that must be used to map an RC PCI address region. The size
> >> of the physical address region provided by pci_epc_map_align() can then
> >> be used as the size argument for the function pci_epc_mem_alloc_addr().
> >> The offset into the allocated controller memory can be used to
> >> correctly handle data transfers. Of note is that pci_epc_map_align() may
> >> indicate upon return a mapping size that is smaller (but not 0) than the
> >> requested PCI address region size. For such case, an endpoint function
> >> driver must handle data transfers in fragments.
> >>
> > 
> > Is there any incentive in exposing pci_epc_map_align()? I mean, why can't it be
> > hidden inside the new alloc() API itself?
> 
> I could drop pci_epc_map_align(), but the idea here was to have an API that is
> not restrictive. E.g., a function driver could allocate memory, keep it and
> repetedly use map_align and map() function to remap it to different PCI
> addresses. With your suggestion, that would not be possible.
> 

Is there any requirement currently? If not, let's try to introduce it when the
actual requirement comes.

> > 
> > Furthermore, is it possible to avoid the map_align() callback and handle the
> > alignment within the EPC driver?
> 
> I am not so sure that this is possible because handling the alignment can
> potentially result in changing the amount of memory to allocate, based on the
> PCI address also. So the allocation API would need to change, a lot.
> 

Hmm, looking at patch 11/18, I think it might become complicated.

- Mani

> >> +	/*
> >> +	 * Assume a fixed alignment constraint as specified by the controller
> >> +	 * features.
> >> +	 */
> >> +	features = pci_epc_get_features(epc, func_no, vfunc_no);
> >> +	if (!features || !features->align) {
> >> +		map->map_pci_addr = pci_addr;
> >> +		map->map_size = size;
> >> +		map->map_ofst = 0;
> > 
> > These values are overwritten anyway below.
> 
> Looks like "return" got dropped. Bug. Will re-add it.
> 
> 
> -- 
> Damien Le Moal
> Western Digital Research
> 

-- 
மணிவண்ணன் சதாசிவம்

