Return-Path: <devicetree+bounces-48608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A71872BB0
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 01:23:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35F77B23828
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 00:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9965419F;
	Wed,  6 Mar 2024 00:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lRhkRyeA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F4B5381
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 00:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709684619; cv=none; b=oQ/oFwuzFAMJ2IgcslE2BPw13ha2XmplqLsnlOnVS60ygUtN9y02dBTwwRSuTmpQSIywlaiFXN3e2PYG3PRDXu5cyA5zbE0JzbrvkBW8IEzcNse4nnkp5dZ7SvMBrGn21E7SDJHDWfpkB3MZtEXYi5Ir9l4oR978km36PwZYokM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709684619; c=relaxed/simple;
	bh=inIrOcNkYayxA9apxKIBrNWVP7rVZSaJzSTWLCBHFMc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JWKjilTuODL4x4/TBIRx+iorqgJwaXfq088rgInQj+98lH/ErLUoHOnbh8oqnlw5iOoEurDxBYb+cLN2SJdW3iJ0QoqPDY0UPx0RZsE7m9E5N5HUJETSahEUiJfe8pdUSqYqpIe/WTp19V4qYxQ84NeqrJ9XuzGCMkT38dhBBdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lRhkRyeA; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7881e45ccb5so336602485a.1
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 16:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709684615; x=1710289415; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rBN1BqbcbZ76mWTdYzaQ/VGjxsv9OMJI1R5f8bpftUs=;
        b=lRhkRyeAZ0I0unAkbN5FYkJSM6rcDsdFtEZNmVsBg04ITRW5rNwn3Pbo70O8ZGq5Kn
         70qv3D3ghVUsP3QJJGLc2AzQJ4FvWFlIRwBiLOtO+MtQgyhzdum98MMyRl9uk1PtzwF4
         z61CplACjCJbhjArC92cx95lscjpBeT4IPavs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709684615; x=1710289415;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rBN1BqbcbZ76mWTdYzaQ/VGjxsv9OMJI1R5f8bpftUs=;
        b=lN4aOZun1HXTMPehEwga4J7mY1NF6Yegb/scteRMeR3Etn2G0kexfUBmas0lpXBdoK
         XRQcp0gU2jERer2bmnpModTHz+RR1Z263+HDccISnVtQcc22R1iB/CjVHJtk/3S5jRNM
         0sGux9zXOMtghdX8oEpzWKl5vFgFJk9Emzb00NnuCQA42vVuSq4I05v7vWx3Ac12YSKy
         2t1E7ZAOpMk9ID+Ola7K0Vg9R1sAyqQnSFDMWHz03MKio+apv3UhVJ+FE0mecdO/JZsm
         Ac7zmpWwFzxbFMaYfvxcYBjdZfpdjlFJ79VDmcOPrkCYjRbZFzjPKXBXqAqKkse2mCp9
         6YYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbfIkvhQcGTTEodNGP8VsqD/nSiEzjb5kU/5GfyOTTuOb7QCFKqJ0Ux+HisBwXWQTl0ycv5qx8pxXdaKb+ahUyOBeHm4Q7EnN22A==
X-Gm-Message-State: AOJu0YwnFfkwq66gLpDGGeNnhFRTkzAxNecetNurbfMHBGNFYAeYvR7k
	9vRNbIgTPZPlSpILR22x7s2EASQHTWIEqqdXMj5yvVeQEa6epvsBE22IShAKh3Xjb0ovBnLTeJ3
	fw948
X-Google-Smtp-Source: AGHT+IEgpUxPObfn7jzt92nsqqkMNR17SHdu6KSKG3WMrvaNEZv0riLqjVDmQ+zgrrYDamM84+n5Cg==
X-Received: by 2002:a05:620a:147c:b0:788:2a2b:f499 with SMTP id j28-20020a05620a147c00b007882a2bf499mr3621696qkl.69.1709684615577;
        Tue, 05 Mar 2024 16:23:35 -0800 (PST)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com. [209.85.160.170])
        by smtp.gmail.com with ESMTPSA id p14-20020ae9f30e000000b0078825e2c57dsm2859757qkg.76.2024.03.05.16.23.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 16:23:34 -0800 (PST)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-42f024b809cso123371cf.0
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 16:23:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXUQ7n6w64HWjLTOjO/JsDW63JtOkd2LZyc/AMcBXzpyAxVem32NeAiN4a16SGFfTxND7s/XKifpTSAt1350OQNDl+JytSn089z+A==
X-Received: by 2002:ac8:7e83:0:b0:42e:f49b:8753 with SMTP id
 w3-20020ac87e83000000b0042ef49b8753mr321969qtj.11.1709684614147; Tue, 05 Mar
 2024 16:23:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240305012604.3869593-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240305012604.3869593-1-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 5 Mar 2024 16:23:18 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XUhBUscqx5TY6Ax94_St6xggnirP6hiy_VG9Y_1uB-kg@mail.gmail.com>
Message-ID: <CAD=FV=XUhBUscqx5TY6Ax94_St6xggnirP6hiy_VG9Y_1uB-kg@mail.gmail.com>
Subject: Re: [PATCH V2] drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
 panel HFP and HBP (again)
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@chromium.org, swboyd@chromium.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Cong,

On Mon, Mar 4, 2024 at 5:26=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The current measured frame rate is 59.95Hz, which does not meet the
> requirements of touch-stylus and stylus cannot work normally. After
> adjustment, the actual measurement is 60.001Hz. Now this panel looks
> like it's only used by me on the MTK platform, so let's change this
> set of parameters.
>
> Fixes: cea7008190ad ("drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j=
02 panel HFP and HBP")
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

I actually already made these fixes myself for you and applied. My
notes were mostly for you to keep in mind for next time. This is
already in drm-misc-fixes as:

9dfc46c87cdc drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
panel HFP and HBP (again)

-Doug

