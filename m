Return-Path: <devicetree+bounces-164711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA07EA82068
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 10:43:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D00327AD13C
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 08:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB69C25A357;
	Wed,  9 Apr 2025 08:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bDhHhRjU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4863225C706
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 08:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744188225; cv=none; b=qtgdb/HOXQy2Be+vqBOpHNp7BcgoVeQLEc1tlmgPXiUK6JuJTcyoIL4ANESGWm1YMAB9tqZsa/FgDDEgBcqeZaUe0irym+gWO0jtUenusj81KfONHuPhNSHPO0NPYN1Gsd9KK2iXjilNyMgGTwApYjhTh0zrCIhRnsfLxg6s9Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744188225; c=relaxed/simple;
	bh=NQnrWxqFEYqyf2ImZyom1w6HZbF5aoK8E0yfrdJWcic=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W5Qd2SXmk6A6nGvrjZWQDN372EDTDSM5MoUdbgRhVgXCSh0jdzmEfkhslpMiz9cdl7QN6BZzopxkUm2fSiYdRR01jkXl4BoaUJmTIodcZJcnHV5E96GZoDYV//h0sgJF5MrZWLeU1pu8OawNACToBVtjBwNFKiq1mAa68H0p+7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bDhHhRjU; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2295d78b433so64504585ad.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 01:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744188222; x=1744793022; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=APlPY4uZJpZya0nV6nrk4xTTTYVm9sn3CRO5bhFqGdw=;
        b=bDhHhRjUxxNhsKR7PLZUVEpSG7df7lFXo8C2oja6Yljc/15LvR+BgrNMVTZabyKE4v
         J5Tvx64P0Y1fbAHksGV91mp1E68/w7ajH1pizgxyJkaySE2Br2CoNQjPpHNPCqtzvZnb
         Vq/PWX8oH0oJgmrEpyZe8JUjIcydgrMzu+ha+A/GuYm5XefW2oCVZ0uuRAG/aJ6UVVP7
         xM5zDWiIMpIv4e93B2wY/RcCIg8HM82uWrWy3ouIqv+OzyEKVNXm5vFU2hDY/lKXtZ0f
         EEpP8U60H+9PwG/aQUfFLLRLCTpJYVaSNx6bA1ip7Ogd2EFn3hvm0kteEir9VZfHwxWr
         Ok1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744188222; x=1744793022;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=APlPY4uZJpZya0nV6nrk4xTTTYVm9sn3CRO5bhFqGdw=;
        b=D4BG8rQq9LGQdX64M5NIxZxrpvKTo1smxlIelLYamBKiR412IZHK1tpneJFAS9Mz35
         5JWQN8b2HFWKsahej+a2Li4KJPIKxV1bhGP7GEO96lB/1t8e7Ny/9wABu8nN+rDNwBk6
         +huWkW+iJpkoN9pTmZo1WW/0yeq9j65xxhTM+mb4WCPIDqJIY2E4ucYMAZSoOWp3xKDn
         JD/ODMKf0eJqgIqXW1gv2CdMkFJEY+VGVTQFIbSu01ld/CDIDBpzjzQSytxBJuJKA9nM
         BrJTlriJcYFwzWZND2BqB6ZYHDeOURRjDvljodyw/86NDedC4LixxbqdaDWmuid7t6lr
         fhCw==
X-Forwarded-Encrypted: i=1; AJvYcCXcEDLfFioYFe/Bigk5VEko24USE7VH+VNPxlA2/UtOlscTK110YBgNEtyoxsOTHxpQxu4kNXglZAzY@vger.kernel.org
X-Gm-Message-State: AOJu0YweOxaT7YHKbiFGIR5eMhjNBmf/O9bNCEgH8VgsxTLCE2iFu1P5
	7XSSszjA2SO7BjTdb/usP83Mkx8kYRpjtlQy5O2ybyoCO6VChAgCCnhxgZ427ADtLfligr8EGPv
	X
