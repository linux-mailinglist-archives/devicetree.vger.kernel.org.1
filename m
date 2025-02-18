Return-Path: <devicetree+bounces-147927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B4EA39D4F
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 14:24:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 302693B56EF
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 13:21:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3AC2268686;
	Tue, 18 Feb 2025 13:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="SxVc1ZCY"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3195C248161
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 13:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739884882; cv=none; b=q+7qLYPArvlBYFZ2o5rYHdWvaiMZqsz0LOvWTROSQD+xyPpUayZXTaC/GPn+0fgKum1p+/6AFvl00HmG60C/9ABsFJiu/ylUGlrP6nihuhVOY7fPQNQFxm/PgeKR+2yBe4msHYKD5RslEBPKfN3v0yu6zuJw3wnHi2x9BrBfoKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739884882; c=relaxed/simple;
	bh=rQ/axHZRJRRdmBz4VAmLFXQZe132Qs0TFcbIj6lst7A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Q8pNJYgVz8TanGoHJqnD1j8edjO2s4NVvNVZoFGTVU2fJijwTUKJgcn/0nGvXNT2L/p8ZoKzmp91wgQC+dYNA1h81poA/wqp2azWxlWKgEscv7dvXVb+0hurZc2iQ4P1bI4ztyKLs2i1MtC7vsKqXQEt5QpoBGfDZiWAKdR64CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=SxVc1ZCY; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739884880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DSnXHVdEvvsfyug8OIP2Wl81Rt6heXTzkbKQhrQ+C1Y=;
	b=SxVc1ZCYRlj9LfeVVekDbjgL8PGVXp5dZ68zyFOKwijDIVwz77eBK6fFrnB7vcZ7mlWbj0
	7fTjzGngVpSoFsIIpr+PojUJByydh1liQxjy2pjbkOZeYUjUzZGoxHcAhRFeUzJU/tKfic
	7Tp520cmFdIUDv7JvGGG1bVdmYqc+bA=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-65-xFjQK78eP6iIPaKqBuV_YQ-1; Tue, 18 Feb 2025 08:21:18 -0500
X-MC-Unique: xFjQK78eP6iIPaKqBuV_YQ-1
X-Mimecast-MFC-AGG-ID: xFjQK78eP6iIPaKqBuV_YQ_1739884877
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-38f36fcf4b3so1986410f8f.1
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 05:21:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739884877; x=1740489677;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DSnXHVdEvvsfyug8OIP2Wl81Rt6heXTzkbKQhrQ+C1Y=;
        b=TbNvJheurDhYQ863iPKe+cUu8zjtQzXjetklN4sQbRcD3MTfeB5IhLseCf8IR+EII8
         WrrLYXnhITQE4COYOqqYX7In/Ws+Rsf6H3U/LDgaFysL7AvLD5uku7pRfzbNYrkhOGZn
         w+YJbKAqAVwvuRl66OoURB+9TOV5p3B8bC7C0a9zsliki1jeNv304sXe5WWg2ht1N3PY
         XZr1ma+zoy5CIBfJzWm5nLHqksYNIcUOOPBljrFOoQNAVI56KIgBnbUayQcq+ncgIFTR
         Akt8EiMpReY+n21s1VO7eSFMwLHjiwJS/w8ZVQm+B3A6FOLj5YVPWthHZiKHGAJnwr4p
         4Hlg==
X-Forwarded-Encrypted: i=1; AJvYcCUtdMeXcLpcZLjIAMpIkC8w7atVjBWP2b9kB+G2Du3gRTZaOS7U4phdFnDvSRluOTno55CqsrEJzJQG@vger.kernel.org
X-Gm-Message-State: AOJu0YxdU4Skjxe5BCQgGg/1jkJ9zhMpSgljXILvl5gm3mfWQpjDQdTE
	wl+kwVSX4zgQAGiNQCh0iHbX3TyVpQcwOd/q0HHoUGj2Zd9efpFk8PFqZ54TZ/wo75KnbQKE3dG
	n5v4MbRvtBD9iT+oykyq6QYEc6CCMqDzIWUbBi5t2gv63fb2ci8XLkrTeW6I=
X-Gm-Gg: ASbGncuwj4mb4HFrm8wbmpvNNcZbyRWX75Fuf0BcqT59WTyKCcMIzvm1FgTlngtyoVc
	Ay+R/wPPjreJip4vEpIRzs4FlZCqS3prWUusTQ3xQlemZkNk5eVw05wG3OozuTQeug3uRFt0Xc/
	5V48V48JyiYJWfut74Y1by1C5ysdvXeR56A4xOWSP/StkzosL/H6xO+MKWFetA4V5j5tsjNb4v5
	5+4CU0mCc/Qb5sf1hhTFUGNZ4q/M9W1laSJOKRrp4ypM3ljkh3nH3hUedxWeJYI83rUNkeRzL30
	Y//mjakTkr4jckFDBB0eVXrdyOlasDiGSWnUiPohNvhR2j3jf1wHgVUMCs4arRc=
X-Received: by 2002:a5d:638f:0:b0:38f:2a5e:f169 with SMTP id ffacd0b85a97d-38f33f4e45amr8497504f8f.37.1739884877502;
        Tue, 18 Feb 2025 05:21:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCdb//YXiSCidN9MOxkwBcoVco7O5TeiSbVrPdKZfn6mLHPk77sBotfkp09/v9hBezhruwTA==
X-Received: by 2002:a5d:638f:0:b0:38f:2a5e:f169 with SMTP id ffacd0b85a97d-38f33f4e45amr8497483f8f.37.1739884877159;
        Tue, 18 Feb 2025 05:21:17 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f25913eb6sm15124034f8f.51.2025.02.18.05.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 05:21:16 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] drm: bridge: add ssd2825 RGB/DSI bridge support
In-Reply-To: <CAPVz0n1MdCccD5gHK0Z-mMHJ4Erf59_pBSU3+Jenmfr92Fky9g@mail.gmail.com>
References: <20250217140910.108175-1-clamor95@gmail.com>
 <c19bd9b3-86c4-4f1a-beb9-b6aed32b3ef5@suse.de>
 <CAPVz0n0WG1Q51SONb4fmkzi4q7Q0sZ_aKSLrLnGboNNya6nO+Q@mail.gmail.com>
 <871pvvqu0i.fsf@minerva.mail-host-address-is-not-set>
 <CAPVz0n1MdCccD5gHK0Z-mMHJ4Erf59_pBSU3+Jenmfr92Fky9g@mail.gmail.com>
Date: Tue, 18 Feb 2025 14:21:15 +0100
Message-ID: <87y0y3pewk.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Svyatoslav Ryhel <clamor95@gmail.com> writes:

[...]

>> Exactly. Both chips are from the same vendor (Solomon Systech [0]) and my
>> guess is that the SSD prefix means "Solomon Systech Device" or something
>> like that.
>>
>> [0]: https://www.solomon-systech.com
>>
>
> You are correct, vendor is the same, I have not denied that, but the
> this device is not related to product drivers which already exist in
> the Linux Kernel.
>

Oh yes, I didn't mean that are related.

I was just explaining to Thomas why both devices were named "Solomon SSD*"
even when they are quite different and can't be supported by same driver.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


