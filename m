Return-Path: <devicetree+bounces-8977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C6E7CAE44
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 17:54:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B642328124C
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F09132E632;
	Mon, 16 Oct 2023 15:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2335728E24
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 15:54:33 +0000 (UTC)
Received: from 1.mo581.mail-out.ovh.net (1.mo581.mail-out.ovh.net [178.33.45.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1A27F3
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 08:54:31 -0700 (PDT)
Received: from director10.ghost.mail-out.ovh.net (unknown [10.109.146.106])
	by mo581.mail-out.ovh.net (Postfix) with ESMTP id 7540626F6B
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 15:36:25 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-2pxbl (unknown [10.109.138.60])
	by director10.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 021B41FDEC;
	Mon, 16 Oct 2023 15:36:24 +0000 (UTC)
Received: from RCM-web6.webmail.mail.ovh.net ([151.80.29.20])
	by ghost-submission-6684bf9d7b-2pxbl with ESMTPSA
	id Jo7zOHhYLWVZIgEAU26GIw
	(envelope-from <rafal@milecki.pl>); Mon, 16 Oct 2023 15:36:24 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 16 Oct 2023 17:36:24 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Andrew Lunn <andrew@lunn.ch>
Cc: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, Florian Fainelli
 <f.fainelli@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH 2/2] ARM: dts: BCM5301X: Set fixed-link for extra Netgear
 R8000 CPU ports
In-Reply-To: <627b78cd-7c9f-4da0-b4be-54891041580e@lunn.ch>
References: <20231013103314.10306-1-zajec5@gmail.com>
 <20231013103314.10306-2-zajec5@gmail.com>
 <627b78cd-7c9f-4da0-b4be-54891041580e@lunn.ch>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <1a6df2259fd9c3885a4a575f367a4f1a@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 31.11.218.106
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 6375126748323359578
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrjedtgdekkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvfevufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjedvlefguedthfefleehgeeftdeludeluedvgfeffeevhfevtdehteejteefheegnecukfhppeduvdejrddtrddtrddupdefuddruddurddvudekrddutdeipdduhedurdektddrvdelrddvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehrrghfrghlsehmihhlvggtkhhirdhplheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkedupdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 2023-10-14 18:50, Andrew Lunn wrote:
> On Fri, Oct 13, 2023 at 12:33:14PM +0200, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>> 
>> While switch ports 5 and 7 are disabled (vendor designed port 8 to be
>> used for CPU traffic) they could be used strictly technically. For 
>> some
>> reason however both those ports need forcing link to be usable.
> 
> This explanation is not making much sense to me.
> 
> I assume this board does not have an RJ45 for these two ports? But
> does it have a header so you can access the MII interface?

This PATCH as it is requires a basic familiarity with Northstar platform
or checking bcm-ns.dtsi.

All Northstar (BCM5301X) devices have 3 Ethernet interfaces. 99% of them
have:
1. gmac0 connected to port 5
2. gmac1 connected to port 7
3. gmac2 connected to port 8
(it's described in bcm-ns.dtsi).


Some vendors decide to use gmac0 and switch port 5. They fill NVRAM with
MAC for gmac0.

Some vendors decide to use gmac2 & port 8. They set MAC for gmac2.


Netgear decided to use gmac2 & port 8 for R8000. They fill NVRAM with
MAC for gmac2.

If you however insist on using gmac0 you could do that. That just
requires setting up gmac0 with a custom/random MAC and forcing link for
switch ports as described in this PATCH.


Does it make sense now? Should I reword this commit somehow?

-- 
Rafał Miłecki

