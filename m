Return-Path: <devicetree+bounces-182722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F631ACDCAC
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 13:35:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE61B177D50
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 11:35:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6D628EA6E;
	Wed,  4 Jun 2025 11:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="G6fdLWAY"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5973F20F063
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 11:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749036942; cv=none; b=aWObrUce17b6GYUnMmsoebr3yyvxjA1jyewySy6GXmy+G5Y8E730U/lAmXJbTV8zNmg3/fJgrJeFVzOOWPe1btc89gTkbmswagPjUoCw9jWCBYvIZZdO32ejmsSKrkq0P4J2w8zzp5NBfWsisPcCi0jEaKyPvNqj6O05KG/0O4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749036942; c=relaxed/simple;
	bh=ybbZVjPCi/1iQiHgI0ofoPJNDgEMT8kdOhNO3KY23vk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=fMKU747kGf4Y3LLZha0CS/Hf7E9oZbWt//1kTuofiRtLP/xy6hdOYDLuCmMnlnASvITPPqW3ayoURmG/9jUyQnz7NBdZWFqobSc958WJmBWNIMURIhb2ZNPISHjOPdvBC5fua9xxIOBSHGvrDP91Orv3YebQOGCwx2G+coQ0NjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=G6fdLWAY; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749036940;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=a4SrfMIm9jFVTdR/mkZH4AtBbhuKX900QP9yhvs/m5M=;
	b=G6fdLWAYSrCAAQ2jKcq0xryONeVF926ecfNfwOIlyFNQbmrG6ftd352HTCQ3ZkkrEzezLe
	SONhQ4J8cPmCA+PEmqCiAQ0A2MqKn4mlcWfK/yzAMquL8rJiy08Bh6bXJVUjdqh/YaeQZp
	42Nbn8EUWOrVnd8kvRuNwGU3OLXb69g=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-44-Zy6Xhx5KNPmJEQ32v_dmKQ-1; Wed, 04 Jun 2025 07:35:39 -0400
X-MC-Unique: Zy6Xhx5KNPmJEQ32v_dmKQ-1
X-Mimecast-MFC-AGG-ID: Zy6Xhx5KNPmJEQ32v_dmKQ_1749036938
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-442e0e6eb84so44318635e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 04:35:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749036938; x=1749641738;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a4SrfMIm9jFVTdR/mkZH4AtBbhuKX900QP9yhvs/m5M=;
        b=Vg0/xSWMp1xIVvrgHdoLG5PBX2aweKyeijzH87OZjs4U7K8E0mUXzIY+R9zjM4T+Bq
         1lc0XDQKSMvfWQMDUMbWkloF7MuAjmPbB6Zy7ONg4uGhFooEQiVw8lVMy3HP+0FrLz8R
         w/hUQCECvLxXWVSL+vwnmpVcYhDV6F1aBlxgB1oyRXQ9ducZxmvLnT5FtGZyP1c/2HPL
         A5OaT3hPxuiW7s/SytOGtuPFtIFLjSVI+IiKd3ztXvMLvrPKT1fTLSqaIVkN0QzYpBCr
         9QWP6BPMIUmeIyaCVwY/lR+ApXSu+BC+S7KsfJCXrgJmUkIvEHXcJZzb+SPTcz4xtnEK
         GcYg==
X-Forwarded-Encrypted: i=1; AJvYcCUjBLyQt/S05uoyLDH2W3pWyEdtVpcNH9G0DznSFqGAtqRuhUOBMrxE399hrpylQxfMQ1ljTjrZfM8o@vger.kernel.org
X-Gm-Message-State: AOJu0YycgYBdFb/nuuEY2SO4ozLPIAQfo3Mm2M1E1WivRFtqRqr8/yQ7
	PU9zY0kvO1SIJt0kXOOXgN/l4BBlSi6W39CvkvFIMi+BafF+AboCRx8SObAQq3DgWn34KJKzHOm
	2XG/r2hvxD5qAmzLR1RjX6kVtKZFwh4uEOLQlZ5CcFqO1Gcjh0RzeeUBXMRb4H0U=
X-Gm-Gg: ASbGncsj2cVe6DW2rQbtnpSi3HzbRi2a00J/gCtr9uFv1tcoPh3KFne9KUnQmTFN5PP
	XueW6CwitiWbuUJtIBlvaoeJWWBg9U1jaWT7pB29Eswdbe7dQGfiGp7RC174pdFNTNmUy/PCUhq
	Z2H+I/Wj+2loaF861S1JGckVFYu0283yknotsjXP2Q3D49hhRN+khVSaMRWvYZ4RGrTVoC6fkRI
	TfEa8YAhp23uVn1KZgpCBzaHhEQPfnOtY59pceshp9JBLXnqO5HSk69RyzLbDl07qMf5+PIF1V5
	3FAoy58l80y4rKJW57pJYS6Y/17qnUyCW2UivTB+yCEVHQrF/4699FiRDhs9lUhkHYNrnw==
X-Received: by 2002:a05:600c:1c1c:b0:440:6852:5b31 with SMTP id 5b1f17b1804b1-451f0a76c9cmr26306495e9.10.1749036937666;
        Wed, 04 Jun 2025 04:35:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2JCqAr3AXCZtfAAEbxsPG/hvMjfjjFgOZI2FeVSDsnVIYOAlE1+oc4JeCPXVE9Jp927Nn8Q==
X-Received: by 2002:a05:600c:1c1c:b0:440:6852:5b31 with SMTP id 5b1f17b1804b1-451f0a76c9cmr26306175e9.10.1749036937284;
        Wed, 04 Jun 2025 04:35:37 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe5b7a5sm21683535f8f.15.2025.06.04.04.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 04:35:36 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch,
 airlied@gmail.com, quic_jesszhan@quicinc.com, neil.armstrong@linaro.org,
 megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: display: himax-hx8394: Add Huiling
 hl055fhav028c
In-Reply-To: <20250603193930.323607-3-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-3-macroalpha82@gmail.com>
Date: Wed, 04 Jun 2025 13:35:35 +0200
Message-ID: <87bjr3age0.fsf@minerva.mail-host-address-is-not-set>
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
> Add compatible string for the Huiling hl055fhav028c. This panel is
> based on the Himax HX8399C display controller which is extremely
> similar to the existing HX8394. Add a new constant for
> himax,hx8399c for this new display controller as well.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


