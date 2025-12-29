Return-Path: <devicetree+bounces-250112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D85CACE6510
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:48:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CAD603006A54
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 09:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B7F283FC3;
	Mon, 29 Dec 2025 09:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DkgU1OnH";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="n4mB3cxf"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D882820C6
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 09:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767001693; cv=none; b=P3gv+iiATtqkKfloKzNqge+5d5ZGmpz6T4qDn9zHSzEo6IsXosq12ZiX6sAuqjgjQqn/MdAWw8Hz4m0yIiKKXo6P7t5bCCEyoWUlum39b8Qral4PFjlEa2NnUK7LxJyiLmQ63FSBVBNDaHVxoW3JKU5VYndUQ/ZqRQCyiPD+Mw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767001693; c=relaxed/simple;
	bh=X7tl44V3WL7cO7gk/CByTptZ+spzMkyKgxlBDoZ4nbg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=JPiKD7mMDxDvwWHOI0Xac1Hnd+pzaGEtPPzhzBoKZOXCu1G390dko56elaSsRlavDOxtc9YrlfWA5AGTGE7W6xz6xZUK6/2f9i4K0gp0W+OaXT8G8qnTPP/qFPpdmaVg9XQC3GZnoJCRSn+TkxbppHfukZnJ8XasViPUQFVv7ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DkgU1OnH; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=n4mB3cxf; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767001690;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RnoxkXU/GI8KdYqeGZPuNP5j74RbxRLg0HQulbL1vDI=;
	b=DkgU1OnH1cVSWqgtYvnEA0aqdWYFHpEVeqVQgRpkKFLzPTNpGN8Jzmqfoh2tj4p4OOMIDo
	hy4fKqS0hD/tK51ixzLGc5vgunA+ZYxZyvg+NFPBV/LGo3crLEPxprNbEqFpQDlQXYvL/G
	GvwBRWaNojuvMtG/53O3C3Mx12TXtQU=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-310-gAqPmr8fMxOH0SRYUwvItQ-1; Mon, 29 Dec 2025 04:48:07 -0500
X-MC-Unique: gAqPmr8fMxOH0SRYUwvItQ-1
X-Mimecast-MFC-AGG-ID: gAqPmr8fMxOH0SRYUwvItQ_1767001686
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4775d110fabso76203495e9.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767001686; x=1767606486; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=RnoxkXU/GI8KdYqeGZPuNP5j74RbxRLg0HQulbL1vDI=;
        b=n4mB3cxf2+vlcC75x2qFuSjnE2LvtTq0LaM3DJrFPzDWPqGU2s7ZslhrVYdKasotbd
         STZPfD8gS9oNodueIkDQwYY5vU0OxrsZNkblT9C+0hOdTI0bmaPCVp6nft6fWHLtss62
         CC/Qb/Fi7/K8V7f5Van7OT8r5Vi3ORR8pTFaCTz1h6Oa1I9ckYJvMs1i1V4ikUd8B2NJ
         fMDvN+oBB5c3O7jrDwznHWMQdIPFeGJxxl6F6JKWA2Yf+VV262Gp+qK+q+Yxxc9HngEu
         2amA3rTnVAa5R1iBeRiQaD05G/alIlqc8RHz/u+K+06do4sDrvi98QsaXNh0LPURIJ64
         5wVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767001686; x=1767606486;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RnoxkXU/GI8KdYqeGZPuNP5j74RbxRLg0HQulbL1vDI=;
        b=JhytVZYPUBK5aohv4jw03CDqwGVF4PUSwfXdYMZxtlJe7OAdTGTuIRxpGPZgJHHH/H
         /C8GPaxHit3Jyi8Ln9xjHX99j8n4O+fgHyBPSyYI1nK8aB80dCmza0BlO7/M41/zkpaw
         R0rDiB/zHAYN6LS9dJFTi1flFEzdSv5oGsAUUrMLtuPXumZXdYZYdyDqY9F4Dj/pMVv5
         T+mw0zsPZdb7wqNlcKDDbTIykIKQU9hBnRhHovCIRrlR3bSDQ4dOFn0lywNcPtXvxQbB
         HCClnZSRbxhg1p7AmmU7RqY9ysUcZSfM9qbzfrjkZOW1lkllA2/e5kTx8nJ5oCWoLBts
         qhQA==
