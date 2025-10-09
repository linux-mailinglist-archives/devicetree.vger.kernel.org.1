Return-Path: <devicetree+bounces-225068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA9BBCA2E8
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 18:28:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4076A4FDF09
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 16:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25849223DD4;
	Thu,  9 Oct 2025 16:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MCnG8vPR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88FB221C17D
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 16:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760027038; cv=none; b=lQ2F4uAeegm/2o/lQToHcwYP2wZf5KhkHVCVJ1UXmahIX/I/QWug8gkOFxEA0YIUuRrlLgLVsLjO4dTp6iI4CrbeH8M0R3eCMDLVUMQeBr/hxxxqA8iUC+YmwZ/JJAyK8UggqqVYg78ZBRtqY+sstXx+sq7dyTZV0mHjCdIAc34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760027038; c=relaxed/simple;
	bh=eVvkeQWqrG4dYBffY48He8ILJTh8EX7LtPQhkX3h+lI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XonxLU2l5xFUwbmtlz+i9jwEkHvqGfbusQiCUSIMWFBEVSFxvF9BzSZQ8BPEDdqxaCB6iyTAU/SxlL//vfhA7jtvy36/j/w11Ud3i9c8Wex34s6ovctC9o/GTLX6+uPTqKIp8gNCrFNyRC7hrUy9idhPWaRjFBOFGf59S2qxGHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MCnG8vPR; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b57bffc0248so959537a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760027035; x=1760631835; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j4C1j3OOKsjCqjPjMDTFb2+CfJ4gki9Qbk/4PqhkQDc=;
        b=MCnG8vPRQYAB/sRTi4esoaO/JWYoy5ApLLqeX6QndxwVYySMVYJKfC4gJjO3FwPqSV
         S30/FC8jXscm2L1XPxnjUqDd27oc5xOjcOGAGIa/5BlueteWIktVI8o/v3dMZDbmDeF8
         z5AR8SUuVLUDndif6y1kd0i2+o7Wee/2h2SVC/9uVSGcm5WK5k7oueRP+T90pEh+XE4a
         1d/kTqHfwlX9LPsj0YGzfnpL06PNlMtzs7tRQTGQIyBbwtT+lH5U1pKcVbVIix5OkX9B
         3adjH2abP2vWlPTF0J3nPlLFMQsmVhism3zMR9wh1pzs/U7nQ3hoL6WTMqh4mJNEytzO
         UfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760027035; x=1760631835;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4C1j3OOKsjCqjPjMDTFb2+CfJ4gki9Qbk/4PqhkQDc=;
        b=fnIQGTro6eg8AxhzbUCPNwZA3dqnG7ijtg8Z+b5UeooYFO49J3kUAtUoNX+ukDFYE5
         OPeB9DGMLJPpEr6Bas/cYJCxcUoZb55rU2leo4/jzYt+K1DlH5fxiVxzBmvjXmcDp4QQ
         OzQFSMi0lM3BuRYNmUt0rYDXcK0x9mO9ESykX7YMkZ0iWUd5IeiynaiEL6KlX0UDvGpk
         r1NKeFRNCDKFWsBjQzAq00FlXVsr4XIk/Y/Abyol2j4vX+Hyy82wFQfq064Qg0hYXQOX
         qlNGvoSWVz441n5zstp52pVCROAEVus4oUUIv8pf8Fq/nracTqYPs5JCpYodk7uWL+B3
         bJzA==
X-Forwarded-Encrypted: i=1; AJvYcCX0gsRWqECHkizDMMSGm6MeyN/hiazuWPurP38RYcXn+UCh+DUBydigzYMELZvhY1D33R7k+5ZOPNrA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbgg/YwFBMt7AIh6W2qgL7cKB35gjD1dTXZ2NOzpufOP5EYfVJ
	ilxlx43DzzqIICAeRQoJOsnJd6EcXyOlO1z1D9PwlfhUQ5CYIM4CnuWf
X-Gm-Gg: ASbGncvDRPWwGruYkwZzLhrAZ3HIHpBejxbYf9wzGGKYAPc9QfWq6yXyCNWo7LUWOXj
	EmhZ6W21ovUClBtIQ7XWG96htJqRzbcvjhgn3qdjnwDdcIhucBCSHBJVI1wzkN4A/a1ztQ6Dbel
	ApAyYPRYckeVLLUSog+I48vxMfonIbCs2C+amQuKTx5P+3i5ApPx+CREAQYM9bg5cW/F2cXZvYp
	RFH9NJFlN8Iz/edfd7XhmPW4GepfQQdJYFOpUqdmqFxH5tW6VIUaqR2899+Gas165lGX8OXQ+9r
	oUlY6kU2X0I3nPkc/bdpv6pyYPXo40FQminbdSBDbSzyUK/vmNoNHRaj2u1BGjLS9C1LvySydzL
	7O96qQob+biskgWeWan/Y/IHtyDGDgPq0Z4UwjifLjGGsmK3AS9Dfg2Q=
X-Google-Smtp-Source: AGHT+IG5iTuS4lml5ybOjWvkOCPTHDj9ZrBTt/dnU/W0P0sGl3oiFllm8k9GBt9WpwjupCqN6+ivSQ==
X-Received: by 2002:a17:903:1a10:b0:271:d1ab:17ce with SMTP id d9443c01a7336-28ec9cd59afmr138719345ad.26.1760027035566;
        Thu, 09 Oct 2025 09:23:55 -0700 (PDT)
Received: from localhost ([2804:30c:b65:6a00:ceaa:2ed0:e81e:8f51])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-29034e1854asm33475565ad.37.2025.10.09.09.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 09:23:54 -0700 (PDT)
Date: Thu, 9 Oct 2025 13:24:54 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-pwm@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org, ukleinek@kernel.org,
	michael.hennerich@analog.com, nuno.sa@analog.com,
	eblanc@baylibre.com, dlechner@baylibre.com, andy@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net
Subject: Re: [PATCH v4 7/8] dt-bindings: iio: adc: adi,ad4030: Add ADAQ4216
 and ADAQ4224
Message-ID: <aOfh1puxPJr367n7@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1759929814.git.marcelo.schmitt@analog.com>
 <7e51e036ba930284c74cf42afd53b17d49093654.1759929814.git.marcelo.schmitt@analog.com>
 <20251008-penniless-tiling-9a83d4b4ba48@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251008-penniless-tiling-9a83d4b4ba48@spud>

On 10/08, Conor Dooley wrote:
> On Wed, Oct 08, 2025 at 10:51:37AM -0300, Marcelo Schmitt wrote:
> 
> > Change log v3 -> v4
> > - Now only documenting GPIO setup to control ADAQ PGA pins.
> 
> > +    else:
> > +      properties:
> > +        adi,pga-value: false
> 
> I assume this is an oversight?

Oops. Sure, should have dropped that.
If the device is not an ADAQ (no PGA circuitry present), then we should not have
properties associated to that.

+    else:
+      properties:
+        pga-gpios: false
+

Thanks,
Marcelo

