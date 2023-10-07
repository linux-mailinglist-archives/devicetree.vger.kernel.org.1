Return-Path: <devicetree+bounces-6655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC3A7BC563
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 09:07:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AF3A282218
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 07:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDEBB882F;
	Sat,  7 Oct 2023 07:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4253579FA;
	Sat,  7 Oct 2023 07:06:54 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 054EDC2;
	Sat,  7 Oct 2023 00:06:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 5E345809E;
	Sat,  7 Oct 2023 07:06:53 +0000 (UTC)
Date: Sat, 7 Oct 2023 10:06:52 +0300
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-omap@vger.kernel.org, aford@beaconembedded.com,
	=?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH 2/2] arm: dts: am3517: Configure ethernet alias
Message-ID: <20231007070652.GU34982@atomide.com>
References: <20230906095143.99806-1-aford173@gmail.com>
 <20230906095143.99806-2-aford173@gmail.com>
 <CAHCN7x+w-W8FPqSmM+SSVUAshjM4gRQrnYMj1h=GrzouO4EiDA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHCN7x+w-W8FPqSmM+SSVUAshjM4gRQrnYMj1h=GrzouO4EiDA@mail.gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

* Adam Ford <aford173@gmail.com> [230928 02:29]:
> On Wed, Sep 6, 2023 at 4:52 AM Adam Ford <aford173@gmail.com> wrote:
> >
> > The AM3517 has one ethernet controller called davinci_emac.
> > Configuring the alias allows the MAC address to be passed
> > from the bootloader to Linux.
> 
> Gentle nudge on this series

Picking the dts change into omap-for-v6.7/dt thanks.

Regards,

Tony

