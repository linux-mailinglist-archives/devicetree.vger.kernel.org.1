Return-Path: <devicetree+bounces-256476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFF7D394F3
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 13:38:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C5C03009F10
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 12:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FA752EA473;
	Sun, 18 Jan 2026 12:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cdUutxVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9777D1E2614
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 12:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768739900; cv=none; b=IYMXOXg3ClFirzht0tA3BcwWUZkdPQ9k1BTeMRloP4l1uKOm9h+vR7mswKyhufCRO//NqNnQVJVAs13UNZ6QsoW/q84G6KrAfrCFngCo3HQRpK4WKTv489rl1fOq6biOZZYHHrqMIDcvraI1lhXv+xwS7KRKYcou3omkBQtNP8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768739900; c=relaxed/simple;
	bh=0hVyA2PCi5FEsxNH21GdDW7QN4jM9ZNzdMJ6AOp9Qh0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X18sTi0VNnmAX3YV7iCWVcN/l/BPCficnyDEv6SZW/8LyhPDUoRnbxmMsuot78Fz6kJwVKEVHG01vvnKLTpnSWsP21mrKxoEtS0iomav+6JSU0tdHH2EA4BPmxoMyC4F0IoPkuUkf3VjVUkaE+ZHzEzA4luB96uzkBglxomV2gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cdUutxVP; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4801bc328easo25951435e9.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 04:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768739897; x=1769344697; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Suqn9RTje01PunnIGGFhUEA52WhKnlG0PrdrAwNU83A=;
        b=cdUutxVP38NXVTAvZb8iLdTzcHVmKHkCa4snVlzuOItJVAH9mgcwi6ZA69QFjnrknB
         DyXrSoecCn0efnqhaGMf6DcYgBdTowbFS7CmZNNPWT9oE/KylEjX2aEBt6mgtnDOD7Lo
         MS3ws9bfAKdxcphdE/8wwOzyGImvtbmgWjaXrN1s1d0Pjc1gHcEhRlVvXJOcABERmNby
         TaPmU6WAPAUEBO14unEM0qTaCDPxBS6njVCBjvNp15MyzgeO7A/GT9pGNhyu9zmM7ENS
         NfnZOnEMhcrwpqAlt++xU/9IDsPcblviydPYyFaQQFqyI5gZCrWJ4PKbFQ5xVVZDjkew
         3euA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768739897; x=1769344697;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Suqn9RTje01PunnIGGFhUEA52WhKnlG0PrdrAwNU83A=;
        b=U5tmAIAzFBoktopfEiVjPgc4RE0X5vRJMEsfgFZcmuXI4aTkNjNZLUNmInB547KcEv
         QWwtXoVEjtT5ul9kPRsK1xVvWUjsMiJRa1rvN45G+v+KxGi3UMYxUOG9y5Ag1VZllViu
         VcsL8vVr8ydc+NeWMAfNi5KynDM7yo9FJ0SWCbwGAtHn5zp3Vu7vGfVW/A8t/tvTcsm8
         gYXn0rQ4hTpulNh/P0+jYHMEEkivqQAQ6KJJgG1Ynvwk7NAkbIQ7ja3KM3bLFo8vHval
         Q2ngvzfiExLLTnlw7MOamla6LLevMh7xDfx73zMT2xbScAryAC1w7n/5TYoqa5pgSe2a
         Aq8w==
X-Forwarded-Encrypted: i=1; AJvYcCVzWPtovSl914GMhwVM4AAm2PnM4E3mxnHPFD0MsByXeWI2ybEmR+YZQQCB6jYxlkMQRFEHJ9q1nbpd@vger.kernel.org
X-Gm-Message-State: AOJu0YxrC24RXpS4341BzvaI8qgzGN0S8GesIbNbimiKcxgzH/PcsNXj
	wlOAA0lKNrLfkAyb8Av1MsjUJssn/YBQxtuEPezm03bL3a7mb3QnPKf1
X-Gm-Gg: AY/fxX7uyCeO8Z5WCEi1fsV3VK5dJH7S/deFOH+XUsCNbPCwEaIylcrUVBZQj6JEesj
	a3caHtuunPABrbH053lKobrZy/fks3vj7Dy06h2NDFf0oAdRXkiaOPKsrhPLo0XLLOM2IDTdD03
	bfDLfs8COiC89SmWRs8fGidDAdPzIJCVit+0rHqo7E2qQk4Hay2cHZTJqr2kHVR+F7to2PgooB/
	jMP4KkwvHayn1mHINAmf+bE3INuDzd536P8RFQsdTBsDtZr6gW8T8M+j3ZaIXT7dg5AMfjv+PhC
	IJbkxGlQhLxlWcLiFylgWgHrCMZZENfsFyFwnMEjXdmboBVerIyQ34scDYMt/iravWv1N/e8qcK
	Mv4cKZMaJei5Qh9kQLUBPXZKa0JF1mWl3UUwsSOUZPVOFGRV2+PEONNq/dNIwlDJepz6DneUO3P
	wk1U78Iafbh0gLjoCOJZ0dkMuL3BulqHSrF+hDLrD0YzHSJmntFQ3eBA==
X-Received: by 2002:a05:600c:3107:b0:480:1a3a:5ce6 with SMTP id 5b1f17b1804b1-4801eabf6b4mr95429315e9.14.1768739896538;
        Sun, 18 Jan 2026 04:38:16 -0800 (PST)
Received: from anton.local (vps-58d0fbce.vps.ovh.net. [51.178.29.162])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8caceesm138596495e9.13.2026.01.18.04.38.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 04:38:15 -0800 (PST)
Date: Sun, 18 Jan 2026 16:38:09 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 5/7] dt-bindings: sound: sophgo: add CV1800B internal
 DAC codec
Message-ID: <aWzS4y82qkzJ-xkI@anton.local>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20260118-cv1800b-i2s-driver-v2-0-d10055f68368@gmail.com>
 <20260118-cv1800b-i2s-driver-v2-5-d10055f68368@gmail.com>
 <20260118-magnificent-horse-of-warranty-e5fdac@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260118-magnificent-horse-of-warranty-e5fdac@quoll>

On Sun, Jan 18, 2026 at 11:16:15AM +0400, Krzysztof Kozlowski wrote:
> On Sun, Jan 18, 2026 at 12:18:57AM +0400, Anton D. Stavinskii wrote:
> > Document the internal DAC audio codec integrated in the Sophgo
> > CV1800B SoC.
> 
> Squash the binding into previous binding.
> 
> > The codec doesn't have any special configuration at the moment.
> 
> At the moment? Hardware is done. It does not evolve.
Will reprhase, thanks. 
For sure hardware is done, but I'm afraid I could miss some
functionality because I have access only to public documentation and it
is not full enough. For example there is some kind of amplification
limiter register field but there is no information for now how it should
be used. 
> 
> Write complete bindings, see writing-bindings document.
> 
> Best regards,
> Krzysztof
> 

