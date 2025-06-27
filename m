Return-Path: <devicetree+bounces-190209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF49AEB09A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 09:52:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F71916C1CE
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 07:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1DD52264D3;
	Fri, 27 Jun 2025 07:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="MpnFUCrS"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D40E2264A8
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751010743; cv=none; b=HvTem5gwBJ4S0TqXorfqi5s9ruzSKXB/gdLXEVRADjbBAHgKxuHEDrvHJ6hzgORa16IfE1MdgXgDWx/vuVnJ0dTOJlnMTNN8+W7d8+KcJocrrQCjWckS2OnBbVxd/Fkpe56PcvJbZRn1BWddHYYKI6w/zAG2c61QiFX3vnshFZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751010743; c=relaxed/simple;
	bh=LZ8XvF7Mxx6us22Wtq1V0lH/iTurIql0J+590VcfcQU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=kzk3ES6lyViDIqKIhmpErqaqO3c7n96Ot9/YmnUOttAirWIY2W+Rb2HBTdOgxconIYI6AEiUifSeRpANTLkvaKihO1sfv7km4zSSPqZyze/OsQsUVkCL7VnRLGiaxiuFxuZj/RPnzPdVAc4RHzTpDdKkUbWIRN0lZyvpSJFP2fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=MpnFUCrS; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751010741;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wP3Am+ANc8SurwHR78cTMLjrIEmhW8vePBXR1xmw9wg=;
	b=MpnFUCrSkucPicyvxCUiS+xYEe9VvR7DfHiIa25+9GSl55PS0632zp3a27Z65n9XrL+9XF
	ztvUcf+CsbqihcEERBg/Um+puKtqo6HJ4TktbPTBSPuHNvfTw4NOXUsXhnL7SKLvAptJtp
	G0LWoGBbaMW8bZwfiBhTKkKwkGKnaks=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-360-iPz6kNVWNTWNcwmEEq6p5A-1; Fri, 27 Jun 2025 03:52:18 -0400
X-MC-Unique: iPz6kNVWNTWNcwmEEq6p5A-1
X-Mimecast-MFC-AGG-ID: iPz6kNVWNTWNcwmEEq6p5A_1751010738
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-3a6d1394b07so1134519f8f.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 00:52:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751010737; x=1751615537;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wP3Am+ANc8SurwHR78cTMLjrIEmhW8vePBXR1xmw9wg=;
        b=O8bhkUeA74jrSO8w/Bj02ImPOtasDDx3FglglC1JFL9Xavwl2PU1qyhWkSoyEY9pl5
         2qtTMCOTQYkJmp+XokrkRZoNn+bi5qrfuCUKgB6talWc32m7K+N5R2vY0QFyD3TIyXWE
         8/+BlG7qYvxAldPIZPtBTcgJjECbY+1bAvE30bn5+ZALlHC9SImHyzMiUfXJmltCWYg2
         ecgCaq9O9meEJfJaawOciQEfLXV1CnZysGT3dVpHPILV1BWDKZhd+xfshHM/zTzfv8UP
         6mihCJRkzcKKVF8iKr/afiQWHHiRFTvFIBMrOba6vFDVhld4j9bvBoVdLeKwGR7YHu84
         Pd5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVHDagSpVIUxNmW/uusH80XlJIIFGyCTymwM8ytVet2uj4fBHEqdAabjGzmoGLgn5RTetwqEDMO2eco@vger.kernel.org
X-Gm-Message-State: AOJu0YzYiR2hbdVRS6EIybQ4zd/bqf0yyC05fH8otNKwTuQLs4bkHrAW
	mT1a58vwqo585RhZJpU87M/34fFqpMU5+7wDRtSe4WN1s7SE2B39HmcfpPHAqDXylpww9iP1rqz
	g+BQMxlIqeYlAAgNQR3jaDC/qTYs3Y2Y/Qme3JGz/hgCOdHSFHNsD+nZ+As0LZBk=
X-Gm-Gg: ASbGncv5dzdax4LRCLtGALMWStg7Dyfm9Vr5ksFkmG3PRR68M1xNrzUsARWIdJiL8Vm
	FUmjxnM2aYAVr+6jF4PDwbQbI+x9aERtBrYUvN9540RmzICa1qXSKO5DF1xn0DFIItPJsRMFpxP
	qp5ei5xiG0XsMcXEwefZ0SiGZv5/nVaam7tq6ViVxk2ihYekr5QsRwASHsjpdCaa8uNLJpKg7qf
	Vr2w7q5TZGFbnZhfbZ8PdITCvnJhllyrVO+n8Nh1IOc2bjByEGwG1hk/f90YPS5MDjyyz6Dwy+Z
	h+2oTBjywB+TsCq61GVQ0qH0NUbdx+2vns2NsutJhiGqh53THUWxkLL1R8uCcc8g2eJ+kxsenG1
	anGdU
X-Received: by 2002:a5d:5189:0:b0:3a4:ffec:ee8e with SMTP id ffacd0b85a97d-3a917603a8amr1417650f8f.36.1751010737560;
        Fri, 27 Jun 2025 00:52:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7ntZFEdWDDOOUlWvZHIMomkMQZ1SFGsR8HVEbSnA9rjXNcpfTHf2xPjxO564UD5YkGxL3rA==
X-Received: by 2002:a5d:5189:0:b0:3a4:ffec:ee8e with SMTP id ffacd0b85a97d-3a917603a8amr1417618f8f.36.1751010737151;
        Fri, 27 Jun 2025 00:52:17 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a88c7fadf3sm2001410f8f.34.2025.06.27.00.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 00:52:16 -0700 (PDT)
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
Subject: Re: [PATCH v2 4/5] fbdev/simplefb: Sort headers correctly
In-Reply-To: <20250623-simple-drm-fb-icc-v2-4-f69b86cd3d7d@fairphone.com>
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-4-f69b86cd3d7d@fairphone.com>
Date: Fri, 27 Jun 2025 09:52:15 +0200
Message-ID: <87o6u9d3kg.fsf@minerva.mail-host-address-is-not-set>
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


