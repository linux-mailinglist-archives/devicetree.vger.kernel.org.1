Return-Path: <devicetree+bounces-16372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A30F7EE672
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 19:11:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08FA0B20C6A
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 18:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA34134553;
	Thu, 16 Nov 2023 18:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AE5F19D
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 10:10:57 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6ce2ea3a944so658485a34.1
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 10:10:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700158257; x=1700763057;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ROY1Wqfp/3P8z63QFesI122B6/cpQHGSlZFfNCRsrOc=;
        b=janPz7l2g/Imck8Evd4MpoCoOOA6h2XruHEdbUo4vwOQfxD/oqnFgMZzJ+O9MFRjJC
         F9K1xI2wO0XMtYKnhTEMQ/DfUTlq5XpDVmHV4/4k2UfoOk9ZC/DKH/1JM4u8zQUAsqq/
         FtOHOOmOqiRVPAecRV0YabkV5w87B9lE7C5zIPMBsSFbxPNNXvAY1zh2R6JiiiKK5bf5
         7u5DAXUp9xXigsjaBjb8tJ5vn2wYcc5iXsQfeuNmV8gl32oJgywSSaywwG9+MAJ5QlPB
         t5mONT6tLyJ2Ryd8EUlwHmrbjO7mmS76FOq9+IAzvBvzMqXChxXR3WqBJtqTQt5YdoR3
         Febg==
X-Gm-Message-State: AOJu0Yyqz791TR5aZJEu7p472kNcriW4crbiImebFoFGyFtnTxi1W5yC
	W9ylHnnDMMBrrycPwJmBTA==
X-Google-Smtp-Source: AGHT+IGQVbSah4VLdiNniFKClh8C8runVoM6YISQHsmUtmoVK8BLwelOmP5bpgzP8A8L4hSFgDfB5Q==
X-Received: by 2002:a9d:6291:0:b0:6bb:1c30:6f3c with SMTP id x17-20020a9d6291000000b006bb1c306f3cmr8439558otk.0.1700158256818;
        Thu, 16 Nov 2023 10:10:56 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w29-20020a056830411d00b006c7c1868b05sm988406ott.50.2023.11.16.10.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 10:10:56 -0800 (PST)
Received: (nullmailer pid 2617753 invoked by uid 1000);
	Thu, 16 Nov 2023 18:10:54 -0000
Date: Thu, 16 Nov 2023 12:10:54 -0600
From: Rob Herring <robh@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jagan Teki <jagan@edgeble.ai>, Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 8/8] dt-bindings: arm: rockchip: Add Sonoff iHost
Message-ID: <170015825394.2617561.15272053355211067819.robh@kernel.org>
References: <20231113120705.1647498-1-tim@feathertop.org>
 <20231113120705.1647498-9-tim@feathertop.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231113120705.1647498-9-tim@feathertop.org>


On Mon, 13 Nov 2023 23:07:05 +1100, Tim Lunn wrote:
> Sonoff iHost is a smart home hub with built in radios for wifi/bt
> and Zigbee. It is based off the Rockchip RV1126 (or RV1109) SoC.
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> 
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


