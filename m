Return-Path: <devicetree+bounces-6928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 253C97BDC58
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 14:39:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D36162814A2
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 12:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E4D84698;
	Mon,  9 Oct 2023 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="jt0iKC8R"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9EE49CA7B
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 12:39:51 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FD75AC;
	Mon,  9 Oct 2023 05:39:50 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 203C0660716C;
	Mon,  9 Oct 2023 13:39:48 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696855188;
	bh=lS76ocpZeANuMGXYVZLnsbTidODtHxIumr0VpieWrD0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jt0iKC8R9Wx4opcqtrMmKH9+AOy+H2tE3ng3w9EAmYZrzqYuUq6bBw6Z7slm2epCe
	 uH9u322ItomcDCaU8FcYCIbF3pERqrSS6KRPTE+rWJ2qkaPkTyQ6DfqBeLxlIcVAjQ
	 whRmSl0RtPyi100ru/U3zXY3inNCRS+sQqZiesHNd3yCimktFDLqCERXiGrhyYoT25
	 3ZC1PvmfLUT2mYHpiLPFsdr6X8K2rBppKavy7NJc6DlM9WOH7FnhgmcvCC8QxJ7CK8
	 Ev+c7I0Jytua3+XQO5/6tKiAklBEcUpl2rvKjqdZ9PBkk5XAp/7xfc9iIepuIDYsuq
	 OGijxSaQnzERg==
Message-ID: <ee6598bf-312f-d76d-93e6-16ac7f90b335@collabora.com>
Date: Mon, 9 Oct 2023 14:39:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2] media: mediatek: vcodec: Handle invalid encoder vsi
Content-Language: en-US
To: Irui Wang <irui.wang@mediatek.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, nicolas.dufresne@collabora.com,
 Yunfei Dong <yunfei.dong@mediatek.com>
Cc: Project_Global_Chrome_Upstream_Group@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org,
 Maoguang Meng <maoguang.meng@mediatek.com>
References: <20231007113347.28863-1-irui.wang@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231007113347.28863-1-irui.wang@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 07/10/23 13:33, Irui Wang ha scritto:
> Handle invalid encoder vsi in vpu_enc_init to ensure the encoder
> vsi is valid for future use.
> 
> Fixes: 1972e32431ed ("media: mediatek: vcodec: Fix possible invalid memory access for encoder")
> 
> Signed-off-by: Irui Wang <irui.wang@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



