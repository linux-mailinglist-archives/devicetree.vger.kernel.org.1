Return-Path: <devicetree+bounces-11465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B31407D5D4C
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:39:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 660F7281853
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EA073FB06;
	Tue, 24 Oct 2023 21:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53973CD06
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:39:07 +0000 (UTC)
X-Greylist: delayed 21448 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 24 Oct 2023 14:39:05 PDT
Received: from 13.mo584.mail-out.ovh.net (13.mo584.mail-out.ovh.net [178.33.251.8])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A3C0A6
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:39:05 -0700 (PDT)
Received: from director8.ghost.mail-out.ovh.net (unknown [10.108.16.31])
	by mo584.mail-out.ovh.net (Postfix) with ESMTP id 11A2E27A9A
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:41:36 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-4l929 (unknown [10.111.172.174])
	by director8.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 5F09D1FD5A;
	Tue, 24 Oct 2023 15:41:32 +0000 (UTC)
Received: from RCM-web6.webmail.mail.ovh.net ([151.80.29.20])
	by ghost-submission-6684bf9d7b-4l929 with ESMTPSA
	id YKYSFazlN2WWggAAw4wSxw
	(envelope-from <rafal@milecki.pl>); Tue, 24 Oct 2023 15:41:32 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Tue, 24 Oct 2023 17:41:31 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Rob Herring <robh@kernel.org>
Cc: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, Srinivas
 Kandagatla <srinivas.kandagatla@linaro.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Hector Martin <marcan@marcan.st>, Sven
 Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Shawn
 Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam
 <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Claudiu Beznea
 <claudiu.beznea@tuxon.dev>, Andy Gross <agross@kernel.org>, Bjorn Andersson
 <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko
 Stuebner <heiko@sntech.de>, Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Vincent Shih <vincent.sunplus@gmail.com>, Alessandro Zummo
 <a.zummo@towertech.it>, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Christian Marangi
 <ansuelsmth@gmail.com>, Anson Huang <Anson.Huang@nxp.com>, Andrew-CT Chen
 <andrew-ct.chen@mediatek.com>, Lala Lin <lala.lin@mediatek.com>, Komal Bajaj
 <quic_kbajaj@quicinc.com>, Kumar Thella <sthella@codeaurora.org>, Keiji
 Hayashibara <hayashibara.keiji@socionext.com>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, asahi@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-rtc@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH V2] dt-bindings: nvmem: move deprecated cells binding to
 its own file
In-Reply-To: <20231024142457.GA3684864-robh@kernel.org>
References: <20231003064018.7502-1-zajec5@gmail.com>
 <20231024142457.GA3684864-robh@kernel.org>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <77363977d8f24fc0620a54f36326421b@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 31.11.218.106
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 16550447158977801020
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrkeekgdelvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvfevufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjedvlefguedthfefleehgeeftdeludeluedvgfeffeevhfevtdehteejteefheegnecukfhppeduvdejrddtrddtrddupdefuddruddurddvudekrddutdeipdduhedurdektddrvdelrddvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehrrghfrghlsehmihhlvggtkhhirdhplheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkeegpdhmohguvgepshhmthhpohhuth

On 2023-10-24 16:24, Rob Herring wrote:
> On Tue, Oct 03, 2023 at 08:40:18AM +0200, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>> 
>> Support for old NVMEM fixed cells was deprecated in favour of
>> "fixed-layout". It's still part of the nvmem.yaml though and may be
>> unknowingly used by new bindings added without much of analyze.
>> 
>> To make it more difficult to accidentally support old syntax move its
>> binding to separated file with "deprecated" in its name.
>> 
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>> V2: Fix path to nvmem-deprecated-cells.yaml in amlogic,meson6-rtc.yaml
>> 
>>  .../devicetree/bindings/mtd/mtd.yaml          |  7 ++++-
>>  .../bindings/mtd/partitions/nvmem-cells.yaml  |  1 +
>>  .../nvmem/amlogic,meson-gxbb-efuse.yaml       |  1 +
>>  .../bindings/nvmem/amlogic,meson6-efuse.yaml  |  1 +
>>  .../bindings/nvmem/apple,efuses.yaml          |  1 +
>>  .../devicetree/bindings/nvmem/imx-ocotp.yaml  |  1 +
>>  .../bindings/nvmem/mediatek,efuse.yaml        |  1 +
>>  .../nvmem/microchip,sama7g5-otpc.yaml         |  1 +
>>  .../devicetree/bindings/nvmem/mxs-ocotp.yaml  |  1 +
>>  .../nvmem/nvmem-deprecated-cells.yaml         | 28 
>> +++++++++++++++++++
>>  .../devicetree/bindings/nvmem/nvmem.yaml      |  9 ------
>>  .../bindings/nvmem/qcom,qfprom.yaml           |  1 +
>>  .../bindings/nvmem/qcom,sec-qfprom.yaml       |  1 +
>>  .../bindings/nvmem/qcom,spmi-sdam.yaml        |  1 +
>>  .../bindings/nvmem/rockchip,otp.yaml          |  1 +
>>  .../bindings/nvmem/rockchip-efuse.yaml        |  1 +
>>  .../nvmem/socionext,uniphier-efuse.yaml       |  1 +
>>  .../bindings/nvmem/sunplus,sp7021-ocotp.yaml  |  1 +
>>  .../bindings/rtc/amlogic,meson6-rtc.yaml      |  1 +
>>  19 files changed, 50 insertions(+), 10 deletions(-)
>>  create mode 100644 
>> Documentation/devicetree/bindings/nvmem/nvmem-deprecated-cells.yaml
> 
> You missed allwinner,sun4i-a10-sid.yaml and at24.yaml
> (arch/arm/boot/dts/broadcom/bcm53016-meraki-mr32.dts). Maybe we want to
> fix the latter case because at24 will continually have new users.

I see. I looked at examples and DTS files with "allwinner,sun4i-a10-sid"
binding but I missed others. For reference fixed cells are used in:
1. sun50i-a64.dtsi
2. sun50i-h6.dtsi
3. sun50i-a100.dtsi

I'll fix that soon!

-- 
Rafał Miłecki

