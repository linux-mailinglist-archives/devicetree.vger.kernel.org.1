Return-Path: <devicetree+bounces-215795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CE1B52B06
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 10:01:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C47173BDB8A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 08:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4267C2D323D;
	Thu, 11 Sep 2025 07:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="WcR3VfbK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658842D3721
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757577597; cv=none; b=Hf+iWW0mQ2lh8Lk/Pa064LDwpBI/Z3UdwWPmSPH1ThpZM2CaDR29eyewHWnRT8EsQmZOOAJEwSlDKbKMEFL5tm+Q+ZS6KK0v6MrcOixR6iiYGbI/sIW4kM/fqne5GhhEG5pd62fpA4hI8aA7rz36qbWGrb4Q3gnMvNYVa/53WPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757577597; c=relaxed/simple;
	bh=iel2yySqmpOnMvYF+IjwW82KiWVCgT/UfXdc4xpeETM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=qn7eS6rU40qvITeSvWgGNnDqxJ/uu9q9+800mqyRc1LFcI3L+tLZ5Ho190JtY/W1lbVri+8ovR0iYZHsHOlP5Dv7bZGa72q2bOWm6lB/83WFzXJ16+HQXVOGFTtyYej4E7PIgE3bcw2nIyFsghDfV/Gyp8CLPms6ASklmRG74Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=WcR3VfbK; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 9C6681A0DC6;
	Thu, 11 Sep 2025 07:59:52 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6DCE8606BB;
	Thu, 11 Sep 2025 07:59:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9DC48102F1CF1;
	Thu, 11 Sep 2025 09:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757577591; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=es+sEVgukOs1NicYrB8M0ntFbdAfgIvPPIW71WcySzY=;
	b=WcR3VfbKRLNqbQIw7MIemI9ciMf/zEO6KbpsW+KFvJX/v84ksBicJrkYDn0P1u1cFUJNnK
	fnNCHo0x0bUDV+qOzwbznLoeCl4MbqfegF/NCxsT87wdY3TKn8qwjUW4nim0oe7+i++Gpy
	NcgTjAbizueLUw4aBQezDYggz7+D3RBnjqKzT560ZIX5EtxUal7QO2PUEJhSJZbIhSJBMQ
	zQTmxFvJ3cOceLdDtJ15u8xpiM9avMjzSb+S0y5UHfelR0vliWl5xAZeQUKFTd5sNhfESv
	o1b0rdYhlGeZ2ej8faIHOid44ofgpmFXf/YT3bJqom8h17jMx9rcMMfJiT4vbQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Cheng Ming Lin <linchengming884@gmail.com>
Cc: richard@nod.at,  vigneshr@ti.com,  robh@kernel.org,  krzk+dt@kernel.org,
  conor+dt@kernel.org,  tudor.ambarus@linaro.org,
  mmkurbanov@salutedevices.com,  Takahiro.Kuwano@infineon.com,
  pratyush@kernel.org,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  alvinzhou@mxic.com.tw,  Cheng Ming Lin <chengminglin@mxic.com.tw>
Subject: Re: [PATCH v2 1/3] dt-bindings: mtd: spi-nand: Add
 enable-randomizer-otp property
