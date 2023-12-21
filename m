Return-Path: <devicetree+bounces-27911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E96581C213
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 00:46:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDFB52881EC
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 23:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C60D79491;
	Thu, 21 Dec 2023 23:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fyDSnKZy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB64D79479
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 23:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dbdbfaab70eso1221824276.3
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 15:46:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703202381; x=1703807181; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=C5yx1D4sy7Cq5xnSJGT/Y8ISb8yXl+5GPlJ3CTgBqlQ=;
        b=fyDSnKZy0Tc6WHuq9MNrw2Q9bKBZMm8Jyf0nItmRhcYRD50M70EgPaHX6fW0/XQOsK
         EVM2mzNXKR++YEYmmPwqDqE8y5IGTowaDbeSK42I/ha+7MiMJaZ5EbwbRICQR/ap7TOF
         nqbqWxw8iYyM1vAXPCR4Um0pxfpadvKm0RLTI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703202381; x=1703807181;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C5yx1D4sy7Cq5xnSJGT/Y8ISb8yXl+5GPlJ3CTgBqlQ=;
        b=hKD+6sFYDVE4FQMnNBdI1CLwUbsneSfKBLlMrpl146nDGGS8srC/oX1heFRx0QomwE
         uIfMoljW1ZPVVgf1RHDtJ1VjYMnJbnsmikUa+oHrlKn6Z1YhXGibbD8UdsouDdPUH8f/
         /R0hAELcgZR//qOCmS6TNpnekloXNft17ITrEV/lR1h74nYVxQeGvSwJn0FYjF/0yy0+
         H3bbnAXIEFPAtU2Zak5N+qrwjrHw3EHLf7CxO5OSSbXW2ioxjordhOwYXtYPryMHTxSj
         xPaBTIBxfaKxzaxYNztptVaMUn1yX97GAtIdc47jtzqyDY/u65Mv/0hchCx51Bzh8Pq1
         qTZw==
X-Gm-Message-State: AOJu0Yy4kSbKllGhTMhtjOXu3Ez7aksKEhRBpTjOpKdH5hKAQjH7n6kv
	a12l5WP0iVWA7euibSdJluvYQLHeV6sIueh+vCvCnZY0hiRs
X-Google-Smtp-Source: AGHT+IHQuqPUTWtpvEWWlBXrPZ7P2rJCDTvZXPGIY5MnJ0dX/9smRrJ/j9aAo6gegLAC+pvb0F1tQqld2angQtN2hv0=
X-Received: by 2002:a25:8387:0:b0:dbd:c3cf:2433 with SMTP id
 t7-20020a258387000000b00dbdc3cf2433mr366468ybk.84.1703202381711; Thu, 21 Dec
 2023 15:46:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220235459.2965548-1-markhas@chromium.org>
 <20231220165423.v2.20.I38ac58ab04985a404ed6551eb5813fa7841ef410@changeid> <ZYRD9Y3Y_jd1NBs8@smile.fi.intel.com>
In-Reply-To: <ZYRD9Y3Y_jd1NBs8@smile.fi.intel.com>
From: Mark Hasemeyer <markhas@chromium.org>
Date: Thu, 21 Dec 2023 16:46:11 -0700
Message-ID: <CANg-bXDLC_+mxFU+dHyCx1K=HKTwwGw+r__6_++Co2-viTbsgQ@mail.gmail.com>
Subject: Re: [PATCH v2 20/22] device property: Modify fwnode irq_get() to use resource
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Raul Rangel <rrangel@chromium.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>, 
	Daniel Scally <djrscally@gmail.com>, Frank Rowand <frowand.list@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Len Brown <lenb@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, devicetree@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> > -int fwnode_irq_get(const struct fwnode_handle *fwnode, unsigned int index)
> > +int fwnode_irq_get_resource(const struct fwnode_handle *fwnode,
> > +                         unsigned int index, struct resource *r)
>
> It's perfectly fine to replace ) by , on the previous line, no need
> to make it shorter.

That puts the line at 115 chars? checkpatch.pl allows a maximum line
length of 100. I can bump the 'index' argument up a line and keep it
to a length of 95?

