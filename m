Return-Path: <devicetree+bounces-2383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DA27AAB04
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4BD9B2824C0
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 07:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B24871A700;
	Fri, 22 Sep 2023 07:59:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F2719441
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 07:59:15 +0000 (UTC)
Received: from mail.3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CB24F7
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 00:59:14 -0700 (PDT)
Received: from 3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.3ffe.de (Postfix) with ESMTPSA id 06FF3FF;
	Fri, 22 Sep 2023 09:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2022082101;
	t=1695369549;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i5aWRlQvLj0Ai3NtLAWY4Y9rChkOr2OHujz5YgcNF/M=;
	b=e229GHSIJdvBvaGFssBf4z0racFX5PLrLsrl9SE4SkZiGJgVf0Ypekk9GucFxD9ZvgIZHk
	QysarpYZpevLLQL9Lc4U9gm73pxE+x+ZDAGMdVXMoGoR3JIlz9ezjyBQeZZ/tLX5LkSnah
	CW07bcLt5sH7Zz+GJmvJhnE2d4Y0IUMPJgydtMxgY6RdxHy/h5YePTRT+6FsNWYY/hRXp+
	IWn/PhZ0NPywFRI4jx4s7pI7ScrIXDW+39Jq2PngupXc6VqJbNq8Yg6AxRp8rxDa8Cp021
	YZleF1G8LvBG7R36JkObrX47yh/VenRHQTk/Rnkm5gmiPMrVHshTGa8yfYB5vw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Fri, 22 Sep 2023 09:59:08 +0200
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
In-Reply-To: <CAMuHMdUKxJDPs3Ow8E-g2bLr7c7jREf5gSqWZ+o5aWbGj6uO=w@mail.gmail.com>
References: <363186079b4269891073f620e3e2353cf7d2559a.1669988238.git.geert+renesas@glider.be>
 <1503a3857107e3a4f34e0c7fb5dada39@walle.cc>
 <CAMuHMdXN+HJb=zGeG=3t=Pie9cVpnBLYuEb_qX6=oSxG8eTkAw@mail.gmail.com>
 <20221205163306.GB2012644-robh@kernel.org>
 <CAMuHMdUcrh26MNYuiqiC0_FMkeHtq1YnJrZKHEV_WQm5Dgzoaw@mail.gmail.com>
 <ee03d150-51cf-4e12-ae2c-9475a192fb6c@linaro.org>
 <CAMuHMdW_-0f8DOmEzYb28XABqU3oFL4KXf9M-qKVyyrE_Lo+jQ@mail.gmail.com>
 <d4d998cff934328f58cec767f93a59b5@walle.cc>
 <CAMuHMdUK=HvvjeTDefzX9sbY-vaRFVixcSvKVqDPgBpGVt2dQA@mail.gmail.com>
 <CAMuHMdUKxJDPs3Ow8E-g2bLr7c7jREf5gSqWZ+o5aWbGj6uO=w@mail.gmail.com>
Message-ID: <f4751046b26a86b18aa7e446a4da81e8@walle.cc>
X-Sender: michael@walle.cc
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Am 2023-09-22 09:10, schrieb Geert Uytterhoeven:
> On Thu, Sep 21, 2023 at 7:01 PM Geert Uytterhoeven 
> <geert@linux-m68k.org> wrote:
>> On Thu, Sep 21, 2023 at 6:01 PM Michael Walle <michael@walle.cc> 
>> wrote:
>> > >> We won't break compatibility with older DTBs if we use a list of
>> > >> compatibles. First the vendor specific one which will use some quirks,
>> > >> and if that's not available, have as second the generic jedec,spi-nor
>> > >> to
>> > >> fallback to.
>> > >
>> > > Sure, you should use a list.
>> > >
>> > > But the current recommended practice is to not have a list,
>> > > but just "jedec,spi-nor" (using a list with a new FLASH part name
>> > > causes checkpatch and dtbs_check warnings). Hence if you follow that
>> > > recommendation, you will run into compatibility issues with older DTBs
>> > > when you discover the quirk later, and decide to add it to the list.
>> >
>> > The SPI NOR flashes should be auto discoverable. Why do you need a
>> > compatible string? Quirks can be added to the flash_info database.
>> 
>> This assumes you don't need the quirk before you can identify the 
>> part.
>> I'm not sure that is always the case.

Yes, but that seems a reasonable assumption.

> Reminder where this is apparently not the case:
> https://lore.kernel.org/r/OS0PR01MB5922A4F16DE8923373AA5DD886F7A@OS0PR01MB5922.jpnprd01.prod.outlook.com/

I think that one is still under discussion and there is something
strange going on there. In any case, the "read id" operation is done
with just single bit I/O, IOW, RDID should work. Unless there is a
hardware bug and the SPI controller (!) will hold the flash in reset
by pulling down IO3. I'd argue, that simply looking at the flash
compatible is the wrong approach here.

-michael

