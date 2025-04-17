Return-Path: <devicetree+bounces-168289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 112DFA9210C
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:13:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AAA8A1B60001
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B329B25291F;
	Thu, 17 Apr 2025 15:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gFDnxD2L"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55C324E4D4
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744902772; cv=none; b=X0SfYvLsp41Kg6N/sP6uQbmL8YK83KzB+rXwZ76hyzGn/69OLLtpRY3LR48517mdeilCtM7MjrkY+mj8NPWYi7TVNzxVvVDr414uEWvcfymIzMQYNT4zKQ4Ps5usL8jpSjAgUD0hfq9OVRLTY1k8z1n5WnG3VVIy/xDKqMm7M0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744902772; c=relaxed/simple;
	bh=3uh6mdsrNsrsm6YjcZWflQUkgFQg1KT8S2ESk08d3ws=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=L6jrEv92jVhzntyYMjqm41hI6qV8AoSxOxi8qyNOh7EzQWAATAboEd3FmYGOWbjnqpVWGlgHILmZlo8kIFlhOaVjt+DfydjbHefIpgfEW4/EdJa2vNn6D3HvKBD1Y4kFUpvSHQ/auK6XAYudLfYRz9az0iW0MPyqw9tAlJrE8Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gFDnxD2L; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744902769;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZvIv6s5NoNu7fgPy/v1DfxlqNul94q/qhEPwAqUT6ok=;
	b=gFDnxD2LJiObsYPUX/mUvm8N/bCTLgsd256uDQq6BEvwDTswOjMvzbO2MpDT8JuO2EFA2B
	3ScoxNivUUVlo0Sqrh8zbo93wqPrLIXMCGadrzryoKA3kT3xFj0E3OVJGeHvVDdkwQLPcG
	5IgbSShGPTVKHSxSvbXjBDuDjyfIP/M=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-550-jQAyl1mQPTWxS2MsBuKsjw-1; Thu,
 17 Apr 2025 11:12:45 -0400
X-MC-Unique: jQAyl1mQPTWxS2MsBuKsjw-1
X-Mimecast-MFC-AGG-ID: jQAyl1mQPTWxS2MsBuKsjw_1744902762
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6873E19560BB;
	Thu, 17 Apr 2025 15:12:42 +0000 (UTC)
Received: from [10.44.33.28] (unknown [10.44.33.28])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 098D119560BA;
	Thu, 17 Apr 2025 15:12:36 +0000 (UTC)
Message-ID: <eb4b9a30-0527-4fa0-b3eb-c886da31cc80@redhat.com>
Date: Thu, 17 Apr 2025 17:12:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 net-next 3/8] mfd: Add Microchip ZL3073x support
From: Ivan Vecera <ivecera@redhat.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Lee Jones <lee@kernel.org>, Kees Cook <kees@kernel.org>,
 Andy Shevchenko <andy@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Michal Schmidt <mschmidt@redhat.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20250416162144.670760-1-ivecera@redhat.com>
 <20250416162144.670760-4-ivecera@redhat.com>
 <8fc9856a-f2be-4e14-ac15-d2d42efa9d5d@lunn.ch>
 <CAAVpwAsw4-7n_iV=8aXp7=X82Mj7M-vGAc3f-fVbxxg0qgAQQA@mail.gmail.com>
 <894d4209-4933-49bf-ae4c-34d6a5b1c9f1@lunn.ch>
 <03afdbe9-8f55-4e87-bec4-a0e69b0e0d86@redhat.com>
Content-Language: en-US
In-Reply-To: <03afdbe9-8f55-4e87-bec4-a0e69b0e0d86@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40

