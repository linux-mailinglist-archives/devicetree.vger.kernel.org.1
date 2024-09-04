Return-Path: <devicetree+bounces-99726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE2F96AFA4
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 06:11:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 679B3B22C05
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 04:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FF763D6B;
	Wed,  4 Sep 2024 04:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="0V2E4VX8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B6D6EB56
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 04:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725423067; cv=none; b=IYTEFdUvlh0+PQQtp7SYt0MNgmw6CeEyDeCpxybMAwAB3v/mVeuA2eX8AD92NuY3qCbHikGdaPi0hiMaXvvKeUcAmR8RJdWXJQL8ruVuBbNIkMIQL/s2OhIoHtwUmED2ykmPkUjtHmeoZgwLGvhbu4aT0Y/Yhba1XLEJlxiOscQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725423067; c=relaxed/simple;
	bh=cZ0+WnAbadAz+U3QcvyDL8L866ErHNN4WkzgIUNH5IA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q4utzARp/W02Lx6crSa26Muvp3s2fAEVJHEOrVE9qd68Kpj658c2ddcvUxWcULrZBpZC0PHhvcZy8sJp7qj9fLKoQOEZ8FjdGUUX0zynGNdr5onZpExQ47r5u+kBRRSY4DerIyO5/l3Mk/iXCTVeh4LvWTo3W9288zme/41iRUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=0V2E4VX8; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-6bce380eb96so3438217a12.0
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 21:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1725423065; x=1726027865; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2RmBH1X6Hy8Ny7eEgPGP8rtFggO6Gx2dLIra+M316Z0=;
        b=0V2E4VX8DVEyieHsHQkw8Ju4wx7FMyP08gQF8DRdrB4lm1DQVpLKtWdFuvIlhSNHLH
         7hwrs2C11LZOBmWpdhWpEfebqQujcncoPO1t/RqqD9LwhOe+07MkDtsrjpP0VXjf1oJl
         tVLXyaycx3Q6F2e5RoQVnS2SoV81nA2Kf5Khpx92gmYeAQpY/G/6Pn9LdYoFC4yt9TzF
         i1Z0ECqFe3rcXZHTDk2hyMcEDG5T1edLb6BcjRhl3OInN5suxiJV8MEy++ZCM/H8iyWG
         R5+mu1HxMBa7oSXVr2rWomG96hhx5aS/+O/5lqUIAJ+MDf7PmjxDnEp36G5+B0gTmdec
         dz+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725423065; x=1726027865;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2RmBH1X6Hy8Ny7eEgPGP8rtFggO6Gx2dLIra+M316Z0=;
        b=i8Hm5EwK6KmRxm9k4pl8nzfHkO49TevmS2r/78Ywv6yMVXZD5VKNvzcSDHhUq81Xzn
         COyujZ8UKxkTtgl9SKyEjgpSnMMmFNDjqwGL9ph8BgzZzQGBrCmrJl4POaPeHQxRV8SB
         5tseoUdGHK3ob1VSYpChHvVFZLk812LwZBG5JJXni5lncX90I5Fa6a9CmRokQKqj9ZJ8
         Lz3DBLz00fMyjuvXyekvPA7iNs6z1989zz3UcOonK/IAHpXu2XMfeUMIKNLyRmVh1UNl
         c5J6ia0TociSd/QEeMBxLZ8shgws0jE4fFI6Vid8H2xWtbbVVbWKz8QH7IQDL9bn5ZeX
         uCUg==
X-Forwarded-Encrypted: i=1; AJvYcCUprMZMKJe9yF1QiCsyrQo0tIDj8D0NwBvNp6D/lM/6rz9ehMUG5xR5A1bohCtrgLxJ1P/j3F1CUTFm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzkl/B7Bsr82Cq0CIkIGtQokOCohbK6fQQurNgf0VUrO45Pr1nZ
	HTTVCfFOj9SEZbxY6Q6Gywrvb1dujFoQFlEgsF694zCh4V7CH1OGx9EnvoNtNgSJXlr8fkMS+94
	EADudPfPWPLPhN3hlRWRUgnqR2L7cFfS5RQMN
