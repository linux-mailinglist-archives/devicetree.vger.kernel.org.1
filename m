Return-Path: <devicetree+bounces-5443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADA27B656F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:24:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 85EF51C203B8
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE82DF60;
	Tue,  3 Oct 2023 09:24:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CFCD278
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:24:44 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5858090;
	Tue,  3 Oct 2023 02:24:43 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 407F16607181;
	Tue,  3 Oct 2023 10:24:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696325081;
	bh=fglFS8/SJTxax6nKCOPR+u+mqyIQq4V/6eD+bn6enag=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LscWssJW+MqsWczsrw3nIOSf0rtr6/nbmR7RS2yUbx4aYtZh7s4RCjGNaV3QD6wRu
	 QTaHmxzxgPNanqdk82VRO4ntuWMg/MJTewnabeFJibpNUhYJ8mxZZrhqZ61k1tngh5
	 M8snckqZak/z4MzsCIfhP+LIFCMaZ9xyx6L1wzxnjameAwUwmvpEwcfRR8mIxakkNZ
	 uLj9ZU6lp/D5zdfjSG64mY+kpUMITVqJ275VLFeoWvjsc8XnDAg3aeC97JHefwbgBz
	 176JTJWl1BYwnXq/ssMSysUxoSm/zqSF+ORF564joj8juOqkv0Er33JYejrco6J3Az
	 GjqvtvLS4QchA==
Message-ID: <1c639f51-a444-c8c8-8585-2e413243c3a6@collabora.com>
Date: Tue, 3 Oct 2023 11:24:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Set DSU PMU status to fail
Content-Language: en-US
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: kernel@collabora.com, Chen-Yu Tsai <wenst@chromium.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Seiya Wang <seiya.wang@mediatek.com>,
 Tinghan Shen <tinghan.shen@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org
References: <20230720200753.322133-1-nfraprado@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230720200753.322133-1-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 20/07/23 22:07, Nícolas F. R. A. Prado ha scritto:
> The DSU PMU allows monitoring performance events in the DSU cluster,
> which is done by configuring and reading back values from the DSU PMU
> system registers. However, for write-access to be allowed by ELs lower
> than EL3, the EL3 firmware needs to update the setting on the ACTLR3_EL3
> register, as it is disallowed by default.
> 
> That configuration is not done on the firmware used by the MT8195 SoC,
> as a consequence, booting a MT8195-based machine like
> mt8195-cherry-tomato-r2 with CONFIG_ARM_DSU_PMU enabled hangs the kernel
> just as it writes to the CLUSTERPMOVSCLR_EL1 register, since the
> instruction faults to EL3, and BL31 apparently just re-runs the
> instruction over and over.
> 
> Mark the DSU PMU node in the Devicetree with status "fail", as the
> machine doesn't have a suitable firmware to make use of it from the
> kernel, and allowing its driver to probe would hang the kernel.
> 
> Fixes: 37f2582883be ("arm64: dts: Add mediatek SoC mt8195 and evaluation board")
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> 

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



