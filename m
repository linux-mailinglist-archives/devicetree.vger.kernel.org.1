Return-Path: <devicetree+bounces-222757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B56BAC8C5
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 12:48:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8EA7E7A62ED
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:46:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D794420468D;
	Tue, 30 Sep 2025 10:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="eZeZ8GT0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F811388
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 10:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759229293; cv=none; b=GMmUcsYemQVWrAAc/6j2KiSlcyTqeyXF9SGE8KvAE1AlgkRlrMv5vBzV56fN9FGO8qLWecA+qOWp0JM4dzMgnxKrNnMedWoNEnSEDZFRKu22oevSWRg3ghYUPN9PyOjNHzu4/y/ODP/QTK9jRo489hjxw4MhPHqPjMnH2T2d6JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759229293; c=relaxed/simple;
	bh=nV3bejKOePKliVyl0zfUUpgLWXiBna2xWHLBgxQxNyY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ORu5TqtnFq4iJh6WzLBJVdazLz5jVptj8Qe1eskWdyQN0BIdMWE0900xB/iIxCOdClS6tYNaSRJ0LcgyHjbzDIcYjvW91TBABoaZNWdqUSlgLbYczKen5K/rPWM9Fw78gG+4IyM5CqQbROQOh8KDGHCR0SEmzc/oeDPrNuEeNVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=eZeZ8GT0; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b30ead58e0cso1078965166b.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 03:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1759229290; x=1759834090; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KZ0CnHPdlZrSsgwV+MI1ugRW5zrN2qsnIK75AqoOWqA=;
        b=eZeZ8GT02FUZpdTmP6ZJxN2EeC5xpyzE52oG5/wF0l3tswZkrApNZ0wUIbl2x275rI
         y0swHxHOZ88P+DZjCbNGFmx4PoRifitUabNzpJBcuWYGDTRLg0Y+ATYs5wV2emPDp92k
         mNYGv6S/BSGhwjUihf/1NUQCTjTm9rtJNQUl+p6CYPsQ5CT0IlNRWdcRnyYkRVoX7anQ
         S00qPXwZrNv7uatQrrXPOVLZEkia6iASAHLN99TCoTUg++2p1Nvb5IhdBcJyRqM8GGEO
         Ar+NPscSYXd/mWgtW18UWHgOgp4X/go3VVC/vVHrFLRDJ9E/yPf7jNfeJSd+uF7gQx8R
         RD3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759229290; x=1759834090;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KZ0CnHPdlZrSsgwV+MI1ugRW5zrN2qsnIK75AqoOWqA=;
        b=TfgP6jtryEKzp2T1xXSiN3tOxUFmmtbhRpf0r0SLt3ruqnsFjFtnds5eZunERjNMfm
         j92zS5oaN3fncNosKc2AW8B1UupIP65JJmC1DG26DsLYAieuqSOBR7OF07iwGbfPuebB
         VxsMieNpGklfW0TFCINH0Fpf7isI07PMJOpsS9UPVpf284nGWP+olzLCfirnw4TfZ9Qr
         J0kjzMhp5e5AI0NONOY8gwXOFj0AtBlkqN89b/sR4bB5sqTueQ8e9yQjhgB/YVZJHIVV
         MpFcKGCNyCSNO2VeXxjEbkH8+o9arbeeSglQxFo/VYPvphulTQ70UFdIziR68rIPQGDU
         gGgw==
X-Forwarded-Encrypted: i=1; AJvYcCV5Wtm8X/KImQQW+1+WsLqOfFkoUcO3lUYcQ+lLmBD6Ym0xCsd9X0ety9Xc496CRJIyOFdpFjC6TeaM@vger.kernel.org
X-Gm-Message-State: AOJu0YxD26P8+Vk9+flkz1ueQC49D7g82VYCtL+aR2Xh7U0RXrgg0lOb
	Yg9sKFvoGckisNONMXM3v06YyfeMF9uZOsblkqknROKkAdVbng8B3qybLpIKXNFbTO78mbyew2Z
	a6X0Fz2+mAH3Y30/GXWJ4T7J9dwR7AKjRzmWDguRexA==
X-Gm-Gg: ASbGnctlSdQoMM1XaeYQ+UmF4HuXGIK8wmvUotV2vveXQZqqO1W2ZQL3Ww3aWRqWCJt
	6q4Tr9KiX/CrUVNoyBXD739Dyn+eNXPYBccZbong34MDL8fNTMkFjVVPJeEjfbMwpA0xk8ubpWm
	cnepvC7jQ1glKmS8s1Wjk7S+YVKo1fUOlO13KLX68xn02eP8jZZyVCbFKs/bvFIF9PcA5ywowE2
	hfd3Iafy0roKifJnWNZ38w0dqJc7m/qMThqWa8gWiVWMCro0RIhcRIExEn1AJVpANK/pp1b
