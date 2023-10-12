Return-Path: <devicetree+bounces-8262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 063187C7600
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:36:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B177E280AB1
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 18:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D770928E21;
	Thu, 12 Oct 2023 18:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93CDE3A277
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 18:36:16 +0000 (UTC)
Received: from connect.vanmierlo.com (fieber.vanmierlo.com [84.243.197.177])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09360D7;
	Thu, 12 Oct 2023 11:36:11 -0700 (PDT)
X-Footer: dmFubWllcmxvLmNvbQ==
Received: from roundcube.vanmierlo.com ([192.168.37.37])
	(authenticated user m.brock@vanmierlo.com)
	by connect.vanmierlo.com (Kerio Connect 9.4.2) with ESMTPA;
	Thu, 12 Oct 2023 20:35:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Thu, 12 Oct 2023 20:35:59 +0200
From: m.brock@vanmierlo.com
To: Manikanta Guntupalli <manikanta.guntupalli@amd.com>
Cc: git@amd.com, michal.simek@amd.com, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jirislaby@kernel.org,
 linux-arm-kernel@lists.infradead.org, radhey.shyam.pandey@amd.com,
 srinivas.goud@amd.com, shubhrajyoti.datta@amd.com, manion05gk@gmail.com
Subject: Re: [PATCH V2 1/2] dt-bindings: Add optional gpio property to uartps
 node to support rs485
In-Reply-To: <20231011145602.3619616-2-manikanta.guntupalli@amd.com>
References: <20231011145602.3619616-1-manikanta.guntupalli@amd.com>
 <20231011145602.3619616-2-manikanta.guntupalli@amd.com>
Message-ID: <c4d6ec9a13807866b7dbc7cbed478494@vanmierlo.com>
X-Sender: m.brock@vanmierlo.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Manikanta Guntupalli wrote on 2023-10-11 16:56:
> Add optional gpio property to uartps node and reference to rs485.yaml
> 
> On Xilinx/AMD Kria SOM KD240 board rs485 connects via TI ISOW1432
> Transceiver device, where one GPIO is used for driving DE/RE signals.
> With rs485 half duplex configuration, DE and RE shorts to each other,

s/shorts/are connected

> and at a time, any node acts as either a driver or a receiver.
> 
> Here,
> DE - Driver enable. If pin is floating, driver is disabled.
> RE - Receiver enable. If pin is floating, receiver buffer is disabled.

Please use DE and /RE to indicate DE is active high and /RE is active 
low.

> xlnx,phy-ctrl-gpios is optional property, because it is not required
> for uart console node.

How about introducing an rs485 generic gpios property instead of xlnx
private one? See also rs485-term-gpios and rs485-rx-during-tx-gpios.

Also note that every kernel driver expects to use RTS for this purpose.
So why not give this driver the option to choose a gpio instead of its
native RTS? And from there on use the rts route?
What if someone wants to use normal (non-rs485) RTS on a GPIO instead
of the native pin?

@Rob Herring
I am curious to know how the rs485 maintainers look at this.

Maarten


