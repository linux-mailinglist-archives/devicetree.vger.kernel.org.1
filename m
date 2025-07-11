Return-Path: <devicetree+bounces-195645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C79B025EF
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 22:52:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B5765671F5
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 20:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F09351EE7C6;
	Fri, 11 Jul 2025 20:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JJFvykCg"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E1A5227
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 20:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752267117; cv=none; b=bfmwLhvxj65qGt9Z2whW/ZKLrmuJelYHaVCHrC7LTZLQeUNMMNKRhyaLbsqm8+oY2atgOkzBRYnWkaVh1/7ZFzOBnJm5K3zIfgcwtL19gDBVDpK8O5yOV34wXtj5XhhiqXxz2j41D62GzaOYhMIZF7cmj7nekF7c3lmHuSj/GJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752267117; c=relaxed/simple;
	bh=Saf4xIcJFxD5zIN9jwcZezHkii6vdPgZpKxM/QeLbqo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=tZcSVND3+2P6ZLF+O6+oRdjCDb6a7TvGP5hV5A/FXA5bcGJCOyx2doYKsBy1yoG5/JrHnk0F9qxjRIaXPjhGpHPhVDeKOiCozWoVBVfhZO8r+mnf2njPHbw5I5ZVzVb3MTAmQ7B/Ix0Wu99ZfjQSyclst/v3KxJsLnZ9v8jrQbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JJFvykCg; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752267114;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=09BgZ/tf0+4Ztcqaiae5+oHbGx51XEb23f9LmBSVfi0=;
	b=JJFvykCgBmTEmMNTY5jVHlBN8iP8HPlbwh2VPjLdDr6OtH5QNudAdTVaN5qAn7BFMDXZlO
	wokh47DrCqWphpg3f0mNftn0wX7WB916M9neVaLSZvMHVEilLanqL84XLUU5XKOPgW7OmS
	RsHiY9xeuLWSIdakJi/D3xqXm35l4qY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-26-aZXXARfiMO-JuM7kpHPifQ-1; Fri, 11 Jul 2025 16:51:53 -0400
X-MC-Unique: aZXXARfiMO-JuM7kpHPifQ-1
X-Mimecast-MFC-AGG-ID: aZXXARfiMO-JuM7kpHPifQ_1752267112
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-451d2037f1eso15308775e9.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 13:51:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752267112; x=1752871912;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=09BgZ/tf0+4Ztcqaiae5+oHbGx51XEb23f9LmBSVfi0=;
        b=wtJTnjYllcVBTbyXk3gi5BALmLDcgD7iWfD2KS1Ga1VIs7cVcLB+P8vAN1AHHefYF6
         vz9xEdUGG/neCUlvFD6mOpybeVfi0H9Z6BbLcZGWwspaEd24nu42mjYqU+vz96mnlQHm
         Qf5m8kDfyvusb1qEaMDcVIiMOSFlFAmrkQsZ61tMXQSLcL/sPelX3APeoX0545VHamHJ
         cLNrIi344uvH13vx+0giQBTFgzqiFeKLASNt3c2df4IeVhr/AtWJNPxF3td/jyK7IHy0
         FnUWNYsdHgNdamqdlOQx1Og23P4m8HingyKBUNLcEXYc5MpHwp89ekop8AmihYyW6Z9a
         ZMhw==
X-Forwarded-Encrypted: i=1; AJvYcCU6Nel6kzxP4xA5nMHa6eFnZpu3PMSXX0FhCtHmKkUO02z4yD30ZyPZ61eiXWWEtRwsFRgjsVsXFxct@vger.kernel.org
X-Gm-Message-State: AOJu0YybdTXZyn2qaEmTemgkyQaN8nOjXZ013nMbZQSohBOa03dl6+G2
	eiFdeFZaiuyrZempGvhazszWt7i9NLWxE0yiUtPkcYjIlMC3wzr80c1VJwJoB/a2USjAyw91xJN
	6JqnqNRv65E2tdpdpSLwUBSV3pfYuiAZBCQuLExB3/bbjKPTQbcjt/8ptN3VB590=
