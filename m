Return-Path: <devicetree+bounces-246122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1B1CB8BC5
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 12:44:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CB04300B297
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9372031B11C;
	Fri, 12 Dec 2025 11:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cT3W3mES";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="sri5Aqbp"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E792231197B
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 11:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765539844; cv=none; b=i3rhE61bG7kJ9qB2d02PdLLHJx5q8J1gwTucAgijtaALj95nXIYaUOhVxt+F3mIQsfbGKIY06CE+xr2irPBOteivni6eByZLmYcmw4/oOGfhNGcEADQ5Md5kHfkbgb8H+2UtR3LoIJzAUyrV+oXB1hVgDW3z7in3cxQWS/7amIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765539844; c=relaxed/simple;
	bh=jRzghqcj1v1XF08TLz9cmGLjmgZ3HrF+oIQvt/SkFCM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=oGVSFGfwtiPWuf9KCg4nekKPfVjMM65pqFW+tBxVLFno7o6GpMatgURxwnoLNZaTBzkUBuqMAfFf1sp9g9jUVNq0fLxz4RbxomoCpPA1JUgUmXrWmPwMEst9nB/75JlNGl5IxflO0ib8KQXEqecNqoRFRjAiGnycTm6MkTFHwps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cT3W3mES; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=sri5Aqbp; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765539841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Rfwc03+ZoB3vuEuTCr1WM80W16BN6EcHvL1Gro5GaN8=;
	b=cT3W3mESQCIpVKZx/YvByUI0tMndw7ChS3CAAeb2bR8tofgkfc2gtv8F8pfUsqcg8E9vnV
	eDhyreBn67UeUm3TI5ZPxyBd6UT3hPbSMRRGd/jv6S3ZoxwnAEmO8NSxx+otdeBFfNVA5n
	XIOaCOcaWYA/Vop97w4VvXLOPI3QPSY=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-77-jexzUz0nOXuRm5f5_pJVhg-1; Fri, 12 Dec 2025 06:44:00 -0500
X-MC-Unique: jexzUz0nOXuRm5f5_pJVhg-1
X-Mimecast-MFC-AGG-ID: jexzUz0nOXuRm5f5_pJVhg_1765539840
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-42e2d02b528so762509f8f.0
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 03:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1765539839; x=1766144639; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rfwc03+ZoB3vuEuTCr1WM80W16BN6EcHvL1Gro5GaN8=;
        b=sri5Aqbpx1gldm1rKR5N+q/40nUsASk1jqzGAyk023X7RDMSgjssHPLdByTXsPCiq7
         vE5QAQOxFgHy6TmG6RG9Ci5Ej+lnsgAZr5DQdE91i42UTzDBoWhLgGmQwva1kQtPxIwi
         afUOtuAHS6QRFtt3iE0pWaccuwg9KZoWysqTjk6WaIbuIRLeeVhnYhwl3iPRLVFaa6cQ
         oCy9tGWSSCz+x6TyEe78WVsY6naoueXB8iy/2l9zld4t+LAc3jEgzeYJsaGcpKqmA6UD
         /nPP8CSf+ogl7WkYFyFzDTAogbQcXXJCu46G3FhpEXn/OVNnxHev8HChk5wiJZ/GW+Un
         R3Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765539839; x=1766144639;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rfwc03+ZoB3vuEuTCr1WM80W16BN6EcHvL1Gro5GaN8=;
        b=hYFYAk9lV67kZpmEGsyfhfkxvGUpflrUyUxsw1y6zNta042YobFFsOFT2ddBTrSGSk
         pemBtVL0+skJ4EDMuJMG5OZHTeqUVV+0RZe/HVhWJLfSKM1VE/uyUmgxDkxq8fhwOyUQ
         bveYkI+VqxEmljNO7jrkrYwxkALgRieWCvcgFthD3sQ+SLc4q6p1+R8dtkASgNVOzC74
         xrwBqZnzhc7e+3QJpkCjz5hFMppDTFni9XpQuociMwR7T0RnCPqOzbrFgmQr4HCiYWY/
         Y9zW9qkZnNcmkoIaPUskokH5BNcRpXBzLSevLOeUqAnTXeU8MnltyGP8jA+bNW4qiMUX
         KiIA==
