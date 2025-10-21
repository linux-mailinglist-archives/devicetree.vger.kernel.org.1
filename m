Return-Path: <devicetree+bounces-229471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C83BF802A
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 20:04:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05A4C544B06
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 18:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5C8A34F25B;
	Tue, 21 Oct 2025 18:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LYhA2PzR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6014534F24B
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 18:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761069887; cv=none; b=dMZA4txVSQO/+DOmP2whndOMH+LsrbpJN5Tgx/9DWcL6q2JeTaN5QYI3H0/0NTBqueg+BSnd1a9u4iIkryp9+w7HlP+hWTAG5K9JVQG5bgys0I2BF5zmoL+k4wKGTTU3cLYr1fYk0rTNlIuLNr3YmD0fDnFxOrt+avj0senglGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761069887; c=relaxed/simple;
	bh=jhCcagVML83e1HP4dBy858O3DExVw2BUwBiMlSzW8y8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ONNR7qKjFgeTwHb2m0Au2butWxviURachh37SZJ9uAy0Jg6/2GUT95dWXTaIYBzFp263a9XHBzZfqhjGrxDqA2KK/fwV75dvh2MbZbT4uih2UdSze7bGj4ZqyjqIXmDpmuZhin1h+BeJVK4ooDV5/zHl01BkRmCo8pmCcrI7UK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LYhA2PzR; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b49c1c130c9so3733130a12.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 11:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761069885; x=1761674685; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2QNqcW6c5+Npg9ifV37H2IqLMfiz3SDiycbkwes6nzA=;
        b=LYhA2PzR+Lx/QDrWtxPO56QuwNJn+aLLvSOeHBnK6HFKKGGQXeAvbGQu+QrfKZ2jcn
         gygoxIjflkzoS2PBiLESu4pQQse5rejUTJDjGfSaOjRESiI+mhEmQRPX8I1jjYPPx2fq
         rph8E1mGrkRA9GRgudff7OYkew91qLp/LKTd2GlysSd9cFP25PN5dVQ4Byp33FN/I14C
         mLm16eun2tLASFYIhDlnC9AXewoIEvbj5yT3H4Lszjl8Z+ALkE+B4U1FPkLjtR29vWnx
         B/Xnm2UBDnCn3Pa74rGq05crYIi258g9UemIR9v+HZz0UIdN7opRd+KJHwPEKh10dcqv
         aU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761069885; x=1761674685;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2QNqcW6c5+Npg9ifV37H2IqLMfiz3SDiycbkwes6nzA=;
        b=jXw3wlHwmCPg7/SFkNV1dUlmduOBUvTOx3nxAnbVPMIUAI2jUTzPiGwa8zTT2koutT
         AcUUCmVrywJBuU85skQgGj5Ay63tkO0aOkPmroS9RsQv8sd1iztl4TudZwRcgsdFBtSb
         y0+KCyJc2a7+JcxcDgH/RgkrErYsckFQDbZAFcFzeuCTKUaTlD2VUOIezfAx5utGQnqx
         akRO/LcTg8JyaIYdmW6PYXuy/3jxRP9UvuD+cfBIjn/0hFaK1sLY7k9iif2a/VdswPVm
         aAD3EXDr/AYbb8rzbhTEXLBynlNSNYwRbDPdhu069KejfMc+D0fC6FiVdf2sEJivns0C
         qcKA==
X-Forwarded-Encrypted: i=1; AJvYcCVtiQkkUrooBviV24BJGtxJJEDSsWKOgH4swHDwXmvh2VpmiuIXBH8JK6uKuhcA0gjhEzuQn9yV5CKW@vger.kernel.org
X-Gm-Message-State: AOJu0Yzimp6ApgpxfahS0K68Fum9B7N7lC5Gh6ycxGim5cbuAkbjYUsd
	Ox8yIcrQTqCFEVYqSVmk+Cki9QTRkY8mQ/GGsUmrIENYG+ArNFYqzuQY
X-Gm-Gg: ASbGncv+gpyATYXgaYEGwdyrrOUeOkjGstFrFZqPbydI8qiq08eA211RDJC5e95Xfqq
	AMfa7MWlim0MqQWlSXWajztCJkhPQhBbe3vsUj3h3u0qc16jacyUtGU3Uh1t0w2wULTir6oY7JY
	/EAWeJmdUf1srky9iKjGrmYNTEBXR2cDTCs0LCp7MvOAs6r+fLW7JhP6sjxZRugpekvk15ixl+q
	31F0m/2CU0Nb53SOllbqhl2z/WzIFKo++fdHO20q3wfg81RNIGZNvnbDOcApCnl5lGr0MwOt65r
	/qtzZs+zlmA881hvZvdeQyTRnh/3dKl7+QNwyV+IOh6cZ+Br5Hqu5C6CfJCLDE9jsT9MAN3sYFM
	p2oXz0r1Eaw8KGEU4KBPvDISfEFm8YcRFfE/8SinHJ8LYj0/esZnOFwHbcvniKWM7cwqu9gZ1Q/
	ZG+GjGgibbquaOyWxSM1d+o7OeuytW1LAzzEzGOEfxprZk2GSoF3o=
X-Google-Smtp-Source: AGHT+IFHxNyo0lIoDCYjMil0Lo93Z0LIGv1u7aWlc4Ygd62ZjbFDY0Z4GIqoMlga/4TZ2FuxfJzz1A==
X-Received: by 2002:a17:902:e549:b0:28e:756c:707e with SMTP id d9443c01a7336-290caf846e1mr241889355ad.33.1761069885196;
        Tue, 21 Oct 2025 11:04:45 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:bf44:8af2:4f63:3654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246fcc2bcsm115555635ad.33.2025.10.21.11.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 11:04:44 -0700 (PDT)
Date: Tue, 21 Oct 2025 11:04:42 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)..." <linux-input@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v3 1/2] dt-bindings: touchscreen: rename
 maxim,max11801.yaml to trivial-touch.yaml
Message-ID: <opdzievwmkkos5wyohrl3gydfmllcrw35bhzqa2gfi4kj3573j@ghlb4nndm6id>
References: <20251002164413.1112136-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251002164413.1112136-1-Frank.Li@nxp.com>

Hi Frank,

On Thu, Oct 02, 2025 at 12:44:04PM -0400, Frank Li wrote:
> Rename maxim,max11801.yaml to trivial-touch.yaml for simple i2c touch
> controller with one interrupt and common touch properties.
> 
> Add optional reset-gpios and wakeup-source properties.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change in v3
> - add wakeup-source and reset-gpios optional properties

Sorry I already applied v2. Could you please rebase on top of the
linux-next (or my next branch)?

Thanks.

-- 
Dmitry

