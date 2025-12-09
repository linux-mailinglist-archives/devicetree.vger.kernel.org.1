Return-Path: <devicetree+bounces-245295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA78CAEC71
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 04:09:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C6A33028F76
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 03:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5D73009F1;
	Tue,  9 Dec 2025 03:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HgCGdRc2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973AA1FF5E3
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 03:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765249790; cv=none; b=AUc8ikLYInmvA2FB8eRz4BPqBE3c5A5sDr6qdLmLEfnt9A7oj2Z1llMREMj2zKvx6OVMMjIkK0Dy2B+xF5J7GQjHSU3cvuakXG4KadQUuCV9TwHRmtaeVKcy6UmrA5Ntqhznsff3D19pesGvklbGdvs4IIMhKHhwYLz2lcoTqms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765249790; c=relaxed/simple;
	bh=j9T9qc8kv4Wu2R0NYry0ZY+FxQqLZIT+LQK8My5CDoE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=sPnHwJuy0aBkV+r/hsuwHnduA1IMXB4Qv7v6gYkaMv/ZYhbM1iTg7BJYBkhV3qnbHXpYABOkblGIOZIuNT1XqOzDacU5O/WG5yM3lTpFbvk25BlGtehH8Fan+1em78OH1OxI0+daOWXW4ErySIke5gYutscLZaeRqgPeyf0P9qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HgCGdRc2; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2984dfae043so53179765ad.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 19:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1765249787; x=1765854587; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=MTpghPmOCPM19OYgMgbGT5qXtYNK79xgvXC2Ue5PK3k=;
        b=HgCGdRc2d0z39IbfwMvEcrxUWaw5AjkywRLoDO90tRJHPO8zgmyUQ03AnYYYQ6FjHr
         Yc9O5k58cd3qARgGT+0Vtwc6FAsNZYJuZcOCS2sgJ8I3X2/OtnpayyXW7JS6tTaKMfRa
         2ZeUyd1/hsyM3tg7pfdwjM66F6Q9CAjPPUTKl8kq0rmEyAOAUhC/ruQqCs9K4rCsk7Ju
         b+O9sI0NMIMdkIN/eVF5OzcS+i5luyV95IzMYzU5sfW3eTIQDwkysBragsuImEmAAs4d
         f+/PJhGPay/miO2A5IFMOzBSzV5p7Wjw7zSTCeHCJraRREje+2SJmoYyCDeVUX1ZIIym
         c3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765249787; x=1765854587;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MTpghPmOCPM19OYgMgbGT5qXtYNK79xgvXC2Ue5PK3k=;
        b=JMAR2kQX8T1R5rExVufcxsFP6WvhtbmxkiXXJS/URrrjqrYXJjvZKRMA57P0A41pZD
         h1Zddd8nfLnmyzS+uAAaJ6hq9A49jnZJM0TT4Xi9ClNgLxG1+jhmjaZ1ELpSF750Cmm/
         WFLQxTg6xTBUom9wBdCrQEPa7Yv/8BkhX+qCo49ppuXN84JOY7ehcGrQ6OokY0sd9JS8
         nXtx2JKPD1OsvTvVRVFbqjSwLMaqPT0tKK4gR4reJqXUqXfjOoQ9LDI+LiCY7kZJzYlY
         zJblG7khh9OiZmlI88JejEGcUbxTiusCsutccC13Mb8+NaJ7NWQdON/xZaPdDYwTY9MW
         fOoA==
X-Forwarded-Encrypted: i=1; AJvYcCUzy+zrgLwvcgm8It7ldMfxZk4S+VoC/VR6pUrFs3dxTkKVtUauo2KX3KJdAgIE06ZZga3koS/ERc/A@vger.kernel.org
X-Gm-Message-State: AOJu0YzT0L8W1A9Y2xhPyLKn9XGjGS9STbMNk1+1aVjFK7wVIATLCn+J
	p6jOdKX5W2d15LCC+e1JMzhgLb3TgoNyS5djsGeVrf4DCd+EAYi4c9A5GWFQUSpEGFE=
X-Gm-Gg: ASbGncvZGZzy20Q5rTYLUA9l3ixQmTrEjujpWxjfg50Mka+BsP1ttoCw2nM/AXppBvz
	DvFIhFRYzfV3GbL7+MgVrkbpOlDbAD4RkFR4r/xns/puylSRGC1674jA1maDh+onf0a3HrslEb2
	dGPuSYQPz1/NqrzbcoHTbZ0OjNlTNL0CIRAFc1Fs/ZMciLK8fohpHNFqZd/r3IEz3AI458owbQ8
	Z1lDLCfh/DZRq/V98H4dAIfp+LxH/d8WMgql3Uh/FYlLGIW41fYnDPJSZrienVdMwH21sqMRq6Q
	hHBIWDyhC2dt4HCJWyk9xhA9BRoCw6Au/ll8xyaE9z7Lz2F+KaKTQlaAvsSanHJXuMtzLDlZi6S
	nJEmJzF3CiNjh4jLkxUslNRaNcXqwi1t+EoUSZObYcGleTs346XzpCGesLk0IZqHribGYWvbOHO
	HVE9XuXH2tkt9L0IbhOQk=
X-Google-Smtp-Source: AGHT+IH2WHVFwA78UMJtgEIT3W0hF7oDSenZgK9PqDDhWa2l7fUr6FMBMW4Hhj3UAdOKbbG/n2COrg==
X-Received: by 2002:a17:902:cf0e:b0:295:96bc:868c with SMTP id d9443c01a7336-29df546f962mr89029595ad.5.1765249786761;
        Mon, 08 Dec 2025 19:09:46 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29e4f15accfsm40755175ad.35.2025.12.08.19.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 19:09:46 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Kory Maincent <kory.maincent@bootlin.com>, Aaro Koskinen
 <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, Roger
 Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Lee Jones
 <lee@kernel.org>, Shree Ramamoorthy <s-ramamoorthy@ti.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: Andrew Davis <afd@ti.com>, Bajjuri Praneeth <praneeth@ti.com>, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 stable@vger.kernel.org
Subject: Re: [PATCH v4 0/2] Enable 1GHz OPP am335x-bonegreen-eco
In-Reply-To: <20251127144138.400d1dcd@kmaincent-XPS-13-7390>
References: <20251112-fix_tps65219-v4-0-696a0f55d5d8@bootlin.com>
 <20251127144138.400d1dcd@kmaincent-XPS-13-7390>
Date: Mon, 08 Dec 2025 19:09:45 -0800
Message-ID: <7hsedk73ly.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Kory Maincent <kory.maincent@bootlin.com> writes:

> On Wed, 12 Nov 2025 16:14:19 +0100
> "Kory Maincent (TI.com)" <kory.maincent@bootlin.com> wrote:
>
>> The vdd_mpu regulator maximum voltage was previously limited to 1.2985V,
>> which prevented the CPU from reaching the 1GHz operating point. This
>> limitation was put in place because voltage changes were not working
>> correctly, causing the board to stall when attempting higher frequencies.
>> Increase the maximum voltage to 1.3515V to allow the full 1GHz OPP to be
>> used.
>> 
>> Add a TPS65219 PMIC driver fixes that properly implement the LOCK register
>> handling, to make voltage transitions work reliably.
>
> Hello,
>
> What is the status on this series?
> Is there anything that could prevent it from being merged?

Nothing technical.  I'll start queuing things up after the merge window
closes and -rc1 (or maybe -rc2) is out.

Kevin

