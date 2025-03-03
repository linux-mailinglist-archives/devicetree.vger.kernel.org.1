Return-Path: <devicetree+bounces-153260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D9470A4BCC7
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 11:47:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 515C518954D8
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 10:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45BAC1F150A;
	Mon,  3 Mar 2025 10:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="SuUEdi88"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315751E376C
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 10:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740998716; cv=none; b=KsUYWG56BQ34sA1a04+d80iv5uBmgm2XoLApmhVlpYCia+8FWuHASZNsUGVUvlZpKhNrpXP5dbc2OZno816h8y5OXITtZlF/q0v/rV4p8mrKf7xshy85RqNb1rB+xJ1iflEczX64rU/93pUr1aGPxkrskIIKjzwlhBOmeAARLKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740998716; c=relaxed/simple;
	bh=+qbfddoOQ2ENZsxQ1/wFs7b0cYCzIv0ONzBcrBRsGI0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=flwd3+6+OLPfYPSjlgEzTUGvm1m1UgNG/P6DotBcX8xEUiX3SuaSzm2jNBx0vdYGF2bSgjDKnvcd9YMWIIDX1rekXCBLrJoOaLCwRmz/tUFZhc3DmHKcnvrusN8mSkOyRtlq/zizKVgRsSrZg9xekEoR3nU9Ec39oWCmjqParKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=SuUEdi88; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id DE933433F0;
	Mon,  3 Mar 2025 10:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1740998712;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MU1m2UBny3vxat6MOLy5E4TOlCrCvh7NBR/89VGKh8A=;
	b=SuUEdi88Ke5PTzEk4N1AL+fxDz7nWqSrvASio6ISkR4jAUdcE9j0gmqolzFPSM8+AmoKWv
	+U8T9zcxy8iw1qbUAgep6Etagt6qHKccBUOTdACBtHqsj87Nb9FPTjQxIBFn3cUal/P7pE
	7D6EXlzjZ7vrge02YvTCbfMt094TMJhnUyoXFjZeJUiPx1twa8yvs66t+I/guPqMvJknwZ
	owqn3E65P7hoWRcqkKm6BtAZCarHXNYXTihVkWPrlzRGEiRA5nj61ENZAJCK04IK8hN31f
	H/rSqYhJQpwq2RVl20x1vKHjVxMzCOK5d4P5KqShXlGeW5Rv80kF+yjiMfWcFg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: richard@nod.at, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, linux-mtd@lists.infradead.org, 
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
In-Reply-To: <20250220125812.2370056-1-festevam@gmail.com>
References: <20250220125812.2370056-1-festevam@gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: mxc-nand: Document fsl,imx31-nand
Message-Id: <174099871176.2206965.17458275544052780017.b4-ty@bootlin.com>
Date: Mon, 03 Mar 2025 11:45:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdelkeelvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvegjfhfukfffgggtgffosehtkeertdertdejnecuhfhrohhmpefoihhquhgvlhcutfgrhihnrghluceomhhiqhhuvghlrdhrrgihnhgrlhessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepheeifffhueelgfdtleetgfelvefggfehudelvdehuddulefgheelgfehieevvdegnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopegludelvddrudeikedrgedvrdegiegnpdhmrghilhhfrhhomhepmhhiqhhuvghlrdhrrgihnhgrlhessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepkedprhgtphhtthhopehrihgthhgrrhgusehnohgurdgrthdprhgtphhtthhopehlihhnuhigqdhmthgusehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtohepfhgvshhtvghvrghmsehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepfhgvshhtvghvrghmseguvghngidruggvpdhrt
 ghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhg
X-GND-Sasl: miquel.raynal@bootlin.com

On Thu, 20 Feb 2025 09:58:12 -0300, Fabio Estevam wrote:
> imx31.dtsi uses the following NAND compatible:
> 
> compatible = "fsl,imx31-nand", "fsl,imx27-nand";
> 
> Document 'fsl,imx31-nand' to fix the following dt-schema warning:
> 
> compatible: ['fsl,imx31-nand', 'fsl,imx27-nand'] is too long
> 
> [...]

Applied to nand/next, thanks!

[1/1] dt-bindings: mtd: mxc-nand: Document fsl,imx31-nand
      commit: 423f79882c98b1e1eb9a710d9a2a6c874c094883

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl


