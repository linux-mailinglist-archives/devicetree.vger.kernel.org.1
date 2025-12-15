Return-Path: <devicetree+bounces-246728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AE2CBF494
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 18:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D12D13013578
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C17A309EEE;
	Mon, 15 Dec 2025 17:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Lnbm4Ghm";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="M2AslFrx"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D1E255E26
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 17:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765820785; cv=none; b=JR8WLSB36ignnTxT0DllaWPTIthE27pqoXYIgSpSRAOPAX/VRJmkPF2B5FYQWSY3/h3SYOyDv/PVmq9RHd68LTjocGMYMlhUIHRmxj+9F6YwWRvCKKEgmgq2CnASuhNAHu4DX/JlsiLGwbRE2HX5T0Y4tU3LP90UHLSXov+ELNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765820785; c=relaxed/simple;
	bh=vxrSurKIi3HuRmDjSCNrxiS2bPZzrM5Q7t3ujZ7s77o=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=BES9AENnr4Fi8RIE85WDLmYqp9TawugueQZ89GS29OF9lSgy2uivXCVwICwwysfzCHjZgj9hAwB7TS8CnPZZwxVcX8Bs50P3uvf8YH6hgBe2Avvsu1R+StMLX/qRv2dJfWgafpa20MNLG2TUFWpu7ywH1KEkw+CXR//YmjDkmtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Lnbm4Ghm; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=M2AslFrx; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765820782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=idV1mcFSyY3XCyx5/b2AaaGCQivlpjoPBwGibjW8i6U=;
	b=Lnbm4GhmXzVa2ObEHNn+OAttXnUkg6mmbhk8jkhT9pFHqIFxrxO8dxmpMzHtOGTJlZbMiu
	cc83spXyaqBl3FnaImBelzLRelOw/lkXNEi3zrHWHupIzkQKyTOtZiaRaROrcKzF78dG9D
	/GPc8ltSDly4IZqIx89VS9xFqByUuws=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-689-bookwsu-OfevP63UD66ksQ-1; Mon, 15 Dec 2025 12:46:21 -0500
X-MC-Unique: bookwsu-OfevP63UD66ksQ-1
X-Mimecast-MFC-AGG-ID: bookwsu-OfevP63UD66ksQ_1765820780
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4779da35d27so33859925e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1765820777; x=1766425577; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=idV1mcFSyY3XCyx5/b2AaaGCQivlpjoPBwGibjW8i6U=;
        b=M2AslFrx2fCb+Vi+R9HULxogS5wOitUqVcBfK4OxRctlgoAUtxXuhwIv8r5iQS6NOy
         PfUTZ220sMxnFRE9NCUfeWes86bm81ltJToRE6qIK8sA57pxCrOKCDeud51+lvt1gpry
         6oGM3gMS9o9gLuwZGWJGZ3iKSvdJkWrFli0CWrWDGg8Et+ApvhIitQ+dRiBUHl0sXRzb
         ZeYxN/iJjxzm0Bg/TIDZ925mrfzFaIq02yS9gjP5jvens7brQPC3papdoqjKaZRGZU+E
         Zj7zEi7GogHBS3VmXSkAXmqKeDnfb1S2HAv8TssCNMGALDTVup2UNaZdJ7cRO/JKJx1r
         p4pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765820777; x=1766425577;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=idV1mcFSyY3XCyx5/b2AaaGCQivlpjoPBwGibjW8i6U=;
        b=h5ot9qDnr70+s9M5adZAoRcXPAOHj2RSiuY+qYCgnFv24+nQPo6JJpIrTEisdd1zvS
         B43VC1VReIA81OVhNp6RWSFuh2yk6F0HYQaML0WDOvcqQobKcGYybs5l9KSx4gKgaDi5
         fC7d6GrHmV7GG8R+6ZEy6rbSCKeVFjW0C4mPAyAtYz3y7F/ewmv9J8KWE7mPXWoE5d3c
         YXZiX2FSdWVn9hu6nHjibwp/JQIJjUgJK5Qprf6C4T9UuS4mjvCLsnOgurS67iEhVk97
         sDOilYzhVTmwaeTsjnqGNA7F6AQ9vKhRUtTvMHnoB4YhWaJn8W0w32o/8mvmNKhm0xKl
         dOWg==
