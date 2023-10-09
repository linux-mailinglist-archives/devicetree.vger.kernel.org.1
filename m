Return-Path: <devicetree+bounces-6860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8877BD48E
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 09:42:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD8601C20864
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 07:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA51311734;
	Mon,  9 Oct 2023 07:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc header.b="plBE+l1S"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91FE35CB0
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 07:42:49 +0000 (UTC)
Received: from mail.3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94D278F;
	Mon,  9 Oct 2023 00:42:47 -0700 (PDT)
Received: from 3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.3ffe.de (Postfix) with ESMTPSA id 2C8965E6;
	Mon,  9 Oct 2023 09:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2022082101;
	t=1696837363;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pGioi27aK6ID8W1dtEts7WwFs/dSaiA98SeyT2Qjaf0=;
	b=plBE+l1SqireVV+LvcJ6xZ2dyfr56Ge5INtm3ys42XO7+rFrVw3qfnmUFlA7CDNaMGnxJS
	c7XsvK19X0wyortrbW8mXSTZOpF9IEDZlYDxpYGOCQYqiarITix/JdQPOUx6fVLLF21hgW
	2cfyVcUbRSmm/8e/VQPov+sAqhYmEQ8FouYA1t7VLLTJtn97NLin/vnjeykuXAUPmetNWE
	KPzQ/BOGJ5pmSC4f0t8DZ0pntmLVSnuxR+fsZIhTuRodWEb63/JDDqL4+JhDREI33p6cYc
	BYZ1Co4dc1ByV4olEKUJLVWbFjtWA8MooWXdYVHMrppglLQRKWWJix6R9cz9JA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 09 Oct 2023 09:42:43 +0200
From: Michael Walle <michael@walle.cc>
To: Dumitru Ceclan <mitrutzceclan@gmail.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, andy@kernel.org,
 linux-gpio@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>, Jonathan
 Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd
 Bergmann <arnd@arndb.de>, ChiaEn Wu <chiaen_wu@richtek.com>, Niklas Schnelle
 <schnelle@linux.ibm.com>, =?UTF-8?Q?Leonard_G=C3=B6hrs?=
 <l.goehrs@pengutronix.de>, Mike Looijmans <mike.looijmans@topic.nl>, Haibo
 Chen <haibo.chen@nxp.com>, Hugo Villeneuve <hvilleneuve@dimonoff.com>,
 Ceclan Dumitru <dumitru.ceclan@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] iio: adc: ad7173: add AD7173 driver
In-Reply-To: <20231005105921.460657-2-mitrutzceclan@gmail.com>
References: <20231005105921.460657-1-mitrutzceclan@gmail.com>
 <20231005105921.460657-2-mitrutzceclan@gmail.com>
Message-ID: <48a5e509c52a0264d30c9478b047a50c@walle.cc>
X-Sender: michael@walle.cc
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

> The AD7173 family offer a complete integrated Sigma-Delta ADC solution
> which can be used in high precision, low noise single channel
> applications or higher speed multiplexed applications. The Sigma-Delta
> ADC is intended primarily for measurement of signals close to DC but 
> also
> delivers outstanding performance with input bandwidths out to ~10kHz.
> 
> Signed-off-by: Dumitru Ceclan <mitrutzceclan@gmail.com>

Reviewed-by: Michael Walle <michael@walle.cc> # for gpio-regmap

-michael

