Return-Path: <devicetree+bounces-22147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 029AC806A5C
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 10:09:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD58D281A11
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 09:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25D42199D5;
	Wed,  6 Dec 2023 09:09:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE53C46B4;
	Wed,  6 Dec 2023 00:55:18 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 4E1C617EC4;
	Wed,  6 Dec 2023 16:55:04 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 6 Dec
 2023 16:55:03 +0800
Received: from [192.168.1.115] (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 6 Dec
 2023 16:55:03 +0800
Message-ID: <5b837622-3ac9-47d5-aaf1-6b1ef5144c1c@starfivetech.com>
Date: Wed, 6 Dec 2023 16:55:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/2] Add waveshare 7inch touchscreen panel support
Content-Language: en-US
To: Dave Stevenson <dave.stevenson@raspberrypi.com>, Stefan Wahren
	<wahrenst@gmx.net>
CC: Shengyang Chen <shengyang.chen@starfivetech.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"thierry.reding@gmail.com" <thierry.reding@gmail.com>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "tzimmermann@suse.de"
	<tzimmermann@suse.de>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "sam@ravnborg.org" <sam@ravnborg.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"mripard@kernel.org" <mripard@kernel.org>, Jack Zhu
	<jack.zhu@starfivetech.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"bcm-kernel-feedback-list@broadcom.com"
	<bcm-kernel-feedback-list@broadcom.com>,
	"linux-rpi-kernel@lists.infradead.org"
	<linux-rpi-kernel@lists.infradead.org>, "florian.fainelli@broadcom.com"
	<florian.fainelli@broadcom.com>, "quic_jesszhan@quicinc.com"
	<quic_jesszhan@quicinc.com>, Changhuang Liang
	<changhuang.liang@starfivetech.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
References: <20231124104451.44271-1-shengyang.chen@starfivetech.com>
 <dab03c60-caa9-47e3-9dac-fa499227b67b@gmx.net>
 <CAPY8ntAXYVTTfXL5HX-14t-VDe63eFgRBNKA0aG3RamKepxwDQ@mail.gmail.com>
From: Keith Zhao <keith.zhao@starfivetech.com>
In-Reply-To: <CAPY8ntAXYVTTfXL5HX-14t-VDe63eFgRBNKA0aG3RamKepxwDQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag



On 2023/11/25 0:04, Dave Stevenson wrote:
> On Fri, 24 Nov 2023 at 15:00, Stefan Wahren <wahrenst@gmx.net> wrote:
>>
>> Hi Shengyang,
>>
>> [fix address of Emma]
> 
> Not merged to master yet, but Emma has stepped back from maintenance.
> https://lists.freedesktop.org/archives/dri-devel/2023-October/428829.html
> Dropped from the cc.
> 
>> Am 24.11.23 um 11:44 schrieb Shengyang Chen:
>> > This patchset adds waveshare 7inch touchscreen panel support
>> > for the StarFive JH7110 SoC.
>> >
>> > Patch 1 add new compatible for the raspberrypi panel driver and its dt-binding.
>> > Patch 2 add new display mode and new probing process for raspberrypi panel driver.
>> >
>> > Waveshare 7inch touchscreen panel is a kind of raspberrypi panel
>> > which can be drived by raspberrypi panel driver.
>> >
>> > The series has been tested on the VisionFive 2 board.
>> surprisingly i was recently working on the official Raspberry Pi
>> touchscreen and was able to get it running the new way.
>>
>> What do i mean with the new way. There is almost nothing special to the
>> Raspberry Pi touchscreen, so we should try to use/extend existing
>> components like:
>>
>> CONFIG_DRM_PANEL_SIMPLE
>> CONFIG_TOUCHSCREEN_EDT_FT5X06
>> CONFIG_DRM_TOSHIBA_TC358762
>>
>> The only special part is the Attiny on the connector PCB which requires:
>>
>> CONFIG_REGULATOR_RASPBERRYPI_TOUCHSCREEN_ATTINY
>>
>> So the whole point is to avoid writing monolitic drivers for simple
>> panel like that.
>>
>> There is a WIP branch based on top of Linux 6.7-rcX, which should
>> demonstrate this approach [1]. Unfortunately it is not ready for
>> upstreaming, but it has been tested on a Raspberry Pi 3 B Plus. Maybe
>> this is helpful for your case.
>>
>> Actually i consider panel-raspberrypi-touchscreen.c as a dead end, which
>> shouldn't be extended.
> 
> Agreed.
> 
> The panel control being bound in with the Atmel control has no hook
> for the EDT5x06 touch driver to hook in and keep the power to the
> touch controller active. When the panel disable gets called, bye bye
> touch overlay :-(
> 
> And I'm reading the driver change as more of a hack to get it to work
> on your platform, not as adding support for the Waveshare panel
> variant.
> Waveshare deliberately cloned the behaviour of the Pi 7" panel in
> order to make it work with the old Pi firmware drivers, so it
> shouldn't need any significant changes. Where did the new timings come
> from?
> 
>   Dave
hi Dave :
that's means the panel driver split into 3 sub-modules:
panel + panel_bridge + regulator.

I have a question: in the  
static int rpi_touchscreen_probe(struct i2c_client *i2c)
{
	......

	ver = rpi_touchscreen_i2c_read(ts, REG_ID);
	if (ver < 0) {
		dev_err(dev, "Atmel I2C read failed: %d\n", ver);
		return -ENODEV;
	}

	switch (ver) {
	case 0xde: /* ver 1 */
	case 0xc3: /* ver 2 */
		break;
	default:
		dev_err(dev, "Unknown Atmel firmware revision: 0x%02x\n", ver);
		return -ENODEV;
	}

	......
}
i think this "I2C read" can use to detect whether the panel is connected to dsi controller.

and when split the panel driver into 3 sub-modules, it seems the default way is connected.
if I drop the panel , run modetest to check the connector status , result connected.
Is there any way to detect the connection in this case? 
Thanks



-------------------------------------

Where did the new timings come from?

-------------------------------------
My platform dphy tx hardware has certain limitations.
Only supports integer multiples of 10M bitrate: 
such as 160M ,170M, 180M,190M,...1G(max)

as common dphy bitrate = pixclock*bpp/lanes.
This value cannot match successfully in most cases.

so in order to match bitrate , I choose a bitrate value around pixclock*bpp/lanes,
Prevent overflow and underflow by fine-tuning the timing parameters:-(
that will make the new timming value.

> 
>> Btw there are already DT overlays in mainline which seems to use the
>> Raspberry Pi 7inch panel (without touch function yet) [2].
>>
>> [1] - https://github.com/lategoodbye/rpi-zero/commits/v6.7-7inch-ts
>> [2] -
>> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso?h=v6.6.2&id=6b4da1354fd81adace0cda448c77d8f2a47d8474
>>
>> >
>> > Shengyang Chen (2):
>> >    dt-bindings: display: panel: raspberrypi: Add compatible property for
>> >      waveshare 7inch touchscreen panel
>> >    gpu: drm: panel: raspberrypi: add new display mode and new probing
>> >      process
>> >
>> >   .../panel/raspberrypi,7inch-touchscreen.yaml  |  4 +-
>> >   .../drm/panel/panel-raspberrypi-touchscreen.c | 99 ++++++++++++++++---
>> >   2 files changed, 91 insertions(+), 12 deletions(-)
>> >
>>

