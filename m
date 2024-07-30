Return-Path: <devicetree+bounces-89442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A009411EE
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 14:32:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5FE1282987
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 12:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D6119E7E5;
	Tue, 30 Jul 2024 12:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Qymt95+O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B921922E2
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 12:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722342730; cv=none; b=p+CcIwURgD9EwKgopE/ee5FokgplTp7WVK2ZHYO6XZIvFagqTJ+kqG3bQ5zTZ/MamgDkVKoOVk7gu8OJcR+NuUuCVNqFdWp1KDbkRy5JGG4PcRY0tTMSul7cKWmbKg/CRAihV7tCYTEoUJa/V6jV5CLyd//xv7wlHWCK619fPzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722342730; c=relaxed/simple;
	bh=1YD1870JsFsEdXEDePVEBYILhgCNX2aQ/EOJYN4fz6o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BSblz9BwecTtbTx20nKNc68xj9+hWZCJ7qFjl0rMErsMT+KcBg8MKLIHE50sC91uFV2QQ5dvsVV5fSGFXhgqqAJs1rjzO77Iarm5KFY3wyqTqMLL//1MWBboaheqKewV0lcNoqCoLUaznP4wWsk2ExvBTaz07DscBsrfiCSLbsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Qymt95+O; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-81f9339e52cso194119939f.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 05:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722342727; x=1722947527; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uV4ZcIq5gA6RpxVYqiJYZ1TQhBSK4LrjGlTg7VXkuFU=;
        b=Qymt95+OsIQ32Db8GQ8qFpgkJtsC2yr/NnBmFfvHKcnkjIbLyD9Ke+9vHd/TCeBmXL
         RBUn14iprtwqIkOqNtwM45E9X6bOSBL0Xa5fg+oXTFeqBnYf6C0ORjooghjYaaZI6Zdb
         rIHW1GeObTtSqsyxkomfJJPMMCOAlHI+mXIRY44LSv3T3KPnx4RydT8qzhGsFw+Dmz6x
         DHD2u+BF1YksrJvZTwBIcSJmihzGrRQVWReOSJqu1jRRxipepWP45ULaLHFkZoXo9l+b
         jlJxJWJd/jNWzNOyaHrwgZYxZ3Y5TaO+etH2/2BB48yaVk0Qb3iM9IrbLpW+KyUsQq7j
         DlDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722342727; x=1722947527;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uV4ZcIq5gA6RpxVYqiJYZ1TQhBSK4LrjGlTg7VXkuFU=;
        b=Ve4Qo8jIKUAPr+VwqrNkLLhiAP3iMpAIgUO/a/YvXemMujVJmMRSAhPL3g/TBfWAI7
         S+NWaZ22w4PNRYPXGz/turPbLEweoOVj5oOrrdy/gzLuJr1yDG3ttB4Cf4teuGG6g8PM
         bvOBEuWy2LeCTqjKA3a4g/i+h6fKqCsfIjKPn2CEx80dUZkM3+BNkDgtpuVbUQsjrjio
         kSDR6VBklosYafLSVnbqgn9hl1A7kLiqxpAvY7AasWuOpWKmhy2lQLht3ZzbF0Gd6C5e
         ox3SmRtXMamLznHpYQPKCcLRWRJLRrO5eINeIXklVSpobdQbejtKUt4dmwli8uo9nee9
         Dw8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWCAB6rFc4jxEWUg6NcagqWVrFYFzzBEBEtxWJ43++i5tnNcKePWm0t0RGZ2OCFwAb3Dwsj/Fu7HQ+vHyVZbJjWE1M2EBN44fTJng==
X-Gm-Message-State: AOJu0YxnPmlv1Fy3hxjyy9qIFaRji5X6p0KKVo7fsRPKqM+H6z7MAz57
	wp2UqkpLs11XKuNVNPXmJzJxeIXkaUFQPLqbf4p7JCFpx837mVaIhnzPFk7v3w4=
