Return-Path: <devicetree+bounces-252524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E99D005B7
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 23:57:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A89B0302BA8D
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 22:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 494542C2368;
	Wed,  7 Jan 2026 22:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O6xA+n14"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C240278E47
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 22:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767826676; cv=none; b=T9K0JjcXXXVIt5BSytEnVW0c1uuMsM+ANbz89iPxs6iw5ZnZ1b4F66MSojtXnvY1YDaE28YkUmcwQlJ5vnJesCkh/+nYI2iARX/3k4uKqurrQ5VfoQSvcMKiZwUDfCZ+WsatuOpS0e1YYN52iKlvMFSaAYyGCcu2NTtcGYWKfk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767826676; c=relaxed/simple;
	bh=1TGTeidiGCvqOZ4bsoKIlueH1jfD2bKXwBQBBP/tjm0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=EYS5323zrPqouWj034ZofrYbwLwjoRDy6oMfFReD/tQPxq/PgnMyyYj5AkWtZTQ55G0z44sKaK3OtoHi3U7sWSvpSWuvsMhG719kjS4QxoM2AliIgMC24tHE+1eMpSujLkBVbvyV8Wy9KpZp5+Bh7LHJzGKTBugetMcHbRaW1/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O6xA+n14; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso21517275e9.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 14:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767826673; x=1768431473; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1TGTeidiGCvqOZ4bsoKIlueH1jfD2bKXwBQBBP/tjm0=;
        b=O6xA+n14Nl9Tz9WEXLr8X6WC002UwBj8CMCuO20uyG8NS6vK4fvhaNa8prkRR7OUgb
         TH4JkcfK7392XNlJoM+WvyzOjiKrxHREE/yg8PlXnK3J/cQBpsnH5Vnpn+NqKcBABaLB
         41cMS3m6ZdgOiCNDN1g6B8Z6osbT5kRlm89EKg5AuizS50ar2CdKevX9uCD8YCAB/b5W
         o9Xs9D/UW0ZX/BsJ+zF4dyi0LARqLCgu6qSO92rNd5mDJZfnR8nK0dK+NggX0V9sLhva
         e76dGofuygHCZTxIVxK97ohHEHPo/Dyamnt+vhUCqhgNSfGMNhT5FgdFoTXod/rdsJTI
         4JhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767826673; x=1768431473;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1TGTeidiGCvqOZ4bsoKIlueH1jfD2bKXwBQBBP/tjm0=;
        b=NeOGznrAwJ7zgz80l14DaZ3YFDB0q/MAsXDN1jcdzRVSAjGbTgcGprIQ64MfeH1QNg
         7ShYhy62vKID8taAEEOdp83+Oh01hKnvhG2Y5Vv7ZPBI5m0izvDHnRVwMbPXFKmzQnaL
         R/7IXuAsKcpRY83Eefc3YSOIHEt9wRSkSkdakixNfOEjIFfIIWGhLM5o4DWtQ2NbU0RO
         /R7nBP0lO/pywpy7jk+LTIcWrwZM4dqpBR1QxItCThcvy0ElO7AAr4N19f4dIO7D3G//
         JAjxM9K3VQM8QX2MPP10jMo7iLbEwYl/pD7DdXJWNwlpt2iDovBKoWzgBjfw9NPUSRPv
         OXAw==
X-Forwarded-Encrypted: i=1; AJvYcCXVy53FxRc9Z1mgZ6w92ITWVsJ8GHvmrCekvcNYPFmH9zFIOsm/FDrCGtWwcPuS8o3CZnGyxoXgXjd6@vger.kernel.org
X-Gm-Message-State: AOJu0YziF5TymIP092VBtuoMX6jnvoyholJGbpc7qbbgfpZGlOcqYBrX
	JgQjPzS7BsNgYvooYUNfLxGe2svCcxGuT53Cb4jBwb2ZA8P2s/1Yzv9M
X-Gm-Gg: AY/fxX7/Q+e1sqMMfv4kwK4MafDDVwopfb7hIE4I9alGA1AwqfLIQjr95D2POP3gPvo
	douRN/lseAtcPxM/W0H3sss7FuT+50f9+mXtACK5/SwS/7vtC8ZV+1A7qTCgcXQM7FIaNwMlvHg
	/fX5PtIVwngAW/Ia4L+TbhD1Ck3slFnB0VsIt79qIxc+PwWtcvHGucZ6+hJNBYGylWVsbDjHGXL
	7wthOfETs7hdcEzPdRifFbIFRz2EmmoIh6nGJd92OT+OO6nGeiPrfBlYW8KZqEv3WBixdZY1rgg
	yiZOgM3VlAbtjQOEPa96vJTJ0wCBjMy+Cv/B/vBwgnzbtfovKRTLjYklt2dc7EF46QwQS87xbJq
	JFNUFkw00EhCy+mcZjCWgM42HNM+3Pct3SxvJdTyhw7o89ANBs2UoZ1zk0nC954YouYI321Eg5n
	lO39oG4MP5/X1SpKewnDYIjz9S7FY7n3TFVfShdFoHpA==
X-Google-Smtp-Source: AGHT+IGI92ZHCmtvBoQLlcOxARn6bJsuytihUD4BB7f9hJIHBDRWBS6xHjN7DFxYfdt7OJpxksqhhw==
X-Received: by 2002:a05:600c:8119:b0:477:b0b9:3129 with SMTP id 5b1f17b1804b1-47d84b0a8dfmr47264595e9.3.1767826672807;
        Wed, 07 Jan 2026 14:57:52 -0800 (PST)
Received: from giga-mm-1.home ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8715b5f7sm24574695e9.4.2026.01.07.14.57.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 14:57:52 -0800 (PST)
Message-ID: <6c90102537c3e3f1712538ca0b165cd54d71d8c2.camel@gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt
 Trigger
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Markus Schneider-Pargmann <msp@baylibre.com>, Nishanth Menon
 <nm@ti.com>,  Vignesh Raghavendra	 <vigneshr@ti.com>, Tero Kristo
 <kristo@kernel.org>, Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, Kendall
 Willis <k-willis@ti.com>,  Akashdeep Kaur	 <a-kaur@ti.com>,
 linux-arm-kernel@lists.infradead.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 07 Jan 2026 23:57:53 +0100
In-Reply-To: <DFHSDXTVL4AU.2OQ9VB9TEJ75G@baylibre.com>
References: 
	<20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
	 <979eb1054dbe116c2c8bb9920e94e3a93db5346c.camel@gmail.com>
	 <DFHSDXTVL4AU.2OQ9VB9TEJ75G@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Markus,

On Tue, 2026-01-06 at 21:25 +0100, Markus Schneider-Pargmann wrote:
> > I think we would need to discuss this with TI via our FAE, because the =
change
> > in question has both been discussed with former FAE and the technical t=
eam
> > behind, and adopted in TI SDK.
> >=20
> > Or have you already discused this with corresponding TI HW team?
> >=20
> > Which hardware is affected, is it the official SK-AM62A-LP?
> > Is MMC2 the SD-card?
>=20
> I only tested my am62a board on u-boot v2026.01. It is a SK-AM62A-LP.
> MMC2 is the SD-card and mmc1 in the devicetree.

just wanted to let you know, I was able to reproduce the problems with SD
card access via MMC2 under Linux on AM623 with ST enabled.

We will seek clarification from TI on why this happens, which peripherals
are affected and what should be the course of actions.

--=20
Alexander Sverdlin.

