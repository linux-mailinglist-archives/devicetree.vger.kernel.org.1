Return-Path: <devicetree+bounces-140341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 731F6A193B0
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 15:17:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1160A16BB8A
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:17:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC9FB2139CF;
	Wed, 22 Jan 2025 14:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="jS/LJSZ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDB3322E
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 14:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737555434; cv=none; b=D0DjiJNBsY4S7qAWpAOfVUXXGA0NoOP11+eyGhEYtxnvRGb/cAxE1xrdV2qp4OF7l9kNh9K+Ew07NIHceTvDsoczXgxEXNbqCs54kptx7e1sMTLXYZiATyjQJATef7CcvAs0YPJhbJ01xZljmFsW9h5JLF3XN+0r4HEJSYzhaTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737555434; c=relaxed/simple;
	bh=ZGcHNO8h4fcYLSQYLfz4V4927wk/Lcqvn0PKkrB/IN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LWD3BonNgHfdWek+CQaoN11rYFQoZQtnFVvxzIGSSJcI6jdyjpIM1u6h6Sh6Y4867QQteE5Gw5vGbSDjUA0cP/HaoPkJ8u/Hpa7nPU44bFIjdM5vy8yicrKpqrotcggFWm487alg4JlQlTZxTBqoYycfsv23KuRvLUWzW7IbIlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=jS/LJSZ7; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-467a6781bc8so56117701cf.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 06:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1737555432; x=1738160232; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lMtMLZ2nvyYkt9t5Vkv/yDKNS7U8kHDtRG57kLV9VKM=;
        b=jS/LJSZ7TZa/cDHxDg/1K0Yj1DZMxxejRKk0W9uCJz9pSU/YtZZVEnkc4k96YFCGa9
         04jwlROg27Rp4JN8T6ZqIbO2SeiiE1posOtHmzDdtor/eWVDe6/b28HjfwmAJJ1LV+cz
         nJeavIFrN6J+2R3bp+h6Aeczp/5gxIRKYF5dY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737555432; x=1738160232;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lMtMLZ2nvyYkt9t5Vkv/yDKNS7U8kHDtRG57kLV9VKM=;
        b=IFy8AaJ65Dt+IXhnubFSKCPgPBybmcM+Ka4xcC1F5+XvVHH+Ya++zuwgqbIfd1zGV1
         Ov+8ydG/h5ASXwmfh8eugFVAeki9aNtAgHM6s9SC4JeeTGENNlFNVzIVJVK+axSlQaBe
         F9gpXIK1RMYnkad3+TvfEPrxMTLHdUDHw5ixr/C3DlLf8L2a4z0AccxehYiL2xRVUhVX
         3lSQDd8LHJLULwkujvwInZ59G7/SBYCHgXvaVu9+eyGsA8Oq0S61+t5cAvwQ46nv318P
         sQzmljaofnKLqCsBk8CSEun3mpojeO9Dsydq5EEzKQz9WaOWOu+4S58bBNL3PkBrEQgp
         J4Kg==
X-Forwarded-Encrypted: i=1; AJvYcCWNOCM7SoAoiFfK8jbVikm4bJTJLnbPoYQs3Mj3Inhw5FsQ9lAMwHH13Pmv1VxJUm8VuXAEhDEBbZ3L@vger.kernel.org
X-Gm-Message-State: AOJu0YzctRSXXxDuHTTWM2KIPEMBMtpU/lLscLnJXr7wR8hkpb4oWBfc
	4u1ghObWMw1rkoP2tyfcU73qvM8+dApOlCSVcWhiTl4RHUPAFNblDTyVqX3y4Yr7YeiPPill672
	y
X-Gm-Gg: ASbGnct4munZ6OQjNjMD1VSdCXNBW0fEKYJlpwAV7YXGjhrjilQKmjSPGy1zsnU0+JS
	RKa3ydDisOwAOtIclHhWmgoJ7shcNdqcnH+KeF95S/+//ipU3LdXnpC46xLmEtz0EpxemcIxaxq
	XJYBcSfPtLIOSBMNRwIIJDqHObnCRHKEPZoW2ZCbWPGAWYKNQCFg25hWWInf7PGpps9ybfi+kjc
	qko547/Zly9TZOdqjb8iG3OkMKO9lxKgyjYY3hNWnJk5RvveEzVfc4vEmK7GbLdMK4=
X-Google-Smtp-Source: AGHT+IH5iXg3YPhekYSmqGXvbIittDl0Q416rHmmEtFZeyZr2q2cSF/gNZJUf6t/tpzQWNm6KYy6bA==
X-Received: by 2002:a05:622a:14e:b0:462:e827:c11a with SMTP id d75a77b69052e-46e12b266a7mr342615101cf.19.1737555432030;
        Wed, 22 Jan 2025 06:17:12 -0800 (PST)
Received: from bill-the-cat ([187.144.16.9])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46e104337cfsm64267121cf.74.2025.01.22.06.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 06:17:11 -0800 (PST)
Date: Wed, 22 Jan 2025 08:17:08 -0600
From: Tom Rini <trini@konsulko.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: omap: Add TI Pandaboard A4 variant
Message-ID: <20250122141708.GL3476@bill-the-cat>
References: <20250122001240.4166460-1-trini@konsulko.com>
 <760d6e6c-ee51-405d-88aa-0def89084778@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <760d6e6c-ee51-405d-88aa-0def89084778@kernel.org>
X-Clacks-Overhead: GNU Terry Pratchett

On Wed, Jan 22, 2025 at 09:36:29AM +0100, Krzysztof Kozlowski wrote:
> On 22/01/2025 01:12, Tom Rini wrote:
> > Document the ti,omap4-panda-a4 compatible string in the appropriate
> > place within the omap family binding file.
> 
> Why? Where is any user of this? Your commit msg should explain this,
> because it's not obvious. Obvious is to send binding with the user, but
> the second patch is missing.

You were cc'd on
https://lore.kernel.org/all/20250121200749.4131923-1-trini@konsulko.com/

-- 
Tom