X-Forwarded-Encrypted: i=1; AJvYcCWo6VIPnvrv9QDBlPU+6+klDywsrNpZMSDGd09Qz7p7aaEmR5AsXTRSI0Ze0FUyadq9vXDDqUx64Eay@vger.kernel.org
X-Gm-Message-State: AOJu0YzUlPL/DJJ4lwuUJ7Qzwdqm3dJa1yn2huM1WaPT9SYEOqOi9F8k
	kzWQmWTeo717fvDkl26hu+WzkpTYxvsPQpUPt9H6HS6wbP5MpVVPZ+k4sIshxOaaQemHmeNItqB
	zbEZx0niZ/63Jc9yxXYYbB60kr95uFDSRj5DKo5ciIIVXhHyK66SdhM+mgsznFx4=
X-Gm-Gg: AY/fxX7tROM4wiKZxLHXp6PTupLlCCn9nKvKyhbcw3ZhkSQS79lDJiUlsLhF1te0Zly
	L1cyKDEzH565TBvfIhhU3ua3QNBWDN/4rBEbiFdZWELgwyPwFdJIqc9hP/885kzSnYW+r/6ChCD
	drUPNJmlznaUDSMXKPAc3YWD7YjIhdFJgHDfcNmTZ8MNl1d9QzX35kksWNvD1mPeXuw0xvKIJJH
	hInXXRbJGEXqZqRUL+boiOaPsRGi0mhcOnlmyhAyvzc80EJyQYmz41fRGfDGt7jRY6d/D1Nl29T
	4rZe+YF1uosjugf3FC34EMpuRcdbcbWR8frCzYUb6j64mWy/nGdJHtEKE1Dzy4Cs2LfwMEEucF2
	0ejI5Qta1ZK7sp7rg5u4GYpRiGqc7ZmMXZR+hQxk3bvzL3MZ3NWxRpHhb9kr5dPZv9hKb
X-Received: by 2002:a05:600c:1992:b0:47a:80f8:82ab with SMTP id 5b1f17b1804b1-47a8f90378fmr119261695e9.24.1765820777375;
        Mon, 15 Dec 2025 09:46:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH2njgFBUHhMBmSPir0G+w8tCNHmxppOaBNofod7i5y0pxEm4TSTTSCNM3TAeNSNk6YHZrFeg==
X-Received: by 2002:a05:600c:1992:b0:47a:80f8:82ab with SMTP id 5b1f17b1804b1-47a8f90378fmr119261425e9.24.1765820776951;
        Mon, 15 Dec 2025 09:46:16 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f280cf05sm16248644f8f.7.2025.12.15.09.46.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 09:46:16 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Iker Pedrosa <ikerpedrosam@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Iker
 Pedrosa <ikerpedrosam@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 0/3] drm/sitronix/st7920: Add support for the ST7920
 controller
In-Reply-To: <20251215-st7920-v7-0-36771009ec01@gmail.com>
References: <20251215-st7920-v7-0-36771009ec01@gmail.com>
Date: Mon, 15 Dec 2025 18:46:14 +0100
Message-ID: <87ike7ljtl.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Iker Pedrosa <ikerpedrosam@gmail.com> writes:

Hello Iker,

> This patch-series adds support for the Sitronix ST7920 controller, which
> is a monochrome dot-matrix graphical LCD controller that has SPI and
> parallel interfaces.
>
> The st7920 driver only has support for SPI so displays using other
> transport protocols are currently not supported.
>
> * Patch #1 adds the driver.
> * Patch #2 adds the DT binding schema.
> * Patch #3 adds the MAINTAINERS information.
>
> ---
> Changes in v7:
> - Fix Makefile typo and checkpatch --strict warnings.
> - Update header paths and add missing includes.
> - Remove unused DRIVER_DATE.
> - Link to v6: https://lore.kernel.org/r/20251212-st7920-v6-0-4d3067528072@gmail.com
>

Pushed to drm-misc (drm-misc-next). Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


