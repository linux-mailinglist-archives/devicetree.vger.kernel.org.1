Return-Path: <devicetree+bounces-5358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C057B60AC
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 08:21:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 08E001C20831
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 06:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D90D4A0F;
	Tue,  3 Oct 2023 06:21:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B71D3FC2
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 06:21:01 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39264BB;
	Mon,  2 Oct 2023 23:20:58 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3936Kmon019606;
	Tue, 3 Oct 2023 01:20:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696314048;
	bh=B0HZJ7nT8ioRIRZTbqYN3TGuhU+FSBVSRAbzCHpYAWQ=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=BCLobV7Mr6ODYjLm7hhOMZTWFEoAeGQi2D/zGoVPxqez10QsH6wDPIt+Hvo7hRS9D
	 kz2JVkAHtW2JRXzf7Eag52RogMpe+epiJjEDjUgIYD5fG/xEb657yqqxBp6tZtw5je
	 l2aUCnP+IlBJVVQpdbW2NY2CiSSXnxs4IVs6EchE=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3936KmGs062500
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 01:20:48 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 3
 Oct 2023 01:20:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 3 Oct 2023 01:20:48 -0500
Received: from [172.24.227.94] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3936KhNt013636;
	Tue, 3 Oct 2023 01:20:44 -0500
Message-ID: <43d1ac7d-21a9-244b-3dad-2fe3c15372fa@ti.com>
Date: Tue, 3 Oct 2023 11:50:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 5/6] arm64: dts: ti: k3-am62a7-sk: Enable audio on
 AM62A
Content-Language: en-US
To: Jai Luthra <j-luthra@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo
	<kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <a-bhatia1@ti.com>,
        Jayesh
 Choudhary <j-choudhary@ti.com>
References: <20230928-mcasp_am62a-v2-0-ce9f0e1ba22b@ti.com>
 <20230928-mcasp_am62a-v2-5-ce9f0e1ba22b@ti.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
In-Reply-To: <20230928-mcasp_am62a-v2-5-ce9f0e1ba22b@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 28/09/23 14:54, Jai Luthra wrote:
> +
> +	main_mcasp1_pins_default: main-mcasp1-pins-default {


pinctrl-single.yaml mandates node names should end with -pins .

> +		pinctrl-single,pins = <
> +			AM62AX_IOPAD(0x090, PIN_INPUT, 2) /* (L19) GPMC0_BE0n_CLE.MCASP1_ACLKX */
> +			AM62AX_IOPAD(0x098, PIN_INPUT, 2) /* (R18) GPMC0_WAIT0.MCASP1_AFSX */
> +			AM62AX_IOPAD(0x08c, PIN_OUTPUT, 2) /* (K19) GPMC0_WEn.MCASP1_AXR0 */
> +			AM62AX_IOPAD(0x084, PIN_INPUT, 2) /* (L18) GPMC0_ADVn_ALE.MCASP1_AXR2 */
> +		>;
> +	};
>  };
>  

-- 
Regards
Vignesh

