Return-Path: <devicetree+bounces-18463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2020C7F6D4C
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 08:58:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFC951F20EE2
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 07:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D3148F67;
	Fri, 24 Nov 2023 07:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="k2BcO7Ne"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.sberdevices.ru (mx2.sberdevices.ru [45.89.224.132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA3D5D6E;
	Thu, 23 Nov 2023 23:57:39 -0800 (PST)
Received: from p-infra-ksmg-sc-msk02 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id A27ED12000B;
	Fri, 24 Nov 2023 10:57:36 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru A27ED12000B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1700812656;
	bh=eovQphhknaFdWN35GgzeRZhVAOA267j1X4AIB10IlfA=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:From;
	b=k2BcO7Ne28C9V5QLAYOx5F2ADGA7qVygXgyCeIgm8rPIhOYcZ2g8Yg7u+4oApIpaH
	 cPbfv+iBpuyCgcUgGWGImXDhPdwbbsJEYgMVtqyxGjpsT+JESVRgA/v8V8Tiq64KiC
	 KD/2/ROvifrYQcwU3IeL8QqAMpn9OEZHEW9L6NsQW1QO95yTqc1b2VlflOy9rWWFNL
	 0IuxC2vXpKCZ6AIqF+tllrPeAneHffSd3QzuKUAOTK1CCyvXj4P+GDeZl/Y2jCWXvq
	 ydZeKKYC5Lka2UebPCLk/iUolcpmHPQFIJVTH+pMHDj0XJ/gBNQ9DeX0J5T8vI0JLt
	 l2uqLO2rHylCA==
Received: from p-i-exch-sc-m01.sberdevices.ru (p-i-exch-sc-m01.sberdevices.ru [172.16.192.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Fri, 24 Nov 2023 10:57:36 +0300 (MSK)
Received: from [192.168.0.106] (100.64.160.123) by
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 24 Nov 2023 10:57:35 +0300
Message-ID: <7614600c-afa8-4691-3276-2f47d00e7068@salutedevices.com>
Date: Fri, 24 Nov 2023 10:49:48 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2] arm64: dts: amlogic: meson-axg: pinctrl node for NAND
Content-Language: en-US
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Neil
 Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>
CC: <oxffffaa@gmail.com>, <kernel@sberdevices.ru>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
References: <20231109094504.131265-1-avkrasnov@salutedevices.com>
From: Arseniy Krasnov <avkrasnov@salutedevices.com>
In-Reply-To: <20231109094504.131265-1-avkrasnov@salutedevices.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: p-i-exch-sc-m02.sberdevices.ru (172.16.192.103) To
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107)
X-KSMG-Rule-ID: 10
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 181570 [Nov 24 2023]
X-KSMG-AntiSpam-Version: 6.0.0.2
X-KSMG-AntiSpam-Envelope-From: avkrasnov@salutedevices.com
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 4 0.3.4 720d3c21819df9b72e78f051e300e232316d302a, {Tracking_from_domain_doesnt_match_to}, d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;100.64.160.123:7.1.2;p-i-exch-sc-m01.sberdevices.ru:5.0.1,7.1.1;salutedevices.com:7.1.1;127.0.0.199:7.1.2, FromAlignment: s, ApMailHostAddress: 100.64.160.123
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2023/11/24 06:01:00 #22520095
X-KSMG-AntiVirus-Status: Clean, skipped

Hello all, 2 weeks from 9.11, please ping

Thanks, Arseniy

On 09.11.2023 12:45, Arseniy Krasnov wrote:
> Add pinctrl node for the Meson NAND controller.
> 
> Signed-off-by: Arseniy Krasnov <avkrasnov@salutedevices.com>
> ---
>  Changelog:                                                             
>  v1 -> v2:                                                              
>   * Rename node name 'nand_all_pins' -> 'nand-all-pins'.                       
> 
>  arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> index a49aa62e3f9f..7e5ac9db93f8 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> @@ -432,6 +432,27 @@ mux-1 {
>  					};
>  				};
>  
> +				nand_all_pins: nand-all-pins {
> +					mux {
> +						groups = "emmc_nand_d0",
> +							 "emmc_nand_d1",
> +							 "emmc_nand_d2",
> +							 "emmc_nand_d3",
> +							 "emmc_nand_d4",
> +							 "emmc_nand_d5",
> +							 "emmc_nand_d6",
> +							 "emmc_nand_d7",
> +							 "nand_ce0",
> +							 "nand_ale",
> +							 "nand_cle",
> +							 "nand_wen_clk",
> +							 "nand_ren_wr";
> +						function = "nand";
> +						input-enable;
> +						bias-pull-up;
> +					};
> +				};
> +
>  				emmc_ds_pins: emmc_ds {
>  					mux {
>  						groups = "emmc_ds";
> @@ -1913,6 +1934,8 @@ nfc: nand-controller@7800 {
>  				reg = <0x0 0x7800 0x0 0x100>,
>  				      <0x0 0x7000 0x0 0x800>;
>  				reg-names = "nfc", "emmc";
> +				pinctrl-0 = <&nand_all_pins>;
> +				pinctrl-names = "default";
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <GIC_SPI 34 IRQ_TYPE_EDGE_RISING>;

