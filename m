Return-Path: <devicetree+bounces-263600-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DyZGbcwh2nLUwQAu9opvQ
	(envelope-from <devicetree+bounces-263600-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 13:31:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF841105DB8
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 13:31:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA845301A703
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 12:31:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2DC930C600;
	Sat,  7 Feb 2026 12:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="mtoRgVw7"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com [95.215.58.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1E3153BE9
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 12:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770467505; cv=none; b=ouXBkCY99PYzL7PwtJoxjwvNtuaP4Y6ggQ6JdsqFlpULAywNQR6ByQyXKGbQAfUqwMGOmkl3jM+xl6OoPrrvFd+Ie3271iEqL57nA5JoDETIYqdSwN0uEe8yVjwGyC1qg/3q8Cb2ZW5k6CYujQ655OtUoLib36FS/vSRkg0UZ2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770467505; c=relaxed/simple;
	bh=m1C9FPRbw9KBPa64Bur9Ed+3xqTYwqf2+usx6txNpL4=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=AdT2zAYEUETvnJg5E8QAUVKc8/DDAnCrvCanV6KhMGmb1BEOcuob0u5oMtvIThk9QPKSQcL9HWP23XRmxgpxeW6FNBA76PxmbKSrKdyGXsnavqCuVupY4wQ1fhuY2Wb14PKi/KUt763Hb8GW4hsRTsNs5x2XKFePQWlRtKugHiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=mtoRgVw7; arc=none smtp.client-ip=95.215.58.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1770467493;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pB+X+PWw8QCoTpJZbKm2C6xwzgDKvSJVp3esmH7Th0k=;
	b=mtoRgVw7cigQNvXJg2nqObj8oCs3TD6FhNT63amvnjOLvgx+4q12SyyVDlccKHlbDG7bUQ
	lILhOMW8TyLwbC12aAaffkExQHErU8N/CIdwn1L3TWGOabxoZcT3TNL32nTSz3tL83zYtZ
	+NiyWiWSKOwMNId0UbDM7/XaAbmSwqU=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 07 Feb 2026 20:30:46 +0800
Message-Id: <DG8QBWSJ79MP.2MVIHFRBX3WXX@linux.dev>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Chukun Pan"
 <amadeus@jmu.edu.cn>
Cc: "Yixun Lan" <dlan@kernel.org>, "Vinod Koul" <vkoul@kernel.org>, "Ze
 Huang" <huang.ze@linux.dev>, "Rob Herring" <robh@kernel.org>, "Mark Brown"
 <broonie@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, <linux-riscv@lists.infradead.org>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <spacemit@lists.linux.dev>
Subject: Re: [PATCH 1/2] dt-bindings: phy: spacemit: add regulator support
 to K1 USB2 PHY
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Ze Huang" <huang.ze@linux.dev>
References: <20260206100009.873182-1-amadeus@jmu.edu.cn>
 <20260207-dancing-finch-of-chemistry-f98cf2@quoll>
In-Reply-To: <20260207-dancing-finch-of-chemistry-f98cf2@quoll>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263600-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linux.dev,gmail.com,linaro.org,lists.infradead.org,vger.kernel.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.2:email,0.0.0.1:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[huang.ze@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jmu.edu.cn:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.dev:mid,linux.dev:dkim]
X-Rspamd-Queue-Id: BF841105DB8
X-Rspamd-Action: no action

On Sat Feb 7, 2026 at 6:48 PM CST, Krzysztof Kozlowski wrote:
> On Fri, Feb 06, 2026 at 06:00:08PM +0800, Chukun Pan wrote:
>> Add an optional phy-supply property to describe the regulator
>> supplying for USB VBUS.
>
> Why wasn't it there before? USB did not have VBUS?

Previously, the VBUS regulator was defined as regulator-always-on in
the device tree as a workaround.

>
> Explanation is so incomplete I suspect you are patching broken things,
> so as well this could be completely different hardware (e.g. there is no
> regulator for this block but e.g. connector).
>

usb ports under usb hub node can describe the topology well, but
still regulator always-on is necessary as no driver toggles it.

    usb3 {
     dr_mode =3D "host";
     #address-cells =3D <1>;
     #size-cells =3D <0>;
     status =3D "okay";

     hub_2_0: hub@1 {
      compatible =3D "usb2109,2817";
      reg =3D <0x1>;
      #address-cells =3D <1>;
      #size-cells =3D <0>;
      vdd-supply =3D <&usb3_vhub>;
      peer-hub =3D <&hub_3_0>;
      reset-gpios =3D <&gpio K1_GPIO(124) GPIO_ACTIVE_LOW>;

      port@1 {
       reg =3D <1>;
       vbus-supply =3D <&usb3_vbus>;
      };

      port@2 {
       reg =3D <2>;
       vbus-supply =3D <&usb3_vbus>;
      };

      ...

      hub_3_0: hub@2 {
        ...
      };
    };

Here is the diagram for the USB2, USB3 controller on K1 Jupiter board [1] (=
page 21)

    +-----------------------+
    |        K1 SoC         |
    |                       |
    |  +-----------------+  |   (USB 3.0)
    |  | USB3 Controller |--|---------------------------------->+----------=
----------------+
    |  +-----------------+  |                                   |        VL=
817 Hub         |
    |                       |                                   |          =
                |---> [USB3 Ports]
    |      HUB_PWREN        |                                   | +--------=
--------------+ |     ^
    |       (GPIO)  --------|---------------------------------->| | Enable =
Chip Power    | |     |
    |                       |                                   | +--------=
--------------+ |     |
    |                       |                                   +----------=
----------------+     |
    |      USB3_PWREN       |                                              =
                      |
    |       (GPIO)   -------|----------------------------------------------=
------------> [VBUS of USB3 Ports]
    |                       |
    |                       |
    |~~~~~~~~~~~~~~~~~~~~~~~|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~
    |                       |
    |  +-----------------+  |   (USB 2.0)
    |  | USB2 Controller |--|---------------------------------->+----------=
----------------+
    |  +-----------------+  |                                   |      FE1_=
1S Hub          |---> [USB2 Ports]
    |                       |                                   +----------=
----------------+     ^
    |   USB_HOST_PWREN_H    |                                              =
                      |
    |       (GPIO)      ----|----------------------------------------------=
-------------> [VBUS of USB2 Ports]
    |                       |
    |                       |
    +-----------------------+

[1] https://github.com/milkv-jupiter/jupiter-files/blob/main/hardware/v1_0/=
jupiter-sch-v1_0.pdf

>
>>=20
>> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
>> ---
>>  Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml | 4 ++++
>>  1 file changed, 4 insertions(+)
>>=20
>> diff --git a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yam=
l b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
>> index 43eaca90d88c..74a1cd5bcdbe 100644
>> --- a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
>> @@ -19,6 +19,10 @@ properties:
>>    clocks:
>>      maxItems: 1
>> =20
>> +  phy-supply:
>> +    description:
>> +      Phandle to a regulator that provides power to VBUS.
>

"vbus-supply" should be more accurate.

> Drop redundant part. This cannot be anything else than phandle and
> regulator.
>
> "VBUS power supply" for example.
>

> But anyway, I don't have certainty that
> this is correct hardware representation. It's your task to provide that.
>
> Best regards,
> Krzysztof

I initially considered handling VBUS via the onboard_usb_dev driver, as
we discussed previously for the BananaPi-F3 board (which uses a VL817
Hub) [2]. I was waiting for Marco Felsch's patch series "onboard-dev USB
hub host managed vbus" to land [3].

[2] https://lore.kernel.org/linux-riscv/aWJAT3n_KcND8bOz@monica.localdomain=
/
[3] https://lore.kernel.org/all/20250911-v6-16-topic-usb-onboard-dev-v4-0-1=
af288125d74@pengutronix.de/

I am not certain if managing VBUS in the PHY driver (e.g.,
phy-stm32-usbphyc.c and phy-rockchip-usb.c) is the standard method.
I would not insist on the "onboard_usb_dev managed vbus" if this patch
(PHY managed) is considered proper way.