X-Google-Smtp-Source: AGHT+IHy4mkCxTnlDdfRTGmoRH1KEN5Mwh3pT5x35vBXHapXCxmrlcRmijPvQkHj15C9J0FJOAgThW0avjYZ2quG07Q=
X-Received: by 2002:a17:902:db08:b0:205:8b9e:964b with SMTP id
 d9443c01a7336-2058b9e9afamr98711815ad.39.1725423064609; Tue, 03 Sep 2024
 21:11:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <878qwaoa10.wl-kuninori.morimoto.gx@renesas.com>
 <877cbuo9l6.wl-kuninori.morimoto.gx@renesas.com> <20240902070746.GA11534@pendragon.ideasonboard.com>
 <CAMuHMdXqRQz22rjPs8LG__ow-B50bhgXQ14jkfM0HSFn99F_2Q@mail.gmail.com>
 <87y149bg8v.wl-kuninori.morimoto.gx@renesas.com> <CAMuHMdUVqojaz=bRSWV-SRqcZ9zEpw2=ooFaBFqJq6k_C0RYQw@mail.gmail.com>
 <87bk148g3v.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87bk148g3v.wl-kuninori.morimoto.gx@renesas.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 3 Sep 2024 21:10:28 -0700
Message-ID: <CAGETcx8nhCQRJdP3s+ZLuBFoneb4kA4yf93_JB8mNrfc9KE+iA@mail.gmail.com>
Subject: Re: Qestion: of property has dead-lock to call .probe()
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Linux-DT <devicetree@vger.kernel.org>, Linux-ALSA <alsa-devel@alsa-project.org>, 
	Laurent <laurent.pinchart@ideasonboard.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 3, 2024 at 4:36=E2=80=AFPM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
>
>
> Hi Saravana, Rob
> Cc Mark/ALSA-ML, Geert, Laurent
>
> I got dead-lock issue on drivers/of/property.c to call .probe()
> I'm now using v6.11-rc5.
>
> I'm using 3 devices, and these are connected via OF-Graph.
> These are connected like this so far. Let's call it as [Style-A]
>
> [Style-A]
>         +---+  +---+
>         |(A)+--+   |
>         +-+-+  |   |
>           |    |(B)|
>         +-+-+  |   |
>         |(C)+--+   |
>         +---+  +---+
>
> These are using port/endpoint to connect. It works well for now,
> no issue I have so far.
>
> (B) is connector for (A)-(C) data, thus, (A) and (C) should
> be probed first, and (B) needs probe later
> (For ALSA member, this (B) is Audio Graph Card2).
>
> Here, (A)-(C) can connect directly for some data.
> Now it is using both data connection (=3D (A)-(B)-(C) and (A)-(C))
>
> Now, I want to disconnect (A)-(C) connection, like below
> Let's call it as [Style-B]
>
> [Style-B]
>         +---+  +---+
>         |(A)+--+   |
>         +---+  |   |
>                |(B)|
>         +---+  |   |
>         |(C)+--+   |
>         +---+  +---+
>
> Then, it seems dead-lock happen.
>
> In my debug, it seems...
>         - (B) is handled as supplier for (A).
>         - (B) probe() is called, but it needs (A) info which is not yet
>           probed. So it returns -EPROBE_DEFER.
>         - Because (B) is not probed, (A) probe() never called
>
> In [Style-A], it seems __fwnode_link_cycle() is called for (A)-(B)
> connection, so the dead-lock will be solved.
> But it is not called for [Style-B]. Because of that (B) is always handled
> as supplier for (A).
>
> If I used below patch, and use "non-supplier" property on (B), this
> dead-lock issue was solved. But I know this is not a good solution.
>
> I think it is very normal connection, not super special.
> How can I solve this issue on correct way ? Or how can I indicate you
> my issue more detail ?
> I can add debug patch and test it if you can indicate it to me.

Kinda swamped, so skimmed your diagram. Looks like you are making up a
"non-supplier" property?

Anyway, I solved this recently in a general way. Use
"post-init-providers" property in the node of "A" and point it to "B".
This tells fw_devlink that B is not needed for A to probe.

So, NACK to this patch, but hope my response helps.

-Saravana

>
> -----------------------------------------------
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index def152c61049..2f08210c2ea4 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1502,11 +1502,22 @@ static struct device_node *parse_remote_endpoint(=
struct device_node *np,
>                                                  const char *prop_name,
>                                                  int index)
>  {
> +       struct device_node *node;
> +
>         /* Return NULL for index > 0 to signify end of remote-endpoints. =
*/
>         if (index > 0 || strcmp(prop_name, "remote-endpoint"))
>                 return NULL;
>
> -       return of_graph_get_remote_port_parent(np);
> +       node =3D of_graph_get_remote_port_parent(np);
> +
> +       /*
> +        * There is clearly non-supplier node which is connected via "rem=
ote-endpoint".
> +        * Ignore it, otherwise dead-lock might occur
> +        */
> +       if (of_property_present(node, "non-supplier"))
> +               return NULL;
> +
> +       return node;
>  }
> -----------------------------------------------
>
>
> Thank you for your help !!
>
> Best regards
> ---
> Kuninori Morimoto