On 17. 04. 25 4:50 odp., Ivan Vecera wrote:
> 
> 
> On 17. 04. 25 3:13 odp., Andrew Lunn wrote:
>> On Wed, Apr 16, 2025 at 08:19:25PM +0200, Ivan Vecera wrote:
>>> On Wed, Apr 16, 2025 at 7:11 PM Andrew Lunn <andrew@lunn.ch> wrote:
>>>
>>>      > +++ b/include/linux/mfd/zl3073x_regs.h
>>>      > @@ -0,0 +1,105 @@
>>>      > +/* SPDX-License-Identifier: GPL-2.0-only */
>>>      > +
>>>      > +#ifndef __LINUX_MFD_ZL3073X_REGS_H
>>>      > +#define __LINUX_MFD_ZL3073X_REGS_H
>>>      > +
>>>      > +#include <asm/byteorder.h>
>>>      > +#include <linux/lockdep.h>
>>>
>>>      lockdep?
>>>
>>>
>>> lockdep_assert*() is used in later introduced helpers.
>>
>> nitpicking, but you generally add headers as they are needed.
> 
> +1
> 
> 
>>>      > +#include <linux/mfd/zl3073x.h>
>>>      > +#include <linux/regmap.h>
>>>      > +#include <linux/types.h>
>>>      > +#include <linux/unaligned.h>
>>>      > +
>>>      > +/* Registers are mapped at offset 0x100 */
>>>      > +#define ZL_RANGE_OFF        0x100
>>>      > +#define ZL_PAGE_SIZE        0x80
>>>      > +#define ZL_REG_ADDR(_pg, _off) (ZL_RANGE_OFF + (_pg) * 
>>> ZL_PAGE_SIZE +
>>>      (_off))
>>>      > +
>>>      > +/**************************
>>>      > + * Register Page 0, General
>>>      > + **************************/
>>>      > +
>>>      > +/*
>>>      > + * Register 'id'
>>>      > + * Page: 0, Offset: 0x01, Size: 16 bits
>>>      > + */
>>>      > +#define ZL_REG_ID ZL_REG_ADDR(0, 0x01)
>>>      > +
>>>      > +static inline __maybe_unused int
>>>      > +zl3073x_read_id(struct zl3073x_dev *zldev, u16 *value)
>>>      > +{
>>>      > +     __be16 temp;
>>>      > +     int rc;
>>>      > +
>>>      > +     rc = regmap_bulk_read(zldev->regmap, ZL_REG_ID, &temp, 
>>> sizeof
>>>      (temp));
>>>      > +     if (rc)
>>>      > +             return rc;
>>>      > +
>>>      > +     *value = be16_to_cpu(temp);
>>>      > +     return rc;
>>>      > +}
>>>
>>>      It seems odd these are inline functions in a header file.
>>>
>>>
>>> There are going to be used by dpll_zl3073x sub-driver in series part 2.
>>
>> The subdriver needs to know the ID, firmware version, etc?
> 
> No
> 
>> Anyway, look around. How many other MFD, well actually, any sort of
>> driver at all, have a bunch of low level helpers as inline functions
>> in a header? You are aiming to write a plain boring driver which looks
>> like every other driver in Linux....
> 
> Well, I took inline functions approach as this is safer than macro usage
> and each register have own very simple implementation with type and
> range control (in case of indexed registers).
> 
> It is safer to use:
> zl3073x_read_ref_config(..., &v);
> ...
> zl3073x_read_ref_config(..., &v);
> 
> than:
> zl3073x_read_reg8(..., ZL_REG_REF_CONFIG, &v);
> ...
> zl3073x_read_reg16(..., ZL_REG_REF_CONFIG, &v); /* wrong */
> 
> With inline function defined for each register the mistake in the 
> example cannot happen and also compiler checks that 'v' has correct type.
> 
>> Think about your layering. What does the MFD need to offer to sub
>> drivers so they can work? For lower registers, maybe just
>> zl3073x_read_u8(), zl3073x_read_u16() & zl3073x_read_read_u32(). Write
>> variants as well. Plus the API needed to safely access the mailbox.
>> Export these using one of the EXPORT_SYMBOL_GPL() variants, so the sub
>> drivers can access them. The #defines for the registers numbers can be
>> placed into a shared header file.
> 
> Would it be acceptable for you something like this:
> 
> int zl3073x_read_reg{8,16,32,48}(..., unsigned int reg, u{8,16,32,64} *v);
> int zl3073x_write_reg{8,16,32,48}(..., unsigned int reg, u{8,16,32,64} v);
> int zl3073x_read_idx_reg{8,16,32,48}(..., unsigned int reg, unsigned int 
> idx, unsigned int max_idx, unsigned int stride, u{8,16,32,64} *v);
> int zl3073x_write_idx_reg{8,16,32,48}(..., unsigned int reg, unsigned 
> int idx, unsigned int max_idx, unsigned int stride, u{8,16,32,64} v);
> 
> /* Simple non-indexed register */
> #define ZL_REG_ID    ZL_REG_ADDR(0 /* page */, 0x01 /* offset */
> #define ZL_REG_ID_BITS    8
> 
> /* Simple indexed register */
> #define ZL_REG_REF_STATUS    ZL_REG_ADDR(2, 0x44)
> #define ZL_REG_REF_STATUS_BITS    16
> #define ZL_REG_REF_STATUS_ITEMS    10
> #define ZL_REG_REF_STATUS_STRIDE 2
> 
> /* Read macro for non-indexed register */
> #define ZL3073X_READ_REG(_zldev, _reg, _v)    \
>      __PASTE(zl3073x_read_reg, _reg##_BITS)(_zldev, _reg, _v)
> 
> /* For indexed one */
> #define ZL3073X_READ_IDX_REG(_zldev, _reg, _idx, _v)    \
>      __PASTE(zl3073x_read_idx_reg, _reg##_BITS)(_zldev, _reg, _v,
>                             _idx, \
>                             _reg##_ITEMS, \
>                             _reg##_STRIDE, _v)
> 
> This would allow to call simply
> ZL3073X_READ_REG(zldev, ZL_REG_ID, &val);
> or
> ZL3073X_READ_IDX_REG(zldev, ZL_REG_REF_STATUS, 4);
> 
> and caller does not need to know register size and range constraints.
> 
> WDYT?

Or another approach could be:

struct zl_reg {
	unsigned int addr;
	unsigned int bits;
	unsigned int items;
	unsigned int stride;
};

#define ZL_DEF_IDX_REG(_name, _addr, _bits, _items, _stride)	\
static const struct zl_reg _name = {
	.addr = _addr,
	.bits = _bits,
	.items = _items,
	.stride = _stride,
}

#define ZL_DEF_REG(_name, _addr, _bits)	\
	ZL_DEF_IDX_REG(_name, _addr, _bits, 1, 0)

static inline int zl_read_reg(..., const struct zl_reg reg, void *value)
{
	int rc;
	/* Check that all fields in reg are known constant at build time */
	BUILD_BUG_ON(!const_true(reg.addr));
	BUILD_BUG_ON(reg.items != 1);
	switch (reg.bits) {
	case 8:
		rc = zl_read_reg8(zldev, reg.addr, value);
	...
	case 48:
		rc = zl_read_reg48(zldev, reg.addr, value);
	}
	return rc;
}

static inline int zl_read_idx_reg(..., const struct zl_reg reg,
				  unsigned int idx, void *value)
{
	unsigned int addr;
	int rc;
	/* Check that all fields in reg are known constant at build time */
	BUILD_BUG_ON(!const_true(reg.addr));
	BUILD_BUG_ON(reg.items > 1);
	
	if (idx >= reg.items)
		return -EINVAL;

	addr = reg.addr + (idx * reg.stride);
	switch (reg.bits) {
	case 8:
		rc = zl_read_reg8(zldev, addr, value);
	...
	case 48:
		rc = zl_read_reg48(zldev, addr, value);
	}
	return rc;
}

// page 0, offset 0x01, bits 8
ZL_DEF_REG(id, ZL_REG_ADDR(0, 0x01, 8);

// page 2, offset 0x55, bits 16, 10 items, 2 bytes between them
ZL_DEF_IDX_REG(ref_config, ZL_REG_ADDR(2, 0x55, 16, 10, 2))

Caller:
rc = zl_read_reg(zldev, id, &val);
rc = zl_read_idx_reg(zldev, ref_config, 5, &val);

Passing constant structures ensures that all 'reg' fields are known
during compilation and zl_read_*reg() functions are rendered into tiny 
assembler output.

WDYT?

Ivan


