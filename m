Return-Path: <devicetree+bounces-235807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D42C3D0ED
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 19:21:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A62BC4E11E6
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 18:21:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60283348895;
	Thu,  6 Nov 2025 18:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Oh7bW9Vi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B573346AB
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 18:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762453305; cv=none; b=I0BXyIHCSRwFdQKVBtDGAp0CzWXm3iOYtQ6choevaPGxq7m3F9uUxSCMhSHt+UEY96yfPNsDvoHjn2hDc3A3th/9aIThnRN22GPuCD3DBdemae+NL/nHxZOFMtopBSurswt1fuiCbZvw0SiGDL1KXd4WsIOs8zkav7ZKrPLXf8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762453305; c=relaxed/simple;
	bh=S6IGYBBDmC8dLHoMGr9C7EQYKSCOuNtAEg+rHyPaHQs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cAqj6nwwJ9ibGVzps35C98vamEqbSR1wXCKvvOO66R8mzZjRK1R6F5qQr0KlTw1YxMLkcXn9bUJv/zyLFcES25mIRMCp5HpVlPuSZerWK+aH7vslGGObNDdRpIUA+IubHmltbl2Lki/dT4cq5TlGLVNU/o2jNSy53tu4GWqc2xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Oh7bW9Vi; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7b0246b27b2so814603b3a.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1762453303; x=1763058103; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n/uY7+JVbofrnb0xY1CmpLxlpuZ3PWjT1kJgbc7DbmI=;
        b=Oh7bW9ViFccIi63sPtFlz2BeEa2kGVFs+3Hz3seNAq0WeGbZKpLgUCJlN1L+uSEV5a
         UMhk/oLZpN9DHGvKP4tRVY/3zcGAiVUaBQuzjTzrG9kjwJ2EAZat8t3a7qSG9CW9owOt
         fAXAFeVn2sCqQSMfUfydJ/tP00M9q8cr4IMZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762453303; x=1763058103;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n/uY7+JVbofrnb0xY1CmpLxlpuZ3PWjT1kJgbc7DbmI=;
        b=VwcRchzS/NvzBxJGyt8DtBzdVdK9B3QxEyBAOZPEWW4VfjCmiUYuBOC1/bAVLUddBz
         Q25ug5u1BmoqPyqmf1TZBUyyAqa1VQo4914v1GANAmOqZ2oE3r4kZrliF3gF7+21IxFT
         p8H2X35BkPi8999Ie/hOdK9Fzi5MLU46Iz1MgjBIUgvrbsrwrwm/LqDyZ8JRI/SuxB2Z
         UAsmd+NKWFpwEAlnCL+SIKYdlq/eWQoUuioFgwmGNDuohiuXKqZwpaC8oVs5t8lvhCcF
         OPQgTNojyvdVyElK2Ks7wzXJ4xeLVVQ9nawq60kDd9Lu35QeSjW6RfYaSvxXwX3aJcw+
         J3Gw==
X-Forwarded-Encrypted: i=1; AJvYcCWgwuTxs9QxVYI/A/6L4RU1XNULbGx62PkRr79pUbUndMkFRHNKMSaDhBE/jyYfencuz8pfXpE1gxR7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy6gV5wM6kNJAgtzH7K0L7J+oDT/4KDUsLz4KQ8WC23AUxpUUw
	/wg8ES9hIoPfC/zM4vydIUoD1IMiMS7sbgVGngVTSQMVTpma9CznaMebXlF49gQf6bt/WJe920m
	LhFDPIPAmh4IZTWVeli2Tu/B4qamIU967wsMQeAjP
X-Gm-Gg: ASbGnctJhtL1IiFPyY0Y32BVq/cr33iB15ed0stRdciIq0Z4ZY7BquNXaOIcF3Ws+Ev
	xX9jXLznTNg7GJNOBccf/8kGHQ/tVmwFsACUNFoDXPKl/SzSRg7Tj5SSZgckk2gQidxZsT28I9e
	Qq3FGMVFSCItPralzI7CUkCs8GYOrs1t6s+o02gJpPVVVwS+ODjd07in9rm34i7cYl7lvfsfD5e
	BpZAltN4/aURN/YH/895d5n1uMMegc46Jlh1F5R5dfoq5XvJ2ceLFinXlSe/klt4NHH
