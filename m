Return-Path: <devicetree+bounces-226301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB5EBD6F9B
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 03:19:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 53B924FF340
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 01:17:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 106A42798FD;
	Tue, 14 Oct 2025 01:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jLZAJdXs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0AD27056D
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 01:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760404534; cv=none; b=Z5BrYOY3UAEw+EEf9k1Tu734n7MUJ2G3dPZdYkkElMzWvdVp471saXzlqTokm2KHwwRW3n5iFoh0+J25dJlmzH5cHfBMeBGb0dqWZ0y34CVbXIPFEW/KNu0j3jl93W+mN4RG5/6j7orQqLBdzv3nEkPe8/DyNvR2qn2NFAMdw6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760404534; c=relaxed/simple;
	bh=ZI69gXQKs5ObuEjO9qvNq0asHfYqF0cmxfkJbB6xgYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mu1vi04f/R/DCzB39WACJtnGYyudGAz58K16hfbTV8WmzWPkZOjQ1goBJzy+I04yNLxnbKwHwYixIO4NbMtr7TSadqefEVa+4Y3XKjHa42gF9y98c8URWlIdmaKAIEw2PuRP9Bn25RuWVwo7BdzJiLQnso4qwvCdl98j0e2YGqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jLZAJdXs; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7841da939deso4136650b3a.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 18:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760404530; x=1761009330; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=phZtlvW8k97758VvwCeGeCQ88PxB75XoJve4vgpnWeY=;
        b=jLZAJdXs7mZ63tsuXhFfUa5B8Zzz0T2aTSfhEQ1Yor3+EqplJbw2IPn51uXk93wJWN
         0oCXakdWCiel4njmM+hN0Ntm3wALXjJ3ni3WscVmJix23LHXLDt1zPy4is7vldme+RxK
         zg9lr8fsp3n1L8BIRlbvcV8gBr6+9jeUYUGq2vsepiend2+gL6hro585D0B4Q5i2RkX3
         zyi39GU5Ook5yc9xn9SUyzXseKSbHih3fFKNP15ddsFSCcfp5ac8822tHgCCw5sFuFRm
         YyOTNLPqOO54hcpcYGcdpBKpAkC5btTYMi1V6OTaFdQTOfECSk/eHDmZCuwYnbaoH+qQ
         KdoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760404530; x=1761009330;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=phZtlvW8k97758VvwCeGeCQ88PxB75XoJve4vgpnWeY=;
        b=XO485Sm/2YEu+iZL5ytriYIbq5QczoWk4yevYUOA15WdDI2sPFDvjtQHqsiVIe2POO
         jPbq1EtAi1l5gNmlPN7vWWAR/2vAWV5hqJ6K2zOI2R3Y44nLebx2A4Cxpfpq4N7Nea/y
         +hVjsi9ESbUxat0KjloEPF4dzQ/AVnUb0RZU7qZSVMWswzOk7vpF3ESKwLs6k0AjhajS
         i3ylk9QBWGky6teLcS3tH5prAsADt9tnFJcx5ue4ZPY+nM1NSZttHEH1Crz9dLWlxkRY
         2GevpGlr1u8nOmlXd9D4D7WRz/nVJztcbb1C2G5Ws/tSd0pCXDDVa7+DqaqCSiBgYaHb
         KNTg==
X-Forwarded-Encrypted: i=1; AJvYcCUa/itgg3h3H77cGfjroG47vx2coIMWTj5Q6xGCG5+CKvqtQU0H9kfpWkSP/Vu6dNZk7x5KzR+fTHdQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzMTv+BOrVkUtRVLMP6qnSuII8Rog8ILf2Jift7VyZ1hcBX5lT3
	ZrWkVYbPeJd3kSSCaW+GzwlHkPEjvRqqWaoA/reUtjf+SuzSa+XEiSew
