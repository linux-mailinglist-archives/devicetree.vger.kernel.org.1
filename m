Return-Path: <devicetree+bounces-51295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DDC87EC38
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 16:31:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F37571F218B1
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 15:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ABDF50A63;
	Mon, 18 Mar 2024 15:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="oW+ds6Wx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2684F898
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 15:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710775888; cv=none; b=o/X9s/JMS6nFR2DCTM0CBazHVGHIIL52DKHVAvXTedB2FwBGMiad5JZPfCvUfbWceRHiM6tt9El1GyJJFPpM50E8OYW+Y6OP5+4wm58NZAWAK3jI/PnoVUydfkJ6RtJ2yaRbO6L6M6+Rfht+66k2malqh9lXbFDsAWpJ2vI5mN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710775888; c=relaxed/simple;
	bh=m4+I6MBoUeUHGxnrD5vzjttWojTZkPCJQ14dx3myEDk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BFHrWrH+U1X6UjQzPd9zGoKyUlZMI9W3GiQTDoOq26Gb9fL9Yiq/RFEwNzIP0YoJ2lRS03E7avINkbIUhd4jXiKFAPnP0d53O3E17TKD8TJ2wycc13TIFabQ7jfMRC448qWKpp9I8dx54AKhTX6FGiqgkLhBevek7JvsgPh14uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=oW+ds6Wx; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-430d3fcc511so196991cf.1
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 08:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1710775885; x=1711380685; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VA9/NiX8/E19WUiHKA9tr52IADuhSxANcPtKQ97R1nM=;
        b=oW+ds6WxOpW/jRhOjraBRnZ9oYYtUDIgqGcTiI85U7K+Cpj8UktYnD9iWkB0J6OnGZ
         c2TNHu9EpLVqHrKYgQayqEAY3RLhQc/B/mf6fNManTAVjNN/zEA02701EyoSgQukjHYM
         MK8S3x0j44jgkZun13lguylavxOPYCsWEuvLSIZWcu5xr6C4OSoEkTFuRA8xmBXR1y+V
         /uFIY9300VbpIrFPs3Cn9cgtXjwkjtF8K0urRG+6KKl03MF7V9SiUMRrgtTpp5pVEK2j
         2jdwfKzWkL27aaIzCGKLYVXkz9qR7WzfeJ3IUoTfFSAyt8Iq5U5oTaodMnrlwV0ffY1G
         3Zyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710775885; x=1711380685;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VA9/NiX8/E19WUiHKA9tr52IADuhSxANcPtKQ97R1nM=;
        b=FmRk9kp3KXaeDKIucFxDgpSttMqjxvtsPZILZDMLbBvaMF8rIldSXtJsfVu+6fzzSC
         b5a062gKPiISXgSgZ1KGBaAs1DmJrR6Oo6HzDfDkh54McR5FVdx93/VDdRzmVuYG5NhW
         ECzgc2vmJPMpu4hawDeUQjRUyd9tDNOQMdqDPwSYPXHz1EgD2fGmH2JXTvpS6bVkvWHM
         rFXtHt0O5GqmT023pIwN5ZaiRLqW1R4jmQxAvayWawGbzy8uTwxTTXtXXCYihzou8gc1
         zlOOKuy5j4rbUylB6QpZPliuE1jyYw+4OaY4rquBGxhZyfbKbCPshfw5++v90kULh5pq
         m5Dw==
X-Forwarded-Encrypted: i=1; AJvYcCWcI1UGVqpk+PBEOtcImBKq/Wevtjl848qgLtHBL0XiJnRAh5tanfHkHoC/1rDWFB/F0OOMk3avlMvqGnXi1GZMgBHZ+QnE6I5OZw==
X-Gm-Message-State: AOJu0Yyh/0iP6P0KES0jDPyvppGdDQPuRwLYbsqfr0cwxoDc/Cg0wkZu
	c00+9bKOLFh6djLoh0pzH+GBRYv0zgI3jmHm944/9jTR5yDzDK/ie5ob7RdlidjQHGSaan4qNsW
	gu39lYz0HPlbdV8AZbdU5w2kHzteT5djE6a/s
