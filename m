Return-Path: <devicetree+bounces-253157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0247ED080D0
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 10:02:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E52343024245
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 09:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 996ED320A1D;
	Fri,  9 Jan 2026 09:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="O9taR1y3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2779B320A3E;
	Fri,  9 Jan 2026 09:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767949346; cv=none; b=M3lscORIui/BL1UI5GztULt8DeWcXPjz8N3FFIITkn4GQp+l65FeeeAhyCEX8bUX+hkl1eklf43/Xjzn74+MZkBpQ16LUFHgtpo0QVDtknk87vIvep658O+pdjkMPJxkzt5etacT9emxGvG6peJ635vNreuRsljF/i9jtf9wzsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767949346; c=relaxed/simple;
	bh=kmVu0tRy9fKfOH0WAJGuWXx3Zh4ofnNsMmmGksvk+Nc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=kuJtBhWWA1naE039txa8FDYCeJi6xXgcDAt7O/fxdbVG70YmRkFgYQ6itjS6vAbtXC9+I0A82lxATMek0aZKMb6fbxVDdSZfXQq0lwKEyHrDnV/x1B7K5pe9GT73pqfPFODxFGhVoAY5DISJUFZuACCYcqWlDdZubESJAvS2Zxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=O9taR1y3; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 42BE74E42016;
	Fri,  9 Jan 2026 09:02:17 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1261B60734;
	Fri,  9 Jan 2026 09:02:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 21670103C885B;
	Fri,  9 Jan 2026 10:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767949335; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=CTgNQ8aQKCK1awytoBCTagqusNg0f5KtpE7Bd+9hU70=;
	b=O9taR1y3aXblZciBqRSMOSupr+ReveLz5o2s2I5yTRJOgfMafUOyTmpRscqBj/f+fZ5cLn
	MLzyU11frfLWtCNsnWvhVdSnOPGKuOlmRtiNtkApr0XYmslk/ngrb76fkq7lo9/xRyRXox
	YsZ6MpM2CATVxd+Z4fqxtzDhLGVOsKAmSLAELhMrDKAUFK3leQRotyrBVvfl9XeV8kbN0S
	SJxJJ4/VqjEGLba0YB2aQRK5P46bYw9ckUzwligbrlXSX7aQdIANw1urahcxZ0dOPZ8xs5
	mKselM63JX98wnzDCvO9OoIz0/P9AxleQNgv9QWBXcPhYZTmi7OgOxHgJeRWbw==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Richard Weinberger <richard@nod.at>,  Vignesh Raghavendra
 <vigneshr@ti.com>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  Brian Norris <computersforpeace@gmail.com>,
  Kamal Dasu <kdasu.kdev@gmail.com>,  William Zhang
 <william.zhang@broadcom.com>,  Nick Terrell <terrelln@fb.com>,  David
 Sterba <dsterba@suse.com>,  =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?=
 <rafal@milecki.pl>,  Simon Glass
 <sjg@chromium.org>,  Linus Walleij <linusw@kernel.org>,  Ulf Hansson
 <ulf.hansson@linaro.org>,  Marcus Folkesson <marcus.folkesson@gmail.com>,
  Tony Lindgren <tony@atomide.com>,  Roger Quadros <rogerq@kernel.org>,
  Hauke Mehrtens <hauke@hauke-m.de>,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-mmc@vger.kernel.org
Subject: Re: [PATCH 07/10] dt-bindings: mtd: Ensure partition node
 properties are documented
In-Reply-To: <20260108-dt-mtd-partitions-v1-7-124a53ce6279@kernel.org> (Rob
	Herring's message of "Thu, 08 Jan 2026 11:53:16 -0600")
References: <20260108-dt-mtd-partitions-v1-0-124a53ce6279@kernel.org>
	<20260108-dt-mtd-partitions-v1-7-124a53ce6279@kernel.org>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Fri, 09 Jan 2026 10:02:07 +0100
Message-ID: <87fr8fxipc.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Hello Rob,

On 08/01/2026 at 11:53:16 -06, "Rob Herring (Arm)" <robh@kernel.org> wrote:

> Partition nodes without a compatible have no restrictions on additional
> properties. Fix this by ensuring 'unevaluatedProperties' is set when
> there's no compatible property. If there is a compatible property, then
> there should be a specific schema for it which will enforce
> 'unevaluatedProperties'.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Overall thank you very much for this series, I've been sruggling while
defining these and your approach seems very relevant. I am fine with all
the patches in this series, but will wait a bit for others to make a bit
of feedback.

[...]

> +$defs:
> +  partition-node:
> +    type: object
> +    if:
> +      not:
> +        required: [ compatible ]
> +    then:
> +      $ref: '#'
> +      unevaluatedProperties: false
> +    else:
> +      $ref: '#'

This, however, is total blackmagic to me. Would you mind explaining what

      $ref: '#'

indicates? Is this a placeholder indicating "a reference must be given?

Also I do not understand the final else case, what is it covering?

Thanks for the little explanation (or you can give me a pointer to some
relevant doc I could read).

Thanks,
Miqu=C3=A8l

