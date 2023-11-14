Return-Path: <devicetree+bounces-15724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EBA7EB7A7
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 21:19:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65A1D1C204DA
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 20:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C592735F01;
	Tue, 14 Nov 2023 20:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AA826AD1
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 20:19:26 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C5BDDD
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 12:19:25 -0800 (PST)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-589d412e8aeso3440947eaf.3
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 12:19:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699993165; x=1700597965;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mG+7l7mHUmw8pdnlu+VcIjeBv37voeA0pzIP1rekuXA=;
        b=k96lJnqPr1fkCAeA2KHvL22g37z0kUDZj6L9kh6ef5VY4PYZHn1XmihQVNZNf/VNhU
         JAeQvs1KTm9h3NVVHW2bPmXP6oOCssfabA8apXqpwxWwHnNbH/6eclgAIgV2fG5DcPAF
         V3TCbZXcOi4w1Bu6H8GENsly4Dr2g4Dl68OfnD8kHx1IIx43xFhHPP5eKfcFA4sE4jtG
         luqWbTw77kIF1BkfjWFNLujFB+FOueWuKfvEK22V77uODgenpkAG3JJOFquyR50FK1Ot
         3L6xIgAD9KzLTMdZ7G435t5DWiHdftYTxZgsuQI9/2m+i+RVvcKa/JU1kQZK44fYrOBi
         AJ/w==
X-Gm-Message-State: AOJu0Yykek1nEYosfTS+ldvJ6rivNL8aMyqbI6wgZI5E/0YUlyWNBb2w
	FAfyt/nXhU2+OQ4EfzMiqg==
X-Google-Smtp-Source: AGHT+IEbTnLwjD3SrFB714m+pl32Ztv4/ScyQbSOvNqzmsMWyFsBxTblETw4oNcGAcAwjbPJi8EgTQ==
X-Received: by 2002:a4a:d2c1:0:b0:57b:6451:8c64 with SMTP id j1-20020a4ad2c1000000b0057b64518c64mr10761488oos.9.1699993164740;
        Tue, 14 Nov 2023 12:19:24 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g4-20020a4a5b04000000b0058a01e75636sm393253oob.14.2023.11.14.12.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 12:19:24 -0800 (PST)
Received: (nullmailer pid 451444 invoked by uid 1000);
	Tue, 14 Nov 2023 20:19:23 -0000
Date: Tue, 14 Nov 2023 14:19:23 -0600
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, Fabio Estevam <festevam@denx.de>, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2] dt-bindings: power: fsl,scu-pd: Document imx8dl
Message-ID: <169999270212.442141.7790135173678966737.robh@kernel.org>
References: <20231113184230.14413-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231113184230.14413-1-festevam@gmail.com>


On Mon, 13 Nov 2023 15:42:30 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> imx8dxl also contains the SCU PD block.
> 
> Add an entry for 'fsl,imx8dl-scu-pd'.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> Changes since v1:
> - Sent as a standalone patch.
> - Collected Conor's Ack.
> 
>  Documentation/devicetree/bindings/power/fsl,scu-pd.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


