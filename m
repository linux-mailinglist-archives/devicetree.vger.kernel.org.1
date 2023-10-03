Return-Path: <devicetree+bounces-5437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1083D7B654C
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:19:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D09531C2048B
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4971FDF4B;
	Tue,  3 Oct 2023 09:19:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F997DDAC
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:19:16 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C3E2B0;
	Tue,  3 Oct 2023 02:19:15 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D61126607181;
	Tue,  3 Oct 2023 10:19:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696324753;
	bh=M7lfKOTZR3YgSLdRNfIAxVgHYEotO9VtiVlCynD3SMU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=R9dZ3Hy8CrWJehTL759PY4epu4CXhVtEAx0t+4u0GSOvsGFPl0XCm1rlm6Hgljxnx
	 6688lQSte61FZiO+mzoLEJl+ZIfzwSuMp3dEWaO9QXLWGfzC6R5Se12IBixDFn6FUy
	 Jx0Yv/gMMOCmrKjgaIifK+O0ccXdkdCeuvz7jBuYmfibjGOR9lj7IN0Tbl76smwSDQ
	 bnbRQIyBi5nQ5vfSGLiv8+Ojj+wwbNUrrcqYC/4z/v0+gYPIXCF5RDYjjuZpsDPXzr
	 ItbgOf6lhLk/NHzdz/G3PSRNxAsIiODjzh/NuLqz8V0VqHi9sg/n2UYAKthk145IHH
	 Nf72jko8PEfHg==
Message-ID: <f10651a0-797b-ee55-a7db-9a26699c13ce@collabora.com>
Date: Tue, 3 Oct 2023 11:19:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 2/2] arm64: dts: mediatek: fix t-phy unit name
Content-Language: en-US
To: Eugen Hristev <eugen.hristev@collabora.com>,
 linux-mediatek@lists.infradead.org
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, sam.shih@mediatek.com, jieyy.yang@mediatek.com,
 frank-w@public-files.de, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, chris.obbard@collabora.com,
 kernel@collabora.com
References: <20230814093931.9298-1-eugen.hristev@collabora.com>
 <20230814093931.9298-2-eugen.hristev@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230814093931.9298-2-eugen.hristev@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 14/08/23 11:39, Eugen Hristev ha scritto:
> dtbs_check throws a warning at t-phy nodes:
> Warning (unit_address_vs_reg): /t-phy@1a243000: node has a unit name, but no reg or ranges property
> Warning (unit_address_vs_reg): /soc/t-phy@11c00000: node has a unit name, but no reg or ranges property
> 
> The ranges is empty thus removing the `@1a243000`, `@11c00000` from
> the node name.
> 
> Fixes: 6029cae696c8 ("arm64: dts: mediatek: mt7622: harmonize node names and compatibles")
> Fixes: 918aed7abd2d ("arm64: dts: mt7986: add pcie related device nodes")
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



