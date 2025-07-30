Return-Path: <devicetree+bounces-200747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B13B15E8D
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:57:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E8765A4715
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 10:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D95C26E707;
	Wed, 30 Jul 2025 10:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="doBpC71v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30C718C928
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 10:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753873069; cv=none; b=UWdGJC3p++zlwqGXrw9UNe+Ueu5VobOis0Ml7Y+gAXuin78RmuTPELlvaJ1R4+bhfsmAajaC1LidqcKFtEIy+cTivQxLO+4fXSST7AX8i8TSmGmr79CcEREgSwofp0zu1fndbMnQTWB4gfeYGJbcoWToZ/gLOdN8yDcZC20ceYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753873069; c=relaxed/simple;
	bh=DQmcKnGKJN5RrMHBWyXbcinOiyM7f1vIIndXQ5oJZhU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bm/17X7ykbp8CUZ4nEpCV/aO80lTz9cEteUJgeS4tKwx757YQsLsfqjR7dGkznhMR438wzi3W/t4FivjXXNpQVrs5s3Y8no8AUxgj5nFMgRgP02bM6s9XN2fEraC13P/jnFErob42dtkP/gNq5nWphmeiN6MoMoN+aV8zzs8cOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=doBpC71v; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b3bad2f99f5so745966a12.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 03:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753873067; x=1754477867; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dey3O+8JYJ0+DC9nws58D9CFVLsgCTJwkc0ezpPGS4U=;
        b=doBpC71vTDbBBaaqJwEMLZ2QF0+EwnhjpBipEWo0M6a8LxUQddepxim2/6vJSxtFEx
         OauL6GallItBlY4v643V+w1RC1qlP2a4ISAdz2dj6wOgpnj6+toIcQu2Kq/uGFA1TkJw
         BlRdy2z0z+GWXe27nY9Yi5OtlE2L3Dde/JCSrS4g54DM7o917g2rO14X/B/yUg1Xr3if
         DvyCM6HXWGevW+FmUEeRt8ypqg80ji3iM3X/wtgeG7vGAufLgKypyJUKtbKLgOB7DG01
         1hmJuHrFkWCUoVDkW3cQJpVK95O+NNXu5MMhdrXQFoyBawNGWt5Qi+xIfwdLBxLEH7Dn
         JlCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753873067; x=1754477867;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dey3O+8JYJ0+DC9nws58D9CFVLsgCTJwkc0ezpPGS4U=;
        b=Zog/5WxDcFvOt/yt+K8sgtsKGM2VNEP0o6LrURO5iYOv7VcVcIh2pJwnClp9nN20fk
         zuGzLHIFJPGkRM8J+7CdFChECsushI2uNufoKy4U1Fvponw6yN3STPRAq+I6ktBvvD4t
         M+lRbeNzzzHhhNKkp5dmAdaeINUcsZJMf+jleX636CmOr0SmZyfwemgZSnH+/2h4CFDr
         gMy5TqIrCmbYAehECdjtXkLDII0g7IMYjkWsVMjnQisWNFRtty7HB9BLU/A3CWqikF/n
         nF5N9zl2yxvEJGp1gNzOhbyd+fvWzscB53YwKjDO8hsIY0b7r2NB7AwD3hQYw8W0lAf/
         j0IA==
X-Forwarded-Encrypted: i=1; AJvYcCVjHwp0nZZWPR9U4cLNw5+H6MfkCWIN5oe5DBvcpr2ow5ngI3L4efovMUNhagEfzZLhEpn+skJPWUIf@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh1hQMgz6T+4U/IGSthxz4mOQSBH9z2olaJgtI3OzGdT0q8Xtt
	givglSHLJ75uAHCHr2V1BUiYWg7NQkArHzy0mJK+8o4/EnnweFMMorVCVUj6r97/RL8=
X-Gm-Gg: ASbGncuESQlFDawkSaKAlFIJ4LaXAGXYznF2ErGBIPPfNHKx2dvvQ7qQSNNBFN5MG2H
	PggQazJs5LIvX5LVuUScTMo8EtxsnbMT3DE4qnL4KEerl5O9thvUmc/7nuJlBSdyIxxIa1chnGJ
	cKlNPf4jGtK7X2PCe2bjGnLgbPH3IOSLHXm59t/fq5XtnHBi0Q+xOibF6GXOimlty6My0DZnbQB
	Y1Ab7I1Y2NvfFKg/HBEzHjZ6taCJX2R+rsIwzbzbBgXLtHy4zuy12L3V4IHlh92S61+r+0SbZOj
	enAZ9nHg1GQTZP4DDj+bY2lVMS4j+Q2x6aa2PfdOrVg5z160qRctGk6D/Jnq5hi0jzD23RhCvm0
	1dvyHMQb9P8yxAaiH3u94u/s=
X-Google-Smtp-Source: AGHT+IGLMQbx3bVJOXpmSkSx907QNjU8+Ld7Du3dzmjXKj+AuNh+yN+/PiipqFf54/jcg5ZF+q9LkQ==
X-Received: by 2002:a17:903:90f:b0:234:9fe1:8fc6 with SMTP id d9443c01a7336-24063d8ba20mr111820815ad.18.1753873067186;
        Wed, 30 Jul 2025 03:57:47 -0700 (PDT)
Received: from localhost ([122.172.85.40])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23ff1edf4cbsm83526835ad.184.2025.07.30.03.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 03:57:46 -0700 (PDT)
Date: Wed, 30 Jul 2025 16:27:44 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Arnd Bergmann <arnd@kernel.org>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>,
	Bill Mills <bill.mills@linaro.org>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, Sudeep Holla <sudeep.holla@arm.com>,
	Bertrand Marquis <bertrand.marquis@arm.com>,
	"Edgar E . Iglesias" <edgar.iglesias@amd.com>,
	Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [RFC PATCH 2/6] of: reserved-memory: Add
 of_reserved_mem_lookup_by_name
Message-ID: <20250730105744.w5arednoluxufvio@vireshk-i7>
References: <cover.1753865268.git.viresh.kumar@linaro.org>
 <feb4591cc48c70f9790c3f4d37c149fc336c3110.1753865268.git.viresh.kumar@linaro.org>
 <b32b9698-0254-43b3-8109-ee8e37482bae@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b32b9698-0254-43b3-8109-ee8e37482bae@kernel.org>

On 30-07-25, 11:46, Krzysztof Kozlowski wrote:
> On 30/07/2025 11:29, Viresh Kumar wrote:
> > +	struct device_node *child __free(device_node) = NULL;
> 
> This should not be NULL or this should not be cleanup. Follow coding
> style for cleanup - constructor must be real here.

I may have misunderstood how cleanup works, but this is what I
thought:

The cleanup is defined in of.h as:

DEFINE_FREE(device_node, struct device_node *, if (_T) of_node_put(_T))


Doesn't this mean that it handles the case where `child` is NULL, by
not calling of_node_put() ? So it should either be a valid constructor
or NULL and not some stale value.

> You probably wanted scoped loop below.

Ahh, didn't realize we have that available.

-- 
viresh

