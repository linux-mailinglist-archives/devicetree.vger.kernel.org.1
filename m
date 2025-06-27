Return-Path: <devicetree+bounces-190199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3535BAEB051
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 09:41:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D47B97A5DE3
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 07:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F3EB223316;
	Fri, 27 Jun 2025 07:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="OQrJD/EM"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D6E21C9F9
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 07:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751010071; cv=none; b=abRJag5G2bMKmveQ3MNTKzRXLPB1UUcJ12XCe9tf1NNjWirXMzm5FR7/XKZYLwGj7iG012d/5UoQZjPmiCtyueoG97EqAXmWxjLZvo8LJNfM+13TzNORJm7MX/LmDui+49r/LlXUeY32hbmVzILY52j2kdP/PnyrWkN314NUbIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751010071; c=relaxed/simple;
	bh=LZ8XvF7Mxx6us22Wtq1V0lH/iTurIql0J+590VcfcQU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=cPvFohuvxqQJmH24sKQZSx+RBJPTK9OR7kO5SJzdiA446wyA6At4dxHI63xW4dRTNH9UxMId3Oni7ZBiLetxa4o3GY/ihSZNQ3YBnQJlfqPlUEO56hZBVVb/j8V97+MgIHSNPZkXd1hTiZWhGdRtm3CkOtJP2p80IlD3IK4KfzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=OQrJD/EM; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751010068;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wP3Am+ANc8SurwHR78cTMLjrIEmhW8vePBXR1xmw9wg=;
	b=OQrJD/EM+1tRFQt9QFvsXa5KD5oYktnmXtY5gBe/zt1NqN2jmhVtQURNn02+nfePRo/0NK
	6rlOKqa3DMH1FoU6K7i8arHQgYuauhwKcuhCUntfCzAKU9frDy7guG0s0O1hs7UnSrgsfa
	z92SG1A2zyrJc72VnE/pewQcfVUieUA=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-244-ten1HFBRPIqD-1PHq36ffw-1; Fri, 27 Jun 2025 03:41:06 -0400
X-MC-Unique: ten1HFBRPIqD-1PHq36ffw-1
X-Mimecast-MFC-AGG-ID: ten1HFBRPIqD-1PHq36ffw_1751010065
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3a54a8a0122so831023f8f.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 00:41:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751010065; x=1751614865;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wP3Am+ANc8SurwHR78cTMLjrIEmhW8vePBXR1xmw9wg=;
        b=N7t7rMEX8Lh4aXDLQK3UW1zOj59Ap/8X2xAgFkQPu2NuXMQ/ZxQCtZGwd+sdDO9czW
         QOA9ojc+6HYZ4WBjZixDn5uJMwVjpSsxGK42z/4FVtIuMSTrkKngcAWRhkLPmMTnaxJr
         aGUk87+WAIpAl7R0L5B81nCfbBr2Zo3uiPhuVaI7qOi2eQFFJkYL+M2YxIvPjsIh2TeA
         ej4Gny1yD3SemciDfhCKVvG/uNL7xP+od/ZAOzwZD3U8d1o3rycKeLP4UgaOSQUDTX2c
         q/Zv/UWO7ERKBGhfP4SPm6HvkW6pm3QfIG72sHSQdoGfOhC8AmpopY6gXU4Ur8pp9Bmw
         YO8w==
X-Forwarded-Encrypted: i=1; AJvYcCVwtFdR7tuEoFHoBlgpG84gwNdU/KRFcplyrRxOjeltkEFu+L66/ulZXly9is+QHkNcgGCA8zbY7w/R@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7fzwbHs/rFTAD1y8F6YeUE+lp4OnSSYeV9Une0C6mW/1WyHM0
	hv20XFNkjRYGfFZtmyt8Tb6Zz3cODoYQ0yIFcnFMDkLQWM3+LHR72TFxU8rof91LlM9twpl0PKi
	TNOaJGB/xgeuXAFM+0chkTzT6wEN9f/dEoDdXZSztixqPwrNwrAXYgKurU/dHo24=
X-Gm-Gg: ASbGnctjOqZQM3TuKADGVCFG5SN84P99jpEfzY7WOgUle+G/ecSGNqlSL047KKzPQ9R
	6mth5amQWA57H7I7nZQMHtMzPxVrO3kxgRiZbdJXExKmAUDvrW4ItCMqV9wyiHJ2xtRezG0a3JL
	Fba4qbUgYCNerMcsvRGKYZZYE9H2wBiNClEs+ggqpVaIFgS0wGhWmhC7FMeDM487go07f3UHvNJ
	MwWS/C7RQ59nS/aZjJ292jHeKj/96kSDKhko24Z3LtPQ2w4CNvoS2dG+9z0fnMs8y926bqCwcnD
	NDgX8WIBd4MV6MdmEZDG9NFjyEJy9RHcZiHjlZZtWuqdIEa2/RjyvMPYt8w/r9bNhG66vrzIQWn
	tUv/e
X-Received: by 2002:a05:6000:23c2:b0:3a3:6991:dcbb with SMTP id ffacd0b85a97d-3a8fdb2abe0mr1344030f8f.12.1751010064957;
        Fri, 27 Jun 2025 00:41:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETMdv3eRrEgFX+6vBwltJ/r+6ntnIOfFnB39tunb/PTwDz2TLiyLlcS2Z8MbRYWj+B7lKx0g==
X-Received: by 2002:a05:6000:23c2:b0:3a3:6991:dcbb with SMTP id ffacd0b85a97d-3a8fdb2abe0mr1344015f8f.12.1751010064572;
        Fri, 27 Jun 2025 00:41:04 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a88c7ec69dsm1911505f8f.6.2025.06.27.00.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 00:41:04 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Luca Weiss <luca.weiss@fairphone.com>, Hans de Goede
 <hdegoede@redhat.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Helge
 Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Luca Weiss
 <luca.weiss@fairphone.com>
Subject: Re: [PATCH v2 2/5] drm/sysfb: simpledrm: Sort headers correctly
In-Reply-To: <20250623-simple-drm-fb-icc-v2-2-f69b86cd3d7d@fairphone.com>
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-2-f69b86cd3d7d@fairphone.com>
Date: Fri, 27 Jun 2025 09:41:02 +0200
Message-ID: <87tt41d435.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Luca Weiss <luca.weiss@fairphone.com> writes:

> Make sure the headers are sorted alphabetically to ensure consistent
> code.
>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


