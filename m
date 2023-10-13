Return-Path: <devicetree+bounces-8468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5B07C8477
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:35:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29C571C20E52
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74C5413AE7;
	Fri, 13 Oct 2023 11:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="blYKjJCG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F4713AC9
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:35:49 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 462A8BF;
	Fri, 13 Oct 2023 04:35:48 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id CE4BF86F01;
	Fri, 13 Oct 2023 13:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1697196944;
	bh=QiIrcfHNGfUkaFAZgS8FIEsiiuj4F1uz+05mkeqb3ag=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=blYKjJCGGCkYPmeWDOvi8i6Dtthk5oHIs9gtTB+LCXPkLGQYWALSDWNsL+//OogHT
	 9MDO8OjfpnDDO/6DRqreIdbWy9G/4b1NxyrF7AkbgQPXoJaP0p7dvoHiEAbWZDQCmv
	 UoKTSD82VyRzT8xPWVq7AkFeqyXfJqksDaEZWwlay4FPX/2B/1nBKuuQgSiFcRIIzV
	 SAX6nODu8rASN7Dh1ogHTziZZ2Q91eZt/smPGVaONgcjx2DCMsjL4ibRy8zLWoDEMt
	 L0Qo0CftZsw/RsQmmMnFZezIrGCPLYi6Cwl3zLU4sQtlkm7uqUcZewWxIkD9YEyNoR
	 ioRk+SFR4jpBA==
Message-ID: <e775ed74-7d9b-499f-b11d-871a6444b208@denx.de>
Date: Fri, 13 Oct 2023 13:35:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: at24: add ST M24C64-D Additional Write
 lockable page
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-i2c@vger.kernel.org
Cc: devicetree@vger.kernel.org
References: <20231013063008.2879314-1-alexander.stein@ew.tq-group.com>
Content-Language: en-US
In-Reply-To: <20231013063008.2879314-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/13/23 08:30, Alexander Stein wrote:
> The ST M24C64-D behaves as a regular M24C64, except for the -D variant
> which uses up another I2C address for Additional Write lockable page.
> This page is 32 Bytes long and can contain additional data. Document
> compatible string for it, so users can describe that page in DT. Note
> that users still have to describe the main M24C64 area separately as
> that is on separate I2C address from this page.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> This is a copy & paste of [1] for ST M24C64-D. I reused the same pattern and
> also used Marek's commit message.

It took me a while to realize this was s@32@64@ in the whole patch 
except for the 32 Byte page size (which is the same size in C32 and 
C64), verbatim.

Reviewed-by: Marek Vasut <marex@denx.de>

