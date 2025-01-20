Return-Path: <devicetree+bounces-139651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A403A167CB
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:58:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 549D91681C7
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 07:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FCA51917D7;
	Mon, 20 Jan 2025 07:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="KVZFjaB7"
X-Original-To: devicetree@vger.kernel.org
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623FA190679
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 07:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737359935; cv=none; b=S3zONn53nZdKDuBudI7YzjjaAQ5bXqarvdrqtdRzbQ5wapDp1z6p02/aAQQKhouRF5h3pa1BArYp6J8pm/IkSn8S986dcEj6wu/H6rDE8nsUUj6OhA1vvjpYXNsq7ytcZK+oUjCpJY3QWIrUGKjjXA9xrY088ftUuSSnqWx8ykY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737359935; c=relaxed/simple;
	bh=glsKMXgLOVIXu1QQ8t3G7ymK+2F/DR/Ky0LVg9UEF5w=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lebvIKRT/aJBYE2FhqbFsoniGGl5uNZYFT0y0vDMLFgbpnXmwKxqyyXjCzgtc79pn0aBJGHCEBGoN1tJbBEhxZac5uuWnUB4dDX92wZD3+ZJ357dBWgBrS9ZtIUWwihbUWeCatMf5l3iqctT/NYPVOfM24uQx6WXMnQ6nFSbWUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=KVZFjaB7; arc=none smtp.client-ip=217.70.183.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 80F8840007;
	Mon, 20 Jan 2025 07:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737359923;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IrfXUXKx65Be1ucE9yzPUsyx/j7smslYJp+VGyQ1BFs=;
	b=KVZFjaB7rQHERQv+bTv9y2JtGtb1xo/5MBvIik7JQprzL7zUSKovTS3abKnWxwDYiAGM6m
	8kEeTLAvU6swsp1VmJTzuVASq92FZpCaC/cuBhDb/Un/vCxokrMomochZ25ZCvEwdwZB6M
	XzRNH+iq7qjiiN2lLN1mNfIZmxEfjeFs5Jlk+Xis2tkuLx8rqmv7vpU+37harhzaWXyMH2
	BifnI5ivue1FBgFEeJqEiZoKpEi9ISvwJtkVU9+uA8kFDc+Dl4PMJU4OYLAAcdL/i8786z
	ihzygLWEoDgXZNyTwbquGtmIJvGPyFhjppYZTds+8eejGFE5WytOhRwM8c0Ylg==
Date: Mon, 20 Jan 2025 08:58:39 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham
 I <kishon@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: interrupt-controller:
 microchip,lan966x-oic: Clarify endpoint use
Message-ID: <20250120085839.3982743c@bootlin.com>
In-Reply-To: <0f2d1bcb431827b65b2c0ba6619d9126ec97da72.1737118595.git.geert+renesas@glider.be>
References: <cover.1737118595.git.geert+renesas@glider.be>
	<0f2d1bcb431827b65b2c0ba6619d9126ec97da72.1737118595.git.geert+renesas@glider.be>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Hi Geert,

On Fri, 17 Jan 2025 14:04:36 +0100
Geert Uytterhoeven <geert+renesas@glider.be> wrote:

> Reword the description, to make it clear that the LAN966x Outbound
> Interrupt Controller is used only in PCI endpoint mode.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - New.
> ---
>  .../bindings/interrupt-controller/microchip,lan966x-oic.yaml | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 

Acked-by: Herve Codina <herve.codina@bootlin.com>

Best regards,
Hervé