X-Gm-Gg: ASbGnctxPwX5xOfMSyKrlcGDHpq9z+29hfgQBFLm/frTmlmmeLqj1pvPGSIZbqSWi/o
	Hj0pL+JTwVc2ncp/o/Eoy4T0U6azORqwCaJBhokXW5LFo8sHaa1pI96cEFpgEzgNwRLpo7d43sT
	LH1gQSWQ7bA9lo2phggZv8wzP2UhmcK9XZloEqOAx56EWLThZdXnKcnWtS7nlgWsyh6W/da7nap
	b6X3CoxtGLkTeXuGW/MsTu6veSMkqlkmtOitgCuwn+FCcf0XUV4YsGXR6tIIpmnLWSjpOl+k09c
	GmHeBeaT7Ycn6uo79vV4JBllXLnMgoxOGn+lWmkNnZpe/TK4SFgvfEKuz5nocVEwlRl8NHlZ4z6
	vKKunL3WlHZkr2ifdTq4jHw==
X-Received: by 2002:a05:6000:490e:b0:3b4:9dfa:b7 with SMTP id ffacd0b85a97d-3b5f2dd49c9mr4147963f8f.25.1752267112377;
        Fri, 11 Jul 2025 13:51:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPWyt3Nc6AJsCPo4LiVZwfUh7ukOGdb7Dt8vCOTLbMdccbz3kKuzcOoIAqeml5IcfiYWjKQg==
X-Received: by 2002:a05:6000:490e:b0:3b4:9dfa:b7 with SMTP id ffacd0b85a97d-3b5f2dd49c9mr4147942f8f.25.1752267111943;
        Fri, 11 Jul 2025 13:51:51 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e0d4b5sm5519712f8f.53.2025.07.11.13.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 13:51:51 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>
Cc: linux-kernel@vger.kernel.org, ipedrosa@redhat.com, Conor Dooley
 <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, Thomas
 Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 0/3] drm/sitronix/st7571-i2c: Add support for the ST7567
 Controller
In-Reply-To: <aHFy125scr-g6zn6@gmail.com>
References: <20250710102453.101078-1-javierm@redhat.com>
 <aHFy125scr-g6zn6@gmail.com>
Date: Fri, 11 Jul 2025 22:51:49 +0200
Message-ID: <8734b2e9i2.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

Hello Marcus,

> Hello Javier,
>
>
> On Thu, Jul 10, 2025 at 12:24:32PM +0200, Javier Martinez Canillas wrote:
>> This patch-series adds support for the Sitronix ST7567 Controller, which is is a
>> monochrome Dot Matrix LCD Controller that has SPI, I2C and parallel interfaces.
>> 
>> The st7571-i2c driver only has support for I2C so displays using other transport
>> interfaces are currently not supported.
>> 
>> The DRM_FORMAT_R1 pixel format and data commands are the same than what is used
>> by the ST7571 controller, so only is needed a different callback that implements
>> the expected initialization sequence for the ST7567 chip.
>> 
>> Patch #1 adds a Device Tree binding schema for the ST7567 Controller.
>> 
>> Patch #2 makes the "reset-gpios" property in the driver to be optional since that
>> isn't needed for the ST7567.
>> 
>> Patch #3 finally extends the st7571-i2c driver to also support the ST7567 device.
>> 
>> 
>> Javier Martinez Canillas (3):
>>   dt-bindings: display: Add Sitronix ST7567 LCD Controller
>>   drm/sitronix/st7571-i2c: Make the reset GPIO to be optional
>>   drm/sitronix/st7571-i2c: Add support for the ST7567 Controller
>
> For all patches in this series:
>
> Reviewed-by: Marcus Folkesson <marcus.folkesson@gmail.com>

Thanks! I'll merge this patch series next week then, since I also got an
ack from a DT maintainer.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


