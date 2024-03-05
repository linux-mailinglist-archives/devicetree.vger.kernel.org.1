Return-Path: <devicetree+bounces-48262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF6587124C
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 02:23:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00D741F21D5C
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 01:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626B9FBE9;
	Tue,  5 Mar 2024 01:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3LuI1MdG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D577713FE0
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 01:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709601819; cv=none; b=OSvFweYg19B26Kp9Rh2ZGe8+RQoUvoQ5eGv5NzZPrJduosrj3o+7O/mCvWUCzLRF+nmx9HGJ7TKYVEQkTECmdPU22DmMAIJ0ocqEKhc1EhCWROXTwep1JlE+dodyrQI2kNDI9/2+fOvN1zS4fYMrvRniK6+LGic6WTu33WaaLE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709601819; c=relaxed/simple;
	bh=db4opHJeaoIkza1vzaEvxNK2J/BdLGfRH1r+selLYOk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=acqU7DvLV9a/qCc+bsA5DQQJALzoJXBSSfVJ9PceRfuS5c6kEf85/MXPc5rljyuTCuMTwAHOtKKB5Tak+akN54Y0Zwo47w301qE/xyd4pSAsjmX99zrwXsuPlZdd4IqUhFeyMtTnqO0ieSibJoYrPsfToU8vquQblMqyp5bl3oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=3LuI1MdG; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-5dbcfa0eb5dso4781288a12.3
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 17:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709601817; x=1710206617; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ewYmbhQy4LSOG3/UFpUzYg8tk5p9Nq3z57wkElHRIrM=;
        b=3LuI1MdGcoQlQPY5jSPDz6gb7V28VHTNrX2eQxq3PZ5asJQjj9VjKC3BTsBMPaznfu
         T42Nf3iH2wZB1Pm+Wjodx2Wm/DPTsn2ch9F+1HjNK2n45QpMJCbMyKVFlzLV6RrG45nt
         y8VaetTTo44gBYMZcCKSEFMwTeyA4xOgZ7UAviUUUS10OQOphkJBwaeHclD3bPLpgpjq
         eHlnZAIjehCNdyWqALvs+ofgGA84krJJdmRmZC66Niz5MmmmbeWJswYmKtL8KKP/oJTK
         8FCeQwgL87YD8+Bz98q2b87dJqD/xoCxkoUjGae2cCS4GGF13ZRWZhZ4EX4fqUECSY5P
         A0Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709601817; x=1710206617;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ewYmbhQy4LSOG3/UFpUzYg8tk5p9Nq3z57wkElHRIrM=;
        b=m/bzpO+qARqqPK/doQv6K+yroK+qlhsciDsulJmOAXyWgxebVWQj0Bu3nHqJa5YZ05
         /ME+ckMf4Z1qdoWggNNZizBzYEAdM3i0y+LsgwF7hukJEiBZ7Dw9bjasju4ItMe8jhIT
         oFQ5GiYmWcjT2f4i521Bj0VW/AEfU8Ai4+PeocRt2xwbTH1H4fD6zuLRpi3y3PQR2MYA
         9dh1haU+N9n/OhscwdX9kJILKYOysQeaFwH64MkCKoGTBmoWdgxFvDh3Bhdgaf/eh5o8
         Db6zEmo0BcWJ65ebQ3L+HA6cvAP1eIHs/u1FtivCtp0sMTNdMRqs966W7FVWH92pGdIM
         AF8A==
X-Forwarded-Encrypted: i=1; AJvYcCUnfBD4HHq84sdO3mqmhElhREcu9iq0ZfqP7keU4CsEKHQfAxOddlyDKJutcyUEHRaAmUf4AzGkAqh7JY9ivkCwtShuGIelRNnhHA==
X-Gm-Message-State: AOJu0YxjowbgbAa0+Ut2C/Vku5b8OulLP42OdPH/ad4J3XJDi2QMWtwu
	MunBaA2a4dR7btMExUhDDgJvWCd/2k0++aIHnBh1UvYodpExUeZKXNwGQWwlO6vonOxtb086yIM
	qDJaohAE23hdwpGMUBqE1rfQQNOolpM4p29xPxg==
X-Google-Smtp-Source: AGHT+IFR/4amAskIyXfoOOnxMmVwcOKFGtK74rfwLLo9y/cbpl6P3c931cDDvgAF5bJ9jcaCB8jsp3EyL4MwMY0oL44=
X-Received: by 2002:a05:6a21:7881:b0:1a1:4fb8:e02c with SMTP id
 bf1-20020a056a21788100b001a14fb8e02cmr423060pzc.37.1709601817178; Mon, 04 Mar
 2024 17:23:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240301061128.3145982-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=UP9NxfmT8rqLd-HUq8QwJXa5xO7UbrgYHLw4vOKZO7hA@mail.gmail.com>
In-Reply-To: <CAD=FV=UP9NxfmT8rqLd-HUq8QwJXa5xO7UbrgYHLw4vOKZO7hA@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Tue, 5 Mar 2024 09:23:25 +0800
Message-ID: <CAHwB_NJ0LdO0OK0uUTUP=OzkFN9Dfd_9EtAX1pGf_ygV__Y-UA@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
 panel HFP and HBP
To: Doug Anderson <dianders@chromium.org>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@chromium.org, swboyd@chromium.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Mar 5, 2024 at 12:51=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Thu, Feb 29, 2024 at 10:11=E2=80=AFPM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > The current measured frame rate is 59.95Hz, which does not meet the
> > requirements of touch-stylus and stylus cannot work normally. After
> > adjustment, the actual measurement is 60.001Hz. Now this panel looks
> > like it's only used by me on the MTK platform, so let's change this
> > set of parameters.
> >
> > Fixes: cea7008190ad ("drm/panel: Fine tune Himax83102-j02 panel HFP and=
 HBP")
>
> Your "Fixes:" tag is not quite right. It needs to have the _exact_
> subject of the old commit message, AKA:
>
> Fixes: cea7008190ad ("drm/panel: boe-tv101wum-nl6: Fine tune
> Himax83102-j02 panel HFP and HBP")

Ack! Thanks, I=E2=80=99ll fix it now.

>
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > ---
> >  drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
>
> A little odd that the patch you're fixing claimed that it caused the
> measured rate to be 60.01Hz and here you're saying that it ended up
> being 59.95Hz. I guess there was a measurement error when the previous
> patch was posted?

Yes, the previous  patch measurement was wrong.

>
> In any case, the argument still holds that this is a panel that still
> appears to be only used by your board, so small tweaks to the numbers
> here seem OK.
>
> Landed to "drm-misc-fixes" after:
> * Adding "(again)" to the end of the subject to make it distinct from
> the previous patch description
> * Fixing your Fixes tag
>
> 9dfc46c87cdc drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
> panel HFP and HBP (again)

Got it. Thanks.

>
>
> -Doug

