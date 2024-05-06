Return-Path: <devicetree+bounces-65224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AEF8BD1E7
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 17:55:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30E4B1F219E4
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 15:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28973155731;
	Mon,  6 May 2024 15:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="O0hoCuYC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B74E4D58E
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 15:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715010903; cv=none; b=Qff5blNze1GjPItkc3H4hS7XkpNDh25xzAyv1IDGtWV5CTrEVO054i94SNw9vgMBCt2ext2GiFdAiA9O7klYE25KlrPUhQcc6ge06MnfODrp1X8q9pxQ4ZQN5kHBiTUXsoXt1K8eZnURe9TU3MzlaqdHAc9Bs57e4fG9dN1ULCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715010903; c=relaxed/simple;
	bh=jP99ie8/JjeXfuXOZy5e1iJKvfjTb7kt+yA1100I5K0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZL4OhuyWU59RZMUnnH6SxfglgWOb6vLwOu+oDk284FSP0hv9N6u2774/qKKThl6AvKIhB5IrT1tOoHuvDh/fSu85mUfH4+P+Q2GjPKZt/ZotvbwcjQoeC6BPvxdXNVLPxHiX4msDK4JXOyAU4r1LImhV/WAgPS3vOcP2NW+8ibY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=O0hoCuYC; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-78f0e3b6feeso101837785a.1
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 08:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715010900; x=1715615700; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jP99ie8/JjeXfuXOZy5e1iJKvfjTb7kt+yA1100I5K0=;
        b=O0hoCuYCkAYnvh0yB8JLQDuKogX8asGZVUPxmH+dzCBDcbHwwmaHcqrtyTUVALFA/b
         hdC74GQY3NbkE33qzhhyBpwiQLJVfDaeGrA4MMH/QEBT/PUhc0FaKa0BrPLJfTL4qeP0
         YZZ1qnJK770Ur2wZfbD7Sj56KUjM9oMjScwG8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715010900; x=1715615700;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jP99ie8/JjeXfuXOZy5e1iJKvfjTb7kt+yA1100I5K0=;
        b=hWoO4lQJZ6ypR9b6zrJirx1oW2pXduVIb500ImVuvIIXcItV1WY2h4eZ/jwvV0splB
         Wp8PLcEN1jMc8OjxfgA6TUAYJWBXRHWqMg192KHYV9JXujyWY3Ssx7axB6f7P8HPoaZv
         cVTAPkKxxQ8cJh2+/zQ7N+gciL4/4k4gw8ZReL6MbLkQL7RiMbF+tcJ5oXIMVFAs1Ivr
         9shvR0ptgwL4Hy5xSwD7+8nCkdOgttnKoczGRO46wxKoWlWE16LeQO6jYY8BCy1GKWix
         cg585zTGYKnQI0DJNI1+hqCsYfEuu4Q5vNc+p1wkaDITwWhfAkVHRFxqtuu0Z+6PW9sB
         bIIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFqAMbq5vMU1EbwyrKogcHcXNs0Q0Uy44y1DcjqZx9EgvMbm0JBNznMgIOypb/ACf+wkOAYVLxLoYCXLysScVjCtzzlYUdbGl1AA==
X-Gm-Message-State: AOJu0YxCOhYCjH4S14Iw+1aBYw6trpEiCtRab9lMsyApXu8h27gL4RGV
	NxXBfC9iVzebBKGH8h/EVWBgqRbup+JBrCO6nsV74d2kolikRYB5P0NF9WW9Asds2487ppkBuaU
	=
X-Google-Smtp-Source: AGHT+IFpVDogooHd9JrGq3zwIfuxyEEVVaxRgrAvjOUGgUQ8JETaNH46xvOb+zlusGb3hEzy11tgfg==
X-Received: by 2002:a05:620a:2953:b0:790:c6a6:70e8 with SMTP id n19-20020a05620a295300b00790c6a670e8mr13073594qkp.14.1715010899904;
        Mon, 06 May 2024 08:54:59 -0700 (PDT)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com. [209.85.160.175])
        by smtp.gmail.com with ESMTPSA id y25-20020a37e319000000b007929275f4aesm1813553qki.90.2024.05.06.08.54.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 08:54:58 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-439b1c72676so687221cf.1
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 08:54:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWJReBTvB/L/mHsPVF+HAj0JyJ0mnnhXo8UGmHAWxP8Qywhc122e41hc9jDKygs9itqknpyW0QhyRMDOeWiTMwqS/HZD1JJF3N3KA==
X-Received: by 2002:a05:622a:514:b0:437:c89e:245b with SMTP id
 d75a77b69052e-43d087971dfmr4116421cf.15.1715010898305; Mon, 06 May 2024
 08:54:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422060811.670693-1-xuxinxiong@huaqin.corp-partner.google.com>
 <CAD=FV=WRLLuOkCJeM6RdAb6xLN-cPH+hfWbOv9-LujB-WMGEFw@mail.gmail.com>
 <CAGoogDB-mj8_xu04w3V2ZxOBTWoXcPKrVR1NRt6BFcpjHX3-7Q@mail.gmail.com>
 <CAD=FV=WwsR9e-ZXJRY11FvdUZ66YPy9vqmY_=sGDw5Wqk1eV3w@mail.gmail.com> <CAGoogDBCzfKwkAA-VAs3_Cdw_4oFO94mt7yjy47Sp2RAtqtPxA@mail.gmail.com>
In-Reply-To: <CAGoogDBCzfKwkAA-VAs3_Cdw_4oFO94mt7yjy47Sp2RAtqtPxA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 6 May 2024 08:54:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WYiD-BUpksBnZrkWvORepZqtaAvm5645X-_oJPea0s0w@mail.gmail.com>
Message-ID: <CAD=FV=WYiD-BUpksBnZrkWvORepZqtaAvm5645X-_oJPea0s0w@mail.gmail.com>
Subject: Re: [PATCH] drm/panel-edp: Add panel CSOT MNB601LS1-1
To: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 23, 2024 at 6:55=E2=80=AFPM Xuxin Xiong
<xuxinxiong@huaqin.corp-partner.google.com> wrote:
>
> Hi Doug, thank you!
> We had reported this info to the CSOT to correct the vendor id.
> If they confirm to fix this with the same product ID, we will submit a
> patch to fix this.

FYI, "top posting" like this is generally frowned upon on kernel
mailing lists. One such reference about this is [1]. Some folks are
very passionate about this topic, so please keep it in mind to avoid
upsetting people in the community.

In any case: did you get any response from CSOT about the improper EDID?

[1] https://subspace.kernel.org/etiquette.html

-Doug

