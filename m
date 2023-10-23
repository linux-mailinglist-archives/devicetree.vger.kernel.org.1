Return-Path: <devicetree+bounces-11086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC387D4178
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 23:08:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06EA82813F9
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 21:08:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E6A7219FB;
	Mon, 23 Oct 2023 21:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC57B219EF
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 21:08:32 +0000 (UTC)
X-Greylist: delayed 4760 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 23 Oct 2023 14:07:54 PDT
Received: from 10.mo582.mail-out.ovh.net (10.mo582.mail-out.ovh.net [87.98.157.236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCA691FC0
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:07:54 -0700 (PDT)
Received: from director6.ghost.mail-out.ovh.net (unknown [10.108.4.60])
	by mo582.mail-out.ovh.net (Postfix) with ESMTP id F23A9210F1
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 19:48:32 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-42zsw (unknown [10.110.171.110])
	by director6.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 843D51FD57;
	Mon, 23 Oct 2023 19:48:32 +0000 (UTC)
Received: from RCM-web9.webmail.mail.ovh.net ([151.80.29.21])
	by ghost-submission-6684bf9d7b-42zsw with ESMTPSA
	id US+OIBDONmUBzgEAn4Ta5Q
	(envelope-from <rafal@milecki.pl>); Mon, 23 Oct 2023 19:48:32 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 23 Oct 2023 21:48:32 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com, =?UTF-8?Q?Rafa=C5=82_Mi=C5=82e?=
 =?UTF-8?Q?cki?= <zajec5@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: BCM5301X: Set fixed-link for extra Netgear
 R8000 CPU ports
In-Reply-To: <f5329b80-1a72-4083-823e-07e9a884ddbb@broadcom.com>
References: <20231013103314.10306-1-zajec5@gmail.com>
 <20231013103314.10306-2-zajec5@gmail.com>
 <20231023183302.1192686-1-florian.fainelli@broadcom.com>
 <f5329b80-1a72-4083-823e-07e9a884ddbb@broadcom.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <23edd7fb640bf9146895680b4b08c878@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 31.11.218.106
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 14848367973526252321
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrkeeigddugedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvvefujghffgfkgihitgfgsehtkehjtddtreejnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeeiieeguedvhfehvedtteejudeftdfgtefffeefhefhleejfeeijeeuieelveegieenucffohhmrghinhepghhithhhuhgsrdgtohhmnecukfhppeduvdejrddtrddtrddupdefuddruddurddvudekrddutdeipdduhedurdektddrvdelrddvudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehrrghfrghlsehmihhlvggtkhhirdhplheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkedvpdhmohguvgepshhmthhpohhuth

On 2023-10-23 20:36, Florian Fainelli wrote:
> On 10/23/23 11:33, Florian Fainelli wrote:
>> From: Florian Fainelli <f.fainelli@gmail.com>
>> 
>> On Fri, 13 Oct 2023 12:33:14 +0200, Rafał Miłecki <zajec5@gmail.com> 
>> wrote:
>>> From: Rafał Miłecki <rafal@milecki.pl>
>>> 
>>> While switch ports 5 and 7 are disabled (vendor designed port 8 to be
>>> used for CPU traffic) they could be used strictly technically. For 
>>> some
>>> reason however both those ports need forcing link to be usable.
>>> 
>>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>>> ---
>> 
>> Applied to 
>> https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
> 
> Ended up with the following commit message:
> 
> Ports 5 and 7 are disabled by default because the standard use case is
> for port 8 to manage all CPU directed traffic. For experimentation
> purposes however it is desirable to provide adequate properties such
> that people can experiment with using different ports without having to
> figure out their configuration. Some of the use cases include but are
> not limited to doubling or tripling the bandwidth by leveraging the
> additional ports/Ethernet MAC combinations.
> 
> 
> let me know if I should rephrase it before pushing this to the the ARM
> SoC maintainers (tomorrow).

Looks good, thank you!

-- 
Rafał Miłecki