X-Google-Smtp-Source: AGHT+IGX6zNpxjsPjtC0C+vJp47Ah8di0xP4NLfAUEWW/OF5HmCNHB9bJwapc+3TAx0PM7pbADgUcyt3dY7ecyU5L7E=
X-Received: by 2002:a17:907:2d1e:b0:b3f:1028:a866 with SMTP id
 a640c23a62f3a-b3f1028b3c3mr763065766b.15.1759229290129; Tue, 30 Sep 2025
 03:48:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925000416.2408457-1-svarbanov@suse.de> <20250925000416.2408457-2-svarbanov@suse.de>
 <20250925-outlying-causal-015d8ba33c53@spud> <89dd04b9-e261-4bdd-83ab-499e46fc9c01@roeck-us.net>
 <88bd67f2-de8c-407b-ba98-08663eee2d7e@suse.de>
In-Reply-To: <88bd67f2-de8c-407b-ba98-08663eee2d7e@suse.de>
From: Phil Elwell <phil@raspberrypi.com>
Date: Tue, 30 Sep 2025 11:47:58 +0100
X-Gm-Features: AS18NWD2rGnxVnwcFBxYV1aba-fyNrawMU6W-du0N-jpjKmm4LpdaR5Bhec5eAQ
Message-ID: <CAMEGJJ0KqPX462iigbMP+fwoyZgZ1J1PqaWt82MrNTW1VMwbpQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: Add Raspberry Pi's RP1 ADC
To: Stanimir Varbanov <svarbanov@suse.de>
Cc: Guenter Roeck <linux@roeck-us.net>, Conor Dooley <conor@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, linux-hwmon@vger.kernel.org, 
	Jean Delvare <jdelvare@suse.com>, Rob Herring <robh@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Stefan Wahren <wahrenst@gmx.net>, 
	Saenz Julienne <nsaenz@kernel.org>, Andrea della Porta <andrea.porta@suse.com>, 
	Jonathan Bell <jonathan@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"

Hi Stanimir, Guenter,

On Tue, 30 Sept 2025 at 11:21, Stanimir Varbanov <svarbanov@suse.de> wrote:
>
> Hi,
>
> On 9/25/25 11:37 PM, Guenter Roeck wrote:
> > On Thu, Sep 25, 2025 at 08:40:54PM +0100, Conor Dooley wrote:
> >> On Thu, Sep 25, 2025 at 03:04:13AM +0300, Stanimir Varbanov wrote:
> >>> Document dt-bindings for Raspberry Pi's RP1 ADC.
> >>>
> >>> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> >>> ---
> >>>  .../bindings/hwmon/raspberrypi,rp1-adc.yaml   | 46 +++++++++++++++++++
> >>>  1 file changed, 46 insertions(+)
> >>>  create mode 100644 Documentation/devicetree/bindings/hwmon/raspberrypi,rp1-adc.yaml
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/hwmon/raspberrypi,rp1-adc.yaml b/Documentation/devicetree/bindings/hwmon/raspberrypi,rp1-adc.yaml
> >>> new file mode 100644
> >>> index 000000000000..5266b253fd2b
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/hwmon/raspberrypi,rp1-adc.yaml
> >>> @@ -0,0 +1,46 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/hwmon/raspberrypi,rp1-adc.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: Rasberry Pi RP1 ADC device
> >>> +
> >>> +maintainers:
> >>> +  - Stanimir Varbanov <svarbanov@suse.de>
> >>> +
> >>> +description: |
> >>> +  The RP1 ADC is a five input successive-approximation ADC with 12-bit
> >>> +  resolution (ENOB 9.5-bit) at 500kSPS. It has four external inputs
> >>> +  and one internal temperature sensor.
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    const: raspberrypi,rp1-adc
> >>> +
> >>> +  reg:
> >>> +    maxItems: 1
> >>> +
> >>> +  clocks:
> >>> +    maxItems: 1
> >>> +
> >>> +  vref-supply:
> >>> +    description:
> >>> +      Reference voltage regulator 3.3V.
> >>
> >> Looks like you're missing the io-channels-cells property that allows
> >> this device to be a provider of adc channels to other devices.
> >>
> > Only makes sense if the driver is implemented as iio driver.
> > Which would be fine with me, assuming this is a generic ADC.
> > The iio -> hwmon bridge can then be used to instantiate a
> > hwmon device if needed.
> >
>
> According to the RP1 peripheral document the information about ADC is
> limited and I cannot be 100% sure that this is generic ADC, but it looks
> like it is. On RPi5 board the ADC inputs are not configurable, but that
> could change on another board.
>
> I personally don't have objections to implement it as IIO driver.
>
> Phil, are you fine with implementing the driver as IIO?

The problem with adding unused functionality, apart from the effort
involved, is that testing it is harder. Will the IIO driver be
inherently better/simpler because some of the hwmon support gets
picked up by the generic IIO/HWMON bridge?

Ultimately we'll make whatever changes are considered necessary in
order to get this simple driver accepted, but it would be nice to feel
there was some real world benefit now for the work, not on Pi 6/7/etc.

Phil

