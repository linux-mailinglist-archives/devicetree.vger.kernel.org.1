Return-Path: <devicetree+bounces-74708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6417390419E
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 18:52:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AF521C24DD4
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 16:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E0E0481D1;
	Tue, 11 Jun 2024 16:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="N0H935B9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC6D047F53
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 16:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718124617; cv=none; b=eG91FRaK8ybZ0dIPtxdEfw/rBmxsQ7dVYLWSRK6mfP8RqsiWAa3K1gjzMPN/OmJEVmdpTJsnv9ez/1/AtSOMkv/CxbWTeycs/rQAmEaB7rWh5unuQDPMBYJEIVTUVISwyxtrB89Qwe/WnPFBhIHj9Zi+i/p9Mp1Z19wXHVeAJXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718124617; c=relaxed/simple;
	bh=S0XuMDRDWpXOBdAPwQUmPVsc22XbW+IAi1HUrnJZSy4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CKyHxxhmHLUNhYoSUghBf51QiTcnGyfdgNe9Lu87jAMiw+c4c5adGvdSmr1uMLhdnZpN+rH39YZXBLHhBConz4wpZgG07tavYe5Sr3LHU2ue/8rTPMOu4jg6NvdVhSiMceifPFRIDjewTquAY/R0/X4PkKOPJdiPrMM2Dm961v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=N0H935B9; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7955aaf8006so216313185a.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 09:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718124613; x=1718729413; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0XuMDRDWpXOBdAPwQUmPVsc22XbW+IAi1HUrnJZSy4=;
        b=N0H935B9TEEcmgf44k03urhU5Frxk5og1LnQ+BRlQ9bawwzaulMHypsYw3RV8XKGC+
         qVc6NCMGXuV3VOUdAHCgFvyjI/AB0cwgEdRboyAv5OjAlm3OmLSdKEG2Xr7NJjS3oPX3
         ooXlkcX8CgBYgjSMCLkGVTEqCK4NF1+s3pLxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718124613; x=1718729413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S0XuMDRDWpXOBdAPwQUmPVsc22XbW+IAi1HUrnJZSy4=;
        b=PB/VXRd1s5ek8LVPWKcbX12vqwSZ1TqX9hrH7P4iA8/LZigly3Gs+nNKVXMIhBWgOq
         jmMImg3whQJWhkTbb/dgWrC9eBmpdrk+hJthUm710xqpwwLi7bmxVp80eW7NGaIjJohC
         qyXGEWkdOWIvFxh5RUZ06P85mlJwVd/DTANmJGxqBoyTv4mVdhXhJz6a/xy4d7xk81nK
         ejr6D/cuv2lBcAJ7eeJ84Aus2yq9fSfgVvCMruzRBKaJ7lkRB3qpR3J9JapU0F+EvQ3J
         3NZSOFmo0/vXO6iReMQcOqvfha44colup4rduB+HWBpWprvjGuyMenGYqBzqjFXGDUPD
         hNtw==
X-Forwarded-Encrypted: i=1; AJvYcCVWdu6WtK5ptrZfmPB8ZrKVNw72nYWwbI3V8044B+RCQbBIFb3V6rdnLj8zpEjseRLbvrAfR2JMQ4R2xnToktq7dzw/2QUO8v2yqw==
X-Gm-Message-State: AOJu0YwDMRORgPL6vUqytB7Pq1YSXjMyGJYz5Nps9Dm8WPZc+46ce2ZX
	g/SEwBe4skw5daLqB+6Qu9t3bXxO1rTpKpzaMFgtwYvs/ZJWIbVC/wrrfPUIbDBcbqHVXyiHVLE
	=
X-Google-Smtp-Source: AGHT+IEN2lBUq3xeMS2kvcrAf0g40Bzg9bwyU1YE6g0RbTORiI4LlvmlVh5RMFEyGaCx/Qe4NyRcbA==
X-Received: by 2002:a05:620a:4008:b0:795:9111:8db4 with SMTP id af79cd13be357-7959111926amr742403385a.37.1718124612567;
        Tue, 11 Jun 2024 09:50:12 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79599ffe161sm223369485a.71.2024.06.11.09.50.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jun 2024 09:50:12 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-44056f72257so391801cf.0
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 09:50:11 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVgiRLBLvw4HSNC+JjzRyi5SveqEOTJy9SbKs5QGiuSGCJYt1cV5ympsKwhItxa9KO1XpYLfCV3XAVNWVfEJ30KiO5EM1swcYvaqg==
X-Received: by 2002:a05:622a:5e85:b0:441:4878:1238 with SMTP id
 d75a77b69052e-441487812b8mr3625141cf.8.1718124610639; Tue, 11 Jun 2024
 09:50:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422060811.670693-1-xuxinxiong@huaqin.corp-partner.google.com>
 <CAD=FV=WRLLuOkCJeM6RdAb6xLN-cPH+hfWbOv9-LujB-WMGEFw@mail.gmail.com>
 <CAGoogDB-mj8_xu04w3V2ZxOBTWoXcPKrVR1NRt6BFcpjHX3-7Q@mail.gmail.com>
 <CAD=FV=WwsR9e-ZXJRY11FvdUZ66YPy9vqmY_=sGDw5Wqk1eV3w@mail.gmail.com>
 <CAGoogDBCzfKwkAA-VAs3_Cdw_4oFO94mt7yjy47Sp2RAtqtPxA@mail.gmail.com>
 <CAD=FV=WYiD-BUpksBnZrkWvORepZqtaAvm5645X-_oJPea0s0w@mail.gmail.com> <CAD=FV=WMC0XZBc3UKP+Qzb5aeiWBnXrYDf31PNP5cGeAT-8XcA@mail.gmail.com>
In-Reply-To: <CAD=FV=WMC0XZBc3UKP+Qzb5aeiWBnXrYDf31PNP5cGeAT-8XcA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 11 Jun 2024 09:49:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ua_CuWsPRMsZZhXF2kFjf6-o=s9zKYq=FC4XHQNL8UqQ@mail.gmail.com>
Message-ID: <CAD=FV=Ua_CuWsPRMsZZhXF2kFjf6-o=s9zKYq=FC4XHQNL8UqQ@mail.gmail.com>
Subject: Re: [PATCH] drm/panel-edp: Add panel CSOT MNB601LS1-1
To: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, May 28, 2024 at 9:27=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Mon, May 6, 2024 at 8:54=E2=80=AFAM Doug Anderson <dianders@chromium.o=
rg> wrote:
> >
> > Hi,
> >
> > On Tue, Apr 23, 2024 at 6:55=E2=80=AFPM Xuxin Xiong
> > <xuxinxiong@huaqin.corp-partner.google.com> wrote:
> > >
> > > Hi Doug, thank you!
> > > We had reported this info to the CSOT to correct the vendor id.
> > > If they confirm to fix this with the same product ID, we will submit =
a
> > > patch to fix this.
> >
> > FYI, "top posting" like this is generally frowned upon on kernel
> > mailing lists. One such reference about this is [1]. Some folks are
> > very passionate about this topic, so please keep it in mind to avoid
> > upsetting people in the community.
> >
> > In any case: did you get any response from CSOT about the improper EDID=
?
>
> Just following up here. Was there any response from CSOT?

Continuing to follow up here. Did CSOT say anything about this?

-Doug

