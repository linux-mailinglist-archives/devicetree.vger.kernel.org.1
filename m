Return-Path: <devicetree+bounces-190274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 058C6AEB3AD
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 12:03:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81F155639D4
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 10:02:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F302F295DBA;
	Fri, 27 Jun 2025 10:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="O5ShLMq4"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF7B2949F4
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 10:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751018567; cv=none; b=IBtqov4YGktoLcNdOOx0hArHRcSyegxYJW3ZR8DSMnbt35pIAJhFBt2kdzb2EHnpgoHQ9rwEs0npMkkpj2JlIzKy2Hm2J+MSm120ydfSv4hgnr6yHnWHlMaEhEX/UvsGajFWRxvPxOkvztiZ8zYiF6fB+Au8d8WsdtA+IQDaMUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751018567; c=relaxed/simple;
	bh=uND1zTsLbRfA156loyQQTWvczGvRZ/u+6QtGYINO3Bs=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=eoGjtihK20FQSvA/QQ5NzOhoc+UilOulYCszJPZtUq2oq1py8HzYRWF/aWgKv/xI5OJE5SPE8bgSFsvY71gXr2SMF+roWnwJfmm3lsg004AwQNqEns0EJxcMkeSbgTnfqIa0tM1FKEfJnxJpI4ixT6MK0l7O3STLTprtLK8p8ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=O5ShLMq4; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751018565;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=JruzEJIRQhce3mYeDqfrw5tsAk7gf7uEqexFvMHB+aQ=;
	b=O5ShLMq4HPEffalbUXwzmCGCgjnVxyG5IuN6BMZ/mXFMwf+5778af7XqH3zg4FKmkztt6n
	23g1ToNMAQ73y3PxEgBsa7PJL2ElA1mCLqjDAJpoy17NhJuj0ftls25hjjC4E6iyj38fbl
	7Siw/SOHVv2IgovztFMojoxEhF/x27I=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-215-Rnb4X4vJPHep8f4XSNQwvQ-1; Fri, 27 Jun 2025 06:02:43 -0400
X-MC-Unique: Rnb4X4vJPHep8f4XSNQwvQ-1
X-Mimecast-MFC-AGG-ID: Rnb4X4vJPHep8f4XSNQwvQ_1751018562
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-4535ee06160so13585325e9.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 03:02:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751018562; x=1751623362;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JruzEJIRQhce3mYeDqfrw5tsAk7gf7uEqexFvMHB+aQ=;
        b=DZKDWWoteAO8sC0Xxt4k+AkcrMy3OJgwXdExduBS3NMD3KZS7/ti8NdFnc4eRUhHA6
         MUf3VHVBDv86g3l7gsmUhgRy+LIg4HUGgVpLSZwav3bVIKJ7uqHXulfafo0o2JXrvr5g
         G4ziyc1QU09CzfLpKN0qHfehYx7SF+ureYZjqcdh0l4DvVOEO/QqatOSBauVldmHdl7p
         KloSARK2kW9Op5pXrk0CTMksZasrPeGsus+FGF9vzQwYxfK2JWTAsTuPYOi2AwLrr28g
         FgLUUyrEFPcP3qSAzJJlhpxqy9YFdjaeUKO4yeDUbvcp9JQ/9p8NoIRyzuznnRnBZZrr
         g/Bg==
X-Forwarded-Encrypted: i=1; AJvYcCXTFhFTMKUf2isEPIZz2+U3y0PtlDyT0aVvhqrS8JA6IxOV+AYqoIwVyZKDax23zD6NdIBr4SFjoXJd@vger.kernel.org
X-Gm-Message-State: AOJu0YxoOzoJJI8GH4XSp7hhn8p7ARwIWm64z2SzUZCrVxI0LisGNaMc
	t4tckIDND0U3csviO1P0NPiY85WLU3jXybj49T41p9tUmSqT7OeV7z63m/A1/zqmnTjGUChBApk
	QAWvQtvdQ75d5+2F20li1mhzoG1P6zRMV9AWn9qsc+wHn0jC5jdfjpVZAYsD6r7c=
X-Gm-Gg: ASbGnct+95iDCubWRqK6AbsMRMoVA+2odGxCWTyvt/rxZZcWxg/ZzfLNezrXtZvCSyZ
	aGzcP0Got2JcuU5C2uxxXq5pUsKV6pBzxenObzCPiuImIZHQet+tqOn5ZrYReatz+FiYw/UTM4p
	nOvz3sYVsXPgDN9jHkJ+0stm29goJIKXTjGzS3EOhv+RY7grFrMjlUsF5uB8TftTuMF9SpSy/7i
	WwZbyXGUNOXEgHzhmJ+oArWV446Dhpxb50ipemznCa4ucRvW8DmSCwWy/ugld9Ezhsromh8S+gz
	4hUzlRlduk1xEdBWUVo6d4fEZhKTNNSWPfkX0fW656XqUuoK0oOmJtwFsTIRZtHGksfL1WsQyb4
	xntqb
X-Received: by 2002:a05:600c:1388:b0:453:6146:1182 with SMTP id 5b1f17b1804b1-4538ee81e72mr24527105e9.32.1751018561961;
        Fri, 27 Jun 2025 03:02:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwb9GAheZs7CdFHttEfxVdyFchwFX9maJhmXPPUtAcTAKpVIiwYykxGlnMkLxlaLZoZwT/uQ==
X-Received: by 2002:a05:600c:1388:b0:453:6146:1182 with SMTP id 5b1f17b1804b1-4538ee81e72mr24526645e9.32.1751018561487;
        Fri, 27 Jun 2025 03:02:41 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a3fe0efsm45121195e9.24.2025.06.27.03.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 03:02:40 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Luca Weiss <luca.weiss@fairphone.com>, Hans de Goede
 <hdegoede@redhat.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/5] fbdev/simplefb: Add support for interconnect paths
In-Reply-To: <DAX814DZF6AT.31N8TZWL5LMDT@fairphone.com>
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-5-f69b86cd3d7d@fairphone.com>
 <87ldpdd3dn.fsf@minerva.mail-host-address-is-not-set>
 <DAX814DZF6AT.31N8TZWL5LMDT@fairphone.com>
Date: Fri, 27 Jun 2025 12:02:38 +0200
Message-ID: <87qzz5biyp.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

"Luca Weiss" <luca.weiss@fairphone.com> writes:

> On Fri Jun 27, 2025 at 9:56 AM CEST, Javier Martinez Canillas wrote:

[...]

>> These two functions contain the same logic that you are using in the
>> simpledrm driver. I wonder if could be made helpers so that the code
>> isn't duplicated in both drivers.
>
> I believe most resource handling code (clocks, regulators,
> power-domains, plus now interconnect) should be pretty generic between
> the two.
>

Yeah.

>>
>> But in any case it could be a follow-up of your series I think.
>
> To be fair, I don't think I'll work on this, I've got plenty of Qualcomm
> SoC-specific bits to work on :)
>

That's OK :) It was just a drive by comment, but as said I don't think
that this code duplication should be a blocker for this patch series.
-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


