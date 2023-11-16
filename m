Return-Path: <devicetree+bounces-16392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCF47EE785
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 20:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9714C2810B4
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 19:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0C2E3C481;
	Thu, 16 Nov 2023 19:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDB331A8;
	Thu, 16 Nov 2023 11:32:27 -0800 (PST)
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3b6d88dbaa3so721728b6e.1;
        Thu, 16 Nov 2023 11:32:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700163147; x=1700767947;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cf+4dZZDuZGo7AnzFtsjVfhJVrgljwo52a4BWevdDuA=;
        b=GFyn/0F432WVNdIkXHU/sgnxuwlBSR1zWGMprLC7vgyuno5/PYO0TE8AT9LgXbMCR/
         KLaf9b9QgZQeR/iKg6NM1vydtfRLkeW+3/IpWF31aIlNO5YvzNQUkCrVd6HVnOmgsufe
         jIVvrEeA+69BhL/FUk9G9LvICKiRuh5q+Kr+xU8t9MmR7pvXd6nLxkdzg5mEWw7YODdN
         qj4gRK8TThng1vA8fKPSx5toQ/wUt04oFKXO9RAIZ6YDVjFHlIhVoFV6rl9Q6KI57zg+
         mtKnx2rZTyjL6JgApa22+KKMHQpCZ5O8TcAhrhH0HdFSE0c+N5YlGJli5HPAIk2+6x0f
         KzJg==
X-Gm-Message-State: AOJu0Yz/iHPjP6SvJr4IMgA6J9UanbwcmVOLDnMgvbDDwtpVdi+A3gU5
	mSoVEImIg4haGsrgTrcFLQ==
X-Google-Smtp-Source: AGHT+IGoHhHekj7XRAdJdS/eRokVcFsihbXxRz8CbyoM8f7I1qH4lzAXhkKZ3wH0b6xVEv8WkbwDTA==
X-Received: by 2002:a05:6808:1482:b0:3b6:cae4:63b6 with SMTP id e2-20020a056808148200b003b6cae463b6mr20839687oiw.44.1700163147055;
        Thu, 16 Nov 2023 11:32:27 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id fb14-20020a0568083a8e00b003b2ef9778absm6463oib.46.2023.11.16.11.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 11:32:26 -0800 (PST)
Received: (nullmailer pid 3081501 invoked by uid 1000);
	Thu, 16 Nov 2023 19:32:24 -0000
Date: Thu, 16 Nov 2023 13:32:24 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Davis <afd@ti.com>
Cc: linux-kernel@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: spi: Convert spi-davinci.txt to YAML
Message-ID: <170016314389.3081362.3941133682118537803.robh@kernel.org>
References: <20231114212911.429951-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114212911.429951-1-afd@ti.com>


On Tue, 14 Nov 2023 15:29:08 -0600, Andrew Davis wrote:
> Convert spi-davinci.txt to ti,dm6441-spi.yaml.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
> 
> Changes for v2:
>  - Fix typo s/dm6446/dm6441
> 
>  .../devicetree/bindings/spi/spi-davinci.txt   | 100 ------------------
>  .../bindings/spi/ti,dm6441-spi.yaml           |  76 +++++++++++++
>  2 files changed, 76 insertions(+), 100 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-davinci.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/ti,dm6441-spi.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