In-Reply-To: <CAAyq3SbXiPUjZE7OCAe1=uw4h82bFN7DSU4bLx1dhKe_XFtu=w@mail.gmail.com>
	(Cheng Ming Lin's message of "Thu, 11 Sep 2025 15:24:35 +0800")
References: <20250910030301.1368372-1-linchengming884@gmail.com>
	<20250910030301.1368372-2-linchengming884@gmail.com>
	<87wm66d67k.fsf@bootlin.com>
	<CAAyq3SbXiPUjZE7OCAe1=uw4h82bFN7DSU4bLx1dhKe_XFtu=w@mail.gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.1
Date: Thu, 11 Sep 2025 09:59:34 +0200
Message-ID: <878qilbes9.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Hi Cheng Ming,

On 11/09/2025 at 15:24:35 +08, Cheng Ming Lin <linchengming884@gmail.com> w=
rote:

> Hi Miquel,
>
> Miquel Raynal <miquel.raynal@bootlin.com> =E6=96=BC 2025=E5=B9=B49=E6=9C=
=8810=E6=97=A5 =E9=80=B1=E4=B8=89 =E4=B8=8B=E5=8D=885:10=E5=AF=AB=E9=81=93=
=EF=BC=9A
>>
>> Hello Cheng Ming,
>>
>> On 10/09/2025 at 11:02:59 +08, Cheng Ming Lin <linchengming884@gmail.com=
> wrote:
>>
>> > From: Cheng Ming Lin <chengminglin@mxic.com.tw>
>> >
>> > Add a new boolean property "enable-randomizer-otp" to enable the
>> > randomizer feature on supported SPI-NAND devices.
>> >
>> > Signed-off-by: Cheng Ming Lin <chengminglin@mxic.com.tw>
>> > ---
>> >  Documentation/devicetree/bindings/mtd/spi-nand.yaml | 4 ++++
>> >  1 file changed, 4 insertions(+)
>> >
>> > diff --git a/Documentation/devicetree/bindings/mtd/spi-nand.yaml b/Doc=
umentation/devicetree/bindings/mtd/spi-nand.yaml
>> > index 77a8727c7..432bc79e9 100644
>> > --- a/Documentation/devicetree/bindings/mtd/spi-nand.yaml
>> > +++ b/Documentation/devicetree/bindings/mtd/spi-nand.yaml
>> > @@ -21,6 +21,10 @@ properties:
>> >      description: Encode the chip-select line on the SPI bus
>> >      maxItems: 1
>> >
>> > +  enable-randomizer-otp:
>>
>> This is a NAND wide feature, so we should probably add a prefix, such as
>> "nand,".
>>
>> Now, what about this "otp" suffix? Many (if not all) chips have a
>> volatile setting for that. About the naming, "otp" often reflects to the
>> OTP area, which is not what you imply here, as you want to insist
>> (rightfully) on the fact that this feature cannot be disabled.
>
> Yes, my intention is that once the randomizer feature is enabled, it
> should not be disabled again.

I believe the motivation behind this choice is incorrect and does not
fit such an OS as Linux. We want to give the system administrator the
choice to select and unselect features as it sees fit. So if there is a
volatile way to enable something, we should go for it and we will pay
the extra penalty of a set_feature() (or whatever) command after each
boot. Making this type of change permanent makes development and
debugging much more painful. There are plenty of configurations that we
refuse to apply with non volatile configurations. In general, stateful
modes are problematic if they are kept after a reboot and we try our
best to avoid them.

Once this feature is enabled, for the lifetime of "a product", it does
not make sense to disable it indeed. And the DT must remain correct, if
it is changed in a non compatible way, that's the administrator
responsibility.

So are there ways to enable this feature in a way that returns to the
default state after a reset?

> You are correct that this bit does not
> belong to the OTP area, but rather to the v2 volatile register. The v2
> volatile register has a default value that can be changed through a
> special OTP configuration register program operation. Regarding the
> "otp" suffix, I will remove it to avoid misunderstanding.
>
>>
>> Also, this is a per-chip configuration, while I would have welcomed a
>> per-partition configuration. I can easily imagine two cases:
>>
>> - The boot ROM, for longevity purposes, expects the first blocks
>>   containing the bootloader to be scrambled. However the rest of the
>>   system does not really care and disables randomization.
>>
>> - The boot ROM is not capable of de-scrambling, however the rest of the
>>   system relies on the (probably) more robust scrambling feature.
>>
>> In both cases a chip wide variable is not relevant.
>
> The scrambling and descrambling are handled by the NAND flash hardware
> itself. Therefore, the boot ROM does not need to support a descrambling
> feature.
>
> In the case of Macronix parts, the randomizer is controlled through a
> configuration register, and once it is enabled it covers the entire chip
> (main and/or spare depending on the randopt bit). There is no hardware
> mechanism to enable it only on certain ranges.

After thinking once again, I am no longer aligned with myself from the
past. This is perhaps too Macronix specific in the end and if it is a
fully transparent feature, then why not.

Are there any ways we can read the raw data (unscrambled) once
scrambling has been enabled? (I mean, without changing the user default
OTP state). Maybe one big difference with the raw NAND world that needs
to be taken into account is that the chip itself always return
unscrambled data, hence we probably do not care much, from a Linux
perspective.

Thanks,
Miqu=C3=A8l

