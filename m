Return-Path: <devicetree+bounces-182723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 87357ACDCBD
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 13:36:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 566FB176695
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 11:36:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5DAA28EA6D;
	Wed,  4 Jun 2025 11:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Y5DlytcA"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201AE20F063
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 11:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749037013; cv=none; b=TNO/iKPeemVOdeZwDwXBFgDnR+WgOlPsx5M8SvPslX/FWeO1XpmSjsdhiN6jCHZAEg2I2DxiDhli/8b41pIr5QlaWAagHNaQqPppDykoQrJzu7NJrx5Zm6FA4RyrV1QbDKRETW7msQTW2M7Ew9t+gHkWSvkY2QCtQVtUYHdKb9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749037013; c=relaxed/simple;
	bh=Wn73DGMvRDUIuDyzZ3vZJ80lFKQ/VrKqCXyStrHQFCI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=AWNDGSjfPxR5zWoBgg8/Y478ANBBPhNBRZxPTaDI7Jgm4IiNInwzJzMEJWqsB/HA1ergjxGFTqP/KX3fROSInGTPpqCe2+mCagGS1zDay5JLqTX+sWRXS7XXU++iBV/LS3jA3gy/w8cSQFqPjK9LyNyacHa2UXGmRYdFUmzOn44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Y5DlytcA; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749037010;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=C8a5MQW08d15nKShazDfS7QPFXLU7R+rb+4mnDBz0bw=;
	b=Y5DlytcAznfsFB54XJ5SP98u9BZU0hP1wtKcVLtb4G/7hPTGz+Qi+LYmBgJDQyZihfK5gg
	RhyVaBzMP/5rqprrJ15XT1GBUpsa8SxhJvtQ/IhyqGD9fQ3mRxWJ59wUT8+CFnDNyoyTX2
	9BVMAnq0I1BtsIywAOMe1JzxMqPk4es=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-456--fKZwIqZO5-IzYf1AcAzdw-1; Wed, 04 Jun 2025 07:36:49 -0400
X-MC-Unique: -fKZwIqZO5-IzYf1AcAzdw-1
X-Mimecast-MFC-AGG-ID: -fKZwIqZO5-IzYf1AcAzdw_1749037009
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-450d290d542so37116235e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 04:36:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749037008; x=1749641808;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C8a5MQW08d15nKShazDfS7QPFXLU7R+rb+4mnDBz0bw=;
        b=RlHW3U8j8eZNkuAEAXDTiGzfX+Wy5q9rXuVP+fwrE3BLmxCSBUAZye75Xo/3V6RPnv
         qgTi31lEyCoS9XjsraP1d6puSFBJbSDgEywSXo1xoiOAqE8KuDjoZQtwTGd6cCHCB5pi
         B0+JliqnhXhOkA6xgdB+ej4eb1LPUmDiQ7CCGFLJ6GDRC7UVrjIQxsUcw9emUNGtIU1p
         D7ygMcm4cAECgHDWBK0NRWhQjOqhQKyFNIMHOgDLdnk+9gt6wlRGWAerWooAtYtd9Qd1
         x5D3PU78/yF1Xm4WWVvSlWviKBILSkX03K10buU13P/Drm4OsB59IpgcrHiyHR2SQrrp
         kNsg==
X-Forwarded-Encrypted: i=1; AJvYcCVTJRWXTmsFtH85Xzy2jh66ZHHbj7WumMJmY/4RlUGpWhhBCG4HPtF0Ocn3oAlUR1lvmO9odl4iEiii@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw6Vqi5U0K3IJ5WelaRZGF8g7ax5HLh6NnkB+I2Gl3YndlZgzJ
	UEEbGggB9iEAvkaMrPgSW5oeU16nVRFbYoLdjsj6LXCkId3QG4SyiHhqwf3Hed9TPohTU2cz3dr
	CfGKaNRgEjv8xjFFz03wwbl7LKR3JGGxBJkOUjgdhwdLpnYwVqgpeBEdH1oVI/8M=
X-Gm-Gg: ASbGncvGRQvi0s4rGMb6jxZUNQAQMnYISal+Qs/GrW8MhMrWK+R5nwGZoFyjYy05Ac9
	KNjDanUaZYMJqaPWgay5X9KQifpGPyN+WJ6eO7Hmq13Z8wjXkrwTpRanJj/8O88i9P2LmnVl6vp
	fH8Qm9CPBo3lIYATMWNVhqccMdzC0hcNWSzVLhC4VebpAUPyqE3i+8hAqPXCnj99AvbUq9qfr0J
	qmHQduojYhPf9SfT5N7zURoPTOFm5iUlSaZs/2hnjkf/0eyXl8P+903/lNh9ZC6mEH8+swxWxvf
	DCTSFYmZCwUUylMCMecwr9+IPTQay5cb17aCczYvLlv1rQp6eB0HxBaDkfj2Zfq26o9yHg==
X-Received: by 2002:a05:600c:348c:b0:450:cac5:45e7 with SMTP id 5b1f17b1804b1-451f0f00596mr20628275e9.1.1749037008620;
        Wed, 04 Jun 2025 04:36:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9aGn1JqRF4v9GdB7S5N+Iv4QLVcuOxMVMUOmJ0PIBUt0HXZfcX/tKKMNX89n1OdgImFWvrQ==
X-Received: by 2002:a05:600c:348c:b0:450:cac5:45e7 with SMTP id 5b1f17b1804b1-451f0f00596mr20627935e9.1.1749037008186;
        Wed, 04 Jun 2025 04:36:48 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d7f8edf9sm194938895e9.3.2025.06.04.04.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 04:36:47 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch,
 airlied@gmail.com, quic_jesszhan@quicinc.com, neil.armstrong@linaro.org,
 megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/4] drm/panel: himax-hx8394: Add Support for Huiling
 hl055fhav028c
In-Reply-To: <20250603193930.323607-4-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-4-macroalpha82@gmail.com>
Date: Wed, 04 Jun 2025 13:36:46 +0200
Message-ID: <878qm7agc1.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Chris Morgan <macroalpha82@gmail.com> writes:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add support for the Huiling hl055fhav028c panel as used on the
> Gameforce Ace handheld gaming console. This panel uses a Himax HX8399C
> display controller and requires a sparsely documented vendor provided
> init sequence. The display resolution is 1080x1920 and is 70mm by 127mm
> as stated in the manufacturer's documentation.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