X-Google-Smtp-Source: AGHT+IGqr3GmrXIMcT/NyfIZvvWpHhArzhPvNJ5PgGeULQ7OBJzK+zQVZZdpfuZs1qI8AKKejbsmymnq/rMFCO95DZE=
X-Received: by 2002:a05:6a20:12c3:b0:2ca:1b5:9d45 with SMTP id
 adf61e73a8af0-35229758ca4mr749053637.32.1762453303097; Thu, 06 Nov 2025
 10:21:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013203331.398517-1-jthies@google.com> <20251013203331.398517-2-jthies@google.com>
 <aQzaq2ord0gK-gaL@google.com>
In-Reply-To: <aQzaq2ord0gK-gaL@google.com>
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Date: Thu, 6 Nov 2025 10:21:31 -0800
X-Gm-Features: AWmQ_bmyZu1_dP_yzvFdUPfiLQKow1ew3PcvaAsktAKcPqiJMFh5m_duCsqHJ_M
Message-ID: <CANFp7mWXyUNbOAzLkT59gSrtPidLafxsrsK0vdn4_JP5uuxd-Q@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: chrome: Add cros-ec-ucsi
 compatibility to typec binding
To: Benson Leung <bleung@google.com>
Cc: Jameson Thies <jthies@google.com>, dmitry.baryshkov@oss.qualcomm.com, 
	akuchynski@chromium.org, krzk+dt@kernel.org, robh@kernel.org, 
	bleung@chromium.org, heikki.krogerus@linux.intel.com, ukaszb@chromium.org, 
	tzungbi@kernel.org, devicetree@vger.kernel.org, 
	chrome-platform@lists.linux.dev, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 6, 2025 at 9:28=E2=80=AFAM Benson Leung <bleung@google.com> wro=
te:
>
> Hi Jameson,
>
> On Mon, Oct 13, 2025 at 08:33:25PM +0000, Jameson Thies wrote:
> > Chrome OS devices with discrete power delivery controllers (PDCs) allow
> > the host to read port status and control port behavior through a USB
> > Type-C Connector System Software (UCSI) interface with the embedded
> > controller (EC). This uses a separate interface driver than other
> > Chrome OS devices with a Type-C port manager in the EC FW. Those use
> > a host command interface supported by cros-ec-typec. Add a cros-ec-ucsi
> > compatibility string to the existing cros-ec-typec binding.
> >
> > Additionally, update maintainer list to reflect cros-ec-ucsi and
> > cros-ec-typec driver maintainers.
> >
> > Signed-off-by: Jameson Thies <jthies@google.com>
> > Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>
> Reviewed-by: Benson Leung <bleung@chromium.org>
>
> > ---
> >  .../bindings/chrome/google,cros-ec-typec.yaml | 19 +++++++++++++++----
> >  1 file changed, 15 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/chrome/google,cros-ec-ty=
pec.yaml b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.ya=
ml
> > index 9f9816fbecbc..fd1a459879bd 100644
> > --- a/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yam=
l
> > +++ b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yam=
l
> > @@ -8,17 +8,28 @@ title: Google Chrome OS EC(Embedded Controller) Type =
C port driver.
> >
> >  maintainers:
> >    - Benson Leung <bleung@chromium.org>
> > -  - Prashant Malani <pmalani@chromium.org>
> > +  - Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
> > +  - Andrei Kuchynski <akuchynski@chromium.org>
> > +  - =C5=81ukasz Bartosik <ukaszb@chromium.org>
> > +  - Jameson Thies <jthies@google.com>
> >
> >  description:
> >    Chrome OS devices have an Embedded Controller(EC) which has access t=
o
> >    Type C port state. This node is intended to allow the host to read a=
nd
> > -  control the Type C ports. The node for this device should be under a
> > -  cros-ec node like google,cros-ec-spi.
> > +  control the Type C ports. This binding is compatible with both the
> > +  cros-ec-typec and cros-ec-ucsi drivers. The cros-ec-typec driver
> > +  supports the host command interface used by the Chrome OS EC with a
> > +  built-in Type-C port manager and external Type-C Port Controller
> > +  (TCPC). The cros-ec-ucsi driver supports the USB Type-C Connector
> > +  System Software (UCSI) interface used by the Chrome OS EC when the
> > +  platform has a separate power delivery controller (PDC). The node fo=
r
> > +  this device should be under a cros-ec node like google,cros-ec-spi.
> >
> >  properties:
> >    compatible:
> > -    const: google,cros-ec-typec
> > +    enum:
> > +      - google,cros-ec-typec
> > +      - google,cros-ec-ucsi
> >
> >    '#address-cells':
> >      const: 1
> > --
> > 2.51.0.858.gf9c4a03a3a-goog
> >

Reviewed-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>

