Return-Path: <devicetree+bounces-141176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 585BFA1DB58
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 18:33:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77AD11886D7A
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 17:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D19418B467;
	Mon, 27 Jan 2025 17:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="a3mMV5wa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B152A4EB51
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 17:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737999212; cv=none; b=PgbiCdhj/X7M6QBKPtNo5IpRR5NqtmjAy6YvQ7R2Xfo4QiIKW8HLTjq7K7wMQPIn0TuytqLb8+BjDARJTQrVeu27NM7xeupb9Wsj498pnmnl72eJPK+eAvovbSg2ARwUxE9poARNZ2hPlFEqBbYY08S85URrReKaqDC19AyYny0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737999212; c=relaxed/simple;
	bh=PtvF2ljJmxhhlJMH9AIPk9UkWeLfLTgFsHEohSaRufs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ejYUfnJwpxgad6B1AwQrZ4toXyjRpSpJJMjdWh2oz8x9ssfNDlEbKjg98EAvshG5RrvnI2WLGR6H/x+uVtnHyvZLXbgN4MyssFZNtGKmBS886bgGje5VwYZ0G7143Umfq/+TfV53CmDBT9ns3pocFVdS3GNFStqmOVtztzKcVQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=a3mMV5wa; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53e3a227b82so4298468e87.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 09:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737999204; x=1738604004; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EDIJjS17Z0cKxHytk07h/hYFHTsGXB25W2Fi4Mqsrss=;
        b=a3mMV5waQAcfezUvZOloZbAgjOURRev2800AAwHq/3u+cAuxzDoABo21QD/tCmrukf
         VMP7b7EBAQ4XDo0HYOvN9zKLakfFLt/3yJ+bkre3P9f1dNMBE8WCmAc8Uxwjt3Ft4kyJ
         78C2Y0fLEsYTT1SI5BGOfMnwwGzBTfhT/gisw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737999204; x=1738604004;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EDIJjS17Z0cKxHytk07h/hYFHTsGXB25W2Fi4Mqsrss=;
        b=N5zJRFEGdHCiosLeTEa+LKSgYkBWfs/0RwDjbBw+fm7zXEdP2/T64k2M/IoaEgi7xQ
         wlvRpSLw6panKgAPdwEitH/O/L39CaYAcCruXMz55sdktg6j5H4am1LrVKqtp/SvYQuI
         4oCkLNflrqp2fLp8qRPtdMsJ2sY0S9qLLBL2ydDNHThxEXqvysTM8E+Zwh674FmzFIzI
         ZsSNhpgl7t70jm6oi2RQUnpmHhxzsJZbhHJsxmtsVLvrQTWn0ZYAw93T+4bNmFB08nmb
         aZoCc0z/yG42pzdFFYDFjBXdmoZi3vQSy8nwXyMLssXM5QecMyP/cjc37z8rss+F6Qlx
         IC8w==
X-Forwarded-Encrypted: i=1; AJvYcCWqrt9+nnvte29fQLtLjAnQC513Wu3MAu+JGc/llqLGmbOrhXB/5tXPNfU29GvLRrC7mT+/U+ip3Yhj@vger.kernel.org
X-Gm-Message-State: AOJu0YwXjtC17TXbj/rZm8Kk5WUEYgd/fO1PkeT/MlrNCEg6rwC5lMTe
	6iOWqmsCOwvoXuv5kZy5VVoWcF8WwjpZrrhD4yLEi86e6p147/UyRQ+5JrXhP9XHeLEKG6qAZVz
	KsA==
X-Gm-Gg: ASbGnctHuHR+8aznIQZ0LWF/DjzEuEpIiyuUAiiRnJTh+mnyImfrfM2wluH8ncVjMPR
	wMvCyxLBrHrxsBHaPJ4S6eAgDTNRe0TDZHwyqHm8RprIbiYK3aheggq/zKkq8uSxEuXpfmXGd/t
	BcUtCtj3P1viU+ElFN/bwVHomYKO2RQIj99nR9r71I6d2/zbXvdkC88o3c5LTGS3NE6OueloCB9
	dKSyC1xAHk3VC4H7P60qQMJyUoIz2j2QndzxxeBsrd0JFltFWRc/32/yLLb4MpJSmIzF5SOelcW
	o1Ehu/Fh1i6M1t49SIImv9EVWRfVvmOY6f2vzD7tU1inTZSu
