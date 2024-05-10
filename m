Return-Path: <devicetree+bounces-66282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A1E8C248E
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:08:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 674AA1C23BCA
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:08:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED71C16F0D0;
	Fri, 10 May 2024 12:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="IlIJWvEB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369C216D4C3
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715342873; cv=none; b=mBL+R6Mfqu5NzRyk/9coPUhIrmcXfPQfD5+bwuUSfKNULwH8TTw5UinFfdcvaboVihUGhV/hjumb3FWU9cByGY9YCPsYAEsPdd8W5DgynP+/e5MQqSqjxb9M8+f/IYhDbxqBchR4ZmyiWECr2oA7CjMWXk9k6LZFEfdPQqAk0go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715342873; c=relaxed/simple;
	bh=+rwSFH/zIjdRn0ZdlCd5K4VvXhbl8g2LjsMF51uWTXA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NcPAJQvakzUb73KE7znY7XgI9+QjdZ8+SNk+KxKu0KepBk7q7AHlaeZ5Dzx5+k14o8SUrTMkRZCGl1I194aFyoZdhSfrqtZgT5R3yJGMCX14musafdGEBY7kbs2jQUAQWvwvr/2xomhOc3AALz6IxGxbsJ3bOVgq/ohcXNG+A8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=IlIJWvEB; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a59b81d087aso485584366b.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715342870; x=1715947670; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dXNTsezNdWYZnRG6QT+6065F4f+qKGd7L1PVmOIUWNk=;
        b=IlIJWvEBid6tQaUBNNY7c9LcsxG3oIhCsqiGNO4uYGdS+YKBGCip9MQNvlRttgZ9g+
         Efzrrf/TLll7+vyoPayi3kmp1WljMoCuCSHE+XolxpLxIt197pXw0DzirnPbxWUVrKxe
         jdNEMAuTI4tK65HEbwHpr49ziTIlg//svGvCIxa6PdXzYY7y2fIgK3SmibEdr5d/lHHS
         DG2fkDQq/ZR8IX1jeICDS/VhhHvWhxJyeqZwSG0U2hKUMGljXpPtr1pscSHcSpLpLnap
         HaILT3b9GZlRLPuR8YFTMyLc2UJc2t81sYX/U1qkCEanafJr8P/s4ws1JBNJLdjjX8Ad
         nN3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715342870; x=1715947670;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dXNTsezNdWYZnRG6QT+6065F4f+qKGd7L1PVmOIUWNk=;
        b=OsiX9ksHDBzW9X4Xe5xmFJMWb4FdXtpi+rnwR6jvSYfBa+1rqmB3BjEOoazM+bJnj+
         bhixSG2h/1PQZB56DpFrK/yzbuYLC7ZgKxkLdbQnSwNyVCSUjW5KoEp9kBuzmw7USeFh
         CsIbtTzJ5IqArQ3ZE+saQEzphNJwRZiP3gbeTXZLrqBbe64KuSOtN395MEWVp1/ObIXN
         bEq5XVOJKttWkepBw9Z1ZZYwlCkiniDxcDCOkJA3vTVXSGrFVomMkpBS53ujvQzd8vaF
         CFI9ZtXDd6Boz5ZiqDVs3Uw2Y99Ccq2SNK7VpBE3dRMSAOfywP6TMSHckVY9kL6MwFZJ
         dwOw==
X-Forwarded-Encrypted: i=1; AJvYcCXAS7UYWNfQMCc8lVMakXSwxpKG5qz+uoN3po1ah4G56T1uo4Hd15YoqdYhGHrCfp1pJxG69l0PGlTtsL0jd4ovLETJ91VRlXaTRw==
X-Gm-Message-State: AOJu0YwBrArP2bwQLxeRrO0Uzys7IUJRVtY8oeMSk7C9GhFz1MfBrvmt
	XUF/jk0BKpLTboNyE+HFD0EOQ59JrVCvW6TWbX/C60rrFIxfTY+e/Yoj6Y3BJfR74cuyUABH5Py
	nsheX3N1/ek+HsvWQ2O/yHVArPJPtoXPnojzb8Q==
X-Google-Smtp-Source: AGHT+IEkHxt5s7tS/c4364g3R4A35U02lj+aw795XFRizFnPsmEQIe0dq0uquDwKAXYE18v7icvEqSCP0RKxgMk+VtM=
X-Received: by 2002:a50:9e61:0:b0:56e:23e3:bdc2 with SMTP id
 4fb4d7f45d1cf-5734d5cf9b4mr2375799a12.13.1715342870410; Fri, 10 May 2024
 05:07:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509064336.9803-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240509064336.9803-2-lvzhaoxiong@huaqin.corp-partner.google.com> <CAD=FV=Ugm+-ziY+8f93KOChvmkbf_MdxEOoyJP5WJq70m-aOGQ@mail.gmail.com>
In-Reply-To: <CAD=FV=Ugm+-ziY+8f93KOChvmkbf_MdxEOoyJP5WJq70m-aOGQ@mail.gmail.com>
From: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Date: Fri, 10 May 2024 20:07:39 +0800
Message-ID: <CA+6=WdT=eoh+qc=O+YzxmugotZvkfcdXxiK4S9Mg++6EtR8vkg@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] HID: i2c-hid: elan: Add ili2900 timing
To: Doug Anderson <dianders@google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi Doug

Sorry, This patch was accidentally sent when sending other patches.
Please ignore this patch.

>  Also: other than the main power supply, there is no difference between

> this and the ili2901. If you actually do have a main power supply,
> then you probably don't need a new table. You probably don't even need
> your own compatible string and in the device tree you could just
> specify:

> compatible =3D "ilitek,ili2900, "ilitek,ili2901";

> ...which says "I actually have an ILI 2900, but if you don't have any
> special driver for the ILI 2900 it's likely that the driver for the
> ILI 2901 will work because the hardware is almost the same."

In addition, in the previous patch, we have made modifications based
on your suggestions. "ilitek ili2900" and "ilitek ili2901" use the
same driver. Upstream may not be needed in the future. Thank you for
your previous suggestions.
[1] https://lore.kernel.org/r/CAD=3DFV=3DX5tk0tCcDa+vLnu0aoas1TDWuqvkMzM-27=
8dOCX8K1gw@mail.gmail.com


On Thu, May 9, 2024 at 10:35=E2=80=AFPM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Wed, May 8, 2024 at 11:43=E2=80=AFPM Zhaoxiong Lv
> <lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
> >
> > From: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
> >
> > ILI2900 requires reset to pull down time greater than 10ms,
> > so the configuration post_power_delay_ms is 10, and the chipset
> > initial time is required to be greater than 100ms,
> > so the post_gpio_reset_on_delay_ms is set to 100.
> >
> > Signed-off-by: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
> > ---
> >  drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
>
> You silently ignored pretty much all of the feedback from the previous
> version [1], so I'm not planning to review this version.
>
> [1] https://lore.kernel.org/r/CAD=3DFV=3DX5tk0tCcDa+vLnu0aoas1TDWuqvkMzM-=
278dOCX8K1gw@mail.gmail.com

