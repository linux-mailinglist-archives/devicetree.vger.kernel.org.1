Return-Path: <devicetree+bounces-246025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA03CB7E19
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 05:44:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EA56300BEE4
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 04:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9337B30DEA3;
	Fri, 12 Dec 2025 04:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YwIXatwS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9033002B4
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 04:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765514648; cv=none; b=nJ23H2uRfc91hWQ22nw6L+HLD30JgUSlleiqvQbsC22vEhZGDhVmoFZwuB+IfWHiO0TRUUmPg+EttmCrywA9juFXSNPzFs2osu4P0fj+kamsj9qSHRZGl8kv4/GrRDUt25IxJqhqUjR0eBUV1FlPIRcSe1O3stklTggY1Q7/Kvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765514648; c=relaxed/simple;
	bh=ktZqzCzHfOOPzM2EvOjd8+qE5gzVGh5FQ5OGoF8l4X0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=idFCxTvPRwUlkvPfJBus8zg7WOoyadFl0ZRqdzCrJCF3r6WlS0eAT7hHxjPJ+nHq+Whms7t+YRPF8QHf92xZYPkcD9ZPXCwf8eeKY7MT9JGDRxOc/DJdgms+qcrKZtf/vSo08iLPRvh8Qh+GyhTlMLOQAVZFF720lfwvI+Ss4tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YwIXatwS; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29558061c68so10381385ad.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 20:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765514645; x=1766119445; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J9gBZpsCmG1xQqso4bAzsbXRPhWxYEn6n/PkIlRaLDM=;
        b=YwIXatwSd1+65UOuVU9F5DzsBKqRbx1pHBZJqdq04NvcIePaR9LESp9ZJIV7t6Wqgn
         2uXSQOS4h2lyMAyhZ30rJV/UhHRuOwbSpWHgStS2apy3/q7CFWznZCfTzBHpPyqMpjXN
         bFDzhcTx02++g0d5wobFsraslNRYn0FWenu30NZME5Y8tdqQl7+QVae3r8UEBdyaiHek
         bz4er1HJ+GXNyufwTgZshThi/HV2mCb2szXyMZjZ6hjVliDAPUxXlUlTbngLvLwCUEyz
         p1ObJQK3uVUv4JLjFsCmtQ3pHf9hpjDw5CEt/pv/2FKaZ6/ak/cEsnIZ+OmljyHmo89Z
         p5wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765514645; x=1766119445;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J9gBZpsCmG1xQqso4bAzsbXRPhWxYEn6n/PkIlRaLDM=;
        b=rUraDG5iO8kmyfHvLmR2kg6FgHqXSnpccixhT5gQbmQkjzDOn1bhNUmGooFlKXhUTG
         7lhRbmF7m64b9uzI+U6htX/WTNWvNVgAU+a7S8MlKQxrVkfzTThbBkMJvOSDVdzm0vcZ
         JpNPRvzWwOeCYnWo1Dgy6Vf8QYlF1FRzVbi5z7c9aW/NLSpm/zQ3C4YCBMtdXfQbj98s
         GjJmD1E4R+hMF9GR60kFOv8jER42R/eI3y5LlSzE4380C8dvJSGLJgD8d5ZCjYptkGJH
         QAIaue/wv6QtPySwediRzF2Tl8PKeJq2RubF8a4Ca/2yvzUWgHmmI5Kg6IqDPWNQpdFS
         +nYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwtoKD5nzBH/4V2O4ojiOewGQSwIreZwOdvyvqZa1D+iaOhtfqmTsKQYdzhi7az02GrNfAFAZx7WgF@vger.kernel.org
X-Gm-Message-State: AOJu0Yznhb17uuxcKe1elLE1qXrsOzwvjr/hnlKONopitzUKoLCswWoz
	6/hIlDbZpjj3lfVV3gedz2S5P9yOpN8u8iCn7M9o4fJi40EeAKzmaAQT