X-Gm-Gg: ASbGncsphxsuGuGRreHKRM2cnm+Ad03F9aefGKAU1wAIK03V/rv62qwhTyNRafZLdD0
	YwBSMZcSkPBCVi+vHe7OvFFz765Ay+W2AL8tXsRnxAMcSMbWU9Vs+h5QSY7zCA7EuCHDLhLaYvO
	+kV8TpXUzUbkBbN9fhNH/zmQP7Cqhp3gVbYMwE5Ci0PhXcAm7sy6bQCVs8m/ygQLq0x8dD2DNgA
	HQauY/q6vop0EnErhSZ3/ZqLDku2FnnrWNnOKMAFxk73gw52U1yfk7O7lRVZuGNeADfEXp7bKsU
	WglUaSFKj8dAXo+cxYrjnC5vyxkMy9inBILYX/aVQZog59C3bA/MvsrCR29FiaYHjQ/7HVhs91x
	H
X-Google-Smtp-Source: AGHT+IHi1LGSSSpMeFzIdX5goYy1eceYxuwOGowfNQqBnGHVqOjiuDdrIg19B2sb+9bme7Rpg5PDWA==
X-Received: by 2002:a17:902:8548:b0:220:fe51:1aab with SMTP id d9443c01a7336-22ac3fefd47mr23583495ad.38.1744188222535;
        Wed, 09 Apr 2025 01:43:42 -0700 (PDT)
Received: from dev-linux (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7cb548fsm6337125ad.188.2025.04.09.01.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 01:43:41 -0700 (PDT)
Date: Wed, 9 Apr 2025 01:43:39 -0700
From: Sukrut Bellary <sbellary@baylibre.com>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Tero Kristo <kristo@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] dt-bindings: clock: ti: add ti,autoidle.yaml
 reference
Message-ID: <Z/YzO2MfhK3HeIXA@dev-linux>
References: <20250404014500.2789830-1-sbellary@baylibre.com>
 <20250404014500.2789830-5-sbellary@baylibre.com>
 <20250405214904.0b07b26f@akair>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250405214904.0b07b26f@akair>

On Sat, Apr 05, 2025 at 09:49:04PM +0200, Andreas Kemnade wrote:
> Am Thu,  3 Apr 2025 18:45:00 -0700
> schrieb Sukrut Bellary <sbellary@baylibre.com>:
> 
> > ti,divider-clock uses properties from ti,autoidle.
> > 
> > As we are converting autoidle binding to ti,autoidle.yaml,
> > fix the reference here.
> > 
> > Add dual license.
> > 
> > Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>
> > ---
> >  .../bindings/clock/ti/ti,divider-clock.yaml   | 24 ++++---------------
> >  1 file changed, 5 insertions(+), 19 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml b/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml
> > index 3fbe236eb565..aba879ae302d 100644
> > --- a/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml
> > +++ b/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml
> > @@ -1,4 +1,4 @@
> > -# SPDX-License-Identifier: GPL-2.0-only
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> >  %YAML 1.2
> >  ---
> >  $id: http://devicetree.org/schemas/clock/ti/ti,divider-clock.yaml#
> > @@ -55,9 +55,10 @@ description: |
> >    is missing it is the same as supplying a zero shift.
> >  
> >    This binding can also optionally provide support to the hardware autoidle
> > -  feature, see [1].
> > +  feature.
> >  
> > -  [1] Documentation/devicetree/bindings/clock/ti/autoidle.txt
> > +allOf:
> > +  - $ref: /schemas/clock/ti/ti,autoidle.yaml#
> >  
> >  properties:
> >    compatible:
> > @@ -97,7 +98,6 @@ properties:
> >      minimum: 1
> >      default: 1
> >  
> > -
> >    ti,max-div:
> >      $ref: /schemas/types.yaml#/definitions/uint32
> >      description:
> > @@ -116,20 +116,6 @@ properties:
> >        valid divisor programming must be a power of two,
> >        only valid if ti,dividers is not defined.
> >  
> > -  ti,autoidle-shift:
> > -    $ref: /schemas/types.yaml#/definitions/uint32
> > -    description:
> > -      bit shift of the autoidle enable bit for the clock,
> > -      see [1].
> > -    maximum: 31
> > -    default: 0
> > -
> now you make ti,autoidle-shift required. That makes so sense. A clock
> does not necessarily support autoidle.

Thanks for the review.
No, we are removing the required from yaml bindings and keeping it as
one of the properties. As all clock don't support autoidle, required is
not applicable here.

> Regards,
> Andreas

