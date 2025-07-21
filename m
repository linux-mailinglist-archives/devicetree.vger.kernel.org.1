Return-Path: <devicetree+bounces-198264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AD5B0C2C8
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 13:24:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9A2D3AEFD3
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 11:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45645298269;
	Mon, 21 Jul 2025 11:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LQVdC+8b"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749C2293C56
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 11:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753097068; cv=none; b=EGdMNyvmrvmoHX6sv9dpOLBLLmzkj6nzE3NCPk/2gtiykv12uKaDhn/0xOq9EX9z+NyiTA7lI2CxZ/Bn3s4ykY+8qRzhxbYbhxCFwba5H5uLHjUNdSxref5gqi8DqKok4vNyHLum8Ad7BqdLIGHeRr1HbGCgFPW4RnNQf1bLBdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753097068; c=relaxed/simple;
	bh=tZBF1LALJXt7BV0PHJ+XVouRhusYLviMWHw66CC1O/g=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=mgnSerwMNYzYD9bR24hcl7Px3BKAuAZmdiwm/4hYojjg49fmWIO69ki82yujfad4iQJ0B5Ge1Zx10M2DSKyhbpFWjr5doeWa6PlHKQ1Tmbcra34jB8GsLzEBLEbddeK8GV2M/glVyOfddRccb6D/CcxYlSDYjZsNvRwxVFlhYs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LQVdC+8b; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753097065;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=S64oug4rzFMt9OTheEDJ2IKdCev+SwZ84xmyXjvBrdc=;
	b=LQVdC+8b08EvzYMg6ZEQLNPVYdw/7I1AMjTDNGIskPjisOPadPAtOEm1rEO/35nd83zDY7
	IbHn+z2UXUA8q8IVltWHvwAxCP2ySsUZylnme1dasA3AX5ZwI77aYbjVnM6P7zpfaFReqY
	yIWymt0T/k98YbyMnGr3JG7AWfQC5qY=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-55-Z90lLtpFPn-0zfqSFbbWpw-1; Mon, 21 Jul 2025 07:24:23 -0400
X-MC-Unique: Z90lLtpFPn-0zfqSFbbWpw-1
X-Mimecast-MFC-AGG-ID: Z90lLtpFPn-0zfqSFbbWpw_1753097062
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-456267c79deso13593275e9.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 04:24:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753097062; x=1753701862;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S64oug4rzFMt9OTheEDJ2IKdCev+SwZ84xmyXjvBrdc=;
        b=AziMBmkKR+C5VK5nqnAvxu6Vz2AanDqOaCBnTWSach63dRFKKeYtaAZPg/WD/pTVlX
         Y9DynRY888fE1u5oelgt66kxLYiKlkPYWTqDRgslXL5+YU2fBwmvqskfBksmxtnyZZSF
         wQMAsIVYv0/MnkoNrzpSQs7igS8bagwNYjXf3B6ZmxlWusGWGNhhbjztFitCrzCvxkY6
         eMHyd42ofl7hrEArmwaKQBHsLsuginh460DQPVdHWVFL3YDCzij+7xpra5FxPvGsXey5
         WgzUoVi+I1u0Dc/nWynMb0ofuA3/qgIw3UioSqPSI1xeoo9FiKB77K8nHCmgqfRodrrS
         VnFw==
X-Forwarded-Encrypted: i=1; AJvYcCVfwhbsSSJHnlSW3S43X8kKuxdy0ntGjYTIGjvtRkvkldwYxvVjdhLw1hamPJp2d7Zu+bqA9P/C9nWb@vger.kernel.org
X-Gm-Message-State: AOJu0YzoXVyTRFjzid/w4j3/GQK6pSXPmp0aqyiUaF/loESc5B/fLxBb
	AlwS5RFSgtnDuon0b9W0v4JGuH44t1ObdWZ117+iNcYeseqxEliqKLIdqGOJp+/G8Lq/+18uqAR
	MOmvTvh13KH9T2jfCRCbbSNuRYOi8rXwNhxwQVGMvcpiZ+PoCUZNBYbaT9OQ5DJ4=
X-Gm-Gg: ASbGncuk4caz18vHG/6Z0Dd6VoaWExcQplkef38hpjVEQcAAJJSUCk5axsobAFOrHnS
	BxhDB9EJJlLwzTriQgg9L7T7K4L8Rfz3SRHFB3a0F391xIO1K87uxV/Ucb28EEujCRLvZdsooTf
	PzFAcDbDU6JoLaEE2LQwEg5Fs927v2V6lg39pnqasNDLREKw3g5owRhLc0QHqvfUEykx8+AowJN
	77BodR+JPahtCPOb98EonNnVdigNtHQMB9eRw7IQG4/m1Lt7E7nRyCtRw2nwetInOAvSw2Xonbu
	biMaxE24sXiFzhDeA5QInDglJPOz9uMvH+2mVKgV/zySAq5dvfxVpC+NXQAkw5M5Yw==
X-Received: by 2002:a05:6000:2286:b0:3a4:ef70:e0e1 with SMTP id ffacd0b85a97d-3b60e53ef79mr14025128f8f.55.1753097061997;
        Mon, 21 Jul 2025 04:24:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHV5fGm/RSSf7ecoYFwTb4SzjfI9mHWgwy3o4Ms8iGa6PQPuLjyQSBdsTEN4qxIYWqzBJlVrQ==
X-Received: by 2002:a05:6000:2286:b0:3a4:ef70:e0e1 with SMTP id ffacd0b85a97d-3b60e53ef79mr14025105f8f.55.1753097061590;
        Mon, 21 Jul 2025 04:24:21 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca24219sm9820770f8f.15.2025.07.21.04.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 04:24:20 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
Subject: Re: [PATCH v2 5/6] drm/format-helper: introduce
 drm_fb_xrgb8888_to_gray2()
In-Reply-To: <20250721-st7571-format-v2-5-159f4134098c@gmail.com>
References: <20250721-st7571-format-v2-0-159f4134098c@gmail.com>
 <20250721-st7571-format-v2-5-159f4134098c@gmail.com>
Date: Mon, 21 Jul 2025 13:24:19 +0200
Message-ID: <87y0sh947w.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

> Convert XRGB8888 to 2bit grayscale.
>
> It uses drm_fb_xrgb8888_to_gray8() to convert the pixels to gray8 as an
> intermediate step before converting to gray2.
>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---

I would like Thomas to review it too, but for me the change looks good.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


