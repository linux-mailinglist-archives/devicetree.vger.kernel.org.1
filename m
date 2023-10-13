Return-Path: <devicetree+bounces-8462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 643E47C8437
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:17:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D85F1C20A61
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F91713AC2;
	Fri, 13 Oct 2023 11:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D587125AF
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:17:48 +0000 (UTC)
Received: from connect.vanmierlo.com (fieber.vanmierlo.com [84.243.197.177])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D06ADB7;
	Fri, 13 Oct 2023 04:17:45 -0700 (PDT)
X-Footer: dmFubWllcmxvLmNvbQ==
Received: from roundcube.vanmierlo.com ([192.168.37.37])
	(authenticated user m.brock@vanmierlo.com)
	by connect.vanmierlo.com (Kerio Connect 9.4.2) with ESMTPA;
	Fri, 13 Oct 2023 13:17:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Fri, 13 Oct 2023 13:17:37 +0200
From: m.brock@vanmierlo.com
To: Rob Herring <robh@kernel.org>
Cc: Manikanta Guntupalli <manikanta.guntupalli@amd.com>, git@amd.com,
 michal.simek@amd.com, gregkh@linuxfoundation.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jirislaby@kernel.org,
 linux-arm-kernel@lists.infradead.org, radhey.shyam.pandey@amd.com,
 srinivas.goud@amd.com, shubhrajyoti.datta@amd.com, manion05gk@gmail.com
Subject: Re: [PATCH V2 1/2] dt-bindings: Add optional gpio property to uartps
 node to support rs485
In-Reply-To: <20231012205158.GA1714449-robh@kernel.org>
References: <20231011145602.3619616-1-manikanta.guntupalli@amd.com>
 <20231011145602.3619616-2-manikanta.guntupalli@amd.com>
 <c4d6ec9a13807866b7dbc7cbed478494@vanmierlo.com>
 <20231012205158.GA1714449-robh@kernel.org>
Message-ID: <42864886e6d5cf11b6ab817f57008611@vanmierlo.com>
X-Sender: m.brock@vanmierlo.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Rob Herring wrote on 2023-10-12 22:51:
>> How about introducing an rs485 generic gpios property instead of xlnx
>> private one? See also rs485-term-gpios and rs485-rx-during-tx-gpios.
>> 
>> Also note that every kernel driver expects to use RTS for this 
>> purpose.
>> So why not give this driver the option to choose a gpio instead of its
>> native RTS? And from there on use the rts route?
>> What if someone wants to use normal (non-rs485) RTS on a GPIO instead
>> of the native pin?
>> 
>> @Rob Herring
>> I am curious to know how the rs485 maintainers look at this.
> 
> Ask them.

Funny, your name is the only one listed under the maintainers in
Documentation/devicetree/bindings/serial/rs485.yaml

And there is no mention of (RS-)485 in MAINTAINERS.

> We already have 'rts-gpios'. If that's what's always used, then perhaps
> we should use that in the RS485 case too?
> 
> Rob

Sounds like a good idea.

Maarten


