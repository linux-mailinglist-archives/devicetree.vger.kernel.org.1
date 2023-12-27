Return-Path: <devicetree+bounces-28704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9AA81F189
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 20:09:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FDC41C2247D
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 19:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C27D46B91;
	Wed, 27 Dec 2023 19:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bZKxzJtr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B3E46B85
	for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 19:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-5ebca94cf74so18206147b3.0
        for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 11:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703704171; x=1704308971; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qpVnpJ3HNKYUH8rCvM4ORfSgTVpxbE0LVqXKt4MxqHI=;
        b=bZKxzJtraZRf8W0aLeIxkAhrE1yBK1mlZ6lyxNbBRMQ2jqbPZ3tO9t7aWsXNZ1KQ1V
         2VW682vAvXvrJMS9eto9p62JYi6CO/iVkSA1BXF1OvBnwch4SASGfi2oAFXSIMt7L3ry
         HfvGmE1rxW6ugkvXE0+jNJylMKjyQVzg20f5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703704171; x=1704308971;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qpVnpJ3HNKYUH8rCvM4ORfSgTVpxbE0LVqXKt4MxqHI=;
        b=AboMyFYDN24Mvtge8gu8kCVfDiyK91PL8phMPAOINC9wytFpaGFrJwL0+EKAy5zbqE
         6K3G4KFqchJPcexEzX3VBjOONBVUruHArzsPRC+sEATW/MBiXxKYC/cMWHkqqTgysJKi
         iPM4HcS/LcsmYgB5vpVn0v7rqrNn6xMz3MTcecm+1P5VFj9NcEzTLS0+pUj45fbGlNg6
         em3+xCWS5e46t6G393RARmUbunbzBtYfxBR4xV1uZT4ImliwU4wd1RF67WQoUN4/hpH0
         ja+zkE3b6eVRBG8YdS4gAlj+Lb66JamZX1e1pWfn82lI+sLeYVt+ufvigvubiHHfRKkB
         lTgA==
X-Gm-Message-State: AOJu0YzGCI9xWtAMZB6BIv79ELNPd9Xxg8AfH/0J4g7D2JyXdycLCjg/
	lwnHfPpeYV6erEpFNpCSmqacdjh5gBH2wg8m1/xL6xUpzXiW
X-Google-Smtp-Source: AGHT+IGlFw9UNPB1dmm/olk7+22ViwCbjSSFDnD2ZfUBYa15s3f3lFEPDK25bDg1fgThWm1hx47FabuTsv+tR68Ua3w=
X-Received: by 2002:a0d:d811:0:b0:5e4:da23:14b9 with SMTP id
 a17-20020a0dd811000000b005e4da2314b9mr4637533ywe.50.1703704170861; Wed, 27
 Dec 2023 11:09:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231226192149.1830592-1-markhas@chromium.org>
 <20231226122113.v3.21.I38ac58ab04985a404ed6551eb5813fa7841ef410@changeid> <ZYxdwrJw7_JudQXB@smile.fi.intel.com>
In-Reply-To: <ZYxdwrJw7_JudQXB@smile.fi.intel.com>
From: Mark Hasemeyer <markhas@chromium.org>
Date: Wed, 27 Dec 2023 12:09:19 -0700
Message-ID: <CANg-bXBwWXaJWv9gMtjYvRBnOaP3E8U1nh5-ScWOoyRayzn7Zw@mail.gmail.com>
Subject: Re: [PATCH v3 21/24] device property: Modify fwnode irq_get() to use resource
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>, 
	Raul Rangel <rrangel@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Daniel Scally <djrscally@gmail.com>, Frank Rowand <frowand.list@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Len Brown <lenb@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, devicetree@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> A side note: in all files where you use ioport.h check if you actually included it.
>
> ...
>
> > -#include <linux/types.h>
> > -#include <linux/list.h>
> >  #include <linux/bits.h>
> >  #include <linux/err.h>
> > +#include <linux/ioport.h>
> > +#include <linux/list.h>
> > +#include <linux/types.h>
>
> Fine, but no. This file is still not using the iopoll.h.
> See the forward declarations below? It should be there.
>
> >  struct fwnode_operations;
> >  struct device;
>
> ...
>
> > --- a/include/linux/property.h
> > +++ b/include/linux/property.h
>
> Same comment(s) here.

I don't fully follow. Are you suggesting adding an explicit 'struct
resource' declaration as opposed to including ioport.h? If so, why? To
reduce scope?

