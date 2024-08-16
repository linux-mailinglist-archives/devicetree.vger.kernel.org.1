Return-Path: <devicetree+bounces-94086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E18953F26
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 03:54:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C34F1C21228
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 01:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD4862868D;
	Fri, 16 Aug 2024 01:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fUk/Zvo3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FE129CFE
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 01:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723773273; cv=none; b=Vjm64bvakEqXFBQrxAQ74udQcsAESh8DVyc68n5RRYsRoMSdYy6igMm94d1LZYMBtH7A/wIGyG6uRePGtF7Wgus7TND1qpa9Tq/FXeG7SO0DXO7DvWMrzhYwUkHmTeaWBV042W97zHu0i0ToTvLmtW7vvHOBMqF4vZ1HhY5/IL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723773273; c=relaxed/simple;
	bh=WylktVCXcXoHQ7lp1FAqdNHZJtMzZkn9JWhZF4RWRDk=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=F+HnGVxEbW0WV6ogoBWb1BAdTby7wgIAqF9GLivGUAurBzVkg3CrBS8z2nbBfb4NQImddTbW4B2OfWGs9874msG8OenY/p3GX4qC22mY+g+umunlo+XUrdNL24d/4EiZRsZ7Rz36OoxO/1wNLx1lc7zyowkc0QHHXICk2IfOWzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fUk/Zvo3; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a83597ce5beso223076966b.1
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 18:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723773269; x=1724378069; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yrVgph1GdpgvSqBc39C69Kba29qAFx80Ecykh7oT0Yg=;
        b=fUk/Zvo3rVOXAZMEzk6KzSfEjwahZJvByPqPw1o+ec6lBzk0nHG9ZQskpG8Y5dvKpu
         hK52NrVkmbOYwTK2CAV7fqQU0wLutGIkipE1JAdr4BGb3BU1u5X0M07sX7BBNTbI2KrZ
         y9EpKUq25gHteY1Ipb/RdY1sgS9kn7B0iQAQSSfbhtAJ9RpSZ4K14fYTtWVZFQnhfM9q
         fCC3thjbaT/Qk5JQ8JIQjvHqWKW/XMeyyfVCUc2igCtkxHGOMPisNZ3pwX4lGR5el7nY
         BR5z2mygXgGom8rCh+kTBoaLtddbKNAiu2Zo/ZMr0+MqS6osG0Q3tRQs179OTUJRffk1
         VFpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723773269; x=1724378069;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yrVgph1GdpgvSqBc39C69Kba29qAFx80Ecykh7oT0Yg=;
        b=NoOvVMYXqQt3NO8/JXH7D+1UyTfJocj1MmL387gKoIfUA4fws3cHaWh6KXSAVygmvr
         6egvcr66gpgOPQc/QYxUisgxGb9r+khyINljTxLYFI+nmmEbpwGdGUhFORxFRJTqdI0Z
         22AUxVdsJJL44fGrQZHtsLqjjaIhWj8zS36Pu3IvVCbDQJa1u+af1AiwZOq0vs5+HymB
         If1QVBDHjjzhqJyi3BSqg/D48a90UlkwT70JumF0USCZvFDeNtC63XEINjeA5k73FqPQ
         XLhoRfNjcF6/aSf2N2/9bL1QVwkb0b3iF4z3t2s9yy7eMfnWn95KO2RQZR6s5YtrEPli
         hDDQ==
X-Forwarded-Encrypted: i=1; AJvYcCURr6PcD7OBmHok9MhEbaLXpahkiUZ76b+5fctT3PRCcxFjVMiRRH1horwzSTRj/d/YMGeORXh4PWtVhAYe/X/xbYHvej+3SJlLPw==
X-Gm-Message-State: AOJu0YzSnDVGXyJt+htkFYJc7VxllRG5iXSdt312MAUkDaJSHGs5f1ae
	Aku0Ag0mBDv3Tj75YW5N+RatYVURsEUahJtYwU6hDyCSXQrQEWmg2F2g2p9dUWF52qtml1II7Vq
	7zBCuLrs7PEM3R6Dps2BSPU9eAUs=