X-Google-Smtp-Source: AGHT+IGILQMhLuo5hdtDhJbrAeR0lYNOSJuw0Zd7V0ka3kfddE0tNhmrsD3eFLAW8H+cTZXNYGhnzg==
X-Received: by 2002:a05:6602:1696:b0:7fa:2902:aec5 with SMTP id ca18e2360f4ac-81f95be2109mr1266094739f.17.1722342726812;
        Tue, 30 Jul 2024 05:32:06 -0700 (PDT)
Received: from blmsp ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4c29fa3e10esm2734852173.10.2024.07.30.05.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 05:32:06 -0700 (PDT)
Date: Tue, 30 Jul 2024 14:32:03 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Nishanth Menon <nm@ti.com>
Cc: Tero Kristo <kristo@kernel.org>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Vibhore Vardhan <vibhore@ti.com>, 
	Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/6] arm64: dts: ti: k3-pinctrl: Add WKUP_EN flag
Message-ID: <f53iiczunc4b4wjzsvh7ccm7cc322vsaqhng6khqj74j6anhor@umm73mbbth2w>
References: <20240729080101.3859701-1-msp@baylibre.com>
 <20240729080101.3859701-4-msp@baylibre.com>
 <20240730120958.inq73rx6dfmwh6vz@hemstitch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240730120958.inq73rx6dfmwh6vz@hemstitch>

Hi Nishanth,

On Tue, Jul 30, 2024 at 07:09:58AM GMT, Nishanth Menon wrote:
> On 10:00-20240729, Markus Schneider-Pargmann wrote:
> > WKUP_EN is a flag to enable pin wakeup. Any activity will wakeup the SoC
> > in that case.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> >  arch/arm64/boot/dts/ti/k3-pinctrl.h | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-pinctrl.h b/arch/arm64/boot/dts/ti/k3-pinctrl.h
> > index 22b8d73cfd32..dd4d53e8420a 100644
> > --- a/arch/arm64/boot/dts/ti/k3-pinctrl.h
> > +++ b/arch/arm64/boot/dts/ti/k3-pinctrl.h
> > @@ -12,6 +12,7 @@
> >  #define PULLTYPESEL_SHIFT	(17)
> >  #define RXACTIVE_SHIFT		(18)
> >  #define DEBOUNCE_SHIFT		(11)
> > +#define WKUP_EN_SHIFT		(29)
> >  
> >  #define PULL_DISABLE		(1 << PULLUDEN_SHIFT)
> >  #define PULL_ENABLE		(0 << PULLUDEN_SHIFT)
> > @@ -38,6 +39,8 @@
> >  #define PIN_DEBOUNCE_CONF5	(5 << DEBOUNCE_SHIFT)
> >  #define PIN_DEBOUNCE_CONF6	(6 << DEBOUNCE_SHIFT)
> >  
> > +#define WKUP_EN			(1 << WKUP_EN_SHIFT)
> > +
> 
> Are we using this?

Yes, this needs to be used in pinctrl for the relevant pins. The users
are not part of this series, as it will probably be in devicetree
overlays or maybe future board files.

This is an example configuration for mcu_mcan0 that is required to
enable support for wakeup from Partial-IO:

  &mcu_pmx0 {
    mcu_mcan0_tx_pins_default: mcu-mcan0-tx-pins-default {
      pinctrl-single,pins = <
        AM62X_IOPAD(0x034, PIN_OUTPUT, 0) /* (D6) MCU_MCAN0_TX */
      >;
    };

    mcu_mcan0_rx_pins_default: mcu-mcan0-rx-pins-default {
      pinctrl-single,pins = <
        AM62X_IOPAD(0x038, PIN_INPUT, 0) /* (B3) MCU_MCAN0_RX */
      >;
    };

    mcu_mcan0_rx_pins_wakeup: mcu-mcan0-rx-pins-wakeup {
      pinctrl-single,pins = <
        AM62X_IOPAD(0x038, PIN_INPUT | WKUP_EN, 0) /* (B3) MCU_MCAN0_RX */
      >;
    };
  };

  &mcu_mcan0 {
    pinctrl-names = "default", "wakeup";
    pinctrl-0 = <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_default>;
    pinctrl-1 = <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_wakeup>;
    status = "okay";
  };

Best
Markus

