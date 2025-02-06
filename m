Return-Path: <devicetree+bounces-143435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D27D8A29DE9
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 01:37:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57B4916652C
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 00:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED782F4A;
	Thu,  6 Feb 2025 00:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PMVMFhuI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88149C8E0
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 00:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738802234; cv=none; b=QqP0snGPgmmu2fEUPBPcHhMW1Z6rNAr9HEF5ENJEQdD+weKQiodl1YEzrdgGQPpbi+IsHdaaE/QLElQBsNQjMQ/kBClvbur7VgSU02KUQCrheumZ3jgcy/+iqPkBcoCUyGmt3DwKfD65VCTCPAWsqoiBdk1rVQm+bVYDcrQZ3DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738802234; c=relaxed/simple;
	bh=5Z4xMKpZQ3lBAbdfQ2sL0DdNJuiXEH98wodMhJutk1U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=qyBXNyGSxX+BCXeDq4IxNk6NHBj0CgPHUlbo2DVdJNX4P6BKvkvfjh1NxgqIdnooMT884cMPQVL61NnWOxMmwvbk063OwX19s6Le6mPuaVZgy9ACgPr4ZysOfk9tafsb1EbLf9Ce3wXIseRY0T57oiAIXcydwjoCJYlcIOpRMfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PMVMFhuI; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2161eb95317so7701725ad.1
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 16:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738802232; x=1739407032; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Mf9gALaToI+NxAqQsASvA6CATgLa2Ir66Qnk8eDUTg=;
        b=PMVMFhuIU97J3ZIggnkETkyzyh1Fv57cJhMdbq5seCOs9qhNfAjcDZHH+bkK3e3Q2v
         bWim9nc6WUIusWSq+leg94IgP7fM7jq1uvUz2L4l1RMdqVhkYABIYDMudInUrRGI1ruq
         rdwKaFAvXcQ7afQsCxq0RZL5bj5DMnbRjE+4iPZSBUNkb7wat/o3F/ZTvlOPLm6hkTg8
         fFQawJamKsk9v3OegHkb85FYTB5cwjPZJ/9FCvvFfh4tdHTEIAISkETNWdaXEY/r+sOm
         6yCc+18jzm/w0GQNOx9FLWL+yG1ygF/sL6DMm4DXuo9aHtJfnN5qZQ5rmhPZv+iPM0oW
         iPCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738802232; x=1739407032;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Mf9gALaToI+NxAqQsASvA6CATgLa2Ir66Qnk8eDUTg=;
        b=OEuY2+wKu7shgKR4/dyeYBPfIgPY7zmrrkgnLrb3vGQCOBw5jiC4O3R2UAbxGTvjSv
         vdp3F5QBSeFu+D/DHjUqzjRtuuGG0amJjBCXimEuzeZ06Jq1rlzUa6N1YgcLY/uiTp8o
         vMgKeK25mBiczo7HmCdY36s9kxnEb73iX6VLUYetH+gd/L0L/avOxF24096rdDrDnwUH
         nirOMDy/T+L8cJqJZzqmb6cxoycLngup1LkUvZhKzVba0jo3aGIaXHg2VRngKoPn7cjK
         KRYW1Xi/tg7KACmMXQAOGu7kOlsqiI3wdpUi84TKUx/emNXnzU2I0lwjrgyk0Ea1QZ/A
         Cw4w==
X-Forwarded-Encrypted: i=1; AJvYcCWBBm/cRurkon5L5RgHx78q81d4yBgw0D03ZVejGGrtjcUTnj+NHoRW+jq3ndvpZ5koHgAPMwrMHv9l@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4mKtYNyaCkvLdV3qy4avJDIiWuCoiJabYkJJHh1XCA9V6mFmV
	CXEfBjP8t6h63Q80icKIG7SDQwIk+/gMCc0dUlI8Odp7h7FHg8oIwHg+D5a2LpM=
X-Gm-Gg: ASbGncvMudJOnz2ea1yKuTXW/3lPty4Dbe46ghsjE9wnuicZwCYQo1/UoYvqDP112fY
	byDuwu4fShTKvwKtXwcTV2TFmG11lHKyk/fAHI8wk0wAezwJvuuaUnAIWrxqXMQxYbGl0GVmHnq
	riojUjZwWrrpndTirEuipSRpdNSTyt19qOGE0xrgxof+UnlD+MzCCUYEViRVi005r/s8uwmU2iU
	TqQGOdCkoA62EubBzxnL/qEx8tjdTSqzctIeeT0V89/ybHYXVXc/bFK8lP5d0Mdn0KsGe4S5KzM
	h+jCkcMbI49ONQ==
X-Google-Smtp-Source: AGHT+IEB+PtnOUiRYqtGHWqMCkWeS4QmJz+ymWa/TmAkHEsEUp3fEiBQDPHMWYpJX0ZEQ4SEeQ7CWQ==
X-Received: by 2002:a17:902:d581:b0:21a:5501:938 with SMTP id d9443c01a7336-21f17ee3df7mr79414935ad.52.1738802231724;
        Wed, 05 Feb 2025 16:37:11 -0800 (PST)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653ca1csm107735ad.58.2025.02.05.16.37.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 16:37:11 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-kernel@vger.kernel.org, Tom Rini <trini@konsulko.com>
Cc: Nishanth Menon <nm@ti.com>, Tony Lindgren <tony@atomide.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20250121200749.4131923-1-trini@konsulko.com>
References: <20250121200749.4131923-1-trini@konsulko.com>
Subject: Re: [PATCH] ARM: dts: omap4-panda-a4: Add missing model and
 compatible properties
Message-Id: <173880223103.2488567.7048498989184670189.b4-ty@baylibre.com>
Date: Wed, 05 Feb 2025 16:37:11 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-94c79


On Tue, 21 Jan 2025 14:07:49 -0600, Tom Rini wrote:
> When moving the model and compatible properties out of the common
> Pandaboard files and in to the specific boards, the omap4-panda-a4
> file wasn't updated as well and so has lacked a model and compatible
> entry ever since.
> 
> 

Applied, thanks!

[1/1] ARM: dts: omap4-panda-a4: Add missing model and compatible properties
      commit: ea07a4775df03852c353514b5b7646a17bd425be

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


