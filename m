Return-Path: <devicetree+bounces-84774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F6292D8D5
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 21:13:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 387461F25A76
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 19:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AFC4197556;
	Wed, 10 Jul 2024 19:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eSorft9+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A254E1EB2B
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 19:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720638782; cv=none; b=bI35MLtrdngt1wfS08S4+Lfj4XNqwu04JW9lYSUOCOxGC4dkbCtIdvq3nJUz/nS5fW/kX6qGNTx3z3aWJ7WbS7FN1OiPgT//Rtqz+Q5N44yOqYYdsIoYpLUxJu961Q/KzCNYjQb5qUJSQX+scu5IHJLf2mQB8sjAFHCbse9eo6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720638782; c=relaxed/simple;
	bh=Pdmj45LBJKnt2uBezG0hiQjjXNOAPIeCha+bcVFfCXE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ng6fz473B46Dr/jErVNraFp5cd1ww7LfD0ptsq0MJaLr7q8gGMleo1qpZwOOBJmz5lBLu9VtTZLGqBJz6M6dj78XsBEYMmjaBPUW9rhqAF+UxW/6SRYLVMDQrxrImTgqf5Ty04y7+Ssuua+FxbZMt/t982lc9ohHppC+5iFbOCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=eSorft9+; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e035ecb35ffso58196276.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720638777; x=1721243577; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=msnytkDAJA+P3orVTeKKvN06RuuVdEWbRMnBWzLAFIc=;
        b=eSorft9+hvWniIqPk+YSmUi83e35rK5Lpr6EI5J//9GMs0IB09VfrOHcusTv2DBHXX
         RPNyDiZSxYcgw0dZtC/T6EC4J8tFVroU5h8huvq6PweQ91gk2PWV9SysUEtuFRlXSP9w
         nHQz5cz8AwjbJckQozSAV0DdjPAHYRMCxEPMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720638777; x=1721243577;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=msnytkDAJA+P3orVTeKKvN06RuuVdEWbRMnBWzLAFIc=;
        b=Hkirpb6uQ+fFvMZgncBNTJRQH1dy5pffqLQVvwxoK01wp7uLtwcd8ZhhY2uIuQphJK
         m77FWcJeWfNT4d99uA0DFsfDwMp8QJFqb+JYap00iXAlGcWiUOJ78XFRRB1bfPwwLwU3
         WMdOSz/cCWY5Sogdey7ubzQ+9C6VuJJ2SD8Yq/HPbJbU8xmjA3v8Ok7s4qBWE6zPe5+X
         vDvIyG1yl+zMLoHZcDDt5pjwtS7kpDAAFpETxIcwsH1/e0XwhvV6/4QtL+LIesIqVmVD
         xUQE4wXLkI2k2aEtuFZa8bahDC6/Jkb/VvcKMXxam9fAZxCHI6IupbjHJEN8Ra5MWWIw
         U6Mw==
X-Forwarded-Encrypted: i=1; AJvYcCXp0R0UaVC9G449xuoa3UmT30zakqeStLxU2oIjxpU+Qh0gTrVFdezyxeVBbLPs0m2o8PAiinM0ZwVaFttsiRYMRDB1LZNNNLyKyw==
X-Gm-Message-State: AOJu0YzKtn8GOaX+hWFno8pWbsZFSsoi1AGfJfVh6WLJZ9eGOThK8GOM
	4p9zAdjsdhG6sq8xDOX68pU25eXBeNDjZpNSxZQK/xvRMp8IEebLiDm6IB1E+tGNLxGbEuvnM4O
	N1Q==
X-Google-Smtp-Source: AGHT+IEPYGr9UTI40aQVtieazzdSO4YTT5sxNSMUxOMwNCXF2Z9kbSLk+Z6rS7959AApBvHVq1P8vA==
X-Received: by 2002:a81:9f10:0:b0:64b:3057:763d with SMTP id 00721157ae682-658eed5fb7cmr65307907b3.21.1720638776911;
        Wed, 10 Jul 2024 12:12:56 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b61ba15924sm19291806d6.68.2024.07.10.12.12.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 12:12:56 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-44a8b140a1bso63301cf.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:12:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXYv9uCmizgvwIpy02JKvt6LNHWqMT4tmfaFDBi/uh4A9wNMltaG/6TBi6RXzdTNxzO0mn6irWbXlZhrAd68dNVRng/J44/ldlkYg==
X-Received: by 2002:ac8:6a12:0:b0:447:e2f0:4d17 with SMTP id
 d75a77b69052e-44d118939ecmr377451cf.7.1720638775365; Wed, 10 Jul 2024
 12:12:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240710084715.1119935-1-yangcong5@huaqin.corp-partner.google.com>
 <20240710084715.1119935-2-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240710084715.1119935-2-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 10 Jul 2024 12:12:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vt+8qqY8AQuKkC2np6z8aHoDpeV1siHKrDe-=Ft8xaMg@mail.gmail.com>
Message-ID: <CAD=FV=Vt+8qqY8AQuKkC2np6z8aHoDpeV1siHKrDe-=Ft8xaMg@mail.gmail.com>
Subject: Re: [PATCH v1 1/4] drm/panel: boe-tv101wum-nl6: Break some CMDS into
 helper functions
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, mwalle@kernel.org, 
	linus.walleij@linaro.org, airlied@gmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 10, 2024 at 1:47=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> hj110iz-01a and tv110c9m-ll3 both nt36523 controller, and they have
> some common cmds, so let's break them into helper functions.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 190 ++++++------------
>  1 file changed, 63 insertions(+), 127 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

