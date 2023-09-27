Return-Path: <devicetree+bounces-3996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5539E7B0D86
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 22:44:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CE8A42836F6
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 20:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AD3D3CD0E;
	Wed, 27 Sep 2023 20:44:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB66420B27
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 20:44:40 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 895B3BF;
	Wed, 27 Sep 2023 13:44:39 -0700 (PDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id DD8285C28A2;
	Wed, 27 Sep 2023 16:44:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 27 Sep 2023 16:44:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1695847478; x=1695933878; bh=AsKv5ZivNNx+hY2Lpt116e+FY6DRWUuM4nh
	D0mTfvhc=; b=bSUi+nOFHg8ft6wbFjA0yvta90PS1jT2HrUd0Z2e4F9scGk7Dn+
	41UykMoDIQTf0IM4DFaATb5AscXcwHpSbpUiPthdVct7hsKRLmsQWcCkNpqXCZCB
	C99wg32+IYwcp4pyf45dP7F5fd33aWk/8Sr34qKgDTbkzNkXik5vkF8R33JtrGEF
	abmE48VTDCuE+LHbqoGOxROgZHltFmfibEMGkxiK+jv6sgVmzq8hjCJxbuO7vUI3
	dKTWJGmAInrvBBqSr9HZCLnGVhLv4yucUe1nqqxG2516PJht5Hsdhz++sTRlMCDV
	ALqsBczDMgrymaK9WvT6OxZiZb4djrjvijg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1695847478; x=1695933878; bh=AsKv5ZivNNx+hY2Lpt116e+FY6DRWUuM4nh
	D0mTfvhc=; b=A71tizEN4nqYpiImzTdUpkAphX15Xy3maDRN9gakrPi3ejPE0ln
	hkY3B6u5wXrJM5O/U/cz2NRfv2vf7Vfpmz7sZ/BgaJ2GNPWb3kU8Hahztz6ev0Do
	E6KqD6wmh+ml6ssZIi51Gn01Cw1izYVXaZMTN+FyfcbaesGOo8P9iMyrfFQFAOHW
	YJF+teMMbM7asZVfscByLkXF7aYs9QHEFwF0R3ymGS0VcSvWaxtdXYVu3Vua6RLX
	hNJc27QpM8l88z4hAfLhYxZmJrWlhjM1WQKe9ukp9Sw8IRfP0MDj3RM9lavEk5Ru
	QHziEQrwTUwN8APA6KOIfEqovithnFN1ERg==
X-ME-Sender: <xms:NpQUZYFNUmHOPTTmZvMPZDlaHq5ctA4YDS3zZS_OKCLmiIRhazbhUw>
    <xme:NpQUZRUCj_oDgHZWxeR7mJP8FquDGwm-9FZjJyFo0huQHK2tq5tvCq3G5vJqg2YPL
    IYiwCSejOSqzg5gpA>
X-ME-Received: <xmr:NpQUZSIZf0Njr3qkBpGhYnqcOJu3rUlGVsVYQg8SUh-_pYz3fyM2uAZ0K7Sp5ahd9Bep4FATCZfGt-Yikc5sTafOKFJ2zHYT9OE6edYIaKwjkOL0-TfOJXeU-g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvjedrtdeggdeklecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfuvfevfhfhjggtgfesthejredttdefjeenucfhrhhomhepufgrmhhu
    vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecugg
    ftrfgrthhtvghrnhepkeejleelfeeitdfhtdfgkeeghedufeduueegffdvhfdukeelleef
    tdetjeehuddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:NpQUZaGr7dnzQd6wOwbwAFk1KaXAZ3_UUXPbVaYVgF--rZ7VC9XF4w>
    <xmx:NpQUZeV9FGV2J94JPrvrSmpjpFiaH4cJSns6pwLv_BsxsPoN0_4b6Q>
    <xmx:NpQUZdP015hNVswPn9NEXcoDMt-MpU2JFeyPFGzxzHAziDTHrHpE2A>
    <xmx:NpQUZczeMfdwit1_wF9ehODNseJfvUuAnVHj7kFag6GSFwjD2eHWcA>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 27 Sep 2023 16:44:38 -0400 (EDT)
Message-ID: <af27d5a9-b63f-825f-924f-eb4170a5a9bc@sholland.org>
Date: Wed, 27 Sep 2023 15:44:37 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux ppc64le; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: sunxi: Add
 itead,iteaduino-plus-a20
Content-Language: en-US
To: Julian Ribbeck <julian.ribbeck@gmx.de>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski@linaro.org
References: <e0e71b0c-086d-ce54-f4d3-6f594d8e5da6@linaro.org>
 <20230617205624.1178427-1-julian.ribbeck@gmx.de>
 <20230617205624.1178427-2-julian.ribbeck@gmx.de>
From: Samuel Holland <samuel@sholland.org>
In-Reply-To: <20230617205624.1178427-2-julian.ribbeck@gmx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 6/17/23 15:55, Julian Ribbeck wrote:
> Add itead,iteaduino-plus-a20 bindings
> 
> Signed-off-by: Julian Ribbeck <julian.ribbeck@gmx.de>
> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Samuel Holland <samuel@sholland.org>


