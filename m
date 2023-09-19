Return-Path: <devicetree+bounces-1323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 015227A5EDE
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 11:56:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFAB8281F1C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B7992E631;
	Tue, 19 Sep 2023 09:56:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C60F110B
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 09:56:26 +0000 (UTC)
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57EDB1B9
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 02:56:07 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:9622:9b2f:73fd:43ad])
	by xavier.telenet-ops.be with bizsmtp
	id nlw42A00F4u9dj801lw4Hv; Tue, 19 Sep 2023 11:56:04 +0200
Received: from geert (helo=localhost)
	by ramsan.of.borg with local-esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qiXSe-003zJV-B3;
	Tue, 19 Sep 2023 11:56:04 +0200
Date: Tue, 19 Sep 2023 11:56:04 +0200 (CEST)
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
cc: linux-renesas-soc@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
    Rob Herring <robh+dt@kernel.org>, 
    Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
    Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: gnss: u-blox: add "reset-gpios"
 binding
In-Reply-To: <20230816173116.1176-3-wsa+renesas@sang-engineering.com>
Message-ID: <77b3fdc5-f3af-4b17-a66-805d11da075@linux-m68k.org>
References: <20230816173116.1176-1-wsa+renesas@sang-engineering.com> <20230816173116.1176-3-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 16 Aug 2023, Wolfram Sang wrote:
> Needed to enable this chip on a Renesas KingFisher board. Description
> copied over from the Mediatek driver which already supports it.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>
> Changes since v1:
> * dropped obvious description (Thanks, Geert!)
> * added missing include (Thanks, Krzysztof and Rob!)

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

 						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
 							    -- Linus Torvalds

