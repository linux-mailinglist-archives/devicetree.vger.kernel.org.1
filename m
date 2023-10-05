Return-Path: <devicetree+bounces-6061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 371BA7B9C78
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 12:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BD7DF281CE0
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 10:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92BE9125B2;
	Thu,  5 Oct 2023 10:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="LmyoZxlv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B8A6FDF
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 10:20:41 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF8CB2066F;
	Thu,  5 Oct 2023 03:20:39 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B58C7660731C;
	Thu,  5 Oct 2023 11:20:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696501238;
	bh=gtShXwSvNgcZvx08zMfHtG7ILqlH7jFASuzzPiQpLPw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LmyoZxlvxhWUxUVTDQnppkA5Iu3cWn6/tGSFPwsUJHX8fLXTfRmxOLlVBuF9h9vLf
	 +iM0l0oQw1B8URqd7+da9jI8QgpgVfPOk0X57GSH0ADILQfC/Hl9GHzbPaTcuI0vha
	 9GVotVohyea8Q6E+cx9n3Pm288TFIbbavhipoZ+YcKRedXsXoBuzx8tTTok6/nweFN
	 bsMLVtIWuLqUjZt61Spps4t2XPOM1gJPhs2byvSJR6xw1IB2G/FK9/uo6hcpHsWtr5
	 W67BfPbHUaHxy6zBJWj++QKvwYtByXi09WhpKxvE2f16miqVx93Rc1j3wH+JIP2nY9
	 /Bp8h6B0PSRIw==
Message-ID: <12c2a112-b69a-99ce-227a-eb1e8c539a44@collabora.com>
Date: Thu, 5 Oct 2023 12:20:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v8 0/8] soc: mediatek: MT8365 power support
Content-Language: en-US
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Alexandre Mergnat <amergnat@baylibre.com>,
 Chun-Jie Chen <chun-jie.chen@mediatek.com>,
 Tinghan Shen <tinghan.shen@mediatek.com>, Fabien Parent
 <parent.f@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20230918093751.1188668-1-msp@baylibre.com>
 <06f8a769-1845-ea87-dcc4-37dd5ad255ed@collabora.com>
 <20231005094316.nj5w6cmefvc36tbl@blmsp>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231005094316.nj5w6cmefvc36tbl@blmsp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 05/10/23 11:43, Markus Schneider-Pargmann ha scritto:
> Hi Angelo,
> 
> On Thu, Oct 05, 2023 at 10:54:16AM +0200, AngeloGioacchino Del Regno wrote:
>> Il 18/09/23 11:37, Markus Schneider-Pargmann ha scritto:
>>> Hi,
>>>
>>> no real changes in this update. Rebase to v6.6-rc2 and according change
>>> of directory.
>>
>> Since the driver changed to pmdomain/mediatek, can you please change the commit
>> titles for the driver commits?
> 
> As far as I understand Ulf applied the series today and changed the
> title as well:
> https://lore.kernel.org/lkml/CAPDyKFrUbWBQgMm6wYwFfybiRQKhBpwH7wwcXaT+KrQJLevq3w@mail.gmail.com/
> 

Whoops! I didn't notice that, sorry!

Cheers,
Angelo


