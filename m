Return-Path: <devicetree+bounces-108539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C7A992E74
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 16:11:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F23651F229AB
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 14:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 275601D618E;
	Mon,  7 Oct 2024 14:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="VNQGl7fA"
X-Original-To: devicetree@vger.kernel.org
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199121D47D2;
	Mon,  7 Oct 2024 14:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728310235; cv=none; b=dy7KshfTN3GsEkS+UPYLy15qOz/7r5JfPU5wwh0CNKGSVYVid0P/WnFZzYsSk7HFBjohAgT8YUGp8f0Aijq8hedaeEN/+VpVB/r5dqSRJ+czThum2IG0nSc6T5/ZuL1KpL7Mple9Fse5eGhJYyhxNi3Xa3woI8mo8qTb7W4yY5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728310235; c=relaxed/simple;
	bh=QGzOjF9PxrjI3CTGdHCkN+j0y9KtztCCivI4iFUWuT0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZswFP171JbGHy2uHwiJgEq0UHYw/StEvB7cit1EVd/ufVL/itKTA2ltzXTxqGKP4vAds7doOHXSagnSLg7GQHSIS+5oL5tl6rYGAk7YL8Tz1zs9UjHCjtN40XcaKh6WM1es8CDb+zZLsMlIF34/kZGH2ABgq+8GEWek0+Y2DZ1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=VNQGl7fA; arc=none smtp.client-ip=217.70.183.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 260896000E;
	Mon,  7 Oct 2024 14:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1728310228;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QM3e6qzQDy2C99cSqo9Yp5PCA7Kk8OlSQ1p1wJmlJ0I=;
	b=VNQGl7fA6cKQkXXBFMm3vRPJoW/xthQQ5sd+4SZaP1Wxnx9rwhA7fW/jIMP55B5sOYB6m6
	FZQ695yF4qq1jExLgOxiWIL0pSI7AtAwiHje8AQGsb7YPVlxboNHfRI+MPkBCIHcPmyzDN
	lb+mC5pqoCjZPZih+5gIqo2UErqA0jhyBcN3Xtm4fydYMbOnqs4dUrM8kIIcScZ2JaGeDK
	ENqZlBXL+nfiLJGiMT1qydUHCxs3z5FJNg4GyguFi/A8Z1HcJvE7t+NbtSlyeDBxxFCrAG
	s1Y3UwBbZcgbQGlwDNt8O2ZKSuyuQkpNjjMjluYgRfE6UIwakJD2xeDFl/YgGw==
Date: Mon, 7 Oct 2024 16:10:27 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Keguang Zhang via B4 Relay <devnull+keguang.zhang.gmail.com@kernel.org>
Cc: keguang.zhang@gmail.com, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org, Krzysztof
 Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v10 1/2] dt-bindings: mtd: Add Loongson-1 NAND
 Controller
Message-ID: <20241007161027.386e7409@xps-13>
In-Reply-To: <20241002-loongson1-nand-v10-1-17162eff80e2@gmail.com>
References: <20241002-loongson1-nand-v10-0-17162eff80e2@gmail.com>
	<20241002-loongson1-nand-v10-1-17162eff80e2@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com

Hi Keguang,

> +patternProperties:
> +  "^nand@[0-3]$":
> +    type: object
> +    $ref: raw-nand-chip.yaml
> +
> +    required:
> +      - nand-use-soft-ecc-engine
> +      - nand-ecc-algo

Actually I told you a mistake. The no-ecc-engine case should remain
valid, so we cannot require these properties in the bindings.

My fault, sorry about that.

Thanks,
Miqu=C3=A8l

