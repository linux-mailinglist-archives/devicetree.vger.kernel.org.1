Return-Path: <devicetree+bounces-9802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1E77CE894
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:14:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 748821C2087D
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FAB91EB4B;
	Wed, 18 Oct 2023 20:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475421EB2C
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:14:08 +0000 (UTC)
X-Greylist: delayed 580 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 18 Oct 2023 13:14:06 PDT
Received: from 9.mo550.mail-out.ovh.net (9.mo550.mail-out.ovh.net [178.32.108.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FED99F
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:14:06 -0700 (PDT)
Received: from director6.ghost.mail-out.ovh.net (unknown [10.108.4.44])
	by mo550.mail-out.ovh.net (Postfix) with ESMTP id 8F09724544
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:04:24 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-r6gxb (unknown [10.110.208.112])
	by director6.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 85B671FD3B;
	Wed, 18 Oct 2023 20:04:23 +0000 (UTC)
Received: from RCM-web6.webmail.mail.ovh.net ([151.80.29.20])
	by ghost-submission-6684bf9d7b-r6gxb with ESMTPSA
	id QsS8F0c6MGXKAhcAwD4S8A
	(envelope-from <rafal@milecki.pl>); Wed, 18 Oct 2023 20:04:23 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Wed, 18 Oct 2023 22:04:23 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Andrew Lunn <andrew@lunn.ch>
Cc: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, Florian Fainelli
 <f.fainelli@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH 2/2] ARM: dts: BCM5301X: Set fixed-link for extra Netgear
 R8000 CPU ports
In-Reply-To: <f992f02b-1ec0-4588-98df-4141594e10ff@lunn.ch>
References: <20231013103314.10306-1-zajec5@gmail.com>
 <20231013103314.10306-2-zajec5@gmail.com>
 <627b78cd-7c9f-4da0-b4be-54891041580e@lunn.ch>
 <1a6df2259fd9c3885a4a575f367a4f1a@milecki.pl>
 <f992f02b-1ec0-4588-98df-4141594e10ff@lunn.ch>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <e91b2d1c390f4a45dc92a99a112361eb@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 31.11.218.106
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 4199606655325612890
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrjeeggddugedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvvefujghffgfkgihitgfgsehtkehjtddtreejnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeejvdelgfeutdfhfeelheegfedtleduleeuvdfgfeefvefhvedtheetjeetfeehgeenucfkphepuddvjedrtddrtddruddpfedurdduuddrvddukedruddtiedpudehuddrkedtrddvledrvddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeorhgrfhgrlhesmhhilhgvtghkihdrphhlqedpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehtddpmhhouggvpehsmhhtphhouhht

On 2023-10-16 17:45, Andrew Lunn wrote:
> On Mon, Oct 16, 2023 at 05:36:24PM +0200, Rafał Miłecki wrote:
>> On 2023-10-14 18:50, Andrew Lunn wrote:
>> > On Fri, Oct 13, 2023 at 12:33:14PM +0200, Rafał Miłecki wrote:
>> > > From: Rafał Miłecki <rafal@milecki.pl>
>> > >
>> > > While switch ports 5 and 7 are disabled (vendor designed port 8 to be
>> > > used for CPU traffic) they could be used strictly technically. For
>> > > some
>> > > reason however both those ports need forcing link to be usable.
>> >
>> > This explanation is not making much sense to me.
>> >
>> > I assume this board does not have an RJ45 for these two ports? But
>> > does it have a header so you can access the MII interface?
>> 
>> This PATCH as it is requires a basic familiarity with Northstar 
>> platform
>> or checking bcm-ns.dtsi.
>> 
>> All Northstar (BCM5301X) devices have 3 Ethernet interfaces. 99% of 
>> them
>> have:
>> 1. gmac0 connected to port 5
>> 2. gmac1 connected to port 7
>> 3. gmac2 connected to port 8
>> (it's described in bcm-ns.dtsi).
>> 
>> 
>> Some vendors decide to use gmac0 and switch port 5. They fill NVRAM 
>> with
>> MAC for gmac0.
>> 
>> Some vendors decide to use gmac2 & port 8. They set MAC for gmac2.
>> 
>> 
>> Netgear decided to use gmac2 & port 8 for R8000. They fill NVRAM with
>> MAC for gmac2.
>> 
>> If you however insist on using gmac0 you could do that. That just
>> requires setting up gmac0 with a custom/random MAC and forcing link 
>> for
>> switch ports as described in this PATCH.
> 
> If the ports are not used, you have them set to disabled, why do they
> need a fixed-link? That is what i don't understand yet.

So developers/hackers can use them for custom needs by just dropping
"disabled" bit. That's a pretty simple step compared to figuring out
that a fixed link is needed.

I can imagine advanced users using extra ports and interfaces to get
higher speeds. If you use a single switch port and single interface
you're limited to 1 Gbps. By using two you can exceed that limitation.

This is clearly some corner case but I don't think it really violates
what DT is for. We just describe hardware more clearly. There is a fixed
link after all. That port just happens to be disabled.

-- 
Rafał Miłecki

