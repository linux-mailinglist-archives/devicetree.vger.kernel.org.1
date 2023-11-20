Return-Path: <devicetree+bounces-17078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 608777F11DB
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:20:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1526A2816B4
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 11:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 172D914267;
	Mon, 20 Nov 2023 11:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="ArxvSckE"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8E8B3265
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=s31663417; t=1700479201; x=1701084001; i=wahrenst@gmx.net;
	bh=Q2d29zfZ5pqA70+2OwecFS0OWjp1AlJekk8RMO2MaIA=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
	 In-Reply-To;
	b=ArxvSckEA342lHpCtKYBI0Ov6AhFSZcFhGrE84jYuO3vbHgRS4lKi/IYTRdBuLxC
	 qofz3erkhbM2T3X6vWgnSme6Kf/BzGrTlUpgkVYdxvDAJRcZEX9t1Er/fFC3hggub
	 p+KeF1ajNdkmK73bskzbdZtMpKStvhicGVtyIW/eEcnTfpFLlYGaBa3YTpLeHBBpD
	 171psZImRmr9RJLsZyNHT9tHPXgjA6ijy9IUBN1q9gXSfXqFHTfJvflZD25tG7njR
	 yhz6DUL8tw9cUqdHtHSAsaZWp/Yx6vuRrQuwuSuRmYTA5m7UgASxkTTZZ8dBxLDM5
	 GmI4QpHcb4wJ6aBiNQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.129] ([37.4.248.43]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mj8mV-1raoq42UXl-00fB5B; Mon, 20
 Nov 2023 12:20:01 +0100
Message-ID: <5ca78d6a-2795-4eba-ba11-12b3afbfb7e6@gmx.net>
Date: Mon, 20 Nov 2023 12:20:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Cyril Brulebois <kibi@debian.org>, Maxime Ripard <mripard@kernel.org>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Umang Jain <umang.jain@ideasonboard.com>, Phil Elwell <phil@raspberrypi.com>
References: <20230731215515.20682-1-laurent.pinchart@ideasonboard.com>
 <CAPY8ntD07rCC5ttudKtbXkDcKFLJb5htRdawWR+S7p914ti4MA@mail.gmail.com>
 <20230801144313.GB25590@pendragon.ideasonboard.com>
 <20230801210502.GB8578@pendragon.ideasonboard.com>
From: Stefan Wahren <wahrenst@gmx.net>
In-Reply-To: <20230801210502.GB8578@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:UW2nyUpoXZKBabiJsjAJ5VslRChAz/9pOSp49EmJ/29yoAMpilb
 49xCFiLYucg0Fsa54P0aan2KnuSbdsGBsW2LuJK151UaLsib2BOsj+jerpYTf+e95ZzPten
 NMUlvYO4pqvOrg9lLFuBLm8lT2dyGg5FwP1Zzml3arWtqZIZFePFiPPvad07VIaWi4jg3K4
 Y7LSL1OrblJWTS6OebI8w==
UI-OutboundReport: notjunk:1;M01:P0:Y37vhsH0i/Q=;/dcUIQ+GpvjtEcingejkfTbHk6R
 j0SSm3Ky1dKVl+7F6T5seQYNfjYHBslAoRzHwfE2OPeR8Ec8sy3IRx3f+uzUCbOvx4/P38Kld
 LpvnlOXOab+zxRjepSKOySt8jec2h7XRCyiGt5lKZnGc2WJw3h+abbQBbRolR2x2C9LIhqtAf
 w5TYQKL10qga3iFi8GrEYRrRKJE8FARVDi/HBYzF8vOTlu9ZD4i7H09olGybSHAkAxZylwlN2
 6D2mSaDMgCvQsQ/87ZTAwbBl5qwrR9tKny93HhYQiyoZCInQ8OViTIONr1dQzbyoyCXMkGzDr
 MXDM9gHwk6zgsdmak8hs1ySuzyuOD+V286njPBZ+rAvWewBD/Igz/KepSDVQ9svmHmbZvBYQ0
 v8Xw1iHIx7GNheA9KF/N2BiOm4esdOqpgyLNLwiYtMSfZmxArhhz7z1SkLsASPWHwSV/GwCBe
 /vqmgP5EYSMh43gjCXhz8KGwlyvKF3z1HxxQnk+W5MnMhPnQrIvLMs6Eyh/3mouTBq6RnUvJM
 HfB3J4MbRM7sY/A8FHMUoe5C/Rzym2MO4Aas+wM9NrNTApGJNr8TizloUrQmxGA0IXWuQEwa9
 eGeEr8tumpSKHbJStEZG46v6ISD8KV9KEqFkxc2EidpxQOBEu7DzYJqQLGTWHrtiZSQ9c5/jg
 sWbMxhGzYW8WVRWfuj+mkfiCslbBb78p/yD7zaSPHzaJcpJtOL1e7SvvSJgHTM2yiAxly63eJ
 FmqXgVjXE5pndNCRbgbM06b0+aMhZMCZYfgcUNy8uwN7pk6JjyMYi39frByiAzxpk/S5L29KM
 3tQM2jETHGst3B7tmMIRuegToczALE9Xp32ltme1Ea4G0dx6jt9ubqEFmswEHQlroPPCPZN23
 bZHZT3MFE0sCvlb1Qs9bSVli18965oLqy0ikR57PWzPMp4DfpViW7AHKqYIP06Tawm0C3kqHg
 w4qXvg==

Hi Laurent,

Am 01.08.23 um 23:05 schrieb Laurent Pinchart:
> On Tue, Aug 01, 2023 at 05:43:15PM +0300, Laurent Pinchart wrote:
>> On Tue, Aug 01, 2023 at 03:22:17PM +0100, Dave Stevenson wrote:
>>> On Mon, 31 Jul 2023 at 22:55, Laurent Pinchart wrote:
>>>>
>>>> Hello,
>>>>
>>>> This series is an attempt to revive support for pinmuxed I2C0 on the
>>>> Raspberry Pi BCM2711-based board.
>>>>
>>>> On BCM2711-based boards, the I2C0 controller can be muxed between pin=
s
>>>> 0+1 or 44+45. The former is exposed through the 40-pins GPIO connecto=
r,
>>>> and the latter is used for the RTC on the CM4 I/O board, but also rou=
ted
>>>> to the display and camera connectors on the Raspberry Pi 4B board. Th=
e
>>>> other BCM2711-based board, the Raspberry Pi 400, does not expose or
>>>> connect anything to pins 44+45.
>>>>
>>>> A previous version was posted ([1]) a year and a half ago by Uwe. It
>>>> bundled the pinmuxing and RTC in a single patch, with the mux added t=
o
>>>> the CM4 I/O board device tree. This version splits this in two, and
>>>> moves the pinumxing to the bcm2711-rpi.dtsi to also support the
>>>> Raspberry Pi 4B.
>>>>
>>>> The Raspberry Pi downstream kernel has a more complex DT architecture=
 in
>>>> order to support different I2C0 pinmuxing for other boards. Two files=
,
>>>> bcm283x-rpi-i2c0mux_0_28.dtsi and bcm283x-rpi-i2c0mux_0_44.dtsi, defi=
ne
>>>> the two I2C0 pinxmuxing options (pins 0+1 and 28+29, or pins 0+1 and
>>>> 44+45). Each board .dts then includes the appropriate file. I'm hopin=
g
>>>> to avoid this additional complexity for now, by addressing the I2C0
>>>> pinmuxing for BCM2711-based boards only. If/when support for I2C0
>>>> pinmuxing on boards will be needed, we can revisit this topic.
>>>>
>>>> Compared to the Raspberry Pi downstream kernel, the two muxed I2C bus=
es
>>>> are labelled i2c0_0 and i2c0_1 instead of i2c0 and i2c_csi_dsi. This
>>>> change was made to keep the naming of the I2C controller labels
>>>> consistent, avoiding renaming of the I2C0 controller's label from i2c=
0
>>>> to i2c0if.
>>>>
>>>> Dave, are you fine with the differences between this patch series and
>>>> the downstream kernel, or do you expect them to cause issues ?
>>>
>>> I've checked with Phil. There's nothing too untoward that will cause
>>> us any significant grief.
>>
>> Thanks for checking.
>>
>> In the meantime, I realized that the CM4S is 2711-based and, according
>> to the downstream DT, multiplexes I2C0 on pins 28+29, not 44+45 :-(
>> Umang and Kieran also told me that we want to test camera support on th=
e
>> Pi 3B. It looks like the only viable approach to support all that will
>> be to include per-board I2C0 pinmux .dtsi as done in the downstream
>> kernel. I'll send a v5.
>
> This I2C pin muxing is getting trickier than I initially thought :-S
> Naming the child buses i2c0_0 and i2c0_1 means that boards exposing I2C0
> on the 40-pins GPIO headers would have different labels for that I2C0
> interface depending on whether they multiplex I2C0 on other pins (e.g.
> on pins 44+45 for the camera connector of the Pi 4B) or not (e.g. the Pi
> 400). Overlays would thus not be compatible, which I suppose would be
> annoying for users.
>
> Before I send a new version of the series, I'd like to know what
> direction I should take. Is overlay compatibility between the two cases
> listed above important ? If so, I can imagine at least two solutions:
>
> - On boards that use I2C0 pinmuxing, we can rename the physical
>    interface to i2c0if and name the two child buses i2c0 and i2c_csi_dsi=
.
>    This is the solution used in the downstream kernel. It is implemented
>    with a crude (in my opinion) hack though: board files have constructs
>    such as
>
>    #define i2c0 i2c0if
>    #include "bcm2711.dtsi"
>    #undef i2c0
>
> - Always mux the I2C0 bus, on pins 0+1 and 28+29 or 0+1 and 44+45,
>    depending on the board. Boards that don't connect anything to the I2C
>    bus on pins 28+29 or 44+45 would still pick one of the two options. A=
s
>    there will be no I2C device on the second bus, the corresponding
>    pinctrl entry will never be selected, so this should be harmless. The
>    downside is that there will be an I2C mux instantiated in the kernel,
>    adding a level of indirection to the I2C operations.
>
> Other solutions may be possible.
>
> What would be everybody's favourite option ?
>

sorry that you didn't get a reply to this question so far. Yesterday i
tried to get my official rpi touchscreen running and noticed those many
missing puzzle pieces (like this one) in Mainline.

My gut feeling would tend to the second option.

Best regards

