Return-Path: <devicetree+bounces-1721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE017A798C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:45:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E53C1C20914
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45872156E1;
	Wed, 20 Sep 2023 10:44:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF74154AF
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 10:44:37 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3B591A1;
	Wed, 20 Sep 2023 03:44:35 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CE07D66020EE;
	Wed, 20 Sep 2023 11:44:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695206674;
	bh=G338lXUJZ7YTM0Q7o/Hhflrx9583KA/wLdEtpyqYJyo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CEWExvrD9a+y3n9LJ7lAa7Kl4RvaCKlBKmInfM9DF1uU8oclkaQa35rBxaOtGABPg
	 yf8+mp2+A+dGECE8suzbmU+0xPADRqLIa67y4+no7vKahABQhuaLjuYZfJc03uDmUc
	 bTLKGbisZSoW0Cc91620NogoBAQsTpFXKPGunidYcHeakpINz5eJOO13g1U/Ro1xN+
	 EIsXOka5uUfnsnipLT7xLWc8hVH9Ts5fa2qohiNE9YrVv3ffP0XmTh0F9iMgaeclfu
	 91wTAMogsV8JSHuPhue+917MpHbZQXJuXWxPqUA1vJutEGFX//P1r6GkImep/v2X4a
	 XksEYfLEGvdvA==
Message-ID: <f8c359f6-4525-081c-290c-146ce99b1cfb@collabora.com>
Date: Wed, 20 Sep 2023 12:44:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v3 09/12] regulator: mt6358: Make MT6366 vcn18 LDO
 configurable
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: Zhiyong Tao <zhiyong.tao@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20230919104357.3971512-1-wenst@chromium.org>
 <20230919104357.3971512-10-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230919104357.3971512-10-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 19/09/23 12:43, Chen-Yu Tsai ha scritto:
> The VCN18 regulator on the MT6366 (only) actually has a wide
> configurable range of voltages, even though its name suggests a fixed
> output voltage.
> 
> Convert it from a fixed LDO to a configurable LDO. Its range of settings
> is the same as the VM18 regulator, which is missing and will be added in
> a subsequent patch.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



