Return-Path: <devicetree+bounces-118898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 255CA9BC434
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 05:10:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACC74282DB5
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 04:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB37218FDAC;
	Tue,  5 Nov 2024 04:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="HqkqACsO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8411D18EAD
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 04:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730779843; cv=none; b=i7Xn7QZTgn73zswdvsMNEc6X9N0S5JFRe+eaN0ptj2SdMxFxtm/otWDDkcUE3H2p9sCYuKf0SZjIECGOdqeiviBdzdVSCfnL3zKUUWDC7U9BmXdKaezmkOdyCVBzwI5p3xrxjLHQyyE9cAxOyyZmJDVbT3NxFRCAOl1IWapg7jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730779843; c=relaxed/simple;
	bh=RJ5dyuCaHnEHxb2ODY/yWTobplceIiFW9Y6NsNace2w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=daoPp/jTFGbVP7TDo4yNQQH03YhA4zl+RpuEKhToqecOjdThEi0APR9WGNCPPL9AmSm9a7kfeETvV34FKbj+FY7Tl+1VzjQ0oH58q1qCG2fY2K2wmCIfacTDPgW0gfLQQwg41EDm0Q8dU8Dhzwt9CPQEIGCzhZUTB8NaNwXir28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=HqkqACsO; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2e2dcf4b153so3601953a91.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 20:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1730779840; x=1731384640; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=scJvZT2Bp+kcd/IoGZ1ogwNGrXZa1xnJU5qHOxNFIJQ=;
        b=HqkqACsOOPux5BujQmtOUUZ6F3TzX4sJrmWMPZC8qsNn/TCXFp9cuFceIj8OddTvSh
         /34Xd15Qbm3jU/OVLDBSzx5DN0M/2xNXlmq7NGe4aWgrJHIOzpKD/UB5SIwjSjozc3JF
         ZJ1fPPVL1Hd4TRlj51T3l8TtOJcf53lrIEmpVVoOXSffoiBX62jUBXpFezsYZm5cZVrK
         wqGUftcvYRXON3CzU3zWgocTqfAQb7yaTxvp13WoVb6C75LGSmhdHDOzVy3FgNQaa9BI
         /ZnlFdSgskMbVQdSa22YCynVgvHQg5FPQg9RPd6W65h4p3zEybam2iUjmoeOApH/8qA2
         MUUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730779840; x=1731384640;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=scJvZT2Bp+kcd/IoGZ1ogwNGrXZa1xnJU5qHOxNFIJQ=;
        b=S2Ih4+DDqjZPAkBlvP1wjnjzMasRMzW/g0eP+VUDiFpnfKwTnqShjXpd1/8cQFA45q
         JNZnL/bqc1GI0hiI4Mu0tLHwfikO8qMbex3jT9XBygjV4IEUUjig1UsYT8pJu56uSX3u
         ESpNo+h5IaUQXYj8Rh9IVr7h0EJ49ymc3wX72u5poJHO1wBvrjvF4aNgReMOq0G4chBM
         uOjWfXvbLsZiM4cig/BZsuCQKy4E78ASQs1P0CC9ijXYsC9O2XhJpd6otLXryYUHIlPx
         IU1XcfbI9REAOQitIw5vzJCujTjHvuP2ikvriGXbiZQVw6nEPH5haAbbiEuxmlQnCK+N
         1opQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2FNF7OKycG8HcOKfz0KfitIZ2quwfSv2tP1hjMe+1RPn6BcyrB5baFuQ9CjTMhch1D5gc0D4LTcdS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/r5w901xK5FNq3hwya6sgYjcgz0IJeegR+pmtPuEE9w2B7nQH
	rzkEd5CnkOtn6O9sopb1+++xZLFUYcU1GevnMrsu8FleB/smsnBZ220wnDdhSePEVg9mODYm9c3
	W610fA6swSYm7TfbQgRbOT0ale8oqwSzTrfppUQ==
X-Google-Smtp-Source: AGHT+IGScUy3G6UR8gz6wvjEudlraQqlt5Uia9jokVx/2PFVMQBmpLwbRPnyko1K4A9eB9MF28vFRoIVwNeA/WAajBQ=
X-Received: by 2002:a17:90a:6446:b0:2e2:b46f:d92a with SMTP id
 98e67ed59e1d1-2e92ce50e2emr23868289a91.14.1730779839807; Mon, 04 Nov 2024
 20:10:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241104092220.2268805-1-naresh.solanki@9elements.com>
 <20241104092220.2268805-2-naresh.solanki@9elements.com> <ac9698862598f0d09d35872d0e091537f822fbcd.camel@codeconstruct.com.au>
In-Reply-To: <ac9698862598f0d09d35872d0e091537f822fbcd.camel@codeconstruct.com.au>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Tue, 5 Nov 2024 09:40:28 +0530
Message-ID: <CABqG17j8RhFpNV+nJ=nLY8+uO_XXjbN55+Ce8op=6Dj5Z=_WOA@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] ARM: dts: aspeed: sbp1: IBM sbp1 BMC board
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, jdelvare@suse.com, 
	linux@roeck-us.net, sylv@sylv.io, linux-hwmon@vger.kernel.org, 
	Joel Stanley <joel@jms.id.au>, Patrick Rudolph <patrick.rudolph@9elements.com>, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"

Hi Andrew,

On Tue, 5 Nov 2024 at 06:03, Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
>
> On Mon, 2024-11-04 at 14:52 +0530, Naresh Solanki wrote:
> > From: Patrick Rudolph <patrick.rudolph@9elements.com>
> >
> > Add a device tree for IBM sbp1 BMC board which is based on AST2600
> > SOC.
> >
> > sbp1 baseboard has:
> > - support for up to four Sapphire Rapids sockets having 16 DIMMS
> > each.
> >   - 240 core/480 threads at maximum
> > - 32x CPU PCIe slots
> > - 2x M.2 PCH PCIe slots
> > - Dual 200Gbit/s NIC
> > - SPI TPM
> >
> > Added the following:
> > - Indication LEDs
> > - I2C mux & GPIO controller, pin assignments,
> > - Thermister,
> > - Voltage regulator
> > - EEPROM/VPD
> >
> > Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
> > Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
> >
> > ---
> > Changes in V6:
> > - Verified all regulators warning resolved.
>
> How did you verify this? Testing the patches locally, I see:
>
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu2@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu2@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu1@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu1@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu3@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu3@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu0@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>    +/home/andrew/src/kernel.org/linux/origin/build.aspeed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu0@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
>    +       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>
> From a spot check, the warnings seem legitimate. Did you send the right
> patches?
Just checked again. They are resolved. But I guess the dtbinding patch
for the above warning are merged in hwmon-next branch & not in dt/next

Regards,
Naresh
>
> Andrew

