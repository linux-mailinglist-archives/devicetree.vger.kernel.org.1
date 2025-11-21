Return-Path: <devicetree+bounces-240947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FFEC77F5A
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:41:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 185B92EEC3
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C3E52FCC01;
	Fri, 21 Nov 2025 08:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S1nx8Psn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5326FBF
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763714221; cv=none; b=A4kv2F7WWtjeSrZS8pEt85RGq+ZKNccGAJdtNIYnDLiqF+Ss2Gbe/JQhXHAYkZ/M6Yj5admVu2GwaY81GLDBkbx/VCBQuo5pkXb3jqb1zvBv2fumZ4UCJRtlZQJxcJ15A+tfUNBtqAVQRDLwexubpDuioZC0FztjXRKcfJtn9e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763714221; c=relaxed/simple;
	bh=2CSuKOB0Q7+xqXD4ky+SFzZuaVcYW2fEBobu8hliL4E=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rxkONH2WyAofcuwbgOdN4oGdIYPyX6cPJziddNINOM+lD63TCDBWi0OoiI3g3i/LsT0otRmg39paNU/I34gxaa6paMHul1sAVOeOi4XASsreNGLj5KyW7uFu09sz0+wGe4IjYiyvwKSvzEQdq9NaEtmxUhqfSi3ACgubGq6/dC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S1nx8Psn; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47118259fd8so15166875e9.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 00:36:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763714218; x=1764319018; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1wEtuoMiVjHpLpaR9GzcLxm957ZTjBHVy8JV0VCpcAs=;
        b=S1nx8Psnst2QvO22jZHkF/WvdHUePcmBmX3QarV8FQ3I+l0o6HhjQjZcwCAEyZHQKb
         9wdArUp41p5BngCSLIRbQmSjPzkhbBzCwWdPgj6Wm30F+V+gblb0Mo9wT+8VYNrtE++s
         +QLr/PMkFYRjVULMaVPyYXmG2n3Xbt2ZsogJ6KLT9WTkdBeI0h/XGf2Pe3TIh9KNnaZp
         Uh9DCjT3afRo+kNU4M5IE2SqvISYbQrKLSoojNdVRcDx3tYt9FLS1F+sWDA9DD3F4HJu
         ON9ijQEa5l9+AUjRgat70Oivn8zQcmAQthiX+IxMAHklRFdNFVzd9H55j1fMseTOZff5
         C0RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763714218; x=1764319018;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1wEtuoMiVjHpLpaR9GzcLxm957ZTjBHVy8JV0VCpcAs=;
        b=T2HgxQye6JgfUDCe8+SSlAVawSlEHI2A+pD5ACX2qDvI1I7TW5wzLkQuFAuWAEC3AQ
         HYoPGOMMNzrmQ8WbBfKsmxLY1nb5NhdDoCNKhezJavOJ58KMUa6nhnegys2V1yRmkLUs
         xGMUSds4Ompn+NoCFLLennb6ZqW2ZtZ1oE9pypisgIhtBAzmb7gZHCBEl9Oms4XFBKye
         u5IxfPIYS2F254YtN41mhtYqDsZ25o5uM1kpv/WctbNFVgpoJmEVCqYz9kCcjTL8YyVB
         B10J4lijYugPAtc1bXRijY5m7QS+1/dND8SqdDlQDYWo3yC2StXkdql23QtL8+3XpGcN
         BdZw==
X-Forwarded-Encrypted: i=1; AJvYcCVl5hGkuw5P9D5T37qiWmZSca1xQe/z5WALX5RBksxV4kq9bUw3S/thM8Yv7rkCrbfUAFjQY2b5eEaB@vger.kernel.org
X-Gm-Message-State: AOJu0YzeQ+AQH61hr60v+FOGgk1NSXo6HDhSTS4FrnbmSPEl09Hssvsh
	XPqKIi8t91c703av6HjyyGNV+fApEFPFTX/Z5GwWY0+JYWF752yZuSzT
X-Gm-Gg: ASbGncvxaaKtblwKjlaa6G8HRvSvT75QpIxNoeo+nuq4Cuolr8MDwLk4FCNdYKJmpiG
	vEMtJxf0cIvnNSvdtWnSv67AhS8HUDOjv4RyKUM4QXcsP/yi2Jvvha+3r1CWZMB82HSb2NcmsF7
	RF09VuhwyCqguRGNVwtsW7LoSW5OtNdZE8qEj6c26VBf7qxcwl7hMTAkNUXhNExHVM3b3xMPdu0
	wPnxrxplM8u1O0lcE7/Vat6My5lYF9g5wWEs5Cpo/WbOOE4kQeAgOHNkHBvvHfHwyb71RhfD1Jt
	qRwJ8wdebMmVmTS2jUmX1jDH5c+nlw3Ihhn1oN5H0sszdZd5o5KeLLHKgkNFwmJrB4aUj+8/uAX
	S0zMZTiRP3vLdLyqF8ETtBv6QAaxpZyrn3pZnYyGUGS9i4aRRfANHas5YpWccHXL7B74jww2tv3
	W23Aop+39VJJe/VHr4zezr4dCibq30w/ZvDitvzR8=
X-Google-Smtp-Source: AGHT+IHPLw2jQaPF5ElF0qIXmxXxh5kNC5rhs4V0teeBNwT7wDD/o8bBEszH0XJ2zTJXCk24Llcm4g==
X-Received: by 2002:a05:600c:1c89:b0:477:8a29:582c with SMTP id 5b1f17b1804b1-477c01fc60amr15542125e9.34.1763714217408;
        Fri, 21 Nov 2025 00:36:57 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9dfd643sm78628425e9.14.2025.11.21.00.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 00:36:57 -0800 (PST)
Message-ID: <692024a9.7b0a0220.878f3.25a3@mx.google.com>
X-Google-Original-Message-ID: <aSAkpwReMrolkA5k@Ansuel-XPS.>
Date: Fri, 21 Nov 2025 09:36:55 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Cyril Chao <Cyril.Chao@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
	=?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, upstream@airoha.com
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: Add Airoha AN7581 with WM8960
 YAML
References: <20251121054537.25796-1-ansuelsmth@gmail.com>
 <20251121054537.25796-2-ansuelsmth@gmail.com>
 <20251121-hospitable-tacky-cuckoo-b53af2@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121-hospitable-tacky-cuckoo-b53af2@kuoka>

On Fri, Nov 21, 2025 at 09:33:45AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Nov 21, 2025 at 06:44:59AM +0100, Christian Marangi wrote:
> > Add documentation for Airoha AN7581 with WM8960 i2c codec YAML schema.
> 
> I don't see WM8690 nowhere in the binding, so that's a bit confusing. It
> feels like you mention here entire sound card description but binding is
> for specific component (AFE).
>
> Well, anyway, probably not worth to resend, so:
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> 

Maybe I have to send a new revision for the machine driver so I have to
resent anyway.

I took mt7986 schema as reference and the i2c codec card wasn't defined
in the example.

-- 
	Ansuel

