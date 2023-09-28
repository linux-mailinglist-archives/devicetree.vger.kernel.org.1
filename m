Return-Path: <devicetree+bounces-4184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2517B1838
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:25:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D119A281B16
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C064534CD1;
	Thu, 28 Sep 2023 10:25:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980A93418E
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 10:25:50 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EDCB195;
	Thu, 28 Sep 2023 03:25:48 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1B6AF6607330;
	Thu, 28 Sep 2023 11:25:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695896746;
	bh=RCSdUR/osdkCB5Bl2WmbzxTRoja3hNKs1eu4r3gAs2E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DVXch+pbyJerTappMmJKe1mDPwvj3brTBhUrdK3j9xVX1QbSVO57F1gmBQ2vvtxnB
	 ewY9aexnBFY82dLg+e/w/nnQ1Vcg7TNsr5G64HhqIGh+CkPxDchtYoZXT3ediAQiYJ
	 KI2wXZrr5vRsPsJpkHknhoE0gj62ZxP56aK0lBAGCvqS6RKMdp0iaSETktc+tixi0v
	 Z0rAAf8RGVus7HptjBDH8oFVMarFgQ4bUzahTg6uMokJ5i1ptmDxiMX0kLxive1if1
	 RCjWC5O7D3n+oHZrCV2iBrg94ypVwgtd7wBMSDLk3IHP5w17sb/j8OZh0e1ywqOAz+
	 ALdVsk7oXLh5Q==
Message-ID: <58a7d962-bfa7-ac1d-a324-c78a03b6835d@collabora.com>
Date: Thu, 28 Sep 2023 12:25:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 01/12] dt-bindings: mfd: mt6397: Split out compatible
 for MediaTek MT6366 PMIC
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Zhiyong Tao <zhiyong.tao@mediatek.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230928085537.3246669-1-wenst@chromium.org>
 <20230928085537.3246669-2-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230928085537.3246669-2-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 28/09/23 10:55, Chen-Yu Tsai ha scritto:
> The MT6366 PMIC is mostly, but not fully, compatible with MT6358. It has
> a different set of regulators. Specifically, it lacks the camera related
> VCAM* LDOs and VLDO28, but has additional VM18, VMDDR, and VSRAM_CORE LDOs.
> 
> The PMICs contain a chip ID register that can be used to detect which
> exact model is preset, so it is possible to share a common base
> compatible string.
> 
> Add a separate compatible for the MT6366 PMIC, with a fallback to the
> MT6358 PMIC.
> 
> Fixes: 49be16305587 ("dt-bindings: mfd: Add compatible for the MediaTek MT6366 PMIC")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



