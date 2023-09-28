Return-Path: <devicetree+bounces-4242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A15327B1AA3
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5C3EB2819C3
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A9C5374EA;
	Thu, 28 Sep 2023 11:20:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6C01862D
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:20:52 +0000 (UTC)
X-Greylist: delayed 2217 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 28 Sep 2023 04:20:49 PDT
Received: from 4.mo575.mail-out.ovh.net (4.mo575.mail-out.ovh.net [46.105.59.63])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0DFA3595
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:20:49 -0700 (PDT)
Received: from director8.ghost.mail-out.ovh.net (unknown [10.109.146.132])
	by mo575.mail-out.ovh.net (Postfix) with ESMTP id E558026A7E
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 10:43:50 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-scbb9 (unknown [10.110.171.220])
	by director8.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 772761FE4F;
	Thu, 28 Sep 2023 10:43:50 +0000 (UTC)
Received: from RCM-web4.webmail.mail.ovh.net ([176.31.235.81])
	by ghost-submission-6684bf9d7b-scbb9 with ESMTPSA
	id FvZ+GuZYFWWPdgAAWmyHgg
	(envelope-from <rafal@milecki.pl>); Thu, 28 Sep 2023 10:43:50 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Thu, 28 Sep 2023 12:43:50 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Rob Herring <robh@kernel.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: nvmem: u-boot,env: Add missing
 additionalProperties on child node schemas
In-Reply-To: <20230926164529.102427-1-robh@kernel.org>
References: <20230926164529.102427-1-robh@kernel.org>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <3625f0b161a516640c716cd9aff37f9b@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 31.11.218.106
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 6405807520749366235
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrtddtgddtvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvfevufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjedvlefguedthfefleehgeeftdeludeluedvgfeffeevhfevtdehteejteefheegnecukfhppeduvdejrddtrddtrddupdefuddruddurddvudekrddutdeipddujeeirdefuddrvdefhedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeorhgrfhgrlhesmhhilhgvtghkihdrphhlqedpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheejhedpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 2023-09-26 18:45, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Thanks!

Acked-by: Rafał Miłecki <rafal@milecki.pl>