X-Forwarded-Encrypted: i=1; AJvYcCXCNA3XaUUUN+lxmUdbee6wHNUYSNtTIdcB9xc6O1GWzmRohcsAKPutStDjmxPtLKsL+2/j4qcuPZew@vger.kernel.org
X-Gm-Message-State: AOJu0YwziwB7Dcy8s9olDLuR5YkivlNQzvcZM9g+ECdjTh7zZGQwE9Bx
	ymP4gdVj747+9gbW4bDSOIIuZjdR4nLkusbLMpCcJCOqB5WSRuQRmiYIAbGS88dMUVBb92VIBiN
	AFGCflL3uHShxh22nXvl3OgVviWX8ctOjnp3+IZtvhwbun2glA7J8eXc+J2lxyhs=
X-Gm-Gg: AY/fxX7CzitncfL2hP3HR7cUr3RtAoIk0+Pd7dyCCWbc4NRpMsOQsZH79HzYtWR3WJm
	/XHok78+xWcYHOHZubsmXOfu4f/rFx5Ex5XEAm/k0t8CbJfQ+1BiQZomqbK9dkw9DgolM/4/Thk
	OdFavdd1TQuuAwYqy5bqs4qQq0N0/qPZmWv47KFclTyWfmAk45jgvUXGnXjKlFMqy/gQ0Erb9ee
	prj+KwYQr4DEJ8FkptQiQXP/ky4bO++STS9PiQTB0RupcbgXLLHljKKwbRs4Ra4WOesON4c3r3C
	ice5EPn/l8Zjifl2SKd/kllvGENLEpGNBXdBtLjlmd+jl1EXzy8FPr5w7eh76lVcOaekNhaZzxX
	uFOodIk+iOTTN4ksXKMecF4OzRqGPtk/9Jajmf+FX6Oo6x3i97AWS3mBLhByjsvs0Owkd
X-Received: by 2002:a05:600c:4e49:b0:471:13dd:bae7 with SMTP id 5b1f17b1804b1-47d195911b8mr306757785e9.30.1767001685805;
        Mon, 29 Dec 2025 01:48:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHzfoPDCziY2Ru4fP0I+7aTnAKnoHe3exw4U31W/SkLy53MoLHcz6raQVV4UNwNgdpcefpRiQ==
X-Received: by 2002:a05:600c:4e49:b0:471:13dd:bae7 with SMTP id 5b1f17b1804b1-47d195911b8mr306757565e9.30.1767001685444;
        Mon, 29 Dec 2025 01:48:05 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d19362345sm528501075e9.6.2025.12.29.01.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 01:48:04 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Yixun Lan <dlan@gentoo.org>, Ulf Hansson <ulf.hansson@linaro.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Iker Pedrosa <ikerpedrosam@gmail.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, Yixun Lan
 <dlan@gentoo.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: mmc: spacemit,sdhci: add reset support
In-Reply-To: <20251223-07-k1-sdhci-reset-v2-1-5b8248cfc522@gentoo.org>
References: <20251223-07-k1-sdhci-reset-v2-0-5b8248cfc522@gentoo.org>
 <20251223-07-k1-sdhci-reset-v2-1-5b8248cfc522@gentoo.org>
Date: Mon, 29 Dec 2025 10:48:03 +0100
Message-ID: <87bjjhhb58.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Yixun Lan <dlan@gentoo.org> writes:

> The SpacemiT SDHCI controller has two reset lines, one connect to AXI bus
> which shared by all controllers, while another one connect to individual
> controller separately.
>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


