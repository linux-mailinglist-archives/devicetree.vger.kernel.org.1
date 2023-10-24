Return-Path: <devicetree+bounces-11421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A90D7D5B8F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:35:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E5FC2B20FC4
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 19:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A77AE3CD19;
	Tue, 24 Oct 2023 19:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5EA3CD0D
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 19:35:23 +0000 (UTC)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCD5BC4;
	Tue, 24 Oct 2023 12:35:22 -0700 (PDT)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-57f0f81b2aeso2749345eaf.3;
        Tue, 24 Oct 2023 12:35:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698176122; x=1698780922;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p9ar8bhIueC5EydnDePnLjCuAwDCm56UQXxamDo5GgY=;
        b=TCFcU03PPtIQhHvGwvJsJIOqUayxohPvcbw0QhAH+keQqIdG52rs7E/k4Ol6hUvlYA
         H1ZaCqu6PjgH495/PyXSWs7HKMgtNSwDThz9oRjlsAOn8TznnJw1voKqBeUi495cr+kN
         +lS3jhOy0YHLTK2Nt2CfaxGirWCiGpV6G49eVppAF4uvWdvg0bB48m7MAkork1LJZN5q
         fOEW94sWA1VEl+qWXZGysEWx9xob2Gdzr1EOx57q9FuVY7FiZkoh/zPjyrm0Wls5r85z
         rwAR5M5BsR2qd/XijJiH8197sjBxJ9bLc5KZUV2RPAhzo4IjkkhzQpZF2Xst0x3ibHBa
         OENA==
X-Gm-Message-State: AOJu0Yxt0jgM8gr2+lnHxVDqz4kvJn/lZHGYfd/V0bdTI/6ZQDhUCDA1
	sdylBiPMZFuxGoQjfwgGVg==
X-Google-Smtp-Source: AGHT+IErGorSYkZZFwTnmlJa0hWA/l7r/75pzydg4QiS1LHnTWY+BN+UvK5QJKPJ7zg/ixNZFuWCgA==
X-Received: by 2002:a4a:b789:0:b0:581:df34:15c with SMTP id a9-20020a4ab789000000b00581df34015cmr12117696oop.5.1698176122031;
        Tue, 24 Oct 2023 12:35:22 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r24-20020a05683001d800b006ce1f9c62a1sm1927297ota.39.2023.10.24.12.35.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 12:35:21 -0700 (PDT)
Received: (nullmailer pid 433054 invoked by uid 1000);
	Tue, 24 Oct 2023 19:35:20 -0000
Date: Tue, 24 Oct 2023 14:35:20 -0500
From: Rob Herring <robh@kernel.org>
To: Alvin =?utf-8?Q?=C5=A0ipraga?= <alvin@pqrs.dk>
Cc: linux-clk@vger.kernel.org, Sergej Sawazki <sergej@taudac.com>, Jacob Siverskog <jacob@teenage.engineering>, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Alvin =?utf-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rabeeh Khoury <rabeeh@solid-run.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 1/3] dt-bindings: clock: si5351: convert to yaml
Message-ID: <169817611957.433015.13808354686090868209.robh@kernel.org>
References: <20231020-alvin-clk-si5351-no-pll-reset-v5-0-f0c1ba537f88@bang-olufsen.dk>
 <20231020-alvin-clk-si5351-no-pll-reset-v5-1-f0c1ba537f88@bang-olufsen.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231020-alvin-clk-si5351-no-pll-reset-v5-1-f0c1ba537f88@bang-olufsen.dk>


On Fri, 20 Oct 2023 13:34:14 +0200, Alvin Šipraga wrote:
> From: Alvin Šipraga <alsi@bang-olufsen.dk>
> 
> The following additional properties are described:
> 
>   - clock-names
>   - clock-frequency of the clkout child nodes
> 
> In order to suppress warnings from the DT schema validator, the clkout
> child nodes are prescribed names clkout@[0-7] rather than clkout[0-7].
> 
> The example is refined as follows:
> 
>   - correct the usage of property pll-master -> silabs,pll-master
>   - give an example of how the silabs,pll-reset property can be used
> 
> I made myself maintainer of the file as I cannot presume that anybody
> else wants the responsibility.
> 
> Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> Cc: Rabeeh Khoury <rabeeh@solid-run.com>
> Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
> ---
>  .../devicetree/bindings/clock/silabs,si5351.txt    | 126 -----------
>  .../devicetree/bindings/clock/silabs,si5351.yaml   | 241 +++++++++++++++++++++
>  2 files changed, 241 insertions(+), 126 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


