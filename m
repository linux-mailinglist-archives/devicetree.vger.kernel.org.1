Return-Path: <devicetree+bounces-2101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B4F7A9A2C
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:36:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44FCE1C20DDE
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C004415A7;
	Thu, 21 Sep 2023 17:48:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F3C1170D
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:48:52 +0000 (UTC)
Received: from mail.3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7EB66979A;
	Thu, 21 Sep 2023 10:30:47 -0700 (PDT)
Received: from 3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.3ffe.de (Postfix) with ESMTPSA id D1E68EB7;
	Thu, 21 Sep 2023 18:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2022082101;
	t=1695312101;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x+jXaho0ZIi9BmaRxov9GWSa018Ii/NEh3JmcH5ERxw=;
	b=qVyNtZ5S6BtOrh3RjVNbJiLuOOkn+zfCRAkBZlicq2gMlcAB0BFZZS5+HRIUy8ERhSunHl
	yq+Q8qXwUYyE+gU5vWBjpDItpp14+6Kw2u7OKKeHd1b4QY9VA2cLr/ftGySxI376w0C0JS
	GO57lYZJjfW45ZgV0QrADEcowxA2r8DV9bKICzSM/vr6mVWSkadgnqWDR0VGFZXEVVlyqp
	1qBgcZTEmUrd4Dziqxd7QBj9PI3Ms9xa60BvH40HLlVh/TJEgLjF9nIYZOiWf71kXmDQpK
	iLv79GMv0NUL9Q2zIMyMO4ZGPGd52Fxa1qqNJjV+Lr5c5/cRg9iETzGyQMT/1A==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Thu, 21 Sep 2023 18:01:41 +0200
From: Michael Walle <michael@walle.cc>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, Pratyush Yadav
 <pratyush@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Richard
 Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: jedec,spi-nor: Document support for
 more MT25QU parts
In-Reply-To: <CAMuHMdW_-0f8DOmEzYb28XABqU3oFL4KXf9M-qKVyyrE_Lo+jQ@mail.gmail.com>
References: <363186079b4269891073f620e3e2353cf7d2559a.1669988238.git.geert+renesas@glider.be>
 <1503a3857107e3a4f34e0c7fb5dada39@walle.cc>
 <CAMuHMdXN+HJb=zGeG=3t=Pie9cVpnBLYuEb_qX6=oSxG8eTkAw@mail.gmail.com>
 <20221205163306.GB2012644-robh@kernel.org>
 <CAMuHMdUcrh26MNYuiqiC0_FMkeHtq1YnJrZKHEV_WQm5Dgzoaw@mail.gmail.com>
 <ee03d150-51cf-4e12-ae2c-9475a192fb6c@linaro.org>
 <CAMuHMdW_-0f8DOmEzYb28XABqU3oFL4KXf9M-qKVyyrE_Lo+jQ@mail.gmail.com>
Message-ID: <d4d998cff934328f58cec767f93a59b5@walle.cc>
X-Sender: michael@walle.cc
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Geert,

>> We won't break compatibility with older DTBs if we use a list of
>> compatibles. First the vendor specific one which will use some quirks,
>> and if that's not available, have as second the generic jedec,spi-nor 
>> to
>> fallback to.
> 
> Sure, you should use a list.
> 
> But the current recommended practice is to not have a list,
> but just "jedec,spi-nor" (using a list with a new FLASH part name
> causes checkpatch and dtbs_check warnings). Hence if you follow that
> recommendation, you will run into compatibility issues with older DTBs
> when you discover the quirk later, and decide to add it to the list.

The SPI NOR flashes should be auto discoverable. Why do you need a
compatible string? Quirks can be added to the flash_info database.

Also note, that one reason *not* to add a particular flash compatible
is that they are usually interchangeable and OEMs do so. So a where
today a board might have a macronix flash, tomorrow that board might
have a gigadevice one for example.

-michael

