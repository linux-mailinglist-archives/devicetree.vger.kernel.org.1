Return-Path: <devicetree+bounces-36844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB79842DB2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 21:26:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D288128A350
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 20:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4982762CA;
	Tue, 30 Jan 2024 20:26:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 5.mo584.mail-out.ovh.net (5.mo584.mail-out.ovh.net [188.165.44.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE90F69E14
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 20:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.165.44.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706646362; cv=none; b=j10ran6fRG+4M/DGpyQzODjiNRkHjuArlkRypOPQJ+GZn9puE/lpfd0m1gPQ4Bh4Luhv4YSg5D8qsZppuiARqOh3S3sXdMUttXxtWiOt0716zBsK5vDZ1hitCcIgGm3Z7R9INTX+cmQFohrnmNhrhLLAJwy22ET3jtRlw6dVF1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706646362; c=relaxed/simple;
	bh=B2ppdC8u/QDeG8tThRyRJOXtZ0rOnmI2LRCGp0bMwmA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Tok/onKnK1DtoFpLBlLpm72dcuoKwQ+dh0HT1YySwmwtuTF3OKckj3k5sK1B8Q8qcXkMwh4/t8gwiqg8C4uFu/zgBqygKqQ+SUcxqNVVS1a2LACJpvPjahBpYXZkAs0heWMcBD+jEFTBSjq6cZaZj9BtYE4G1wpTfCCYJMADjzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=etezian.org; arc=none smtp.client-ip=188.165.44.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=etezian.org
Received: from director5.ghost.mail-out.ovh.net (unknown [10.108.25.74])
	by mo584.mail-out.ovh.net (Postfix) with ESMTP id 7B7CE28289
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 20:25:52 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-ctjrb (unknown [10.110.113.129])
	by director5.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 4D6741FDB8;
	Tue, 30 Jan 2024 20:25:50 +0000 (UTC)
Received: from etezian.org ([37.59.142.99])
	by ghost-submission-6684bf9d7b-ctjrb with ESMTPSA
	id +DAYJE5buWXh3AsAF6xv8A
	(envelope-from <andi@etezian.org>); Tue, 30 Jan 2024 20:25:50 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-99G0030724d115-007f-4b95-b9ff-1a0b342b8d03,
                    A55004731C2A18159FC94DBA16C28717FFA6C146) smtp.auth=andi@etezian.org
X-OVh-ClientIp:194.230.145.85
From: Andi Shyti <andi.shyti@kernel.org>
To: Peter Rosin <peda@axentia.se>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Naresh Solanki <naresh.solanki@9elements.com>
Cc: Andi Shyti <andi.shyti@kernel.org>,
	mazziesaccount@gmail.com,
	Patrick Rudolph <patrick.rudolph@9elements.com>,
	Rob Herring <robh@kernel.org>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH v5 1/2] dt-bindings: i2c: pca954x: Add custom properties for MAX7357
Date: Tue, 30 Jan 2024 21:24:55 +0100
Message-ID: <170664590836.3575391.9594221857532318871.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240130121902.462619-1-naresh.solanki@9elements.com>
References: <20240130121902.462619-1-naresh.solanki@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 6579759056189590235
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrfedtjedgjedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvefufffkofgjfhggtgfgsehtkeertdertdejnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihdrshhhhihtiheskhgvrhhnvghlrdhorhhgqeenucggtffrrghtthgvrhhnpeevveeiffeifefgfeduvdetleffuefhleffjeetjeduvdevkeevhedvjeegfeetveenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeduvdejrddtrddtrddupdduleegrddvfedtrddugeehrdekhedpfeejrdehledrudegvddrleelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeorghnughisegvthgviihirghnrdhorhhgqedpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheekgedpmhhouggvpehsmhhtphhouhht


Hi Naresh,

On Tue, 30 Jan 2024 17:49:00 +0530, Naresh Solanki wrote:
> Maxim Max7357 has a configuration register to enable additional
> features. These features aren't enabled by default & its up to
> board designer to enable the same as it may have unexpected side effects.
> 
> These should be validated for proper functioning & detection of devices
> in secondary bus as sometimes it can cause secondary bus being disabled.
> 
> [...]

Applied to i2c/i2c-host on 

git://git.kernel.org/pub/scm/linux/kernel/git/andi.shyti/linux.git

Thank you,
Andi

Patches applied
===============
[1/2] dt-bindings: i2c: pca954x: Add custom properties for MAX7357
      commit: 8e7d967f04df0fa2c2db00f47ac4cd5ea16ade91
[2/2] i2c: muxes: pca954x: Enable features on MAX7357
      commit: 6b572ea231236bb3be4b819d92119470ac121a9e

