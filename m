Return-Path: <devicetree+bounces-159754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4DDA6BF29
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 17:08:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D8C037A6917
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 16:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 417211E5732;
	Fri, 21 Mar 2025 16:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mdKrMXYl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83AB78F51
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 16:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742573240; cv=none; b=LiZ8zsEe1Ji/BwKXDZRceGllpigWqT686CIOYXZqpd8N9W3ToNIoZhqtfx5p4KcL1yG90zZEcY69nk4Rm2+Mlbdhv9qAjYY2jOjyYi15PyE6xW3ErEDPlBbQ6fEn0n3iuMf6TB/xGli2UT49pzSPffyhBLZSXeqikTEGXJfcSz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742573240; c=relaxed/simple;
	bh=jsr+fAPmt8WjmyP75sUcyDnamN3OSk2i7iC9kIodCL8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GfyxEW96vWjXz04D8XX0XiAZr56HqoHnv39ohXofGdkcuFk9dY2vNIUjfJDpVjyA1xu4u8N9FwZuv1FZsJcBJ7YGfK6f7sP1L7GaJw9frUz8x+4ZEBhsQWKj2RXPIWmR+fGuTr4xpcrTjtGpL+1fizPRtTbTLfBqUEjilTm7sDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mdKrMXYl; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6e8f94c2698so11542666d6.0
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 09:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742573236; x=1743178036; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cXTmQzSNArG0LUnqvWiAWAFfFrIQ2vrTyW8gsvrq5lE=;
        b=mdKrMXYlfcX3XzWCxmwdsnEaldXHJ7n7byImv6JwiC0qgd0Cq/YJaSYFqn2hSqAyeW
         +WlwkB9gpeBx/Z8wt1vqRbxQFRTizs+I5k6i64zIwdwXqWttBvjjWrFsmj+3OxZ+48BW
         80jSZvp1/hLPyArCNB5k8tV4tnsM2fLt6Ibaci2hDOkNRBogQz9eK2OCVqancZ1Kpwyj
         abT5OgsI5eFc8dwSq2biMgHKzzmBBzszRIdTTWB4R50yFilVuSTL7hninhJbtNpXP/Kn
         VBLRBf2GGnotUycT8y9Txzp3nIcHCsoADPwUnO7dZmVEEWEHxPg3I8AdQKkLgbjx3Iv3
         OQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742573236; x=1743178036;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cXTmQzSNArG0LUnqvWiAWAFfFrIQ2vrTyW8gsvrq5lE=;
        b=Um7ZCgeDvFs+xdNQbcMlhzrYQC74t6CWFAfImNhaHUm0nFGGNkhS5XAmSt/N1BaEku
         +zWh2Mc3MuxTblrna+Fwegynzh3YaUADBg1z1sqB5ztYPBww0lF7J4CUbXg5qEMCu4Pr
         uzl47RNdhWrej+25khOuBMt/SCZKTP48cB9UdzbmgHsNw03SssQC1amjvmX2Xlm/uLCJ
         OMJEN0CsfQ/9989rXNSeZiE+QdTlHgXBj+FTyNLaTyG9ylgN7KMQ1rVGUz/bqGzr4nue
         wQ0JOVIakmc7RN6rudIleAzBRzoPq1aU7f/nhsDDxzgmNlW4Tgv0Kj6muXLicolnaDRE
         h5HA==
X-Gm-Message-State: AOJu0Yx5Dh0y7ZydS6xymQkP96jtuAnn6DEjb2PuEDutm3tGnQKzvqm1
	PZYb1beMHDnGizR4etGLLjmUxyLDTbOa6JiRVoMb1zfPpqvpEXPS