X-Gm-Gg: ASbGncu1yMdvqMZDIOhaJAjKqTbeRvVdoLyMulKukRvtUz880BGU1e46bZXgKE2/AXe
	30XLn1BO+Tq7lD0oGFmbWdEAuXL6MCARykxW2AVABdezqhaCnBVU87K3DzEyRWUy2ItrSmnpapm
	oM6kkGnhcBjOJzX7ekEoI4h1STFgRmJ3j+zB0b9Uh1H2s7eRGO2J6C/nBc2yeqIiXoLcxJsAG3o
	ztzIjRx03G94mQUKtrBkkPToidmHRWKoAjWvEYTYenQH+4Wf1pCK/uCRddytj9q2RLGA8Kl1Cj7
	PfNKutISJ+9cB5PjOiHzsYGlLT70h+YF3h1nWwV6HOl1HDBWt+JmP7yI81EI5H3DcmnhlSbnOPf
	BhNZqLqrSScaiXepbHCufNyCugiwrgQ6PcyBm3CF+sATY/QpJR+bNI3iTfzrqNwMMbyTHmcxM3H
	HGyRy5lw0a
X-Google-Smtp-Source: AGHT+IGc6pF41NoPdDYQMQp8aeLQWIfke286IFthWwuWj9dAjt12ahG3XuGO1XLg+wdmBQpu8UKgqQ==
X-Received: by 2002:a05:6a20:2450:b0:2ba:103:aa3b with SMTP id adf61e73a8af0-32da84ea472mr29893401637.53.1760404530225;
        Mon, 13 Oct 2025 18:15:30 -0700 (PDT)
Received: from fedora (c-76-133-73-115.hsd1.ca.comcast.net. [76.133.73.115])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e275csm13012575b3a.61.2025.10.13.18.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 18:15:29 -0700 (PDT)
Date: Mon, 13 Oct 2025 18:15:27 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	Andrew Lunn <andrew@lunn.ch>, Tao Ren <taoren@meta.com>
Subject: Re: [PATCH v4 11/13] ARM: dts: aspeed: facebook-fuji: Include
 facebook-fuji-data64.dts
Message-ID: <aO2kLyxGlGt12sKD@fedora>
References: <20250728055618.61616-1-rentao.bupt@gmail.com>
 <20250728055618.61616-12-rentao.bupt@gmail.com>
 <79ddc7b9-ef26-4959-9a16-aa4e006eb145@roeck-us.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <79ddc7b9-ef26-4959-9a16-aa4e006eb145@roeck-us.net>

Hi Guenter,

On Mon, Oct 13, 2025 at 05:20:57PM -0700, Guenter Roeck wrote:
> Hi,
> 
> On Sun, Jul 27, 2025 at 10:56:13PM -0700, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > Include "facebook-fuji-data64.dts" in facebook-fuji dts to avoid
> > duplicated code.
> > 
> > Fuji-data64 and Fuji are identical except the BMC flash layout.
> > 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> 
> With this patch in the mainline kernel, the Ethernet interface I use for
> testing does not come online when loading fuji-bmc in qemu.
> 
> Reverting this patch fixes the problem.
> 
> Looking into this patch,
> 
> > -
> > -#include <dt-bindings/leds/common.h>
> > -#include "ast2600-facebook-netbmc-common.dtsi"
> > +#include "aspeed-bmc-facebook-fuji-data64.dts"
> >  
> ...
> > -&mac3 {
> > -	status = "okay";
> > -	phy-mode = "rgmii";
> > -	phy-handle = <&ethphy3>;
> > -	pinctrl-names = "default";
> > -	pinctrl-0 = <&pinctrl_rgmii4_default>;
> > -};
> 
> I don't see this in aspeed-bmc-facebook-fuji-data64.dts, meaning that
> interface is now disabled. Adding it back in fixes the problem.
> Also, MAC3 is explicitly enabled for fuji-bmc in qemu.
> 
> Was the interface disabled on purpose ?
> 
> Thanks,
> Guenter

The mac3 interface was removed in the latest patch (v4) per Andrew Lunn's
feedback, because the rgmii setting is incorrect.

I was planning to add mac3 back as soon as rgmii support is properly
handled in aspeed mac driver, but kindly let me know if you have other
suggestions.


Thanks,

Tao

