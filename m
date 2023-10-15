Return-Path: <devicetree+bounces-8718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 607C27C9C66
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 00:25:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FD8B2816AF
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 22:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 236C114AAB;
	Sun, 15 Oct 2023 22:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWZ5gy8b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DB114A9F
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 22:25:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54600C433C8;
	Sun, 15 Oct 2023 22:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697408724;
	bh=7ukMZpn3B3PMt4B8/VVTfosLTYUdvhiBI+QB+7XKRY0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KWZ5gy8b6Cjo6C5VAZaLpO+CcCeY3Q+OTRtQqYf/8Bbb/yGehRR9k9yL9JXI/kSKB
	 /SuwwJ5ux1/78o/ve71KiA4BYBF6sPB3wRX4fpGjl+Nk3ZSjO4Iibop4jxg4yxrefS
	 rjI62WjQJOKr7kMfBZl45gADOTk1TVCQdaoRqfwJ2XexFfHdlGiS+WeeBMK2d0+mlm
	 y1Hx4f/Z+YZ4u/llEFkIKJfoW9SiTiO1eqmaE7HXVm/Z9d4zd2xILNzJDYAeRJUu6n
	 poKHhNv8nLnhiYZNgAhViOoU3VgSfgBUwnC/XxSoEXpnUACGPeZTtTVY55VSPPJOLT
	 hHhFMxh5RInRw==
Message-ID: <fc7c1593-4bd2-45b0-9ed8-177ca3b9f17d@kernel.org>
Date: Mon, 16 Oct 2023 07:25:22 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v3 28/35] Documentation/devicetree/bindings/ata:
 ata-generic.yaml add usl-5p and rts7751r2d.
Content-Language: en-US
To: Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org
Cc: glaubitz@physik.fu-berlin.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-ide@vger.kernel.org, devicetree@vger.kernel.org
References: <cover.1697199949.git.ysato@users.sourceforge.jp>
 <0af21a9c4bf257c09254077c349bbb67530cb35c.1697199949.git.ysato@users.sourceforge.jp>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <0af21a9c4bf257c09254077c349bbb67530cb35c.1697199949.git.ysato@users.sourceforge.jp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

The patch title should be something like:

dt-bindings: ata: ata-generic: add usl-5p and rts7751r2d

without a period at the end.

On 10/14/23 23:54, Yoshinori Sato wrote:
> usl-5p and rts7751r2d using ata-generic driver.

Please use a full sentence. There is no verb here.

> 
> Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
> ---
>  Documentation/devicetree/bindings/ata/ata-generic.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ata/ata-generic.yaml b/Documentation/devicetree/bindings/ata/ata-generic.yaml
> index 0697927f3d7e..1025b3b351d0 100644
> --- a/Documentation/devicetree/bindings/ata/ata-generic.yaml
> +++ b/Documentation/devicetree/bindings/ata/ata-generic.yaml
> @@ -18,6 +18,8 @@ properties:
>        - enum:
>            - arm,vexpress-cf
>            - fsl,mpc8349emitx-pata
> +          - iodata,usl-5p-ata
> +          - renesas,rts7751r2d-ata
>        - const: ata-generic
>  
>    reg:

-- 
Damien Le Moal
Western Digital Research


