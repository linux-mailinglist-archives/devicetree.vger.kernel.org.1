Return-Path: <devicetree+bounces-137010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BD7A073C9
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:54:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C0073A6EC4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:53:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90584215F40;
	Thu,  9 Jan 2025 10:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAOUFN8r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686B221518C;
	Thu,  9 Jan 2025 10:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736420035; cv=none; b=LI40IMqvU+AvexPR0fIKzNsZzp78Ua42NFiXoMTUMOCAWYKklkz0c0q28m5sH7elDU7jfg7WuqgUOjeCGq9mdDk1PqKI5ZYTln+E3uFPkmKrPmWebipNoLFnfvfp9wQXpl2AvmhBcEW2g+yS7nEOZrVkB2j0IsikotSynZ4p/Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736420035; c=relaxed/simple;
	bh=yZ8khXsdp4izGzc3z+rv7+yCpy/7TPea6D+6pe6L/r0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fZWuz4cKIR/HZmjTWa9Odc7W6eE+6Bg4FwVpKXt+vni8yCtQzxwOccBru82+nSEVqXKcUzUy5QREmS5xcbMX03HDB/paEK7L4dPsRWW9RZx8vWzNpgVSYu4+qrtr8D2AvFlTX4VT/9CJ+WZYkxfQxI3Z0UU0e3kI9e4IK9OhJv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAOUFN8r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C01E4C4CED2;
	Thu,  9 Jan 2025 10:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736420034;
	bh=yZ8khXsdp4izGzc3z+rv7+yCpy/7TPea6D+6pe6L/r0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GAOUFN8rsr0/E4Yy75nT+aHFmqW0uFlIDwpb+MbJ6U5gzmb8TcJvCqS4mk1yYP9lc
	 XPdd1+9350xu+kcbx8BWtPRNpPefIuUAsMoOJjvsI+dm+bWuHBTo26TO309JhVP7+B
	 mP8N1TUpSKjq/z6LIW8E3sgeiPIrWS0f2/IYV2Pf3yhRHyRQF0cDBnxtonGL1uBz4F
	 9O5kATwRaqWf5EoZ3MZJZ9PCHufmLUcj3AglajNNDJTtBuT+yEVaILNnDpfpQnFbiV
	 cbaGim07I8mgHjNs+BOPgg9jve9oX+n0YJiv59ClQ3QEADKbjJEpDLSMFaAvd5RZ3E
	 upPQTW7VyPzkw==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Charan Pedumuru <charan.pedumuru@microchip.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241219-gpbr-v1-1-e19a562ebf81@microchip.com>
References: <20241219-gpbr-v1-1-e19a562ebf81@microchip.com>
Subject: Re: (subset) [PATCH] dt-bindings: mfd: atmel: Convert to json
 schema
Message-Id: <173642003250.2586091.8120905496358792824.b4-ty@kernel.org>
Date: Thu, 09 Jan 2025 10:53:52 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Thu, 19 Dec 2024 11:12:50 +0530, Charan Pedumuru wrote:
> Convert old text based binding to json schema.
> Changes during conversion:
> The text binding is misleading, add a fallback `atmel,at91sam9260-gpbr`
> for both `microchip,sam9x60-gpbr` and `microchip,sam9x7-gpbr` which is
> missing in old binding and `microchip,sam9x60-gpbr` is not a fallback
> for `microchip,sam9x7-gpbr`.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: mfd: atmel: Convert to json schema
      commit: b55689c0a9b14ba873de662408b0ee298c307a35

--
Lee Jones [李琼斯]


