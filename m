Return-Path: <devicetree+bounces-69998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EC84D8D21A3
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 18:28:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 772DEB23173
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 16:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47789172BD3;
	Tue, 28 May 2024 16:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QgwfSZh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01F7172BC8
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 16:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716913685; cv=none; b=Ecbw4J8I1oYyzSx6685yjLy8uIQDG0lHOVBJa7mOfS/LO+EvaNkiMOt5QFyXR2rsBDHYEK7CXLuZ+dg/TNhdlcDJctopcmns8K+Ix+8dA4YkPQMrDe2MaXi8wXU7UnmhYSJ9T4KMxWVRWwZVHVPLhZ31mg+6Yy7HyUpOyCK8368=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716913685; c=relaxed/simple;
	bh=t74W54+/Ll0YLi8c76pQC7uwzEIjWDtBfp3CisuTzmI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UY1pEvut5eQ2nHtXPlgXXcu90RsUF/hczFt8cnKGxdCex/3Lh6lK2a9X5rpbxumpNeit4lFkNHOwuYrJdNfgolQa9kHj/sB2z82WR9hmb2gfr1AHN/g1aFVapGNGjoPsis1Uf9wkH2TwAWALojqfyuSFRcmi2bPPW+KnWIYF71c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QgwfSZh/; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-794ad6d2884so71328785a.2
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 09:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1716913682; x=1717518482; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t74W54+/Ll0YLi8c76pQC7uwzEIjWDtBfp3CisuTzmI=;
        b=QgwfSZh/8BChFJyVQ+AIts8oLWWYZ9UsrikP0UHQOC+D/3kyz8smU2vYnfF59TUNed
         Pci8JvLTvmHJ9z7e2h0AzYEdI2s32XFIVraCUhFT1FbrhblYpetGbQlKfQNTOdTO3k7k
         49OURayqh3g4QObWOYmjjMsXs8sGUpNGaGNKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716913682; x=1717518482;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t74W54+/Ll0YLi8c76pQC7uwzEIjWDtBfp3CisuTzmI=;
        b=WMVHpys13hqD+2eKV2E+LCdI+pZ+xcWdELkw23kk9qAV26Ain7Rc9vWOjK/gBWvXcb
         r0F3/Ank2MBfRs3A6DeXGHB9CMU0jxRgzzKqdSFAeV6gkrHBW4s6FsVnqqP85uaXRgfq
         f5A1IGATEwxPBXFi43vsuEEByyQka48MnxGLamaA2Uby2SvcNC5rB+c0qRhjYAWGExlZ
         NFlVNwVfmrOwFXZ223/cYdhkKhcA6UtbTUe7A1oVOxJNPgqB+g+n8pVQxMM/NTF+2NgA
         Vx2lsPfN2CgUjJdqM27jkX/65Su42kHCtA+KthM2qkjSg2xMyObgYuHiPT0ymxZI0EDl
         47vg==
X-Forwarded-Encrypted: i=1; AJvYcCU3LKQnZ6CQ42GV6bnd+2OOuFpjvlvMZ6Pb0vjqqMD8Rh/Un1uhEL3axZLtTFddpFRzZV/rqI9HcQUzgVg7h6cuEERp8StI8WGybQ==
X-Gm-Message-State: AOJu0YxxEGFXe5hhuS4QqkyA+AAaAUO6cMuj+tPJdKcEmtTLp99mVRnW
	w3QGp+kNS8hqAGPBu5RjFTTuBgfz5Fg2diK5XL5ymgpmbahyjWaalCi/jQwngKgOAzCDmjhYKJE
	=
X-Google-Smtp-Source: AGHT+IHg8zKLxqswy6hDTvreUSN5augimLOId0QglJMwMY+P7EoDQ6FWY+5lRvsov5VS/xt6WD+j4Q==
X-Received: by 2002:a05:6214:4a07:b0:6a0:94fe:939a with SMTP id 6a1803df08f44-6abca7863b4mr180188196d6.28.1716913681663;
        Tue, 28 May 2024 09:28:01 -0700 (PDT)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com. [209.85.160.169])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ac1631ec5dsm45658656d6.126.2024.05.28.09.28.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 09:28:00 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-43f87dd6866so1161cf.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 09:28:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUoGhEPck4uenK+fwlfyXNCG3MZ8XTIMgR93YxXTZgcHsrd+5JoB3Zr9Wt0u+ZZi22t4L3KR7uGJA3A2uDIgV1Lozy5gXKNmQCkXw==
X-Received: by 2002:a05:622a:1ccb:b0:43d:85ae:bee with SMTP id
 d75a77b69052e-43fbb0588e9mr7721931cf.7.1716913679727; Tue, 28 May 2024
 09:27:59 -0700 (PDT)
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
 <CAGoogDBCzfKwkAA-VAs3_Cdw_4oFO94mt7yjy47Sp2RAtqtPxA@mail.gmail.com> <CAD=FV=WYiD-BUpksBnZrkWvORepZqtaAvm5645X-_oJPea0s0w@mail.gmail.com>
In-Reply-To: <CAD=FV=WYiD-BUpksBnZrkWvORepZqtaAvm5645X-_oJPea0s0w@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 28 May 2024 09:27:43 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WMC0XZBc3UKP+Qzb5aeiWBnXrYDf31PNP5cGeAT-8XcA@mail.gmail.com>
Message-ID: <CAD=FV=WMC0XZBc3UKP+Qzb5aeiWBnXrYDf31PNP5cGeAT-8XcA@mail.gmail.com>
Subject: Re: [PATCH] drm/panel-edp: Add panel CSOT MNB601LS1-1
To: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 6, 2024 at 8:54=E2=80=AFAM Doug Anderson <dianders@chromium.org=
> wrote:
>
> Hi,
>
> On Tue, Apr 23, 2024 at 6:55=E2=80=AFPM Xuxin Xiong
> <xuxinxiong@huaqin.corp-partner.google.com> wrote:
> >
> > Hi Doug, thank you!
> > We had reported this info to the CSOT to correct the vendor id.
> > If they confirm to fix this with the same product ID, we will submit a
> > patch to fix this.
>
> FYI, "top posting" like this is generally frowned upon on kernel
> mailing lists. One such reference about this is [1]. Some folks are
> very passionate about this topic, so please keep it in mind to avoid
> upsetting people in the community.
>
> In any case: did you get any response from CSOT about the improper EDID?

Just following up here. Was there any response from CSOT?

-Doug

