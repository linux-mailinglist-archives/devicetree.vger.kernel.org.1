Return-Path: <devicetree+bounces-3309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E11E07AE401
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 05:16:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 888641F25218
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 03:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC068111B;
	Tue, 26 Sep 2023 03:16:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2585D7F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:16:03 +0000 (UTC)
Received: from abb.hmeau.com (abb.hmeau.com [144.6.53.87])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E6F0A3;
	Mon, 25 Sep 2023 20:16:00 -0700 (PDT)
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.94.2 #2 (Debian))
	id 1qkyXf-000cC3-99; Tue, 26 Sep 2023 11:15:20 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Tue, 26 Sep 2023 11:15:22 +0800
Date: Tue, 26 Sep 2023 11:15:22 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Alexey Romanov <avromanov@salutedevices.com>
Cc: "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
	"olivia@selenic.com" <olivia@selenic.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"conor@kernel.org" <conor@kernel.org>,
	"khilman@baylibre.com" <khilman@baylibre.com>,
	"jbrunet@baylibre.com" <jbrunet@baylibre.com>,
	"martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
	"f.fainelli@gmail.com" <f.fainelli@gmail.com>,
	"hkallweit1@gmail.com" <hkallweit1@gmail.com>,
	"lists@kaiser.cx" <lists@kaiser.cx>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
	kernel <kernel@sberdevices.ru>
Subject: Re: [PATCH v3 1/3] drivers: rng: meson: add support for S4
Message-ID: <ZRJMynUI0W/jqeYt@gondor.apana.org.au>
References: <20230911101129.10604-1-avromanov@salutedevices.com>
 <20230911101129.10604-2-avromanov@salutedevices.com>
 <ZQp7Rf3qzoN6c2Le@gondor.apana.org.au>
 <20230922081514.p7patdvkp4mujk6k@cab-wsm-0029881.sigma.sbrf.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922081514.p7patdvkp4mujk6k@cab-wsm-0029881.sigma.sbrf.ru>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 22, 2023 at 08:15:27AM +0000, Alexey Romanov wrote:
>
> Are you suggesting remove meson_rng_priv and putting a pointer to read
> function in meson_rng_data?

I just thought it was weird that you assign meson_rng_data->priv
and then never use it anywhere else in the driver.  Did I miss
something?

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

