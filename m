Return-Path: <devicetree+bounces-219638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C162CB8D3CB
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 04:51:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D0BC3B3FD9
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 02:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 689191D5CFB;
	Sun, 21 Sep 2025 02:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c34fqZ4A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04A5199252
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 02:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758423097; cv=none; b=g7Cu1dF3MRKqQ9P6tYvIQkiRlqQcb1aVvfbbbDpOoFuH6ELfvm3kgBaaw8GH+ZKyDICNmHlFT1mZht+PgTg8//vaJZWHCrGTVletAmDkA5TsjcuICJVoQxTPTvI+g5oYrRy86iYsXAaBYBQjoThLRvAISmCjJSjf+0zgik2SpDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758423097; c=relaxed/simple;
	bh=lBKwjGlD2sl3HW/InUD61SetLUkGpSZmLWIOs3WO++0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hVJ5937W5sIcKwBbbbv39OB6deyQ35gt9kZVhNksBps8Z3JS+Z9unHexOIdoW5Vmus8bl7pLzBmodvwy2us7gMmDhz3SDhZarm58WZ9+ZAkiNf6KMmq736rY1Ub/NQ/UncMJ9KOHaYahI3RJTkAdFgWHlfKkDleHDFL3Mid8h5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c34fqZ4A; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-77f2e621ef8so169811b3a.0
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 19:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758423095; x=1759027895; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uNUurTQ+hy6CY4Cjol5+Pld9O12FSqVbj7oLrH9uB4M=;
        b=c34fqZ4ALdicuB0rvpf7UTTZav8oKwjvwDLljjOCh+9QFOyGJsTCnuTbRnK8w1jwrp
         4pcM49o5An3ayeRaiM7MjB3sOCcFubvcv6TA2JT9v126egfj2fZXPaqifXyRGHOujvlf
         8brHNqjWyBGQFk3o11FifRq5cC5lIrtmONe9mX+4078r/yB+oD6clyv5/TjGBKTU/TVt
         v7CEzmtbF3Vz0Q6bjP4YzZY/HIxSJ0jdCMokw23FLA+Nv+Dux6dlkuJBMw4SsLxDMn7r
         hBFK+bosIqwrw2m7XiQQqIgW7dolitXCZAZsETdSis3yS/OKb3GiWqY2Vi9b82SPtHaN
         PvSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758423095; x=1759027895;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uNUurTQ+hy6CY4Cjol5+Pld9O12FSqVbj7oLrH9uB4M=;
        b=Qa5JSgrRhTh+o0T9EbiFDW/hhXiBzLmhez50tICfB5E5dAV46+P69H5TJBL+aprUKX
         RrdzaxTuBdihKZzyQNY9YfYMn/OAO/G5s4apQlpe5aPMeAavvTBP87sVU8B26iZs+ZyR
         MuBjYhTiFkgARb4B0wb7XLQ0qD6yM3cg//vT1d9+j5+gyYhsBNWD+x5GmfKoz2CQQ5wD
         6jjqmA1pimfbu23v1p/tezQVhX5JkRhtL3QJMISu2U5fO3w59nY2tE2SKacFMRWjDXkY
         gJ9Sis55GHLHKBMFArP3P7Rx+lows325qzmO7VvqeBeDa8ciAz0FV1svMF4hqw34rTUn
         HkjA==
X-Forwarded-Encrypted: i=1; AJvYcCXWEel7LMsVBWRd79Tr5QqoNXD2JlABrr0PA7qe1M8rmblN6h3O0SYZoT0FrtmuDV8sYjg2DgM6yhRT@vger.kernel.org
X-Gm-Message-State: AOJu0YzsowKq2gWz1aLpv1lXFyIhg+p5Mrd4OL8HnHeZt6FEjbEiq+1Z
	drflh+dtOlnC5TExGzNpvUI+dd/tLr6VdkarPZI886DYRvXIcxcVQtwp
X-Gm-Gg: ASbGncut+hFenW/tgG5bWFATBWQbgCBmLOfhgQSAqClz7qe7nBoZD+xsnXWusNS53dI
	4LI+egjc1DLGz3DV5eyqlq2OuDRadXz3MSXaTzvY0otGTlimx9rbAt5k6RkE5tFbu9nqnXLMGjx
	jrkt07OIv9jCkmW+b2ffr3a6rJeJSN4zT3BmgRJc8UsLUHzYNwpIvc8qiMwitBjJLK/QcV59hxD
	e1qEsk4RIQuq4CJlpRlm1uCspuMPtftnYVAtOaXGuIW8cr14UX9AH7lKHCd3tRMK2uN08bZz7m0
	BBQpMDYoAij5Suvzj26vrixCYM7AQMihxD+W7EyeGbTtu53IPw0uJTqbgM+K5Z5xcfhTOm5ioWh
	tPQSySEjg+FT3a8Fhd7dAcj7PP8na4iKaLg==
X-Google-Smtp-Source: AGHT+IESujOc+8Y6ELJdqssqI+rnI6S3xwgji1KMFUZchDD3lbjMYc3GMQ6PK1vBR+/eIGQAQZ2CkQ==
X-Received: by 2002:a05:6a00:3e0a:b0:776:14f1:492c with SMTP id d2e1a72fcca58-77e4d327e41mr10079127b3a.12.1758423095044;
        Sat, 20 Sep 2025 19:51:35 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:fdae:ef9f:3050:cdfb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77e70c06ba1sm6029313b3a.67.2025.09.20.19.51.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 19:51:34 -0700 (PDT)
Date: Sat, 20 Sep 2025 19:51:31 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Russ Weight <russ.weight@linux.dev>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
	Luis Chamberlain <mcgrof@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kamel Bouhara <kamel.bouhara@bootlin.com>, 
	Marco Felsch <kernel@pengutronix.de>, Henrik Rydberg <rydberg@bitmath.org>, 
	Danilo Krummrich <dakr@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org
Subject: Re: [PATCH v3 1/4] firmware_loader: expand firmware error codes with
 up-to-date error
Message-ID: <5tlhy2jl77etqxsna42ksdmvu3x3bsp5c44poshkt45agldfsj@bkzlvbfoshsl>
References: <20250821-v6-10-topic-touchscreen-axiom-v3-0-940ccee6dba3@pengutronix.de>
 <20250821-v6-10-topic-touchscreen-axiom-v3-1-940ccee6dba3@pengutronix.de>
 <ifdhjgo6wchlsztqvgkaawpbnh3zahb76vmyzlomokfrqt6tjp@qjcdvcdqviag>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ifdhjgo6wchlsztqvgkaawpbnh3zahb76vmyzlomokfrqt6tjp@qjcdvcdqviag>

On Wed, Aug 27, 2025 at 03:29:33PM -0600, Russ Weight wrote:
> 
> On Thu, Aug 21, 2025 at 07:26:36PM +0200, Marco Felsch wrote:
> > Add FW_UPLOAD_ERR_DUPLICATE to allow drivers to inform the firmware_loader
> > framework that the update is not required. This can be the case if the
> > user provided firmware matches the current running firmware.
> > 
> > Sync lib/test_firmware.c accordingly.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> Reviewed-by: Russ Weight <russ.weight@linux.dev>

Does this mean I should merge this through input tree?

Thanks.

-- 
Dmitry

