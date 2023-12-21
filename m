Return-Path: <devicetree+bounces-27914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4448B81C229
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 01:00:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2BC0287CFF
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 23:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 229647949F;
	Thu, 21 Dec 2023 23:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VkNDNnEa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C261E79491
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-5e734d6cbe4so12959147b3.3
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 15:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703203193; x=1703807993; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GoyFDQmGnb660Pi6Gq/ALTiVqe1qLyDsC2KvlSw7HRs=;
        b=VkNDNnEan0OQeqq+cfm6uMoJkMnja4i4kw+bo7ryirOo3pETW8YjYR/mvLjy1HBd+V
         WBlvtGS/xgXd+UWkpdDjp4iMtiBM/YT2bkv/yUyjNQErHRhJe8tzHeHWXQrPYjLI3gRT
         w7n2qlxlUM2dOqi8g99IRBOqgVdtSVBPTY/F8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703203193; x=1703807993;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GoyFDQmGnb660Pi6Gq/ALTiVqe1qLyDsC2KvlSw7HRs=;
        b=JP0AH6UspgF/r0q8h60/82sgMOnE82uaZNh8cCDHhl99nigbJ7GNiupXheNcZ9aLBJ
         bFfqRi6gcp79ma6XFuP7Z+hMGgU7O27dgHMB/Va9XCcGVDsY0W9/kHeL4LmsfZCofAbH
         8UZJD3YpMvx0o9dZytq060lvcMbB9/6L7q2/CO4BNcNzzADnRuFxwbvZvg0CH15kbtKh
         KCRbHC9utJeN7wcvxDYdRb5QYlETZdiqBNPLvQNPISDqyPZBR2oiVrAoWDUFtAWpsyS/
         dXIqi6bAqYJhSdFGCR+xc7lrtR42xgQ3gLYKVb5ynsT7/F42ckMJr/+NY4+BYCR8lkCL
         3nsw==
X-Gm-Message-State: AOJu0YwbAYhyGueM/SwhjrIuFJJCMCfg5S8vtu+8mlZ5RE+BUGE+2vym
	5oOKvLII+ltxslEd9p+AVGzGKuDhWLmAJ7tzSWNxMDkCA4fb
X-Google-Smtp-Source: AGHT+IGZlm6IlAcpDV1G32nrwa9YDyKRwIHutZS5zfJEIfXED6DzpnHlyipw3nrMS/3fI32Qtww67sHWh1Z/b7K0//I=
X-Received: by 2002:a0d:ff47:0:b0:5e0:765f:1e2b with SMTP id
 p68-20020a0dff47000000b005e0765f1e2bmr645819ywf.78.1703203192838; Thu, 21 Dec
 2023 15:59:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220235459.2965548-1-markhas@chromium.org>
 <20231220165423.v2.20.I38ac58ab04985a404ed6551eb5813fa7841ef410@changeid>
 <ZYRD9Y3Y_jd1NBs8@smile.fi.intel.com> <CANg-bXDLC_+mxFU+dHyCx1K=HKTwwGw+r__6_++Co2-viTbsgQ@mail.gmail.com>
 <CAHQZ30BOA7zuRrN-kK5Qw+NYSVydfhJ0gDPr9q-U+7VKXHzG8g@mail.gmail.com>
In-Reply-To: <CAHQZ30BOA7zuRrN-kK5Qw+NYSVydfhJ0gDPr9q-U+7VKXHzG8g@mail.gmail.com>
From: Mark Hasemeyer <markhas@chromium.org>
Date: Thu, 21 Dec 2023 16:59:42 -0700
Message-ID: <CANg-bXAsaKJxQ8xON59BAH1_SdVqvCQfDTco-osehjLW2T0Vmg@mail.gmail.com>
Subject: Re: [PATCH v2 20/22] device property: Modify fwnode irq_get() to use resource
To: Raul Rangel <rrangel@chromium.org>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, LKML <linux-kernel@vger.kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Daniel Scally <djrscally@gmail.com>, 
	Frank Rowand <frowand.list@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Len Brown <lenb@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, devicetree@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

>> > > -int fwnode_irq_get(const struct fwnode_handle *fwnode, unsigned int index)
>> > > +int fwnode_irq_get_resource(const struct fwnode_handle *fwnode,
>> > > +                         unsigned int index, struct resource *r)
>> >
>> > It's perfectly fine to replace ) by , on the previous line, no need
>> > to make it shorter.
>>
>> That puts the line at 115 chars? checkpatch.pl allows a maximum line
>> length of 100. I can bump the 'index' argument up a line and keep it
>> to a length of 95?
>
>
> clang-format should do the right thing.

It formats the line as-is in the patch: with 'unsigned int index' on
the next line.