X-Gm-Gg: AY/fxX6LdvjWI9teyiKUlzly/zsCn7b5tFm94D2rWuo+yeiJ1suiB8cEXEZ3nKupYvu
	V91WcPgNuzgKZmm+PlTCDtbbX0MQ7Gy5i+In4DDrb5bKFO/avltxgWJpVd6/h2oAk9m8CUZ61UZ
	ly0piaDQeYYLWvqOVAPP7VmyuSkQgfjV9YQdA/pxHJbpmWnih5G2jyXxQo21OMa158UKPpZ3f7W
	OO5ggRm9+upIDZPSgsDccf911BP6jyVlQA9ockDJ+4H1GhRqW6mRJjeowXrRAIx3pYzs59Bs9D/
	MHHhPoZjmcDPrktRDA5VdFIxlvrmWA2tpL9uqvL/ZnTyjDDWaVv1d0xl4+FV19NC/d5gWKFxkN9
	JeggHMpeXFU5a+m5cE0hNDU1qVNHOOjd0A+KHhGWWgeXoPFH1M0EXcjB8rjbFBZNDtojhjlINh9
	a2G1ucSxANpo0YHo/MGgCmKdzoh9Dcs71qkMWcp1jmFfjez+NpqiM=
X-Google-Smtp-Source: AGHT+IEOVfeIqM/cAri6W38bw/FvyPFw68AOKnN78T6Txd6eJUYhJLV+lIMPJu7qekNQBdDcQJN4rQ==
X-Received: by 2002:a05:7022:f50f:b0:119:e569:fbb2 with SMTP id a92af1059eb24-11f354dc81emr355897c88.33.1765514645119;
        Thu, 11 Dec 2025 20:44:05 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:fafd:f9bf:2a4:2a0b])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2b4bb8sm11165691c88.7.2025.12.11.20.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 20:44:04 -0800 (PST)
Date: Thu, 11 Dec 2025 20:44:02 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Fabio Baltieri <fabiobaltieri@chromium.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, 
	Tzung-Bi Shih <tzungbi@kernel.org>, Simon Glass <sjg@chromium.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/3] dt-bindings: google,cros-ec-keyb: add fn-key and
 f-keymap props
Message-ID: <2gd2npolfpo5jruwraamwpn3wurm7w447jnwsbcfonmhos2owf@ejrqiz3qdxj4>
References: <20251209154706.529784-1-fabiobaltieri@chromium.org>
 <20251209154706.529784-4-fabiobaltieri@chromium.org>
 <20251209192243.GA963693-robh@kernel.org>
 <aTm1PVLrS7Ra0OTF@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aTm1PVLrS7Ra0OTF@google.com>

On Wed, Dec 10, 2025 at 06:00:29PM +0000, Fabio Baltieri wrote:
> Hey Rob, thanks for the review.
> 
> On Tue, Dec 09, 2025 at 01:22:43PM -0600, Rob Herring wrote:
> > On Tue, Dec 09, 2025 at 03:47:06PM +0000, Fabio Baltieri wrote:
> > > +  fn-key:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    description: |
> > > +      An u32 containing the coordinate of the Fn key, use the MATRIX_KEY(row,
> > > +      col, code) macro, code is ignored.
> > > +
> > > +  fn-keymap:
> > 
> > If keymap is linux,keymap, then this should perhaps be linux,fn-keymap. 
> > Depends if we still think linux,keymap is Linux specific?
> 
> I'm open for suggestions, trying to understand the pattern, these are
> specific to this binding I think if anything they should be
> google,fn-key and google,fn-keymap, similarly to the existing
> google,needs-ghost-filter -- no idea why function-row-physmap was not
> prefixed but I guess it slipped in and now it's not worth changing it.

Just double the number of rows in the regular keymap to accommodate the
FN modifier, no need for separate keymap. Also no need to have fn-key
property, use whatever key that reports KEY_FN. See how it is done in
drivers/input/keyboard/tegra-kbc.c

Thanks.

-- 
Dmitry