X-Google-Smtp-Source: AGHT+IGzWqUIOUu5I0duuZgvPFrMrMabv8H/NdN0jk0nuFo5i4muxUfa/my0tZITK0IRu5y8Tg7eEzkZ4UvjvZQkd6c=
X-Received: by 2002:ac8:5913:0:b0:430:a5df:a3af with SMTP id
 19-20020ac85913000000b00430a5dfa3afmr367264qty.5.1710775885132; Mon, 18 Mar
 2024 08:31:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240318110855.31954-1-johan+linaro@kernel.org>
 <20240318110855.31954-2-johan+linaro@kernel.org> <CAA8EJprywWbdoyfAbys=0WzEdAkp0UK1fzzCPzxKRjyk9DrC6Q@mail.gmail.com>
 <Zfg--2_NMPSPTxK-@hovoldconsulting.com> <20240318144806.GA3963554-robh@kernel.org>
 <ZfhZffrZXwtKgZ13@hovoldconsulting.com> <CAD=FV=UpuD7Lq0DxSZAGpL4Mi2uxy9HNt3V3FZq7Y3p--gbMrg@mail.gmail.com>
In-Reply-To: <CAD=FV=UpuD7Lq0DxSZAGpL4Mi2uxy9HNt3V3FZq7Y3p--gbMrg@mail.gmail.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 18 Mar 2024 08:31:09 -0700
Message-ID: <CAD=FV=WCzrh926mkiyBnKRG_+KGuOkGN6v0DgPiXhQCD3PSQ9w@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: bluetooth: add new wcn3991 compatible
 to fix bd_addr
To: Johan Hovold <johan@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hedberg <johan.hedberg@gmail.com>, Matthias Kaehlcke <mka@chromium.org>, 
	Bjorn Andersson <quic_bjorande@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	linux-bluetooth@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Mar 18, 2024 at 8:26=E2=80=AFAM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Mon, Mar 18, 2024 at 8:10=E2=80=AFAM Johan Hovold <johan@kernel.org> w=
rote:
> >
> > > > I wanted to avoid doing this, but if we have to support Google's br=
oken
> > > > boot firmware for these devices, then this is how it needs to be do=
ne.
> > >
> > > Don't Chromebooks update everything together. So maybe we don't care =
in
> > > this case?
> >
> > That was my hope, but Matthias seemed to suggest that we need to
> > continue supporting the current (broken) binding because doing such a
> > coordinated update may be easier said than done:
> >
> >         https://lore.kernel.org/lkml/ZcuQ2qRX0zsLSVRL@google.com/
>
> Chromebooks update kernel and devicetree together, but not firmware.
> Firmware is relatively hard to get updated trying to have kernel and
> firmware updates coordinated at the exact same time has challenges.
> This would further be complicated by the fact that firmware
> qualification for each variant happens on its own timeline.
>
>
> > A new compatible string (or one-off property) would allow them do make =
a
> > change when they are ready (e.g. by only updating the devicetrees after
> > all boot firmware has been patched and pushed out).
>
> I have no real opinion about the exact way this is solved so happy to
> let DT folks decide on how they want this. I will note, however, that
> device trees are never shipped separately and thus we have no
> intrinsic need for DT backward compatbility here. It would be OK from
> a ChromeOS perspective to add a property or compatible string for the
> broken case.

Actually, I should probably say more about this to make it clear how it wor=
ks.

Chromebooks ship the kernel as a FIT image which bundles the kernel
and device trees together. The firmware looks at all the bundled
device trees and picks the proper one based on the board name,
revision, and SKU ID. The firmware then looks for the bluetooth node
(I believe it finds it from the "aliases" section) and adds the MAC
address there.

...so we could update the DT to add a property (if that's desired)
even if we don't update the firmware.

-Doug

