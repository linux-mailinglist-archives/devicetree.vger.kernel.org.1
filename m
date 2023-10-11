Return-Path: <devicetree+bounces-7712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D68A57C524A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:40:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13A9E1C20982
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9D9E1E535;
	Wed, 11 Oct 2023 11:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="NUigGBNW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384411DDF1
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:40:31 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0FD294;
	Wed, 11 Oct 2023 04:40:29 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D43C06607312;
	Wed, 11 Oct 2023 12:40:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697024428;
	bh=OAMxSeQ6P5OM3kNDdwo69a8n51/BNIPMjIOkxQ7766s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NUigGBNW6cMl0UPf5ATiyCBG/6NiwnVGibUC7TWy9Fx2nq6JRWCzg78cLjmhRantd
	 24iERycqpetEV8+scZLms7O3eBWLmKVHMlVn4BLInT/lt0K/fEoEc9eKUVKrDu4QSj
	 lh6LOOzhbgcNuMFpRZp+1c7LvdI237Kp+K2JZ1NdOh1OZllW+1t1/PP480J/9Yp+GG
	 r6bz4f9/t91CkgCxjXv3HM2vQuFTbXApvxqqiRjupOwWnnZH7WnhPB32WlR60enX/9
	 9gjaon5QJQtNE7hGu5uLsjs51C89Fg68KqTOnkRt5OVQkMdNPzhMhlxssJ27A+YsPX
	 xJYCkN1E+GjaA==
Message-ID: <9b822d2d-7e2f-98f5-218c-22e0bb516a6a@collabora.com>
Date: Wed, 11 Oct 2023 13:40:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v7 2/3] arm64: dts: mediatek: mt8195: revise VDOSYS RDMA
 node name
To: Moudy Ho <moudy.ho@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: "Nancy . Lin" <nancy.lin@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20231011075031.30660-1-moudy.ho@mediatek.com>
 <20231011075031.30660-3-moudy.ho@mediatek.com>
Content-Language: en-US
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231011075031.30660-3-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 11/10/23 09:50, Moudy Ho ha scritto:
> DMA-related nodes have their own standardized naming. Therefore,
> the MT8195 VDOSYS RDMA has been unified and corrected.
> Additionally, these modifications will facilitate the further
> integration of bindings.
> 
> Fixes: 92d2c23dc269 ("arm64: dts: mt8195: add display node for vdosys1")
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