X-Forwarded-Encrypted: i=1; AJvYcCXjomn1atEa4cr4KKbNx8f2YSykOkqwsvybXE+2dFIvwUm1eqiz2rWNIvAvXepSfFyYcH/RVTOI0qKH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5Q80b+0aHMBdwklf/PBuhzy0oYU+1NwIVoJ4IDZONDFDUqhdX
	uQVfZj7iVg01nM7CI8ypHA1Gx0baYnwIjJGNujKvPzmj24wz9EjBj0JpgOvLKHcMkB8tNvFTRVA
	jdUM5+YuMuAKY69Xj/1+towrkySQXie5pY4lfHbXUvzT9X381Lbj9Q5+gMjmQo5g=
X-Gm-Gg: AY/fxX4f2J3OoTiyK0VAXP/janbw1LNejkD0yi0Wqo3CvifQvi0PGufdlJvGrDmUydC
	gfdZ40SNJpCbH3mqfXLfEzj9KfeOFxcw844oUtYGilkQ5Wr5HL6a1biGUHybX7iw/TaB/wrZBay
	xB+uwFZtjT5e8k4Bs7EPz5pFAITSBHo5sG2DXNRBY+ooDNXrniIgrs7Y96Uq/4Kxnejy8fzo3LR
	3uqL4ZKrHH1XJDLt8Q2pjxflVhR7XPpT89PiiEBIAUM7R8Pw5deQueSJPBxusv9DhWkB3t01E9B
	olUmoEHpGh1vy77pXlFvu8LaTuZkftokPCu2OdtXqCtC/zg1KWFLsA+f/5RksvKPNTzS6Mbd0Hg
	/wGAORnhC77BG+E0mqF5cojoovNV9P0JkzUMsmYhK7e0OLYCUismbjdxAZLKTI3THkZyLdnLWhX
	vx7w4=
X-Received: by 2002:a05:6000:2005:b0:42f:9ed4:7d39 with SMTP id ffacd0b85a97d-42fb491fe6amr2200264f8f.54.1765539839571;
        Fri, 12 Dec 2025 03:43:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKpNZLEb5bHsTbeS496UoWt5zk2kAlf+6OGULEJP91P1P7zD2+xjYIIQNz8F3koY06QZc6Pw==
X-Received: by 2002:a05:6000:2005:b0:42f:9ed4:7d39 with SMTP id ffacd0b85a97d-42fb491fe6amr2200227f8f.54.1765539839186;
        Fri, 12 Dec 2025 03:43:59 -0800 (PST)
Received: from localhost (red-hat-inc.vlan560.asr1.mad1.gblx.net. [159.63.51.90])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8b8a9efsm12297076f8f.33.2025.12.12.03.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 03:43:58 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Iker Pedrosa <ikerpedrosam@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Iker
 Pedrosa <ikerpedrosam@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v6 2/3] drm: Add driver for Sitronix ST7920 LCD displays
In-Reply-To: <20251212-st7920-v6-2-4d3067528072@gmail.com>
References: <20251212-st7920-v6-0-4d3067528072@gmail.com>
 <20251212-st7920-v6-2-4d3067528072@gmail.com>
Date: Fri, 12 Dec 2025 12:43:57 +0100
Message-ID: <875xacdiwy.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Iker Pedrosa <ikerpedrosam@gmail.com> writes:

Hello Iker,

> Add a new DRM/KMS driver for displays using the Sitronix ST7920
> controller connected via the SPI bus. This provides a standard
> framebuffer interface for these common monochrome LCDs.
>
> Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> ---

Thomas mentioned that you could add his Reviewed-by when addressing his
latest comments. But it is OK, I can add it when applying your patches.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


