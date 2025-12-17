Return-Path: <devicetree+bounces-247306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F0BCC6C05
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:15:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A0B8D3019C77
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 975F7340A46;
	Wed, 17 Dec 2025 09:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="bKwcow/G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3281E34028F;
	Wed, 17 Dec 2025 09:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765962320; cv=none; b=rRZtLJFPZ6eFWVbEAyK7LonuSGXHN4eoys+7dPck7v1tR0T/Q5AV9adjO0uiz1j9Y5vYnHunRZhbA+Vex6ift/x+eMj+1ustDnvOO6cwclVMrvi0uqajBJQQSvR8JStYd58iCU8HIsltM6P35xuLdqiqXc1lNfEdiz6VGAXYBoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765962320; c=relaxed/simple;
	bh=GHbESA3QlV3haQkQOJZ8bZoHaa5uRTi8+BzXSTQsGjA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=hDYoWDmAhDvFKSll3OFlecF7B0v/Xd9vsobnhVAuLnHWwJuANEwTEc7UwN9pcnZaNJcB1LdVh5HjxyqcZEwEFxmLL4x3o/dZfzccawGOVWIHI0aQWozBBxi5LZjk+ebLWhQb41q2NLzhosnjg6p53BRuJl3ROy5le0YxkqON/L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=bKwcow/G; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id D54A8C1A594;
	Wed, 17 Dec 2025 09:04:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 519596072F;
	Wed, 17 Dec 2025 09:05:11 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 12B4F1195037F;
	Wed, 17 Dec 2025 10:05:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765962308; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=GHbESA3QlV3haQkQOJZ8bZoHaa5uRTi8+BzXSTQsGjA=;
	b=bKwcow/G81HEIlux3eTJybrhghyIqgaCcr2jgNjxkKuF4KTI1HNgwBFjGq1PKp2wzZLwLm
	7tX1k1w8lCjRquaRmpAtqbKCnbb0PFq/EgEVKllVzztsvBxpAi5GGEHRUNXOiSZ6d+74YV
	PUPJioNzDFh/0fDXGnaHuOk8BBJGSIYBXqRvO4vahksFUIJYxM9yVy8C6Cxi9YN8qiaZ5D
	azIGb2tPKmY04I4lDH1tGPZI9oVgwpxdsC/1CAyt1OKAJ6XB4OFk33h3q8PY08QrGDd389
	obJbZtAOljVIoQho84kqkJG4zPnzoNty6b3tSCiPUujLssEd3/HGeRjhKN2JiQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: Khairul Anuar Romli <khairul.anuar.romli@altera.com>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  Eugeniy Paltsev
 <Eugeniy.Paltsev@synopsys.com>,  Vinod Koul <vkoul@kernel.org>,  Richard
 Weinberger <richard@nod.at>,  Vignesh Raghavendra <vigneshr@ti.com>,
  Niravkumar L Rabara <niravkumar.l.rabara@intel.com>,
  dmaengine@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2 0/3] Add dma-coherent property
In-Reply-To: <f1948d54-2e27-44ca-8509-ca16f9b792fd@kernel.org> (Dinh Nguyen's
	message of "Tue, 16 Dec 2025 21:22:09 -0600")
References: <cover.1764717960.git.khairul.anuar.romli@altera.com>
	<e1aae851-4031-4b5c-a807-7a61ecfe6af1@kernel.org>
	<877bumsv3q.fsf@bootlin.com>
	<f1948d54-2e27-44ca-8509-ca16f9b792fd@kernel.org>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 17 Dec 2025 10:05:02 +0100
Message-ID: <871pktscld.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Hello Dinh,

>>> Applied!
>> Have you applied all 3 patches? If yes, where? It happened during the
>> merge window but I see nothing in v6.19-rc1. I was about to take the mtd
>> binding patch, but if you took it already that's fine, I'll mark this
>> series as already applied.
>>=20
>
> Yes, I took all 3 and staging it in my tree for v6.20.

Noted. If you happen to rebase your own tree you can add my

Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>

on the mtd binding patch. Otherwise, well, too late.

Thanks!
Miqu=C3=A8l

