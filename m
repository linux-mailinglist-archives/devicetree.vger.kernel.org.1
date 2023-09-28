Return-Path: <devicetree+bounces-4185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BE17B183B
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:26:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 49640281D4A
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BFF134CD5;
	Thu, 28 Sep 2023 10:26:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5DE3418E
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 10:26:47 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 425D6122;
	Thu, 28 Sep 2023 03:26:46 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 80C0C6607330;
	Thu, 28 Sep 2023 11:26:44 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695896805;
	bh=dNImo2pegaylz0bmhaLxUkF8kpAdvHs5N5o4YQuhfDc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QlK1O6+XlAqhBSRNKIS8ei50rW5nlXH4/8sJ7u2A+Fc4ylviKQJJUQ21RtEs19ZHd
	 YG4yjb+AguQ+9p8ArCr6oBVFVQI37BKDtSxodGmx/gbHZcvdUq2Tjgvywebh9DE47E
	 9JfvaW3iA43Cl59hZWIXBblhe6GKX0SavzFGSMIYIoCTvrerc8ke+XMfRe3zgLcg4I
	 vehfrdSFTpmgmKHIawlXghPpimifSBen9XvgHiITeEbMwB3a9SheAEqsrK9aFj2LNj
	 B2Gi9sxX66+weNk4gLr820LlaTUAM3yec7igicp11C8DhAmi+Qt86tsDpxbYXJ77k8
	 Wf/hC4QYdAJgQ==
Message-ID: <cd683f18-8150-b718-71d1-d88e61bc438b@collabora.com>
Date: Thu, 28 Sep 2023 12:26:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 12/12] arm64: dts: mediatek: mt8183-kukui: Add PMIC
 regulator supplies
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Zhiyong Tao <zhiyong.tao@mediatek.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20230928085537.3246669-1-wenst@chromium.org>
 <20230928085537.3246669-13-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230928085537.3246669-13-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 28/09/23 10:55, Chen-Yu Tsai ha scritto:
> The PMIC regulator node is missing regulator supplies. Now that the
> binding supports them, add all the power rail supplies. Most of them
> are fed from a system-wide semi-regulated power rail. A couple LDOs
> are fed from the PMIC's own buck regulator outputs.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



