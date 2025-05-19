Return-Path: <devicetree+bounces-178626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9674ABC821
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 22:03:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC81F1B63C4B
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 20:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8633320E715;
	Mon, 19 May 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FPWsAQfj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71621F4CAF
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 20:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747685033; cv=none; b=LU+jq20nIEMgZA+Zgzz3qSASsgJr6zxDoWczm8pzDbH8bpNm2qhJuQtYZvqeHoPwzxfYqLRz6WpTPphT35VbdAM6tCYHfQTkRv547x52uhCIwWA+G6nIhD3ujbevL3n7Ws2PtAv+TPy8Eqka/A9L2f2dUh21sTDpBaqhBzkQP/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747685033; c=relaxed/simple;
	bh=EqLwxJVbgW2ecK92/FYG4YVeOgBfW1zvuSftBl8Ttxc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FT/r3SpHuWjHZTjj1qfcQVDusPG9Kch45jjq9ul29jrfYVQz8yU9amdj/ZevO9EnqvIuS0HralM7sE+1n12ND1TmWFqvdt2oPhl3qS79xEMhzhDGZ25DBniAVOisfuKm563xadKC86b+UUtjeWO3plmx7GyOkUp/+m03Nx4XFpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FPWsAQfj; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-231fc83a33aso23614625ad.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 13:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1747685031; x=1748289831; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cbwzvSnj/Pe5rfAqdyUm19jDsv5CwuOGOQ67ehueUkQ=;
        b=FPWsAQfjitbApWczANsXXq3RKaQJSu+TAcb1bQYdDmrgIwsnJ1COzT8c1tYr7NCjGd
         aHTCYJMdzotz53hww1BoWzdTGZ/I48WZpLjTT6gU2TTEaxJsnmrylXUFPlLqe6tFDcs5
         1cusCZhd8OmE69QpLurp8Y2WxoEEY/dKbuyjY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747685031; x=1748289831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cbwzvSnj/Pe5rfAqdyUm19jDsv5CwuOGOQ67ehueUkQ=;
        b=xJ/CFzEbUhLOmqlcc3gqCcVBH01P3viL1zPOMFXy2qqHVVUBOA47bJou+fIhhK0J5F
         QqlNJRs6dNU1U8UYMh7R28sf31EZyIsEke9am8mZNotcX0qoljLmd6D+yiDWPORZMmFd
         YC8anYYbmFSvEsw4HO/Yjj7Anrd1YSJP13pb2zlGCaS+VRNhs76ZKlvgA1LuFDYsedE1
         L1zDsbzJdCBy2LVKNxE1gv6iu556jLOMpfpr3StQTr8vw3XHuTQ1ae+yaw3cTYw/bZNc
         nh/ekGlqgyyYehBiNrLyIM2HuXkWfR77S6/QUaGhnQu75GM/EeH/GFPJFNRB7w2pfXDL
         b6QA==
X-Forwarded-Encrypted: i=1; AJvYcCUXg48QuGpemDh9OSItt//QiG84NDa+bGrn8EtoUAZ8jf9j4XmbGM1RULLNP4NnvYThrNSf37mkUD5d@vger.kernel.org
X-Gm-Message-State: AOJu0YyuJrwjixFrAMlrnQggg2nA/Ij0HE+AMIm6iIeWl+vnf9YCwwsD
	F+XRxi/aZqf/KA4ZX/TbQER9+g1k3PFSodZHC+mpFHq/o3UVkoiEZBob1MJxwpL5uQ==
X-Gm-Gg: ASbGncvQzM6rax/Hg4wt2XEUIHPwMtsOvsd0XtcmfwDKlBAfCTc8D3VZmVWdok11ABr
	i+NA5xhmBjc/13JA68wG3xklu2sKg/uLKtR04Vgv3S7Qp05dmB4sov4H6sYAsYCbwxZlLTAqu+a
	SIAD5owALIcSXwPPXkIfSU5AVTTDHuc44EeJzyEveg9BSp2kMW//6g+8qB2acOFO9QAemmdV9yX
	ynJ4DQtLV72e+yoe85zMJ5u0PDb2v8nr4VyLtwSf4qaaYjV3d26EdW9R4XGrixJCad6xzArZWW5
	EpXn1+nIvz0OoqfWfRTZGHoi7R9LU2xd8xJ5fOWqiskjT3BYL60FBK+1VflXRuXgp6clVoGZSu8
	OtGhlXvypT+olyplJNCE86ppq
X-Google-Smtp-Source: AGHT+IErS9e6RSBXT2pW/pk4zdNSHk5nSRHMvO7tTzp6d6cj7O03GKefBpQUhfUVuc954nlDtpmekw==
X-Received: by 2002:a17:903:2301:b0:231:d160:adec with SMTP id d9443c01a7336-231de351d48mr192316705ad.11.1747685031132;
        Mon, 19 May 2025 13:03:51 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:379b:e49d:8d8d:4983])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-231ecd5ea41sm55316945ad.228.2025.05.19.13.03.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 13:03:50 -0700 (PDT)
Date: Mon, 19 May 2025 13:03:48 -0700
From: Brian Norris <briannorris@chromium.org>
To: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
Cc: heiko@sntech.de, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org,
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/1] Fixing a minor typo in YAML document
Message-ID: <aCuOpFdTQK3cqeP3@google.com>
References: <20250517020552.737932-1-jihed.chaibi.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250517020552.737932-1-jihed.chaibi.dev@gmail.com>

(CC a few more)

Hi Jihed,

On Sat, May 17, 2025 at 04:05:52AM +0200, Jihed Chaibi wrote:
> A small typo in the rockchip,rk3399 YAML document ;
> "less then" should become: "less than"
> 
> Signed-off-by: Jihed Chaibi <jihed.chaibi.dev@gmail.com>

The content is fine:

Acked-by: Brian Norris <briannorris@chromium.org>

(Feel free to include that line in your patch for v2 submission,
assuming you don't make massive changes.)

But you might consider looking through 'git log
Documentation/devicetree/bindings/memory-controllers/' to see what kind
of commit subjects are used. You should probably title it:

  dt-bindings: memory-controllers: rk3399-dmc: ...

Or something similar.

Since you suggested you're still learning the contribution process, I'd
suggest this as a good starter:

https://docs.kernel.org/devicetree/bindings/submitting-patches.html

and also its links out to other general documentation, like:

https://docs.kernel.org/process/submitting-patches.html

Regards,
Brian

