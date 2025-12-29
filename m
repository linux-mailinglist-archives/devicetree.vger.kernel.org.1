Return-Path: <devicetree+bounces-250114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EC015CE6525
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:51:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BB3D3007EDC
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 09:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90603284669;
	Mon, 29 Dec 2025 09:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="U4ovNVaC";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="ryawiXwx"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4274E24E4B4
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 09:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767001872; cv=none; b=B6jTDXD67AkcuDOwTZ/EjXulS3F4SmfKyaXre+nkbijTnf3Hlqog6hKelTlBR2KUsd39+jJLa7RpPTG19CsVuDEZSoLYWfSMnkFeClXhh5dYU8Qcu38vKpbQD9Mm7/N5uF0H+iZJxHLgr8XKfPcwJ8NUWqbNkfrX8dpnl9Pypo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767001872; c=relaxed/simple;
	bh=S53nliDgDOBHyCHqekaIZd1yAS6cSB9PJP72bbGyW38=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=u4TUvtzymS0NTcVUovpn5wDgRQPZzT11sPUBe0Mph6Bjp6s5Q5magy4sJmbEzqov3Ks/Dgu23Fb/S6FGj0XJ/xWi+bs1HFCuHg1TqT12tYJkvRBlsiO180sB+2ds6UuR/ZicuHO4TgpU88vl8PGHym2aSHoT7Ov/T0qWkRJv+eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=U4ovNVaC; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=ryawiXwx; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767001869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SBpgnCdgVjRyDFiA5DhH+bRquSZr5l4Vq9ipoB5aYAg=;
	b=U4ovNVaCnGlRGNHBFD19yephisqjREPmiqV5wNXg2Vi/VFCpT2AqHvD1h/cYR5RUCOfIav
	Du9GwbCb7UZc7MNDpLadFlo7jwdEn2GULCH4OsbELE+Zn7HEypr8w67mHM262spgaaWPMv
	1WdHDUOLgPyOJiQQ1mfE/4mKd4OIj7U=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-562-pImZ-R0FN02hgMbQGLMR3A-1; Mon, 29 Dec 2025 04:51:07 -0500
X-MC-Unique: pImZ-R0FN02hgMbQGLMR3A-1
X-Mimecast-MFC-AGG-ID: pImZ-R0FN02hgMbQGLMR3A_1767001866
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-430fb8d41acso4587875f8f.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767001866; x=1767606666; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=SBpgnCdgVjRyDFiA5DhH+bRquSZr5l4Vq9ipoB5aYAg=;
        b=ryawiXwx8tKhfkblOHDZmRkttLSEdjmh+IDD6jLGjsz39xZ2SbbK4aEaR7ELmz+seN
         iJch70KwdEvo4SRWnc00tUro4lFG8z9fSJeSz+YPXmPsIvfKOeVma1UhjV3OFQCyjjx+
         3BDDaKUeIbTuJkIxK5PVISo2NDcdSqL3pW8O1YbNPtziX/upbuLyY9FLhUs3aCEMEWA+
         /o0up03+tB0gIS3xZmyumvKm+dFJsajVgcugsEERH5788mkeg3F49gCtY5yfUI7u3/D7
         HLZHPoWxbgsSMj4no9zUmiEbPZHJMsp46kObdwl+BuZJqI0qu8JbbUIcoHy7jAhydms1
         wRqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767001866; x=1767606666;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SBpgnCdgVjRyDFiA5DhH+bRquSZr5l4Vq9ipoB5aYAg=;
        b=gyV36lYIyOpTR2qiB4AQP8XFsuCZqg3aqG6+RkInN0uDbVLVR+MVYCmGLfr+eAtW2D
         2DgX8KUrE+0l5JRh1VRIH43HkOoFuNNHeZ00ffPrPlj00EzBzIrHTHcx3tKlnbW0Y+i0
         MeEQ1YFwlv6iVo8oDjO6Ms1H4nCKT0N4E4oJqDcrlbNG8OaBJ/QIKSG+yi0rHbn52cPQ
         ql8FGLJg3t2sqY9Q/gVqdzmiiIouMg1UeUIH10VGvnHe92uvj6zXldn+xM+3znMRV8gJ
         qZbxVZ+a2cSRkwZ3GZfV+Pr4W2d9+rrJYLPMCYHmlkMMV4LRZUU1v9zAtutFsy/oDk7v
         BeSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwsPJDB3GxvZDYydDAK/1Z7hXFj0Z9Khj+5snmWftYfbMg7QWELM0mwiehIXvIJ46wMSkmBVDjeIDf@vger.kernel.org