X-Google-Smtp-Source: AGHT+IE2uZh/oWtSArSCY+sBYzfrXs0UdjYZE0eULnxq8aKTQNW9ANsoXzwHb6SjgaG46V7c3N0ORA==
X-Received: by 2002:a19:7717:0:b0:543:bb21:425e with SMTP id 2adb3069b0e04-543bb214402mr6511556e87.4.1737999203677;
        Mon, 27 Jan 2025 09:33:23 -0800 (PST)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com. [209.85.208.178])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c8379b6bsm1374378e87.196.2025.01.27.09.33.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 09:33:22 -0800 (PST)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3003c0c43c0so50255801fa.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 09:33:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWTYwaXqGA9BqMAh704I+hMyjzuK5TqI3T4iJRaJIlAoNpHhGuV8hphmu8OY/LX8+4LEKkF267feRYt@vger.kernel.org
X-Received: by 2002:a2e:a4c9:0:b0:302:1c90:58d9 with SMTP id
 38308e7fff4ca-3072ca7fa0bmr113889451fa.16.1737999200851; Mon, 27 Jan 2025
 09:33:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250127014605.1862287-1-yelangyan@huaqin.corp-partner.google.com>
 <20250127014605.1862287-2-yelangyan@huaqin.corp-partner.google.com> <20250127-copper-dalmatian-of-excitement-c474da@krzk-bin>
In-Reply-To: <20250127-copper-dalmatian-of-excitement-c474da@krzk-bin>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 27 Jan 2025 09:33:08 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XcVnkYSzanqinLX65gRc5434WGbvauavBZPpabfT-2Yw@mail.gmail.com>
X-Gm-Features: AWEUYZkdPPfcTVvf2U86dKbCSDMihhgNkb4v-_QGXFo1taQ6eo6FgJO1X5WUccw
Message-ID: <CAD=FV=XcVnkYSzanqinLX65gRc5434WGbvauavBZPpabfT-2Yw@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: display: panel: Add compatible for
 CSOT PNA957QT1-1
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Langyan,

On Mon, Jan 27, 2025 at 12:43=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On Mon, Jan 27, 2025 at 09:46:04AM +0800, Langyan Ye wrote:
> > Add a new compatible for the panel CSOT PNA957QT1-1. This panel
> > uses HX83102 IC, so add the compatible to the hx83102 binding files.
> >
> > Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> > ---
> >  .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83=
102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.ya=
ml
> > index c649fb085833..d876269e1fac 100644
> > --- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yam=
l
> > +++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yam=
l
> > @@ -18,6 +18,8 @@ properties:
> >        - enum:
> >            # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
> >            - boe,nv110wum-l60
> > +          # CSOT pna957qt1-1 10.95" WUXGA TFT LCD panel
> > +          - csot,pna957qt1-1
>
> You need to add such vendor prefix first.

Since you may not know what this means, Krzysztof expects you to add a
new patch to the front of your series adding an entry into
"Documentation/devicetree/bindings/vendor-prefixes.yaml" for "csot".
Based on my experience with eDP panels made by them, presumably "csot"
is "China Star Optoelectronics Technology Co., Ltd" ?


> It does not look like you tested the DTS against bindings. Please run
> 'make dtbs_check W=3D1' (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sou=
rces-with-the-devicetree-schema/
> for instructions).
> Maybe you need to update your dtschema and yamllint. Don't rely on
> distro packages for dtschema and be sure you are using the latest
> released dtschema.

It's important that you figure out how to do the above so you can
validate your bindings yourself.


> Point us to your DTS so we can validate that you really tested it.

Krzysztof: not sure what you're asking for here. I assume Langyan is
posting support for this panel for hardware they are trying to bring
up, and the device tree may not be officially posted anywhere yet.
This is not really a requirement, is it? Given that Langyan is just
adding a compatible to an existing binding, it seems like we can be
fairly certain that the binding is fine without needing an extra dts
example, right?

-Doug