X-Google-Smtp-Source: AGHT+IHFpmvkx9CW041+xi+lzHrAdopnQCfHSYyE3fLzi6PuTdSc+/04kQ6rj9yzADaZU0o6KK3TkVSdAuhTwXb1YQI=
X-Received: by 2002:a17:907:d3e8:b0:a80:c0ed:2145 with SMTP id
 a640c23a62f3a-a8394d6a133mr112232466b.2.1723773268811; Thu, 15 Aug 2024
 18:54:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Fri, 16 Aug 2024 07:54:16 +0600
Message-ID: <CAMpQs4JLueyKsTieKGH-taJrVdNfc++h4UdZbLz-D8nbMt8hog@mail.gmail.com>
Subject: [HELP] How to describe the PCI device in DTS{i}
To: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi all:

Excuse me.
I recently (actually I have discovered it before) found that when I
was doing dtbs_check, all nodes related to pci devices would have
warnings (at the bottom of the email).
Of course, when I first submitted the DTS{i} patch, it was normal. I
tried to analyze the changes, and I am not sure if it was caused by
this change:
https://github.com/devicetree-org/dt-schema/commit/97c59117a99e9e69c8b19d18be6d302715539f29

I tried to find an example that matches, but it seems that I couldn't
find it. So I can only come here to ask for your help and give me some
advice.

dtbs_check warning:

/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,0:interrupts:0:0: 12 is not one of [1, 2, 3,
4]
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,0:interrupts:0: [12, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,0:interrupts: [[12, 4], [13, 4]] is too long
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,1:interrupts:0:0: 14 is not one of [1, 2, 3,
4]
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,1:interrupts:0: [14, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,1:interrupts: [[14, 4], [15, 4]] is too long
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: usb@4,1:interrupts:0:0: 18 is not one of [1, 2, 3, 4]
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: usb@4,1:interrupts:0: [18, 4] is too long
        from schema $id:
http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: usb@4,2:interrupts:0:0: 19 is not one of [1, 2, 3, 4]
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: usb@4,2:interrupts:0: [19, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: display@6,0:interrupts:0:0: 28 is not one of [1, 2, 3,
4]
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: display@6,0:interrupts:0: [28, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: hda@7,0:interrupts:0: [4, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: sata@8,0:interrupts:0:0: 19 is not one of [1, 2, 3, 4]
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: sata@8,0:interrupts:0: [19, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: Unevaluated properties are not allowed
('#address-cells', '#size-cells', 'bus-range', 'device_type',
'display@6,0', 'ethernet@3,0
', 'ethernet@3,1', 'hda@7,0', 'pcie@9,0', 'pcie@a,0', 'pcie@b,0',
'pcie@c,0', 'pcie@d,0', 'pcie@e,0', 'sata@8,0', 'usb@4,1', 'usb@4,2'
were unexpected)
        from schema $id: http://devicetree.org/schemas/pci/loongson.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,0:interrupts:0:0: 12 is not one of [1, 2, 3,
4]
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,0:interrupts:0: [12, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,0:interrupts: [[12, 4], [13, 4]] is too long
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,1:interrupts:0:0: 14 is not one of [1, 2, 3,
4]
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,1:interrupts:0: [14, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,1:interrupts:0:0: 14 is not one of [1, 2, 3,
4]
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,1:interrupts:0: [14, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: ethernet@3,1:interrupts: [[14, 4], [15, 4]] is too long
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: usb@4,1:interrupts:0:0: 18 is not one of [1, 2, 3, 4]
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: usb@4,1:interrupts:0: [18, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: usb@4,2:interrupts:0:0: 19 is not one of [1, 2, 3, 4]
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: usb@4,2:interrupts:0: [19, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: display@6,0:interrupts:0:0: 28 is not one of [1, 2, 3,
4]
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: display@6,0:interrupts:0: [28, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: hda@7,0:interrupts:0: [4, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: sata@8,0:interrupts:0:0: 19 is not one of [1, 2, 3, 4]
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
/kernel/github/arch/loongarch/boot/dts/loongson-2k1000-ref.dtb:
pcie@1a000000: sata@8,0:interrupts:0: [19, 4] is too long
        from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#


Thanks.
Binbin

