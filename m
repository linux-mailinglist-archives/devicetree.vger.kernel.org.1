Return-Path: <devicetree+bounces-33918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2388372B5
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 20:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8915287808
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 19:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEFE33EA97;
	Mon, 22 Jan 2024 19:36:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 8.mo584.mail-out.ovh.net (8.mo584.mail-out.ovh.net [188.165.33.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1E83E49E
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 19:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.165.33.112
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705952209; cv=none; b=kD58bsoxTEfkp0xg0dZndTuSTbKZBLcxDlbn8fBQmsoFvb8VurfW+LEjgc9zn7BbnBlwpsjJJRSohUpxcRuVmoFwtYRl4LV1uSozeijjXZRGRZf93HqjTQ0itdsOHG/r4i3SAVVFhq3A6gSbDFh21oh2YqcXieiTHRUyhWS2hoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705952209; c=relaxed/simple;
	bh=3mBAZwfnrp0HNrWrhitOoKZ2dcHhIRCJAEoK7jlSMHQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=PI4vOEbVxHD1Euz4ydJQxa8/fXTnRbWWfrVFrV9w/Cqx51KVJOEcvd4Xmp1Cl4Qfw/d/S8X/LEOYz5Pql66Wr0ZvSLBRcCCZnHb34eVWsNxrHflE1vKBpGApyI3ytjWRuoAj/tqqVij0kEykGHHwTrAUsenOyyPOaOPuGLLhvaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=milecki.pl; spf=pass smtp.mailfrom=milecki.pl; arc=none smtp.client-ip=188.165.33.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=milecki.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=milecki.pl
Received: from director10.ghost.mail-out.ovh.net (unknown [10.109.140.55])
	by mo584.mail-out.ovh.net (Postfix) with ESMTP id BBBFA298C3
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 18:57:51 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-rjzw4 (unknown [10.110.168.247])
	by director10.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 6D3251FD40;
	Mon, 22 Jan 2024 18:57:49 +0000 (UTC)
Received: from RCM-web7.webmail.mail.ovh.net ([151.80.29.19])
	by ghost-submission-6684bf9d7b-rjzw4 with ESMTPSA
	id kSWvGK26rmV8AAAA/jY1oA
	(envelope-from <rafal@milecki.pl>); Mon, 22 Jan 2024 18:57:49 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 22 Jan 2024 19:57:49 +0100
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: dregan@broadcom.com, miquel.raynal@bootlin.com
Cc: dregan@mail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, joel.peshkin@broadcom.com,
 tomer.yacoby@broadcom.com, dan.beygelman@broadcom.com,
 william.zhang@broadcom.com, anand.gore@broadcom.com,
 kursad.oney@broadcom.com, florian.fainelli@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, andre.przywara@arm.com,
 baruch@tkos.co.il, linux-arm-kernel@lists.infradead.org,
 dan.carpenter@linaro.org
Subject: Re: [PATCH v2 01/10] dt-bindings: mtd: brcmnand: Updates for bcmbca
 SoCs
In-Reply-To: <20240118195356.133391-2-dregan@broadcom.com>
References: <20240118195356.133391-1-dregan@broadcom.com>
 <20240118195356.133391-2-dregan@broadcom.com>
User-Agent: Roundcube Webmail/1.4.15
Message-ID: <12d06516e5f1310b508c5d8136131787@milecki.pl>
X-Sender: rafal@milecki.pl
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13451970613610064715
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrvdekiedgudduiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepggffhffvvefujghffgfkgihitgfgsehtkehjtddtreejnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpefghfeuiefhiedttedtheefhfeifeffveekvdegteetkeetjedtiedvvdfhgfffffenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeduvdejrddtrddtrddupdefuddruddurddvudekrddutdeipdduhedurdektddrvdelrdduleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehrrghfrghlsehmihhlvggtkhhirdhplheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkeegpdhmohguvgepshhmthhpohhuth

On 2024-01-18 20:53, dregan@broadcom.com wrote:
> @@ -111,6 +113,17 @@ properties:
>        earlier versions of this core that include WP
>      type: boolean
> 
> +  brcm,nand-use-wp:
> +    description:
> +      Use this property to indicate if board design uses
> +      controller's write protection feature and connects its
> +      NAND_WPb pin to nand chip's WP_L pin. Driver defaults to
> +      use this feature when this property does not exist.
> +      Set to 0 if WP pins are not connected and feature is not
> +      used. Set to 1 if WP pins are connected and feature is used.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1]
> +
>  patternProperties:
>    "^nand@[a-f0-9]$":
>      type: object

Please take a look at:
[PATCH 1/2] dt-bindings: mtd: brcmnand: add "no-wp" property
https://lore.kernel.org/linux-mtd/20211109115215.5bcef0db@xps13/T/

Miquel suggested a generic property applicable to all raw NANDs for
such purpose. Unfortunately I dropped the ball on that.

-- 
Rafał Miłecki

