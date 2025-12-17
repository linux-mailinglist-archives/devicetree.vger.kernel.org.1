Return-Path: <devicetree+bounces-247319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CD7CC6DEC
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:46:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 71AD430517C1
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0775F34403D;
	Wed, 17 Dec 2025 09:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MKQCSLQ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AC9344029
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765964338; cv=none; b=Iu7CLT9ajNpQ25VPjeJ1d47sKkaU+H9KG/rdL91CPAxlKiuRP/GUs5KhNb0pxU+8HYfxzQx4Wr6brruhtiwc9DlBogQPxmxujxgab7ct8dJuBRXOtMiddSMdLzgFt3AZVTjGX6s/aelL/PiFiHEXaUAUxsdJLjIfXaT7G0u8zfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765964338; c=relaxed/simple;
	bh=6U8RmIsmmCspUZaxmJtWvDEjx4lOFUFJmBZcq1fdU/U=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=rYli+YBCvEicufZU01jeKx7SbaPntqrTQMfhIDovvQruS9af4uBcxTw834AaxBr/lV5vUx1Hl8XhhYT3wKW0npr8Vn5svoTPBKLrkgqJBIKt9E9JpLk9KYAxsjNgnufaEZqKMCjLbejGVgoMuZg4oPR6jvLHXYdJds6s4rWVn/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MKQCSLQ6; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b7633027cb2so980591566b.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 01:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765964336; x=1766569136; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6U8RmIsmmCspUZaxmJtWvDEjx4lOFUFJmBZcq1fdU/U=;
        b=MKQCSLQ6mm8PBzpVWnArJqAdT9wzkfrm8TL3Uxl1Qbu1Zm3UIjYELupazye6oDxknr
         2LF2KN9LDmLo7JO/GO2CLSoiurlEztgW61z+RpKW0TYHpxLHPcDHN8mL1hop8R3+1Lqd
         I4znauKCWepxcndZv1s7m7dIBZAWiHGzdkp/T/JO7zAdwgEEdcJRzWGIEzXusrRIh1NF
         m2KX2+CknsnAVeCMVxfQhJDbQDMzRcx5e5G2AgxNQNFYxRiOIXZtxp0SXHwvlGujAAvQ
         EYxblZTvQoq1+21eYGav/i38Ae81lTYMCK2jL6dElIXPl+T73n8kudzGf7ceyDsmN27E
         x0xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765964336; x=1766569136;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6U8RmIsmmCspUZaxmJtWvDEjx4lOFUFJmBZcq1fdU/U=;
        b=r7LgfkDFNpqA5aC3R+ECbmMaNHpyXl9FzpJBBzi84C+6gxZG0sFmfSemo/vArFjS7p
         YwUjPnceru6/jGmGwwzirPowxNV9gbOqbJsT+KvuQIxAA6DP4s4DGSqTJV9FJ+8wNF5U
         WKwvAlziaEqKfPz9fkP+Onj4QslCU4lJZUHSRI+A5j5JxV8y+ltHbjAPFT7sO1/K2LIQ
         6QWkux2CuCBmYbwVrqwg/qKP2oMoatnsfHskm07rRwecWMeKYfFecwiQtnykkCaNDtQn
         V2lChrAbDqjbzoZG8SbHYGv0XZvaItihNgZAS14fAtnTucRgywFHM4gH49Rf/Up76vxw
         iMWg==
X-Gm-Message-State: AOJu0YyrwXRESVeOA3jLaqkaDoommeme1Jsm7ta/PaS8AhNoUIdYYips
	7FAOcNAEjSL0vh25eVgynxmr4QsJblVazlX4PsqKyaeGjC4pMX67OtKD
X-Gm-Gg: AY/fxX6zdhH9+jjgsswNNP8/n2+udWe3pBjgPP0GpwDBs+Jc+m22KNNCuOMCvfb85yu
	XZchqVpTc0vwj4OtuHeqFk3BEekaBx1XIN9NPSa0Vx8jgONXRhm65xfjHY2FX7fApf1uVLfEwyJ
	tJc4gFyUJ0F1DvT+Gv8geeopf4Co2YsT70VeSVviN7nIMZX7GMDqEXZiqxDR9GAKbx8K7pQH0Yb
	GbsSTrOnLTWnp+PTBS164QREPIimT0JjeLdG3t6kqTSNMqbVD4U8GrueK6dcsJrPLtVC75n5Y0R
	U/Fm3jQzcCbOuHTwpwNhgsAnnPfV8/eIbiIS8nACUPuFUIwO7kc25kLGs1bJXX89OvfFEg5wb17
	V+8anBNY532eCMue6nolJLdYjBweB2vv6UOZ/xyMNr0HRvIdknNSN29MQKty7u+yvSsVX9ozFmf
	MfD9oTnxm/pv6niuPXrpwNybBB4XwcdKUAMybLVlFKre0=
X-Google-Smtp-Source: AGHT+IFzAKXXuZny9gStK6VTzPjayW/7SjoVngvkKhxYreDaWZMWb0JOiqkX6kUUWkxYAZiqBvU7iQ==
X-Received: by 2002:a17:907:d92:b0:b76:7b85:f630 with SMTP id a640c23a62f3a-b7d238fa0abmr1684969466b.34.1765964335319;
        Wed, 17 Dec 2025 01:38:55 -0800 (PST)
Received: from [10.25.213.104] ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7fbd7a55dfsm1070592566b.25.2025.12.17.01.38.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 01:38:54 -0800 (PST)
Message-ID: <23326a3a-fd1a-440c-acd6-28d2e7c0f186@gmail.com>
Date: Wed, 17 Dec 2025 01:38:56 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/5] Add support for i.MX8ULP's SIM LPAV
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>, Shengjiu Wang
 <shengjiu.wang@nxp.com>, Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20251126124218.803-1-laurentiumihalcea111@gmail.com>
Content-Language: en-US
In-Reply-To: <20251126124218.803-1-laurentiumihalcea111@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 11/26/2025 4:42 AM, Laurentiu Mihalcea wrote:
> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>
> The LPAV System Integration Module (SIM) is an IP found inside i.MX8ULP's
> LPAV subsystem, which offers clock gating, reset line
> assertion/de-assertion, and various other misc. options.
>
> This series adds support for the IP by introducing a new clock HW provider
> driver and by modifying i.MX8MP's AUDIOMIX block control reset driver to
> allow it to be used for i.MX8ULP's SIM LPAV as well.
>
> This series is a spin-off from [1].
>
> [1]: https://lore.kernel.org/lkml/20240922174225.75948-1-laurentiumihalcea111@gmail.com/


Hi Shawn and Philipp,


Gentle ping on this.


Thanks,

Laurentiu


