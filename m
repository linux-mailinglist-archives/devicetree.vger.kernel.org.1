Return-Path: <devicetree+bounces-198258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B00B0C2AA
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 13:19:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AA26188CF2F
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 11:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 898FF292B55;
	Mon, 21 Jul 2025 11:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fdHzzUM8"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC74128DB61
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 11:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753096767; cv=none; b=OFw4BnTum+00POxVUlmDcgpI+uNpj6bN5pOSjHsT/qBDnov2SU6EOq8+DP4ozp2mWLiHLKgMatbfW6N14FL91M/2kIkzHcaqgV90b1E9y3/2BqPEYvdwj7h6rPEWVDSrVKlK8FXS2UgKr6R5pzXak/pguK1nJwiUL9HhvUZt6iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753096767; c=relaxed/simple;
	bh=/V0Z20poRIML5E1psiie1w9FO1viJObhv0FElnARQiI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=GnaZNFiB7ByFiFdC7ZY/qVUeqbacM4Zz4LcUsIeLlJgqO4b7MuqKBQX/eTZ3DTjrLzD6Hol2VPu7KR2HcIMisSa/U1ByoHGD5yhSI0dmbicdntj9LwFvri7pKRYf59w1rppAIAbXsAXZG6CMb39K2SfsI9SraW+n6n+9lnjzoIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fdHzzUM8; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753096764;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TFoz2WZRMZK4qulVAmwYVCtTJ8qaORO4AKebBTnJutI=;
	b=fdHzzUM8Ew3QfvZfnR7qpjMTKwWvC3V01YIbZIOsBFuAILBsFrSymAjhIIpzpivzy3O1V7
	ZGo0ESIommhMq0u6pfMgMFKUyVl4WldsnSnx0YQJjyQcVFsDe1KVW9CkKB8ENQBlnoOXXP
	X7EX+XxPfKCtnlJ7kJaK8N6lyQWm/UA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-128-0GlTotKCPiy99Hl_tdeyuA-1; Mon, 21 Jul 2025 07:19:23 -0400
X-MC-Unique: 0GlTotKCPiy99Hl_tdeyuA-1
X-Mimecast-MFC-AGG-ID: 0GlTotKCPiy99Hl_tdeyuA_1753096762
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-3a4f7f1b932so2880722f8f.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 04:19:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753096762; x=1753701562;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TFoz2WZRMZK4qulVAmwYVCtTJ8qaORO4AKebBTnJutI=;
        b=oDmtxh7Rib4u1IvoazwDRnh0MrIeLjgjJV/sPHjErXJz1nyOFtRx5EXLbl5tG48O6Y
         l5fFmd07/jnXVg5/4h9/Agd0I1PYSeJDz4agJ5Mq+V6a9O8DdKnNb7dwsqjsW3enQxwG
         lAF78eCqyRts6xNBlktTn3HaL8334sucHW85PwJNA7PZL+DDZ4qI4r2HyyL5RnBnaKv9
         b+eJpFh09GVqMcZu0hYuBRNXPlRlW6E6beveaKEW1LdNcPnOuTdB0ztn8oTYgKzee6xm
         vdhyg0/HGync/wgfXQo7thu2e7hOZ3GINMQO4XBL4cjNtzRfoleaiZugcHKXEzMlv45x
         K78Q==
X-Forwarded-Encrypted: i=1; AJvYcCXcbdMyJ2FRdX+0rkqwX2uWCPrHLhy2mYTf0wFzld5HcId02ucnhnF66hkDOAZNzPlBmm5n+88NYF1d@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx8M5TsC9yssVpyDlKeWbCiwwP6tOE5s76T2qK3L0BCT6EcPxP
	OP8dAf2sEh9LlfMrosk3bHZ/RHHdQT2U1mT5yZccosDdJdYomMqSJuj+10WfGd6/S4jnnIJ9lJl
	dYVKT5ngBkjYMi7S/aXLedIjqob5u2Gu39mg48nl9oRvjz2nhMhdsRUChVASARZc=
X-Gm-Gg: ASbGnct00DvCvYDT2b58rrGVkVraaoXhk5CYgfBSjfqlLTugBtlYPZs66MCSeNddB6r
	rvj4tC16HXPusAL4ikFng6KC9UeNPZlGgjT/xR0Cj3inID/YLF2RJAu25F7krRWWWpVOhDI8Jph
	g06jJfOAoDUuoQNJuD74+HPcJnJ3uuFbseORY+2B1DCcHZbR2rDKWuAQF/u9NanLhng+cvV3OLV
	48AXi6wFlcO/wF02hiWLgdHIaE+Cja5sKWPCwfAVVXdU9EhaVZO+bwChUCs0RC2WJK6KSC8Pfzj
	4ZcEmDS1tbgs2CgPaAdlsHzjwKwvsKtML5XKId4zkIlEyhkk14BhgzLSw1Al6Pe0fQ==
X-Received: by 2002:a05:6000:2902:b0:3a4:f038:af74 with SMTP id ffacd0b85a97d-3b60e518418mr15912926f8f.51.1753096761756;
        Mon, 21 Jul 2025 04:19:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBgZ8j7cvCchuIks11flM8QmUtWUgbRezl2Kmbq73XrYO5/Elgn5PE0sAseXfZtCEO2HQMwQ==
X-Received: by 2002:a05:6000:2902:b0:3a4:f038:af74 with SMTP id ffacd0b85a97d-3b60e518418mr15912898f8f.51.1753096761314;
        Mon, 21 Jul 2025 04:19:21 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca2bf4bsm10047278f8f.31.2025.07.21.04.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 04:19:20 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: display: sitronix,st7567: add
 optional inverted property
In-Reply-To: <20250721-st7571-format-v2-3-159f4134098c@gmail.com>
References: <20250721-st7571-format-v2-0-159f4134098c@gmail.com>
 <20250721-st7571-format-v2-3-159f4134098c@gmail.com>
Date: Mon, 21 Jul 2025 13:19:19 +0200
Message-ID: <871pq9aj0o.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

Hello Marcus,

> Depending on which display that is connected to the controller, an "1"
> means either a black or a white pixel.
>
> The supported format (R1) expects the pixels to map against:
>     0 => Black
>     1 => White
>
> If this is not what the display map against, the controller has support
> to invert these values.
>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


