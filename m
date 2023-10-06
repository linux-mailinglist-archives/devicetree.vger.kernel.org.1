Return-Path: <devicetree+bounces-6576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7D37BBD8F
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 19:19:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4648C28207F
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 17:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 675882E624;
	Fri,  6 Oct 2023 17:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6F01F5FE
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 17:19:30 +0000 (UTC)
X-Greylist: delayed 17926 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 06 Oct 2023 10:19:29 PDT
Received: from 5.mo550.mail-out.ovh.net (5.mo550.mail-out.ovh.net [178.33.45.107])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A40CAD
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 10:19:29 -0700 (PDT)
Received: from director6.ghost.mail-out.ovh.net (unknown [10.109.156.105])
	by mo550.mail-out.ovh.net (Postfix) with ESMTP id 27E7D2A317
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 11:49:52 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-8w4bk (unknown [10.110.115.151])
	by director6.ghost.mail-out.ovh.net (Postfix) with ESMTPS id CF0061FEB2;
	Fri,  6 Oct 2023 11:49:49 +0000 (UTC)
Received: from RCM-web7.webmail.mail.ovh.net ([151.80.29.19])
	by ghost-submission-6684bf9d7b-8w4bk with ESMTPSA
	id ToM7MF30H2X07Q0AgIPZcA
	(envelope-from <rafal@milecki.pl>); Fri, 06 Oct 2023 11:49:49 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Fri, 06 Oct 2023 13:49:49 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Michael Walle <michael@walle.cc>, Rob Herring
 <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Robert Marko
 <robert.marko@sartura.hr>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Luka Perkov <luka.perkov@sartura.hr>, Randy Dunlap <rdunlap@infradead.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v12 5/7] nvmem: core: Rework layouts to become regular
 devices
In-Reply-To: <20231005155907.2701706-6-miquel.raynal@bootlin.com>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
 <20231005155907.2701706-6-miquel.raynal@bootlin.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <f2ac55b6361264a6a4b0dbb1b4af11a6@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 31.11.218.106
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 17609074545689144221
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrgeeigdeggecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvfevufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjedvlefguedthfefleehgeeftdeludeluedvgfeffeevhfevtdehteejteefheegnecukfhppeduvdejrddtrddtrddupdefuddruddurddvudekrddutdeipdduhedurdektddrvdelrdduleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehrrghfrghlsehmihhlvggtkhhirdhplheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedtpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 2023-10-05 17:59, Miquel Raynal wrote:
> +static struct bus_type nvmem_layout_bus_type = {
> +	.name		= "nvmem-layouts",
> +	.match		= nvmem_layout_bus_match,
> +};
> +
> +static struct device nvmem_layout_bus = {
> +	.init_name	= "nvmem-layouts",
> +};

Nitpicking: would it be more consistent and still make sense to use
singular form "nvmem-layout"?

By looking at my /sys/bus/ I can see there:
1. cpu (not cpus)
2. gpio (not gpios)
3. node (not nodes)
4. nvmem (not nvmems)
etc.

-- 
Rafał Miłecki

