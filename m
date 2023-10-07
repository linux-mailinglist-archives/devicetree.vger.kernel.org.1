Return-Path: <devicetree+bounces-6731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC617BC91A
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 18:46:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF0F31C2093D
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 16:45:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A207DDCF;
	Sat,  7 Oct 2023 16:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D32B5232
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 16:45:54 +0000 (UTC)
X-Greylist: delayed 103852 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 07 Oct 2023 09:45:49 PDT
Received: from 19.mo583.mail-out.ovh.net (19.mo583.mail-out.ovh.net [46.105.35.78])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC446C6
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 09:45:49 -0700 (PDT)
Received: from director2.ghost.mail-out.ovh.net (unknown [10.109.156.142])
	by mo583.mail-out.ovh.net (Postfix) with ESMTP id DF15E2962A
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 16:09:08 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-dfqrn (unknown [10.110.208.79])
	by director2.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 774AB1FD3D;
	Sat,  7 Oct 2023 16:09:06 +0000 (UTC)
Received: from RCM-web6.webmail.mail.ovh.net ([151.80.29.20])
	by ghost-submission-6684bf9d7b-dfqrn with ESMTPSA
	id sA4zHKKCIWUySAIA90DV1w
	(envelope-from <rafal@milecki.pl>); Sat, 07 Oct 2023 16:09:06 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sat, 07 Oct 2023 18:09:06 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Michael Walle <michael@walle.cc>, Rob Herring
 <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Robert Marko
 <robert.marko@sartura.hr>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Luka Perkov <luka.perkov@sartura.hr>, Randy Dunlap <rdunlap@infradead.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v12 2/7] nvmem: Clarify the situation when there is no DT
 node available
In-Reply-To: <20231006183229.51cd8e60@xps-13>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
 <20231005155907.2701706-3-miquel.raynal@bootlin.com>
 <05cd4592d0cfe0fb86aeb24db01de547@milecki.pl>
 <20231006183229.51cd8e60@xps-13>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <2e3ea6a4e63e0c6bebf4c18b165250e5@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 31.11.218.106
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 9413649123384929181
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrgeelgdeljecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvfevufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjedvlefguedthfefleehgeeftdeludeluedvgfeffeevhfevtdehteejteefheegnecukfhppeduvdejrddtrddtrddupdefuddruddurddvudekrddutdeipdduhedurdektddrvdelrddvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehrrghfrghlsehmihhlvggtkhhirdhplheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkeefpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

One comment below

On 2023-10-06 18:32, Miquel Raynal wrote:
> rafal@milecki.pl wrote on Fri, 06 Oct 2023 13:41:52 +0200:
> 
>> On 2023-10-05 17:59, Miquel Raynal wrote:
>> > At a first look it might seem that the presence of the of_node pointer
>> > in the nvmem device does not matter much, but in practice, after > looking
>> > deep into the DT core, nvmem_add_cells_from_dt() will simply and always
>> > return NULL if this field is not provided. As most mtd devices don't
>> > populate this field (this could evolve later), it means none of their
>> > children cells will be populated unless no_of_node is explicitly set to
>> > false. In order to clarify the logic, let's add clear check at the
>> > beginning of this helper.
>> 
>> I'm somehow confused by above explanation and code too. I read it
>> carefully 5 times but I can't see what exactly this change helps with.
>> 
>> At first look at nvmem_add_cells_from_legacy_of() I can see it uses
>> "of_node" so I don't really agree with "it might seem that the 
>> presence
>> of the of_node pointer in the nvmem device does not matter much".
>> 
>> You really don't need to look deep into DT core (actually you don't 
>> have
>> to look into it at all) to understand that nvmem_add_cells_from_dt()
>> will return 0 (nitpicking: not NULL) for a NULL pointer. It's all made
>> of for_each_child_of_node(). Obviously it does nothing if there is
>> nothing to loop over.
> 
> That was not obvious to me as I thought it would start from /, which I
> think some other function do when you don't provide a start node.

What about documenting that function instead of adding redundant code?


>> Given that for_each_child_of_node() is NULL-safe I think code from 
>> this
>> patch is redundant.
> 
> I didn't say it was not safe, just not explicit.

-- 
Rafał Miłecki