X-Gm-Gg: ASbGncvEvPDLXZcTyF5sj4/jx2GPSaGTnPyNG+gQDCW+O7nE7XhHhX50MPUN6Fd4vnW
	rbIzqFetGgSLnsJLJy3qS3kEIryHod2rMRGP/hpwIrvRMoFcJ5eHi247A6YVM1W3bpBiY0NZG8v
	LTuL7EwTcono91L0EglazuKnMbp/NGp8xRY+bclVmvl9RTTRMmleCPSRp2AuyaedI407trbQCPq
	zLkftyhD2KEoSPw0T4/ME/bZL4NxPJXSy9eDkR4BcXFxjSV35fJ5g346cdhXF7zul1bA5EYYe/w
	GsJIzho95wtwIL6lPp19XFQ7I7ihcwxRoAS0Gm5jzb1ibGFxHRalxae7Wz6sEe5zFk1nzEFpwh0
	dyKhPiA==
X-Google-Smtp-Source: AGHT+IE6wBkSae8r7jDv077Rr9iye2+iQLB7YCA3JeuoVSlKHZ/rpng//xmWpjmG3Q8Z0Byq3nUFNg==
X-Received: by 2002:ad4:5ca5:0:b0:6e6:684f:7f78 with SMTP id 6a1803df08f44-6eb3f275bd6mr53792736d6.3.1742573236245;
        Fri, 21 Mar 2025 09:07:16 -0700 (PDT)
Received: from VM-Arch (ool-1826d901.dyn.optonline.net. [24.38.217.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6eb3ef0f214sm12600176d6.7.2025.03.21.09.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 09:07:15 -0700 (PDT)
Date: Fri, 21 Mar 2025 12:07:13 -0400
From: Alex Lanzano <lanzano.alex@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Josef =?utf-8?B?THXFoXRpY2vDvQ==?= <josef.lusticky@braiins.cz>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, dri-devel@lists.freedesktop.org
Subject: Re: Bug in mipi_dbi_hw_reset() causes incorrect DT entries
Message-ID: <dycrognvv7mlxdqmgkqx3bc2377zvrezvpj33pegqk5nhlayqr@5e2zckplhmof>
References: <v7krb2k3aybcpbzyx4ysjxpdpljpadk6xugpdsehzc6wp6aejw@53flicuphar4>
 <ebfdad9d-fe4b-41ac-b7df-eb7354dd9052@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ebfdad9d-fe4b-41ac-b7df-eb7354dd9052@kernel.org>

On Sun, Mar 16, 2025 at 12:51:29PM +0100, Krzysztof Kozlowski wrote:
> On 15/03/2025 16:20, Alex Lanzano wrote:
> > Hi all,
> > 
> > There is a bug in the mipi_dbi_hw_reset() function that handles the
> > reset logic of the controller. Currently, it will set the reset gpio
> > value to 0, wait a specified time, then set the reset gpio value to 1.
> > 
> > The issue with this implementation is that the MIPI DBI spec states that
> > the reset signal is active low. So, in order to correct for this logic,
> > the developer needs to incorrectly define the reset gpio as active high
> > in the DT.
> 
> You should address it to driver and subsystem maintainers. Instead you
> skipped all maintainers but Cc-ed people who have nothing to do with
> MIPI DBI drivers in the kernel.
> 

My apologies. I wanted to get the advice from you and the other device
tree maintainers since I was proposing a new device property to address
this issue. CC'ing them on the thread now.

> > 
> > Fixing the logic in the driver would cause all the displays using this
> > driver downstream to stop working. To mitigate this, Josef and I were
> > thinking about adding an additional boolean property to the DT that when
> > present would use the correct reset logic in the driver. And if it's not
> > present use the current reset logic and print out a warning that this
> > reset logic is deprecated.
> > 
> > The overall plan would be to have this temporary fix for a few release
> > cycles so downstream has time to be aware of the issue and update their
> > DT. Eventually, we would remove the incorrect reset logic in the driver
> > and this addtional boolean property.
> 
> That's an ABI now, so you cannot change it without affecting users. Code
> is from 2018 so you have plenty of users now.
> 
> I did some workaround for wsa88xx speakers but that's an exception and
> it should not necessarily be a pattern to follow.
> 
> Not sure if it the issue is worth changing considering the impact.
> 

Makes sense, I'm just a bit concerned about the device tree definitions
not being compatible across different platforms.

Best regards,
Alex

