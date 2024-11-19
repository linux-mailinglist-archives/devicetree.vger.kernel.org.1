Return-Path: <devicetree+bounces-122778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7570C9D24DF
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 12:31:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01C7DB24ABC
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 11:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD3491C9EAA;
	Tue, 19 Nov 2024 11:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b="dE8Gk1gw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19A61C9DF7
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 11:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732015855; cv=none; b=cG2kym1MMHwN1xxiN0Q5J47X708eYng0A/+RzOolEFA8wacI5V7NIYb2ofsHAtdHjcfypHDIzN1K7mo6ZfV/JAg1JXNRb62ZE8lIOcM12+FyDvUSq2mqmjrmG28Mow36tVrVfM8Kw8ER9w6BhW7ngB0TgowmmiplhezNanoydoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732015855; c=relaxed/simple;
	bh=7cGMC0JSae0yj/PWFPiCPDIjD4oYyoho7eIZOlOAeMQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aMmvOG445F4t2/R8DZdGc8xyFhi7gLgcGbcK57nj2bnTlK5n0cw5SDJkpnNmaZ3oitjhyhN1AAGUnGeKJTfHvKxv8Y+zb1mC6D3Mwd07eq0tDsGRg7Zwa136EWKkmTVTDGW+uKWZ/ao88qmlCxcrfZnN4t/z0Q3sZUjSskf9nAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net; spf=none smtp.mailfrom=minyard.net; dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b=dE8Gk1gw; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=minyard.net
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53da2140769so3236769e87.3
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 03:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1732015852; x=1732620652; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rKwxKd5SMLLl6j1wqgSg6vRFE0Andwn/GjHqBxY+oho=;
        b=dE8Gk1gwawPRwwgFezl8HgQsSIpoyFHO9eUMmjTlzQ3SzE54ERb/zKMkzO24dNGzGN
         zO4JYq6RLfUwNKTmOyGGvDvisNwpdf51taa/sFmQ+ZJljEv/qRFOllcIIHdbMSa+CeFq
         EXCSXVqIIDk38K/s27op7pFY7utCIPV/Zz+ZjbCwEstRsVRIUy0buLLFbuGSBwBBbr+q
         uQ+CcXRp/+cu0skWQD2e21qB4jGTATvI5SEk6yopZkmmOSyrNOAiJHfiYM8kMqYMaSN4
         y4I3Q+bPeXtSZnF6PxGk25R0HsxpNC/Uh3CpuVsbfCgtI9llXb9587QueoRKiop22q9J
         FFxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732015852; x=1732620652;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rKwxKd5SMLLl6j1wqgSg6vRFE0Andwn/GjHqBxY+oho=;
        b=UmRUvv8IOodye5IanrPMIS4i00jJKU0+0+DUE4rnwuJ4AkH5+QQYzPeQXGE9NdcNIr
         rZI9hsAVFuAoxnaQuqcDsSibqbEm+KRGF0A/hTH7wBGkdnVKV0RfcF5eqbfNkMto0g9t
         wlwIMfvtnan/H4q+9PwgGVEG2YwwRzC5DgYqcu1ObJGh5afMwROwQq9WZIXzCpCTwsZf
         HTExHPLnB26PYRgzpa078Hvhm/MSIU1XdFFtbN5mhgxZTHbTLESNSmFFCbX3XcQKnwFz
         pA9f1Qrpz1p/RtTMeXsmvWn7NDJ2daUl3VZn5fMe+TiCUH0k4dWDJ5aoqfhh63CTioMT
         10vg==
X-Forwarded-Encrypted: i=1; AJvYcCVgVZS8Xb9ytLAXrCWJTrHWRLnuDwgEsIapKTEvMspVAaVQlp8NXIxUU32cs7N5JyhU4Nr3cEpEpCfh@vger.kernel.org
X-Gm-Message-State: AOJu0YzfEVWsqly1e+7YHgwo6z0ilkY7dXnWerh5fu8nn3oDKP9V4AWH
	ByQNRLfoIM/qArcE+vbBofr84knf1l4ari8eJ5F1DrBqIrBUsqbTUlJlw6S6vylkmSQ2FZYgrl9
	u3nsNjMjX6HxafgcDiA5tq8aDN7Oiw/MqvPZEOw==
X-Google-Smtp-Source: AGHT+IGgDrPcP42r6Mykqqve++SYMiYoBLLuXEcKJ8Odoey2Gw+rjXy59n0lXdXEBiuizDXRmQkISh7faoV70Zej13k=
X-Received: by 2002:a05:6512:a8b:b0:53d:a000:1817 with SMTP id
 2adb3069b0e04-53dab29cc39mr6595733e87.22.1732015851781; Tue, 19 Nov 2024
 03:30:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241022-ssif-alert-gpios-v2-0-c7dd6dd17a7e@gmail.com>
 <20241022-ssif-alert-gpios-v2-2-c7dd6dd17a7e@gmail.com> <434333fb-5703-449e-83f2-46e85f34fd23@os.amperecomputing.com>
In-Reply-To: <434333fb-5703-449e-83f2-46e85f34fd23@os.amperecomputing.com>
From: Corey Minyard <corey@minyard.net>
Date: Tue, 19 Nov 2024 05:30:40 -0600
Message-ID: <CAB9gMfphfY0H721G9qV8_3sm1d_RTnKkWbEOeqC-0ox9p4cfCQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ipmi: ssif_bmc: add GPIO-based alert mechanism
To: Quan Nguyen <quan@os.amperecomputing.com>
Cc: Potin Lai <potin.lai.pt@gmail.com>, Corey Minyard <minyard@acm.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Patrick Williams <patrick@stwcx.xyz>, openipmi-developer@lists.sourceforge.net, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Cosmo Chou <cosmo.chou@quantatw.com>, Potin Lai <potin.lai@quantatw.com>, 
	Cosmo Chou <chou.cosmo@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 23, 2024 at 11:30=E2=80=AFPM Quan Nguyen
<quan@os.amperecomputing.com> wrote:
>
>
>
> On 22/10/2024 08:20, Potin Lai wrote:
> > From: Cosmo Chou <chou.cosmo@gmail.com>
> >
> > Implement GPIO-based alert mechanism in the SSIF BMC driver to notify
> > the host when a response is ready.
> >
> > This improves host-BMC communication efficiency by providing immediate
> > notification, potentially reducing host polling overhead.
> >
> > Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
> > ---
> >   drivers/char/ipmi/ssif_bmc.c | 15 +++++++++++++++
> >   1 file changed, 15 insertions(+)
> >
>
> Thanks for adding feature to this driver, the code looks good to me.
>
> Reviewed-by: Quan Nguyen <quan@os.amperecomputing.com>
>
> I'm just have a bit of curious on how the ipmi_ssif in host side to work
> with this mechanism? Will there be patches for ipmi_ssif to use this
> feature followed?

I just saw this.  What makes you think alerts are not supported in ipmi_ssi=
f?

-corey

>
> Thanks and Best regards,
> - Quan

