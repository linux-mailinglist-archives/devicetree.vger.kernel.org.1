Return-Path: <devicetree+bounces-255158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D15D20351
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9164D300877D
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B7343A4AA2;
	Wed, 14 Jan 2026 16:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KaFbdj6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1463A3A35D9
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 16:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768408176; cv=none; b=aaoZWtdzjOwat+HCfJjKYCONnPAfIYdyJT5vlv5l96ipqj9B/w/TNU/wflg4x9O4XW5mqwEpPoU6snHkQg4tUNENygp+SPGvgM7s1S/72rDbxFX8b67OFQbMo/6rpEESuHNK+GXxejqv2lTNfgrlVaHqidYBX1olRQ354eLSvM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768408176; c=relaxed/simple;
	bh=MjPHk3EmtDPhGYdLITTZKXeC850lyP15BAAA2k7LU44=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ku8qa2R4xEjLnjZPU9nzl/Y1dGNWxhqwOxkOeCli0L20uJR2+Wr6G9+FIOQpAlW9Mj5KWcwnqXCYG3tKn78Ed9QExO4VThUZTOvu1ZWJDcMHpdaPPLMGvHi/FdMddKorc2IVDvAG2cswCf8R2si5JN4EZUodrwTaPjLQgbKYE30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KaFbdj6B; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-432d2c96215so13529f8f.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768408171; x=1769012971; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=wOGask9npR+YlnkUj5CzN/Pzieo1MzhAPrMcaH9JsNk=;
        b=KaFbdj6BCYQyw/Y+iUeCUT6hsYBdyqhnEQ3wHBnpoxYvYDSMhj7XXOO0spko/mmpsl
         Onw+JevrvYzLo9MzTE760/wfAwg1E5CI0WnI7WkXQqfpFqANwpJVvh+diK8WL/tyP0w4
         7uYbKthMWAPQgTe2uR3XU4mfOscKPzitBqY0cKj+pKBc2xvokHeDU/hSnHPHE2hl2r9K
         xUZvRIxP8JYrR4l+ws36YvA3kxE8w2e7DFeq32NCLp7V3kbU4KtyyRIzeiNih6GEa1/Q
         idhEwgep+Sw5BceDYkVqNDnvfDqmlL5v3bUe/I7Ho1FMI/721X2g/9q3a+MFk7Rdhhg+
         GUZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768408171; x=1769012971;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wOGask9npR+YlnkUj5CzN/Pzieo1MzhAPrMcaH9JsNk=;
        b=kUjt9cLftXTW4eb4nogvdDxQw1fmUz+NJcAQotUlN0sQ88VvtYYLLv64kMYpsUDni6
         CTkKqlWrEDjx5gx3UF08tYt7cxk5af/IIs7aPE/gOfIhBsmfdFLblAyClNuwyerFradw
         5kUrSl1TPTbq+xjKa1rn8SjqM0leUK0ChB4t9rS5reAi9EyfY24GFHtSS15vaGZLIWRA
         5Vm42gVyyXQ4PaoxBJNETFYaZjgWNPCpBUmmU7UbGGHmQmP4qVPET0woBUor5B0kVetU
         oh+ytuPSvC9opX/5xVoS85tDg8wK8+fOi9EShCqor60QvGacRfthxZt9BNHaq3i8ro+/
         PIJw==
X-Forwarded-Encrypted: i=1; AJvYcCVrXaCKxfO6DIY4zUB8x3Z0l48Awz8+/TiK8mQyZn6J8dzFPg3mO17pvqSUc2zpr+MaMkURTa9WnWRZ@vger.kernel.org
X-Gm-Message-State: AOJu0YweRhLnmMLPOm4F2/7nIogITJ8E4GLHThGZ0j2sURs99/UQ5F3c
	PMxkVBbflNmz2+gK0WodQPctxWzGt6Fl+qIKuLNwK0KZ+jTqCjcy6AqqMWlYzJ5d
