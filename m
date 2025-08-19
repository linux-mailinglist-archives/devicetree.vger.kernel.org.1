Return-Path: <devicetree+bounces-206607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09970B2CE8F
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 23:32:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F70F1BA7860
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 21:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AB94284884;
	Tue, 19 Aug 2025 21:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="eGXwtxI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C73E2609C5
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 21:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755639160; cv=none; b=pie+aL7cXwmZuoMtbeyGqdgzYDmwAG8he9x1zcd876kbZe3mo2HFg6eBJSEiWKEDoqvfTpBC4O9wWuUg2ypAJvSqNShaEaBbceTsPP7N6P2JS3sXgTPTc5Od2vCoC8XUDbgqGb1klHnGm2mArYuEv4KzbCTAjF5blYCBIg5EycY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755639160; c=relaxed/simple;
	bh=jc3BvvZPYp6Ws/XW8HSSgCQw3zydyc5fLCTQ3ZrChS0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ylu8BJwABP+V6Gp5w25unP1aQ2M+HtIO+Z3yPbeXviU0wxAze7rJlR8c9j30QdeeumdBCks3zDDv7fnrLMQaqRUK+voyfYxLYd3KLmP/4ZaCS9xo+gLxamcn9xdvSnxn+tcSN05+U5sq9gXHbNL35JyRJO3Qo5R7mbBuC5jOfQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=eGXwtxI8; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45a1b0d231eso32326385e9.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 14:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1755639155; x=1756243955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6BYh4GCaj3UOu780opvLnkEvnPL7yLCaLlvBDFyBcyI=;
        b=eGXwtxI8ii6Sw2dzensPh1P+zTTk+1PpIHrNiyyu5RX9lyyGZ1n76v6U5rwPwfGdOT
         0iIifOyvc752DSQikM8GDb16XELBuXScws/cYfipEVe4gh/ow6e9Zig6V9JKgsbRwuBo
         0c8+Pcjx3nJDqMolBjussNoNpnLWPX8HOHBcIiQhtVdwBHkx6TlQqfm5moxTSt0ISpgZ
         LhaqayK6nxzqp/KeOi13uXrdHM58NCNkZy5faiZhGS1q8m+R/7LlDDrSMoUk5WVaWQHv
         9X0+wLuDda1pcKsJDij9cUBwMOfEIFUb6CTwHGkvqtDHOZkNHxNkBdMwaLeQnHtPJpGJ
         qVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755639155; x=1756243955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6BYh4GCaj3UOu780opvLnkEvnPL7yLCaLlvBDFyBcyI=;
        b=VH1PcpdarTI+hTWEOixGpEl9UTsCqFlFruBQEwUOXTL/lDnWDDK5SrWDD8eTjvmTUK
         2jarwnNeKL7UbJfqi1NN2WBDMl8bWSasVyqQHpGMTOcCZpFEI8sa/QeH3as0KGlNzLJI
         ROoBBl1p+kd6RmpSG+Jil9ktkjCkiItVzCKT5Wv7BH44p+AEyjjC0hkF0XVC7+P80ZrT
         rz9h2wsiep4rSLGrpDDPFOFcqUdc27D23b7MiLA78y+rWMPOFbH4XIgWITvlfAL+wiJ3
         k5lLztk8J5HePp9ykG5ZPHHlGAJ4jYRqjlgPYtSFh9BUGbTHOsULj+bVcHY6GVJcBOJN
         KXmg==
X-Forwarded-Encrypted: i=1; AJvYcCXYJ9ZL2EBzMsy47Pf8wtD8Y9S2Pye8/GmhCz3IsI+eRgaLllI+51+6Kxz5oIE7Wt2c4DKvo2A3TKLM@vger.kernel.org
X-Gm-Message-State: AOJu0YxIC+0XUD4F/bsijlYDMfQmzXkCBJZyzXFkdZU8mW61Xf6JzLlb
	J6u3buS9QLB2ydqi1qYP9QLt4S7+7rbNQ2P50os5zp2/F6Zuu2DL3FbzGijNVwphDi4=
X-Gm-Gg: ASbGncsxydit86D77GU1qydLCqEGCJj7ncC2vt93UO7CoXVZQycbl2yxThaGJ69KUWs
	Bdkg3ZAzIBsQjXgbldYwQKCoWKonvNvsWzkD0M6AXaRpaltN4DbDxmOMj9uqAh7gUkFtK7hLyV4
	yqjiZ/aqrb1Ls8+MN+tLe3VqTs+SOB6vxHUyEYLe9x2zVz/br5KsJyyyRzPkffPq/2dSwAeMwEJ
	hpRLWLCEFPNYmXUqNharqYw4K5iuwULaSvvGRIlDYkc7NLcAZoO8YmWRsGx4v07JzDgN0e7xK9t
	cSXqRpWAnkRYJNgo9EY38zCLmqF8j2wEvGyDgk7y+4rO+YNOrTZmIp3Fia/jbWEu7KeRFnmQtxu
	vKTx2btPVWf5v3dWy5xgwRS9ognlmVgnXWvuhEgrC