X-Gm-Message-State: AOJu0YzvpYD7nEmjZW0l1nu3GT6OIxHBjoEQlVIQscdcVWCB7jbLR2Aw
	8Iy8serBlO7fgz32s/4ELMZMHHPKt4N2WHtkCIi0/Vv1nuO3xvKYEL0wNZEayF9zEwWQ3LxWNbT
	9C9lFG3OLaEnG6gsjXDqTAMjyVNM4aipLkeFZqSHBiR+yIy5wD4PS29RJv+5lZdM=
X-Gm-Gg: AY/fxX4JGX3JWUZSjtKO1OKGFdMq3W9X8k4vajy4JndFXNfS2USOpo2Z8xwi3nTJNr9
	qeMNxORMImwdmFnv0O0ny/ncG6MQqg1ekv22PFuViX4c3ALhwvYs8XjhZY1Q0TqkISQcxa1N01m
	KO1FtEp4rHc9/RVE+rc+VtW2oYSV2EL23l9lz1WYTD0hNSWUJ/NlRujBA5cb3eXb5p0/0MDmMPG
	wp+gLPt2Re25gSTYP3aOUbKVKC34FOoxsg8tI8r04hukdAc0W3UJil3CC1p+LPc6JcEdvJIfbi/
	NVoD6XE7ouJiPKSNmLb0ICmkZBctAC8/16So0YAzJsXxkP18Hk7+MTKpax1l7ZRh5ZAogm2Z/cM
	uxu3cw81dQcU3HjQ0F5tmko+xWFAsMdlhY8PcXLrEPm0HpI9yWAwS1sTid3V07OJp53jx
X-Received: by 2002:a5d:5f87:0:b0:431:a50:6e9b with SMTP id ffacd0b85a97d-4324e4fce39mr33803697f8f.37.1767001866448;
        Mon, 29 Dec 2025 01:51:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE6G1jWYskSgvaXeS09XPL1OAXa1myU5ovRIkOqfBW3h9fMcLnWjubhvT9bqt7kVVsnsSU5PA==
X-Received: by 2002:a5d:5f87:0:b0:431:a50:6e9b with SMTP id ffacd0b85a97d-4324e4fce39mr33803665f8f.37.1767001866019;
        Mon, 29 Dec 2025 01:51:06 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea82fa1sm59086626f8f.23.2025.12.29.01.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 01:51:04 -0800 (PST)
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
Subject: Re: [PATCH v2 0/3] mmc: sdhci-of-k1: add reset support
In-Reply-To: <20251223-07-k1-sdhci-reset-v2-0-5b8248cfc522@gentoo.org>
References: <20251223-07-k1-sdhci-reset-v2-0-5b8248cfc522@gentoo.org>
Date: Mon, 29 Dec 2025 10:51:03 +0100
Message-ID: <878qelhb08.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Yixun Lan <dlan@gentoo.org> writes:

> This series try to add reset support explicitly to SpacemiT SDHCI controller.
> Previous it works well for eMMC due to it's already initialized at brom or
> bootloader phase.
>   The controller has two reset lines, one connect to AXI bus which shared by
> all controllers, while another one connect to individual controller separately.
>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