X-Gm-Gg: AY/fxX61w7V/dZgJboI3Rruq9sVWMEWj9c2z6Mw9TJXv3uPGuX4QQJmchVlXsid6hWM
	MLTsaYWLVeU3QRbVchhaUnWcbi5SWD3G4QteKCHfHBDsVYlzc2wk3SSFbafwNdf5xssRFwRQnF5
	9xnBH5n5cNbxtcEOU2xW7xua5pNFJgzrHQnv/kf+CQ8HFnzVEmUMAegsIy5mqBlnL6RePH+njLx
	LFFZRfIZ1OrUuA3bZ59WT4d7h6NVyNBspS3nHNjR56f6Pf6wnbUabA4/RnOP+1ohMhxezcfnMj8
	NKNyniZBkl37MPsjkp75KwDXb21kHG2s8yHvKvU7J7YDvZF8/B6UPBvpYOT7nhxWsD+BAQXzM94
	Owz9/jVjeG9fmYWxq93kNovy+8cCIe8f74VtmN4k0wF/BJlrkqKuOh4m8TuQw1rafdR4FlNBuqt
	d/oYM2KK7H+cFNgHd9uUK7VjgPO4+Yd6mbQtECwDo=
X-Received: by 2002:a05:6000:310b:b0:430:fe22:5f1c with SMTP id ffacd0b85a97d-4342d5dd3d4mr3043280f8f.59.1768408171137;
        Wed, 14 Jan 2026 08:29:31 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-81.ip49.fastwebnet.it. [93.34.88.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af6b2988sm147835f8f.28.2026.01.14.08.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 08:29:30 -0800 (PST)
Message-ID: <6967c46a.5d0a0220.1ba90b.393c@mx.google.com>
X-Google-Original-Message-ID: <aWfEaBla1K6AZnsY@Ansuel-XPS.>
Date: Wed, 14 Jan 2026 17:29:28 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH net-next v2 1/2] dt-bindings: net: airoha: npu: Add
 EN7581-7996 support
References: <20260113-airoha-npu-firmware-name-v2-0-28cb3d230206@kernel.org>
 <20260113-airoha-npu-firmware-name-v2-1-28cb3d230206@kernel.org>
 <20260114-heretic-optimal-seahorse-bb094d@quoll>
 <aWdbWN6HS0fRqeDk@lore-desk>
 <75f9d8c9-20a9-4b7e-a41c-8a17c8288550@kernel.org>
 <69676b6c.050a0220.5afb9.88e4@mx.google.com>
 <e2d2c011-e041-4cf7-9ff5-7d042cd9005f@kernel.org>
 <69677256.5d0a0220.2dc5a5.fad0@mx.google.com>
 <76bbffa8-e830-4d02-a676-b494616568a2@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <76bbffa8-e830-4d02-a676-b494616568a2@lunn.ch>

On Wed, Jan 14, 2026 at 04:56:02PM +0100, Andrew Lunn wrote:
> > > Yes. What you plug into PCI is not a part of this hardware, so cannot be
> > > part of the compatible.
> > > 
> > 
> > Thanks for the quick response. Just to make sure Lorenzo doesn't get
> > confused, I guess a v3 would be sending v1 again (firmware-names
> > implementation series) with the review tag and we should be done with
> > this.
> 
> Since this is a PCI device, you can ask it what it is, and then load
> the correct firmware based on the PCI vendor:product. You don't need
> to describe the hardware in DT because it is enumerable.
> 

Hi Andrew,

I think it's problematic to create a bind between the NPU and
PCIe.

Do you have any hint on how it's possible to read the PCI
device attached? I'm not aware of any API that can be used
to enumerate what pcie devices is present on the device?

Considering how tightly integrated things are in this SoC
I still feel firmware-names is the most effective solution
for this. The WiFi offload is mostly optional and sadly
due to Airoha limitation, it's not possible to have separate
blob for the single feature/support.

-- 
	Ansuel