X-Google-Smtp-Source: AGHT+IEcyNrxp3SHEyt2CBRL9VUsDkFP7P0pHC4zqMyxndYLah7gl2FLCMywmLM6ECrvuDEPDmirIA==
X-Received: by 2002:a05:600c:1988:b0:459:d645:bff7 with SMTP id 5b1f17b1804b1-45b479b57a0mr3202945e9.12.1755639155215;
        Tue, 19 Aug 2025 14:32:35 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:f371:d547:373f:e542])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c077c56454sm5090606f8f.58.2025.08.19.14.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 14:32:34 -0700 (PDT)
From: Aliaksandr Smirnou <support@pinefeat.co.uk>
To: jacopo.mondi@ideasonboard.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	mchehab@kernel.org,
	robh@kernel.org,
	support@pinefeat.co.uk
Subject: Re: [PATCH v3 2/2] media: i2c: Pinefeat cef168 lens control board driver
Date: Tue, 19 Aug 2025 22:32:34 +0100
Message-Id: <20250819213234.18378-1-support@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <4qxxvvzxbbdukjn5ykjxhgj6kp2yqd4bidpl74ozbrwtt2jgjj@ipleqjgnnpys>
References: <4qxxvvzxbbdukjn5ykjxhgj6kp2yqd4bidpl74ozbrwtt2jgjj@ipleqjgnnpys>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Jacopo,

Thank you for the review. Your remarks are very helpful. While I'll apply
most of them, could you clarify the one regarding pm_runtime_ for me?

On Tue, 19 Aug 2025 15:47:54 +0200, Jacopo Mondi wrote:
> > +#include <linux/crc8.h>
>
> Do you need to "select CRC8" in Kconfig then ?

Yes, I'll include it.

> > +#include "cef168.h"
>
> Why an header file ?

Ok, I'll remove the header moving everying in the .c file.

> > +	for (retry = 0; retry < 3; retry++) {
>
> This seems a bit random, why do you need to retry three times ?

The driver retries writes to work around an issue in the Raspberry
Pi's I2C hardware, where the BCM2835 mishandles clock stretching.
When the slave stretches the clock, the Pi can misread the SCL line
or sample data too early, making it think the write failed. To
improve reliability, the kernel driver automatically retries the
write, effectively compensating for the hardware's timing bug.

> > +	    ctrl->id != CEF168_V4L2_CID_CUSTOM(data) &&
> > +	    ctrl->id != CEF168_V4L2_CID_CUSTOM(focus_range) &&
> > +	    ctrl->id != CEF168_V4L2_CID_CUSTOM(lens_id))
> > +		return -EINVAL;
>
> If you mark them WRITE_ONLY wouldn't the core take care of this ?

These controls are read-only. The data they return depens on the lens.

> > +	struct cef168_data data;
>
> I thought the compiler would complain for variables declared not at
> the beginning of the function

Ok, I'll move the variable at the beginning.

> > +	pm_runtime_set_active(&client->dev);
> 
> Is the device powered up at this point ?
> If you depend on the pm_runtime_resume_and_get() call in open() to
> power the device up, then you need to depend on PM in KConfig ?

Yes, the device powers from 3v3 rail of a SBC, which makes it powered
up as soon as the SBC is up. Given that, should I remove all code
around Power Management Runtime (pm_runtime_*) as redundant?

> > +#define CEF168_V4L2_CID_CUSTOM(ctrl) \
> > +	((V4L2_CID_USER_BASE | 168) + custom_##ctrl)
> 
> I think you need to reserve space for your controls in
> include/uapi/linux/v4l2-controls.h
>
> otherwise this will never be visible to applications ?

I found there is no need for that. Custom control become available
automatically by name via the v4l2-ctl utility. For example, the focus
range can be read directly in the terminal as follows:

v4l2-ctl -d $DEV_LENS -C focus_range

> > +/**
> > + * cef168 data structure
>
> No need to kerneldoc unless you properly document all fields and
> include the file in some of the Documentation/

OK, I'll remove the comment above the structure.

Kind regards,
  Aliaksandr

