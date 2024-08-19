Return-Path: <devicetree+bounces-95015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E21C957A2A
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 02:00:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEE251C23B21
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 00:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 940FD1E3CC0;
	Mon, 19 Aug 2024 23:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BuZeGlNT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAB21E3CBD
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 23:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724111989; cv=none; b=AvXI1CNjSTCj/pSbV6SFPWpAxJ0FRU+wk+km1ddysMJTOe1gfsTVItJGc3jYle5lG9otAsx4N2eGzySw+sKcExf5BpmkHBtdTFmL73b+g3+G21UtkmNmvapsfDVF0y5AQw3hpCcqXx7i1svCcNq+76cplG/Sa5r8nqdBC5RW+ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724111989; c=relaxed/simple;
	bh=bYGkLaGQIKKpIurG7KT++3ABazri0PYOu/DJ7PB8sgQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O8ITY4SXtUasdG8z+smsmuvj8U9qESe9woi+t4hU/kFpU2xpVyIVuB4GJlYBuoN2JLXnlwtdSMukstwEXMa4zmBhTw5cCzAdJ5+AR1bVPaYUzLiIuyl128AwBTPgq0UpoQn8a2WhRXqMvEz6Bd9KsX4Jqnzo+aoCkl8ek9TNpZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BuZeGlNT; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2d3bae081efso3594748a91.1
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 16:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724111987; x=1724716787; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WjABo7s3VKOBABg1ESnYjtcKOR4+Ado7alcRhqBh7E8=;
        b=BuZeGlNTjQIsRAlZO+hJKgR77LbpB31ApwZ4nqT2AxZsbOfBcRD23nXCvm3kDTokYo
         i5qF2A6F9zprAchoa6xF3ywQKxrxbjpGxVKwmCLf4RqpyECr83WMsOTMUn79cfooVyDO
         EPgk7URSPnevuRxlI1eyMoCh0tyc/ZbApxKFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724111987; x=1724716787;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WjABo7s3VKOBABg1ESnYjtcKOR4+Ado7alcRhqBh7E8=;
        b=L9l+sEir58SbU3gZa3KcdaNCsRs6jgsA+UfGGZ4wMrbySWW+NOfq7jeUE0/2bsM3s8
         z3DLscK2ZpZvTdrOJ7V5b2sVzNesDMnV+sq6+XslnPUvqqMfIqWtB6PDccmHLhNt5LT4
         CFlbhiy6LI4jHRzB1ucOGiEfGJ4tUhE46+zjH+TshruL2M6Qmwk6ebOBv3rKlXfpdYgo
         VkTS8HDw/RGfGHklWpVHErOwT2rI275KduSp+TAs4+xJxPRBH0RatCEz04179pAvyTn2
         EgpYidhhQQ/QFT3E7lpbUrn3A4RjZjv0vmzH4/aBDyxT78yhQUzEmTjrb9hIIYnOxn6K
         nmIA==
X-Forwarded-Encrypted: i=1; AJvYcCUoOefXkBI7K0xAzqcKTZoyNhe18kr7tgYEim6n4PtaVqQ4aeT7IhaTcY7JC7mIMvmXNVQp29WZlX8E@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdl9ZCxOYSCjb40MBF1lPn7F4zv+2L438f66Kr4KTVY7Irlv2u
	K9zXc7Qbr6znMyyaD7EZkh2p+4ixuSiKPDRznLMpGwcHnLoh+7aifNRE3AV0Rw==
X-Google-Smtp-Source: AGHT+IFSEcFmKUg3XiTqxX1M+k4JhQXhtjsl3FmnrLps51L58VtAENMFX3m5ZUuTFgjG76CV4pxDyA==
X-Received: by 2002:a17:90a:4d82:b0:2d1:bf48:e767 with SMTP id 98e67ed59e1d1-2d5c0ea8a13mr723064a91.29.1724111987241;
        Mon, 19 Aug 2024 16:59:47 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:917:3d68:a539:4ba4])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2d3c8839392sm9451229a91.56.2024.08.19.16.59.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 16:59:46 -0700 (PDT)
Date: Mon, 19 Aug 2024 16:59:44 -0700
From: Brian Norris <briannorris@chromium.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Kalle Valo <kvalo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:NETWORKING DRIVERS (WIRELESS)" <linux-wireless@vger.kernel.org>,
	"open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/1] dt-bindings: net: wireless: convert
 marvel-8xxx.txt to yaml format
Message-ID: <ZsPccHaCMRgbNk4L@google.com>
References: <20240816171203.143486-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240816171203.143486-1-Frank.Li@nxp.com>

Hi Frank,

On Fri, Aug 16, 2024 at 01:12:01PM -0400, Frank Li wrote:
> Convert binding doc marvel-8xxx.txt to yaml format.
> Additional change:
> - Remove marvell,caldata_00_txpwrlimit_2g_cfg_set in example.
> - Remove mmc related property in example.
> - Add wakeup-source property.
> - Remove vmmc-supply and mmc-pwrseq.
> 
> Fix below warning:
> arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dtb: /soc@0/bus@30800000/mmc@30b40000/wifi@1:
> failed to match any schema with compatible: ['marvell,sd8997']
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Change from v1 to v2
> - Add Brian Norris <briannorris@chromium.org as maintainer
> - Remove vmmc-supply and mmc-pwrseq
> - Add wakeup-source
> - rename to marvell,sd8787.yaml by using one compatible string, suggestted
> by conor dooley at other binding doc convert review
> ---
>  .../bindings/net/wireless/marvell,sd8787.yaml | 93 +++++++++++++++++++
>  .../bindings/net/wireless/marvell-8xxx.txt    | 70 --------------
>  2 files changed, 93 insertions(+), 70 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/wireless/marvell-8xxx.txt
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml b/Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml
> new file mode 100644
> index 0000000000000..c6647672b7b1e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml
> @@ -0,0 +1,93 @@

> +  marvell,caldata-txpwrlimit-5g-sub0:
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    description: Calibration data for sub-band 0 in the 5GHz band..

You have an extra period in this line.

> +  marvell,caldata-txpwrlimit-5g-sub1:
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    description: Calibration data for sub-band 1 in the 5GHz band..

Same.

> +    maxItems: 688
> +
> +  marvell,caldata-txpwrlimit-5g-sub2:
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    description: Calibration data for sub-band 2 in the 5GHz band..

Same.

Otherwise, this looks good to me, so feel free to carry my:

Acked-by: Brian Norris <briannorris@chromium.org>

(Sometimes Kalle will make trivial fixes like this when applying. I'm
not sure if that means you should send v3 anyway, or see if he'll apply
this on his own soon enough.)

Brian

