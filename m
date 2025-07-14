Return-Path: <devicetree+bounces-195997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A74B03C88
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 12:53:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1870117EBA0
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 10:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C38AC24C692;
	Mon, 14 Jul 2025 10:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LDFaZ3Jw"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C10B24C09E
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752490144; cv=none; b=c+1fStApVoatkF6hZVVlRrXXjlpgAoQAQOlMHFrjKE9PZrWURsXO1SdW0f1vy9fkH4ho5NIn7vVfnQETOPVdiWxeC0i4SG52dSQEu973HIE2xChMf3bNzRSSHJrqFOyl8vQyfRvwr9tjckCiq+SWfZ51zUJYNssLCM/LgiLv4+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752490144; c=relaxed/simple;
	bh=k7otKPrVfPHtsH232FjME5rT7LJfHaZqqtlPb+Pnihk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=RTj2uCfyukTKFjZjI/lGHEbfBWegxgFQ76NV+lCBUr+sPBun8XC/HI4onzknS2gPsEf6iWH6Ci9ojBpMv2qW61cs5x8yEGexqITV+0e8wzCn9R1opV0r1UO+//UyIcHNE5ZdVTPNLI0zByuhLBuOE3sLHOKpBczODL+EREZDw9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LDFaZ3Jw; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752490142;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ltPdQyqHBsra0GyTjq74zXTigFI2B8itXhZ/svYCZPs=;
	b=LDFaZ3JwBP+jKZGA3cIYXAl2q2xfNbjwqxbZPVfo4kh3xTdg5mKV03QcCUKDfvdVB26pn/
	jhaVykxO5qXPODrnyOaV6Bw8SIqKkY+Vsplnwzqkchq/kje2DaWwkF0WjXBaDCfrZgJK6N
	BGys9Kxc0+ZZi3YhyrqsJ9qBcd2wU/M=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-563-YdfP5GLZOhOvYym9L53DiQ-1; Mon, 14 Jul 2025 06:49:00 -0400
X-MC-Unique: YdfP5GLZOhOvYym9L53DiQ-1
X-Mimecast-MFC-AGG-ID: YdfP5GLZOhOvYym9L53DiQ_1752490139
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3a50049f8eeso1835588f8f.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 03:49:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752490139; x=1753094939;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ltPdQyqHBsra0GyTjq74zXTigFI2B8itXhZ/svYCZPs=;
        b=iSE3l+HRRl93X2QZrAmBmB2U58WH6hcLkRE2FTnn4QtMuTjoFByjwsut/9W33ZowjZ
         ttMJHaHT9s/941uP1SCBBsQzEbJgUmdh8Gx5s+If3n6n05wNhFCHMvEX3orJ+cgfkBYp
         6/NJQoDlaNq2LjgR8q0Ztz7HOtKg+VNtRN2NdQ21Q0s+w2eYRft8NEEmDCir53jyxBug
         DVzALUER8368UDyXNHGfy+DQ2zAkBRPetGoVfKAXbQg0zx2uVJudcyQZ72NgLBp1/FjW
         c9GndgqKjZGgApgSafCLgQlaFIrr8m+qoKhKDRmWYrFvHHFWsYp8/PBB2IevYGY97LGw
         0z2A==
X-Forwarded-Encrypted: i=1; AJvYcCWvT8uWDGLUIoF5lHYoniFzfhY0YACP3jOKXAGe3fOw9oUq0Wsyjr5zTMM4o4MMDjpSeNl2u5rW7Mze@vger.kernel.org
X-Gm-Message-State: AOJu0YwAPjnGqDT5Y6ryakdi5BSnI82c/mL+HIbKAFdXcjiwDQDn3y/M
	Q0JyA2Vk4hID+F0pKg7N2tgwG3WOT9H+ddBD77xq1X11R14P40LfGrmR9R6uhA1rJ/D+qDF2gsL
	Yy0tMHN71dwXKAr3Pa2eD6yzKO9QRcO06v8zO2nO5WA5lshL3NsvIEaAas8WwS1A=
X-Gm-Gg: ASbGncsuhVttM4h2SlC8kopp/hAbPasVJHc8TGUb8BlL2he0ByjZKLhZEcnf6BzQQ0E
	RNfp2NPsHyzIaLFNh8jj3aYG3hOqdxuzySskS6/HxyJ/X19lHhdhku7wRGoN1BL55wjSIZD20+E
	Xovea6NjNTThZsQJDgRD9GT7QIWt0dSWKubbrIC7w0XE3w8YeByH7jnboORKOV6iMu1tg9//ua/
	xAtDTeOkMba5eZhekbq7yHOaO43MVmmG7TLHbmBDCBxJ9jtsdN3yLXWEE48rZRX4bgwIWKIVty9
	9YL5bxZiWaRRlUGoKMWDjx104kMJRX00msul7PSf7YXdz2JWQ0CTtb2vW1f8zwZh3Q==
X-Received: by 2002:a5d:54c1:0:b0:3b5:def6:4e4 with SMTP id ffacd0b85a97d-3b5f18dc957mr9051333f8f.46.1752490139160;
        Mon, 14 Jul 2025 03:48:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHImDSBSOZrXKdE7d+lK2DHEqPaurxGJM74dxsib/ppONQQBriF16K2WMaXixkeJMLS5CC1Jg==
X-Received: by 2002:a5d:54c1:0:b0:3b5:def6:4e4 with SMTP id ffacd0b85a97d-3b5f18dc957mr9051311f8f.46.1752490138729;
        Mon, 14 Jul 2025 03:48:58 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e0d76fsm12336085f8f.64.2025.07.14.03.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 03:48:58 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
Subject: Re: [PATCH 1/5] drm/st7571-i2c: correct pixel data format description
In-Reply-To: <20250714-st7571-format-v1-1-a27e5112baff@gmail.com>
References: <20250714-st7571-format-v1-0-a27e5112baff@gmail.com>
 <20250714-st7571-format-v1-1-a27e5112baff@gmail.com>
Date: Mon, 14 Jul 2025 12:48:56 +0200
Message-ID: <87qzyjkpyf.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

> The comment describes the pixel data format as stated in
> the st7571 datasheet, which is not necessary the same
> as for the connected display.
>
> Instead, describe the expected pixel data format which is used for
> R1/R2/XRGB8888.
>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


