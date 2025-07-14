Return-Path: <devicetree+bounces-196001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC52B03CBD
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 12:58:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1549D3A6221
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 10:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C25BA23F26A;
	Mon, 14 Jul 2025 10:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fXHzv3po"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44DF1DF26A
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752490598; cv=none; b=i0reu0MZT+5Zrn8NLdA9o6qZUsZv8bExOtJyRarK+XkWThya7YQwFs7g2MdRuQ/2i0mFSm5adDZ8H44MOJFrGbbsIA1jMqfkQE3UXHE95+dKs0cndc6Zn2v0hiu91QuOSBkMA3TywksgjJkhOc4fdpkg1s6XCY2LpzpQeez0HPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752490598; c=relaxed/simple;
	bh=3vxP1XTJlgVCgsYCM8sOVrgQyGOgdDxnyUWh1e/KDlM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=sc1JZogxVvJxwqf6BaRgX8mpYCzSpP2qUw48TLZobSHtqw1tDN8Dg4vBKGYlM2KUm6RyZraYj9j/tvmBh+eaMTUtSd7bI3N3rvfTNidNbT1mgCil08usYdXQ+CEaSXf9WEhKKYVnqyMJ4RWG8d+3LChlLNFO9+grHQp/O5iY3h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fXHzv3po; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752490595;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=w93JWie8E8zd/q18qvrOAzbqexxKKPXgPTHOy7odRa8=;
	b=fXHzv3poVllcOikftf1vnzMrMAKFnhu3Xg/rpGJgSN+a+5aOMGo79qlWctmMn1vxzZucJH
	qV3dA02UtklyH55FJY8Mdd8tLlyIKgvpNfEbNY4gJvBx0/FFOAJjic62/kg+bNnzRYsEja
	0yrGbJn7OeXu+nWwWD9DSJMXIQR2ZtM=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-652-rO9qlIL5M0WgbJ63zdYDhw-1; Mon, 14 Jul 2025 06:56:34 -0400
X-MC-Unique: rO9qlIL5M0WgbJ63zdYDhw-1
X-Mimecast-MFC-AGG-ID: rO9qlIL5M0WgbJ63zdYDhw_1752490593
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-455ea9cb0beso21348005e9.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 03:56:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752490593; x=1753095393;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w93JWie8E8zd/q18qvrOAzbqexxKKPXgPTHOy7odRa8=;
        b=dXYIW69IQnYHCyNq52n25aInX3ZwNjJpkR8iwv6945skBptv58lshUbI8W29o+d8Q9
         pClfBXgogTIZP6O3x6JMTw987N8n4BKOq4bsebe32SsNY84Job0RWuGxFm5MrWCWxeyZ
         ASS5uaMI1IlH/Qd6e3p1g9AC/RSbwpOsTLsDELFBfDWLtHgJr4FMl8nGJBpSlD06StRC
         ZaIeFp/Ak1srW/F1IYEGXYXJ10W2uwhdumWwGA0gbu4fbTHiQOpQYUyUREXUdm1fcIV+
         XJWa1Mn1pMfWIvmYDL3XpOO0JQXSrzcYurLBh3tToqo8AE9Oz11tdUS+SOw0PTiE62bZ
         hwOg==
X-Forwarded-Encrypted: i=1; AJvYcCX142Dbz/6J1/hUXhIXD3lh+bLgTc4jhGuK2pOlQgAm2JuPTDf6ofArdTGMMOQBaIY9HRI7slXiC8uR@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz/ac/fiutN2FnVLRTlU7dkI+UEFyq98gjidDH5RyySGAoyABx
	QFZo4S8gGWganq8CtVgDSIUY6e7kWGKMVspKfPo+esXDHMbhgaLX/ksOxUlmOiJeVhMytLr/Vvi
	yBr35OEOVJyN/f8Ew5n9Bt2I4zRtU13jV2zpcczeystGNW/n/ec+ypCPT9Fl9hCc=
X-Gm-Gg: ASbGncvJcwZIAlrU6AtOXMFOFEB7Xeupv6BLCcCY5U0MU/yJ1LB1dMu+opFoqPeEbEf
	ipmWBbwhU7TNDdYQzCt+ER2c1ZOd5Qz7XE75XXPP7v2d0SH7O8qTFuMBHpDrwK3PGH9R/xcG3p1
	2rkiry1rhlYd/Cb3b3TlgR3lxTZWRRGzAvcgVVWLxC+0wFH59yxkkOBViRXKJe9HR0Ky0p4k0UZ
	bR14Xvxhzy2/5Ysj7XfwtWUQtRpj89S1g/3lg/lky2XOXYmvfijANLrOBiM+f0Hg+KDd04INUK3
	PhtNZZ0rhEcet0RVLpXH232/0z0Stc7M9BLZ7/3kc3lCuDJIBSsEO5JJTj6Bz79kDw==
X-Received: by 2002:a05:600c:5304:b0:456:1bae:5478 with SMTP id 5b1f17b1804b1-4561bae5841mr27165435e9.2.1752490593144;
        Mon, 14 Jul 2025 03:56:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgLMus7ZlRljQsgOm8qpcp0STSbB4fi2uK0BYeNsg/g/S+kVymwynI6QO65qw6qJtfq5k01w==
X-Received: by 2002:a05:600c:5304:b0:456:1bae:5478 with SMTP id 5b1f17b1804b1-4561bae5841mr27165155e9.2.1752490592705;
        Mon, 14 Jul 2025 03:56:32 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45617dc1fccsm38119995e9.5.2025.07.14.03.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 03:56:32 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
Subject: Re: [PATCH 5/5] drm/st7571-i2c: add support for 2bit grayscale for
 XRGB8888
In-Reply-To: <20250714-st7571-format-v1-5-a27e5112baff@gmail.com>
References: <20250714-st7571-format-v1-0-a27e5112baff@gmail.com>
 <20250714-st7571-format-v1-5-a27e5112baff@gmail.com>
Date: Mon, 14 Jul 2025 12:56:30 +0200
Message-ID: <87h5zfkplt.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

> Add support for 2bit grayscale and use it for XRGB8888 when grayscale is
> supported.
>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


