Return-Path: <devicetree+bounces-12881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DF37DBA9E
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 14:23:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B29071C20A45
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 13:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6938516433;
	Mon, 30 Oct 2023 13:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B51316426
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 13:23:43 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7241711C;
	Mon, 30 Oct 2023 06:23:28 -0700 (PDT)
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-581f78a0206so2481010eaf.2;
        Mon, 30 Oct 2023 06:23:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698672207; x=1699277007;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wjt3TAo3Dse9HLcIvA8SfElE9ogqvEen9PSWvl4jKHI=;
        b=mmJ2O9QWzNLBNtv84PO4RnisLOQnnfw3/r9tB6Q6P/dnsNyC+QvafLbLMp1hKLP8v8
         RJko+tL92o23bz1pRiUKIprqpsvjGKCz49SsG2iejxh2dRCn7RQ+WmianTiKPyyM9bhE
         U9fZX2sfA2Q/HwQczWlmcvVCqM5PYIp4pkKLoASKG0cupiTA9EWdfUVaZF9/UGlcfSuX
         IQLigcaCHIPCN0HrYDsiFBGp+zLUrM9X/rfBmzFUJDSaKFHh92g7D/8dqeQC2btMbT4A
         yg+8PD+LXLQwF1vxs8emZtKCrWmsZE1P7c+NyYXB+gOgdxVoFrIOze1tC/w6b0VGb0KZ
         tv2g==
X-Gm-Message-State: AOJu0YzAwctl+cvE09ovS+Zwa8w7FW9TDnGAl19+eBApCp6Bp6Q+loWP
	tKAsQDfyOXkksikYMEg/dg==
X-Google-Smtp-Source: AGHT+IEaB8n505Hu712q4IY6O7KQDxychWyTNOV58H89VBCZFr9I2EC1PD5VP1sd2CT4pNHS5AyMkw==
X-Received: by 2002:a4a:dcca:0:b0:583:fb9c:6fe4 with SMTP id h10-20020a4adcca000000b00583fb9c6fe4mr10046399oou.1.1698672207050;
        Mon, 30 Oct 2023 06:23:27 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y199-20020a4a45d0000000b00581d6ea29d1sm1805586ooa.4.2023.10.30.06.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 06:23:26 -0700 (PDT)
Received: (nullmailer pid 732542 invoked by uid 1000);
	Mon, 30 Oct 2023 13:22:16 -0000
Date: Mon, 30 Oct 2023 08:22:16 -0500
From: Rob Herring <robh@kernel.org>
To: Elad Nachman <enachman@marvell.com>
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andrew@lunn.ch, gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com, pali@kernel.org, mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, cyuval@marvell.com
Subject: Re: [PATCH v4 2/3] dt-bindings: arm64: dts: add dt-bindings for
 Marvell COM Express boards
Message-ID: <20231030132216.GA726350-robh@kernel.org>
References: <20231029174814.559583-1-enachman@marvell.com>
 <20231029174814.559583-3-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231029174814.559583-3-enachman@marvell.com>

On Sun, Oct 29, 2023 at 07:48:13PM +0200, Elad Nachman wrote:
> From: Elad Nachman <enachman@marvell.com>

Drop 'dts:' from the subject. This is not a .dts file.

Also drop the 2nd 'dt-bindings'. Subject line space is precious.

> 
> Add dt bindings for:
> CN9130 COM Express CPU module
> CN9131 COM Express CPU module
> AC5X RD COM Express Type 7 carrier board.
> AC5X RD COM Express board with a CN9131 COM Express Type 7 CPU module.
> 
> Signed-off-by: Elad Nachman <enachman@marvell.com>
> ---
>  .../bindings/arm/marvell/armada-7k-8k.yaml        | 15 +++++++++++++++
>  .../bindings/arm/marvell/marvell,ac5.yaml         | 14 ++++++++++++++
>  2 files changed, 29 insertions(+)

