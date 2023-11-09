Return-Path: <devicetree+bounces-14803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6027E69D7
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 12:42:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF0461C2090C
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 11:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A2E31A734;
	Thu,  9 Nov 2023 11:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="J7QjPbn+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD2E1C28F;
	Thu,  9 Nov 2023 11:42:43 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 376A12D71;
	Thu,  9 Nov 2023 03:42:43 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E1593660748C;
	Thu,  9 Nov 2023 11:42:40 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699530162;
	bh=1GoPKkfelm7WA5wubXkX1TePXQHl6eXleQyR1wZu/jU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=J7QjPbn+DCFzDj/lZM65PkFvyBeOgJ0X9MqINxhS2snOAqyP7YWlukAJHcOkytjLW
	 FlFkqXsgIIh3btGhQm0HeLKpIspT/Jtw/9KDu+krYt4fXcPWrnNWffM1gcOlSsML80
	 prO5jvjGdW9s0udCI/3tIO0viV9D868C1U5TBJdsrKmLbdYV6OsgVCnDH4MBgDga9w
	 Mlw3osPw2glZYJZOsN4TbZrrpabskNJaY4U47fAvR0nliar/xJaOt00AAW8Y3bEA2O
	 9bvJo73NWZzGmQZ1TbDruaY1btmEwFRfP9r8HiJftUKD4cG/VbaqyNm72drBiRY1fp
	 TLPCY6OEnUZuA==
Message-ID: <27ee57f8-59a3-4834-8744-9b8107dd6521@collabora.com>
Date: Thu, 9 Nov 2023 12:42:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND 3/3] dt-bindings: arm:mediatek: mmsys: Add VPPSYS
 compatible for MT8188
Content-Language: en-US
To: "yu-chang.lee" <yu-chang.lee@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: "Nancy . Lin" <nancy.lin@mediatek.com>, Nathan Lu
 <nathan.lu@mediatek.com>, Moudy Ho <moudy.ho@mediatek.com>,
 "Jason-JH . Lin" <jason-jh.lin@mediatek.com>,
 Garmin Chang <garmin.chang@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20231109111122.371-1-yu-chang.lee@mediatek.com>
 <20231109111122.371-4-yu-chang.lee@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231109111122.371-4-yu-chang.lee@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 09/11/23 12:11, yu-chang.lee ha scritto:
> Add VPPSYS0, VPPSYS1 compatible on Mediatek MT8188.
> 
> Signed-off-by: yu-chang.lee <yu-chang.lee@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



