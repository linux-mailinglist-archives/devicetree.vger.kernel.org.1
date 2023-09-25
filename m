Return-Path: <devicetree+bounces-3066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A197AD3F7
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:59:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 22C8D281356
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9D613AC2;
	Mon, 25 Sep 2023 08:59:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFBFB1097B
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:59:53 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id B3CA5AB;
	Mon, 25 Sep 2023 01:59:52 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91EE11424;
	Mon, 25 Sep 2023 02:00:30 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 849E83F5A1;
	Mon, 25 Sep 2023 01:59:49 -0700 (PDT)
Date: Mon, 25 Sep 2023 09:59:45 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Martin Botka <martin.botka@somainline.org>
Cc: Mark Rutland <mark.rutland@arm.com>, Lorenzo Pieralisi
 <lpieralisi@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Yangtao Li <tiny.windzz@gmail.com>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-sunxi@lists.linux.dev,
 devicetree@vger.kernel.org, Alan Ma <tech@biqu3d.com>, Luke Harrison
 <bttuniversity@biqu3d.com>, Marijn Suijten <marijn.suijten@somainline.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>, Rogerio Goncalves
 <rogerlz@gmail.com>, Martin Botka <martin@biqu3d.com>
Subject: Re: [PATCH 2/6] cpufreq: dt-platdev: Blocklist allwinner,h616 SoC
Message-ID: <20230925095945.0a73ac86@donnerap.manchester.arm.com>
In-Reply-To: <20230904-cpufreq-h616-v1-2-b8842e525c43@somainline.org>
References: <20230904-cpufreq-h616-v1-0-b8842e525c43@somainline.org>
	<20230904-cpufreq-h616-v1-2-b8842e525c43@somainline.org>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 04 Sep 2023 17:57:02 +0200
Martin Botka <martin.botka@somainline.org> wrote:

> The AllWinner H616 uses H6 cpufreq driver.
> Add it to blocklist so its not created twice
> 
> Signed-off-by: Martin Botka <martin.botka@somainline.org>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index e2b20080de3a..51818cef8979 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -104,6 +104,7 @@ static const struct of_device_id allowlist[] __initconst = {
>   */
>  static const struct of_device_id blocklist[] __initconst = {
>  	{ .compatible = "allwinner,sun50i-h6", },
> +	{ .compatible = "allwinner,sun50i-h616", },

The OrangePi Zero3 DT uses the "allwinner,sun50i-h618" compatible string.
Definitely for the purpose of this patch the SoCs are the same, so just
add another line with that name, please.

Cheers,
Andre


>  
>  	{ .compatible = "apple,arm-platform", },
>  
> 


