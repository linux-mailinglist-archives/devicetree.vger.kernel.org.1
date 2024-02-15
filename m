Return-Path: <devicetree+bounces-41847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F3E85581E
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 01:07:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00F001F22E67
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 00:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D6A646;
	Thu, 15 Feb 2024 00:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fQff7ErD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3176138B
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 00:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707955668; cv=none; b=ryGbPTQV9WkkkmHNpuEfhhWW7I0wrI/kGUNtjqbhZpkl/251ywcyJqvDWZ3Upf5iweTcJCUPiVBwVHvl3MFsNaGKd2+cfO3KY6sD60+r5PS80yHry9Bo6XsfTCyJIL8IMXjUz3Xbzn/wc4pAw5pEllfs958kDPHkDNjRsFrkuyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707955668; c=relaxed/simple;
	bh=mqihVnhqmNxSJUbv/RGxqZmC0xVgRGexMSCP0Ns7bYU=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jIr4qiAOsBp6mj/v4YBC/zglGrZJLojIse6Q6gkWJIrjXRreDLaBgZoHL7haKQPYiZMUJtM4SWMkGzNsnf9SV/aadv7ECHCRklpNJDIYn3GVx34m1uZhcfxUYtCuR4QUpgYtbiYti+CrM6jCVqkD4NPT5KSadQGYMvxRl87AYmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fQff7ErD; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-511a45f6a57so369368e87.2
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 16:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707955664; x=1708560464; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Er+ESEKbgXvc1t5qmUg/dKRx14VLf4dPpeD7i9BwE5I=;
        b=fQff7ErDYFXHPoXlCcp/lvCOR3Te7xvdHQXRtCT/rId6rLQMyHpA9vn3Gz9WEg9UfU
         fON4MwJPefDvY37/bIhw3ej3KJicuaNxTv52zYf+ggnZS+MNlAZr/14y1phKF57NI9wL
         qKZ8Tj/ROM+48yVbFjN2fGizHornGEHZtW9w8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707955664; x=1708560464;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Er+ESEKbgXvc1t5qmUg/dKRx14VLf4dPpeD7i9BwE5I=;
        b=f/OEv+X5aGt4Ivj0SWJJ1NlFuAQqpNa+0T/ZGKdNQnL/tuJgYntQmuo8uUlMRktYoY
         ihF59E6ZLgXsR7fPEhfbhzOyRN/L51j06t3BFWeVT+N12UrnTwcPzWT3x2QiBHWjCxC5
         76YCJGAyRlQVLbgohfE73ufWZmZqOwpqH3ObsvzXKhbF9TGhxwr8Ir2q5632i7plFVMl
         mF371hhF3RQiumDTx8bKrHW+bga5yOYLvvlmyjtXZMHtBGlCZB67vdrZ/9SGiswGURmD
         fo0y7WwSavuRbVXWBRZr8WFetJ/dhTTduzoECQ+/TMAMD/B3AYiqgYnJ6ZEBGZAe/CU3
         ivHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmTaSpAXhBfNxSSrrQtGu5I9mdrQIoOECTfhSIRJ45mbm1rN945Oz/XH3QL5+xfJXpE170UyGRrCLOGm7HDD0tZfGhlGNC/3tEWg==
X-Gm-Message-State: AOJu0YyPK0e/Kt70U7pjNNB1SDyHP+Kb8FW8jETm/AG7kROZNRviv944
	ZXRxYsBeEIhZlD5sNNAbTB9X9fM9xaHodx//ov/Iy6dL6Gcuf0xF8vnz5vRa7eqgr6HHooq/ElZ
	HpBQgu3Bsiv/cQ3HdIQRuOrTnz+qZuYAUhiCl
X-Google-Smtp-Source: AGHT+IFV146fri/yEai625WOmmn4P92hjYL0lv0BuNrjWlIcprz/viy3Rv+xCRbYoWq6nvQJZDmqN9KcjzHIR0bVyZk=
X-Received: by 2002:a05:6512:77:b0:511:7292:c4db with SMTP id
 i23-20020a056512007700b005117292c4dbmr243676lfo.12.1707955664213; Wed, 14 Feb
 2024 16:07:44 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 14 Feb 2024 16:07:43 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <18ac05fb-a78d-4e95-a73d-461f509cdc5f@linaro.org>
References: <20240210070934.2549994-1-swboyd@chromium.org> <20240210070934.2549994-19-swboyd@chromium.org>
 <18ac05fb-a78d-4e95-a73d-461f509cdc5f@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Wed, 14 Feb 2024 16:07:43 -0800
Message-ID: <CAE-0n50Y_GRMt8km=XjGC5Zm5dvb2t4gccznJn9HEFS4p7y8fQ@mail.gmail.com>
Subject: Re: [PATCH 18/22] dt-bindings: chrome: Add binding for ChromeOS Pogo
 pin connector
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, chrome-platform@lists.linux.dev
Cc: linux-kernel@vger.kernel.org, patches@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, 
	Pin-yen Lin <treapking@chromium.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Krzysztof Kozlowski (2024-02-11 05:39:36)
> On 10/02/2024 08:09, Stephen Boyd wrote:
> > diff --git a/Documentation/devicetree/bindings/chrome/google,pogo-pin-connector.yaml b/Documentation/devicetree/bindings/chrome/google,pogo-pin-connector.yaml
> > new file mode 100644
> > index 000000000000..5ba68fd95fcd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/chrome/google,pogo-pin-connector.yaml
> > @@ -0,0 +1,61 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
[...]
>
> > +properties:
> > +  compatible:
> > +    const: google,pogo-pin-connector
> > +
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 0
> > +
> > +  port:
> > +    $ref: /schemas/graph.yaml#/properties/port
> > +    description: Connection to USB2 port providing USB signals
> > +    required:
> > +      - endpoint
>
> Drop required.

Why? I'd like to make it so you can't have the node defined without
connecting it up to the rest of the system. Is that bad?

>
>
> > +
> > +patternProperties:
> > +  "^keyboard@[0-9a-f]{1,2}$":
> > +    description: The detachable keyboard
>
> If this is detachable why do you define it in DT? Only hard-wired USB
> devices, which need some sort of special handling. are described in DT.

From the commit text:

 We expect to find a keyboard on the other side of this connector with a
 specific vid/pid, so describe that as a child device at the port of the
 usb device connected upstream.

ChromeOS userspace is checking that the connected device downstream of
this port has the expected vid/pid to quickly rule out USB keyboards
that aren't the detachable keyboard. I wanted to express this in DT so
that it didn't live in ChromeOS userspace forever.

