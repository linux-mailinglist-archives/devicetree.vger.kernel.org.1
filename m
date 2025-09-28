Return-Path: <devicetree+bounces-222175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 065DABA6826
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 07:03:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 372E7189A1E9
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 05:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A93BE299AAB;
	Sun, 28 Sep 2025 05:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TdRHcTbb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5A61C5F23
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 05:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759035800; cv=none; b=Svv/ntaRdUH3bcoduQ/5ApvrdBuoRRTa6CiJXhu94I1VBzUCkknV06GRhRq05xTkAGT9ryqCKEx+6AQHEkHl5VCH2+ItD1abbOqUUVoepdbNPt8jpzoUgICMpmyU3xihLUpC5tCR/0AMWSUFqGhsA6icBBB8mrEihArSejCoAPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759035800; c=relaxed/simple;
	bh=QMtV6OGFQw4H+Fr4qxLekLxCa2Qt7VL//D+5G2Q4PA4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XYKi7WjJvmNhs8rRY6FPmfLWFg0J2S7WYafULozw+udd7xJXkXu5kNmYSjhXW7+JRhcfW6u8rucOqm3G/inhyICGHXDMGdBQDyuYNq9UtUrrP5YaYypJrnKqFKdlX3aw7ulwQbq+5Lh7VunOK1oY7HKtuGKDx+0JSHSmt45al40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TdRHcTbb; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b523fb676efso3432014a12.3
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 22:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759035795; x=1759640595; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xm/OUWyFAO6MekzNliwFbpLwUdv2bsJ5HXnGJgKstlA=;
        b=TdRHcTbb5LaW1+g2m1lt9ldBrNDJGsGIymDK4SnGNBrNSMjpTzwyl+fx6PFd196tda
         vzJRSJ4i6MxfNzSh28mi6NeQ7pTD+4MxOKiqMZdi8ohM6hw/esAlq47ZwMK10Nkva2bK
         /jN905kgffqE2BYeitRKEz7O0StMJ3enIxwZgmHEDfPAGUQKJ/tUjBQzQwqkRMGUYPZW
         o0cSdm9w4dgHZ88NNWDgWFaDmjeCVbAk/GrjhR/l6cHQ37Ve2vp4jb9UXey9YVeP4OTG
         TT2MMy5nLjyYjpgD/w8KjNNg8euIYhVrTYODvswpaNvsPyyNPiJGGziGzPVWAn3z/LXK
         MTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759035795; x=1759640595;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xm/OUWyFAO6MekzNliwFbpLwUdv2bsJ5HXnGJgKstlA=;
        b=ANtYJTJ8QvEmR8MG+gUiiub6NPuMsvG4xSggX21sb58MC6rhy9rOvNY88XaJwGTCHX
         SiB9qBJky+8mxxAzauQU08XQh3H8rvvIasynmtjG7GY3KOh5fwfIDtCuxhs2MjSGZp+T
         eO+u6MCLQ2+9KPm1aSi9TSbsLUSIduObysZ8seah5c2hetxRBBbq7OLXoJ4BxPn+h2QF
         FAP2+X/P2aP/48/HgeNCjf+q/8qUtLOmJ9ARxryShbo8W4hqWI4bddnytH8sbZvpDTsr
         5HqRZhzAdklZVfzf883rq9680MiJc0Obym5u3wQhlM2UYFKQWXTbQdEtyXWitf6GGch+
         0nJg==
X-Forwarded-Encrypted: i=1; AJvYcCVM0kR+oZsf+rBOgrVqXkiKTiE0kxMUjsckrmYmGcblXCAKZBnqB+VQglND+3JtKzyj+2W7HyoHmJ6V@vger.kernel.org
X-Gm-Message-State: AOJu0YwuGBEyCz7zc3BbdAkVSdBouNg2OcKPUjKmpeCwCxu7H/GxFvWG
	/L7B3oOobnK1jHFhKmjSo7YC9zd3fFCEGKYxvP54DUxZsC8F95tyIjuN
X-Gm-Gg: ASbGncusArDO72noJTfRHQRjnnfjvJV6jpbUtuqohOLcHGDsGM3Uyw+hToOidnX06du
	xEOXAZcvCt69N86iaPvFE6A0gpwWL/aEcSIlK2U+EAFigsDSBdJzOj5/3ozWw2SGUieFP4Pa/07
	YuN2HPn+Cj8puo4JzOUf0dXebOWxFti82hzpn0I47ZUCYzki6BSSqY5DnC+ZzNazs8tNxXnshFj
	CCCvJsX4VUaBrGhx+WyBHCFcctcboTc31+fBWXlK6B7/8vJ8OkkoxFm+52+azbs54CgmxK2m6Zz
	Vwg0utnDmyPZPau4E5GPnp3jgqqF2C1IhwGXCcggSzqc/oSHotMLqbyGzGJOxN6WiAhc13kY3UV
	HFVvKxuIcb0S5yQn12d6aWl3t7IiA66p9IRDSLAaP3X6vgpl1IgE1iTNgnyUjjeeIwKj7Jt2jHw
	==
X-Google-Smtp-Source: AGHT+IGM7HTl+rp2pt0cDMfA3KNGD3nZVxhzYLkjSlK2EgGIN6LujG//pIftIad7lmbGXj0A54imuQ==
X-Received: by 2002:a17:902:e805:b0:267:b6f9:2ce with SMTP id d9443c01a7336-27ed4a465cbmr132772135ad.41.1759035794491;
        Sat, 27 Sep 2025 22:03:14 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:22dc:7b49:8c5d:38f6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed69bf9bdsm95854355ad.127.2025.09.27.22.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 22:03:14 -0700 (PDT)
Date: Sat, 27 Sep 2025 22:03:11 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Luca Weiss <luca.weiss@fairphone.com>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH RESEND v3 2/3] Input: aw86927 - add driver for Awinic
 AW86927
Message-ID: <gswz6zhukprs6q6mrv6pmzcitxrvzktubylhan7knjcs7tjbxf@325gvpk5cyt7>
References: <20250925-aw86927-v3-0-1fc6265b42de@fairphone.com>
 <20250925-aw86927-v3-2-1fc6265b42de@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-aw86927-v3-2-1fc6265b42de@fairphone.com>

On Thu, Sep 25, 2025 at 12:07:29PM +0200, Griffin Kroah-Hartman wrote:
> Add support for the I2C-connected Awinic AW86927 LRA haptic driver.
> 
> This driver includes a hardcoded sine waveform to be uploaded to the
> AW86927's SRAM for haptic playback.
> This driver does not currently support all the capabilities of the
> AW86927, such as F0 calibration, RTP mode, and CONT mode.
> 
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>

Added missing header, changed uint8_t to u8, changed some formatting and
applied, thank you.

Thanks.

-- 
Dmitry

