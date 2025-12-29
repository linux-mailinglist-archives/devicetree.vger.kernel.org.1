Return-Path: <devicetree+bounces-250116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60607CE6543
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:56:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEB9C300660D
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 09:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 440AA27FD45;
	Mon, 29 Dec 2025 09:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="CFDhKK12";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="UlnYydPO"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A993E272E54
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 09:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767002163; cv=none; b=d6ZjKB/VqqQX6MJn0LxodDdpcHnpq+yIm5KvyszZUh9cJ6qKziC0GrSLzAxIOt2eH/+oVPXTVEX36XFd+Vxxyjr7eS75iuyqaejhidTtmmzOdCriH47UxYQZVLDuPKXIoWDa3j03I9DNS6FachMvuLZJS7rFK/E8ACkJQCO75n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767002163; c=relaxed/simple;
	bh=z0YEap3u/EBh2b6OmtcTMDQvHPeE+nUA6zhZ4RivPS8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=q9aT5IBduDR9IFm100Cf6TMDZ+Qacuyn8ORyvrGGnwXaEgOt/TjZgXNaGn9kYpLfjPF4kQ29JO6WiA2syqatYtm48XHYGAscQPPGJF/q7WBFAiic9VyLU5q70+UxVphpwrWDmthA82FU9XITOqV5+qRrmJskuci6ycXfy7p/Zs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=CFDhKK12; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=UlnYydPO; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767002160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=obH9iYXUH7PcM8LuIvRWvOaIIfnfBietKIkzq92XPAw=;
	b=CFDhKK12FnXzdrkGiJykuUe9iFxlzEoEUbC66IBNgNhHnDmTod/lbVxQdiW8npJmZ4UJf/
	0flouEy1TNnbBdb3XDx9HH9zbt0pv2OcDo/62Du13Y6QzkJsgy3eKJi5CCArGJq/jcpTmS
	c08sNLyRV7YLULYeYZJnYSsM9bgFoek=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-690-nthTgcWcNP6SwSZpFUTKbw-1; Mon, 29 Dec 2025 04:55:58 -0500
X-MC-Unique: nthTgcWcNP6SwSZpFUTKbw-1
X-Mimecast-MFC-AGG-ID: nthTgcWcNP6SwSZpFUTKbw_1767002157
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4779edba8f3so65520405e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767002157; x=1767606957; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=obH9iYXUH7PcM8LuIvRWvOaIIfnfBietKIkzq92XPAw=;
        b=UlnYydPOxm1O+0R1LQ1jOAWV9Q97E4P8boxHvem7yA1WD/lkx+OPJRfH4SllEOD4OS
         LDF4mJK4pHwYh8z6n5BsXX3BzlK+4wUswWMiLD46kog1R4EctbRNDGN92rK6RI7bRftd
         hydSdLuON+Z+gijid9HLwF8B9mIxJxrRvx/heerSGqNj6H16/Oq5TPIJx/un0Ot3pIQq
         +Vriih03SVu7uPSVJ/KwrVEd3L+1pj1Sm25EYd+XE1uFAa/paj4EZlbagJRReysxjijg
         4TyNpzMYbxdspw5dV5Eiimlrj1eww6wrJZOfvU7+mNK6jACOXTAYpBbUcymCx5eK7+S6
         EKkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767002157; x=1767606957;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=obH9iYXUH7PcM8LuIvRWvOaIIfnfBietKIkzq92XPAw=;
        b=p/SCQ+KnoJtPPJmdEfAeXPdI2axJ3wl0ofRk8+xHbeWwDv1qAW1cxHfypYbd9bapSY
         AvkdD1aNLoI0RRn6pmLTkgt460POlQhO/4/b3EzF9CzjJCT52afFXNxw6niY1fVgn01k
         1cz24ZAdErls2a1ebAqTHK9gguBWu9C/5ka0e9JYBGdYajAxqQ05xOnNEP4g5xwMbpFw
         UMiOPJgxk78ZEOfNpQ/38Qg+mlsDyk1SYEkWxjI3LYY5zZr5vef/GXTBsQwBB2D9UlKp
         Wv9O+qGjaD6X6kolXfxZvujbk0W817ahF62vQ8UVZs5y5v9N/Pk3iN0etawaNJIbmRSQ
         Rp4Q==
X-Forwarded-Encrypted: i=1; AJvYcCW0OBz7yoliEfAecjDvaLhBUE9Q498DvNgI9Kw2+2cK2yGdVWYOUNbw9khTvb6RJjBkMu9+spriXljT@vger.kernel.org
X-Gm-Message-State: AOJu0YxL1IQHDfmWb4ZyrNwHDQKDw+NQ0dZfFSD364uqBfKXJUjsrMAh
	rs8r7akPLpmUepktuMO6w+TMhkFrzqdOealELxC9dDiYEgXcojTKVEng4F9wRkWJ8vLzrdNZw7Q
	Yxx9JIv8S9T42ok+84fssfolXS6NQs83+FbPRtQY9zbSoLFRkVhnUqM+vrydhR/c=
X-Gm-Gg: AY/fxX7c4Sjc/umN6UaFvyDBbOUuHG9xWsUeOdOoat/3U3ZfHDjqpTmpPL7Q7pg8ByZ
	y1PskGt13McPra0IZm5UHbIrG3cPGRgeDRrxnn7ykXqRistPndhxIJtlEwv5iXWDnHQU+cOrJLY
	z45JoslftMm3GU1zi8MeVMbWAW0mZHEMupdfinx9osUBcxmu29VcOKfK4dO1AovXRnH4SrnxADr
	YeUiXCPYTWXRNM5XE7ng+2geBK1JGEo9gioTjTD6cPUFfmTRXR7/Ui/WE9RSenN+KbNorVR6I03
	KKLsw7lCyt7LDWZxAHFAGoihKPcB058xBwS1PBdHwUgX79+V1zUVN+D1RAdPHTbBAQehZAHhjg9
	jDuzYocz2ObMxaB52TXbmppGPUzNFVydSttrMqAljlawCrDypVHgLNHU0iEx8RxrT3H6o
X-Received: by 2002:a05:600c:1c21:b0:47b:e2a9:2bd9 with SMTP id 5b1f17b1804b1-47d19583142mr410001315e9.31.1767002157327;
        Mon, 29 Dec 2025 01:55:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHvt0pHSYFpii6xSHzwFuul+6dVBdHfQqlf/eiF9MlDFn+5XDqtCOM3lJyrho9dCfbqBslcow==
X-Received: by 2002:a05:600c:1c21:b0:47b:e2a9:2bd9 with SMTP id 5b1f17b1804b1-47d19583142mr410001085e9.31.1767002156889;
        Mon, 29 Dec 2025 01:55:56 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3a33c1csm252799015e9.1.2025.12.29.01.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 01:55:55 -0800 (PST)
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
Subject: Re: [PATCH v2 3/3] riscv: dts: spacemit: sdhci: add reset support
In-Reply-To: <20251223-07-k1-sdhci-reset-v2-3-5b8248cfc522@gentoo.org>
References: <20251223-07-k1-sdhci-reset-v2-0-5b8248cfc522@gentoo.org>
 <20251223-07-k1-sdhci-reset-v2-3-5b8248cfc522@gentoo.org>
Date: Mon, 29 Dec 2025 10:55:54 +0100
Message-ID: <87344thas5.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Yixun Lan <dlan@gentoo.org> writes:

> Request two reset line explicitly for SDHCI controller.
>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


