Return-Path: <devicetree+bounces-50294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B205487AA5E
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 16:26:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E5D4B22819
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 15:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83D5246BA6;
	Wed, 13 Mar 2024 15:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="fYAcQ+6N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D129546430
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 15:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710343565; cv=none; b=VvHdix9ghnQMtDvkSuXDgchKpa3FC/YYCX0bb8dVBH+OoXeQiLHZFlEZBqwKcqBuzA1wDQIQneCTpS/mFvKjQFxaxRoobZiMaW6GKb2MW1XKMxnN1Y72aG6G0Wdkyp9BWOjyY5hDSUknyl+OmQL9mGPS0LQqUlAWVJxV+m8UurM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710343565; c=relaxed/simple;
	bh=X7PQFUDzW/cyIm6AXcScTjJwYMn1fbrwTqoNgy3V6tI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uBba8Ha2rOHQJGmd1hCny8qerBFNxIPsnDn/hyCAR17JLibqjgM8lfuJFHdHjNE+LHKHKHv4bNEaS7z7eiiNbowDIVkyQilHTmjNMYQYcc7zCubwO6QND6/Njrxz2CYPKCIloD+9opV5qt82AqNtMSGt88AjkFhXPV1uBjEypWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=fYAcQ+6N; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-563c403719cso1340451a12.2
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 08:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1710343561; x=1710948361; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n51loeVd4X3N5Fc3ywI97IWdnT7FPIjUDbDizSCaFT4=;
        b=fYAcQ+6NbHg9iUlbwcbodta20uXvVjJo5Y2md5lIx+Z9udIAVJbcoDYg0xZGfkurK7
         jDsSMIt26QMlaZdohRVj5CUv/hsIgAjMnsR+GVKHbsZ8pKP6+de5cF/PIF1Z1HiobGU/
         eYlelowDr/qKwllDeJs730O6bk7nVIFaG4k4xAZ1AhcNlQfP9rhshh7UiGSKQdGyN+l8
         g8XARNu0zZoU55hvQUnSBam334H9dxD2zMhHWpc7y2jlJwgZMZ6p8+O6FdpNzE/W2nKT
         jhq8y6Wz5I3JHqpkMQorxYldb1oDXFiZ5QXKThezVSyDlprgzBWGizdsoj/x2EC8208j
         axUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710343561; x=1710948361;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n51loeVd4X3N5Fc3ywI97IWdnT7FPIjUDbDizSCaFT4=;
        b=YW+spPfgCANgmlbYyJuf6038n01jgNVMVgxgqvsIZLHXbzg0jKzPxskkK2oIpcK9gw
         YXOSjcPOBXrFWaaHauAp3CiVVz76egR17JjGlgXorXrF50e2mt3vHh5w0UDBYanWRsE7
         O0LWlR52lpOEtAkvuCBEpssdL/crRyJ+taFcbQKWKsV2cVxAIARzSe9zF8hDYdF78vWv
         o9/QjkQgzzlAY2yrLfgq/1r0FYU8qu68dKQtJrB9Lu3RZ8OJtOXgrhUsT/LJK4OCjn3D
         qem2Lkc6GFZMkjX1/kCncDeHmq6Q5JOitd3sLMGEt9G0GWDbvwhnaWhgSsXk2i3wk415
         qjKA==
X-Forwarded-Encrypted: i=1; AJvYcCWnJI/brVNtEKg7iWOUbq2OClrvqwt2pUaW3PpmULNZEmktATUkeRqnROYp1yiyxozn/uPjoLVnlRXWyMxEbo4UlbuHnHwdhhjkOQ==
X-Gm-Message-State: AOJu0YwBvT+Y+f0QPblgTZqL9C32cNl1wB1PHduhhHs9JvdHYSwab5Fe
	p7IBRbWD2WB+TEdLbNDLUjeeyhSsz8kkVC4WnK7RVskvtMPcYHSJuoFOVx4xlLY=
X-Google-Smtp-Source: AGHT+IGvm4YKA+eNholdoqzv2XGR+k+AYixcPND+mtrl3w2gRQ8ZqCOdBaaVYHi6+QNBecKsT1/Zog==
X-Received: by 2002:a17:907:daa:b0:a46:35c9:f239 with SMTP id go42-20020a1709070daa00b00a4635c9f239mr6269875ejc.72.1710343561051;
        Wed, 13 Mar 2024 08:26:01 -0700 (PDT)
Received: from localhost (host-82-56-173-172.retail.telecomitalia.it. [82.56.173.172])
        by smtp.gmail.com with ESMTPSA id jx14-20020a170907760e00b00a4635a21ff0sm970973ejc.38.2024.03.13.08.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 08:26:00 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Wed, 13 Mar 2024 16:26:00 +0100
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Saenz Julienne <nsaenz@kernel.org>, dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	dave.stevenson@raspberrypi.com, Phil Elwell <phil@raspberrypi.org>,
	Maxime Ripard <maxime@cerno.tech>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Dom Cobley <popcornmix@gmail.com>
Subject: Re: [PATCH v2 01/15] dmaengine: bcm2835: Fix several spellos
Message-ID: <ZfHFiHdAeXgoNHNk@apocalypse>
Mail-Followup-To: Florian Fainelli <florian.fainelli@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Saenz Julienne <nsaenz@kernel.org>, dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	dave.stevenson@raspberrypi.com, Phil Elwell <phil@raspberrypi.org>,
	Maxime Ripard <maxime@cerno.tech>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Dom Cobley <popcornmix@gmail.com>
References: <cover.1710226514.git.andrea.porta@suse.com>
 <f57e15192166d696aca23804f8ac79dfe81fd399.1710226514.git.andrea.porta@suse.com>
 <831fee14-387a-41d9-8dfc-e3ba09a140b1@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <831fee14-387a-41d9-8dfc-e3ba09a140b1@broadcom.com>

On 08:00 Wed 13 Mar     , Florian Fainelli wrote:
> 
> 
> On 3/13/2024 7:08 AM, Andrea della Porta wrote:
> > Fixed Codespell reported warnings about spelling and coding convention
> > violations, among which there are also a couple potential operator
> > precedence issue in macroes.
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> 
> There are no spelling errors being fixed in this commit, this is purely
> stylistic and conforming to the Linux coding style guidelines.

-	/* detect a size missmatch */
-	if (buf_len && (d->size != buf_len))
+	/* detect a size mismatch */
+	if (buf_len && d->size != buf_len)

Isn't 'missmatch' a spelling error? Maybe I can drop the word 'several', since it's
indeed only one...

> -- 
> Florian

Many thanks,
Andrea

