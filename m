Return-Path: <devicetree+bounces-33939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D565083751E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 22:16:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C6D1288AAE
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 21:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C03047F57;
	Mon, 22 Jan 2024 21:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yn03BKO6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF6A481A5
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 21:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705958172; cv=none; b=ZnWhsgH0UKKj7YPPEKS6k+1GM2WX3pGgXLouiftA8Wig0mvB3g0/5rypEMvfbZBr7PZQblCuD+bd0LY7XtKxgIdmNmYFfLe4X56dAjOy5NDkLXOxXIU3rW2vVu79ME1n01n0fFv9LXzE2f5zKW5b6jtNFXqHTSOH9hVM1AqB4lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705958172; c=relaxed/simple;
	bh=uiBB6Mr7+8Y/fBp5o+y2R1z1a7IFad9zUlfPvcF280s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RrYcL4qBzGtS3SBFY/LDtJptqGpVw4epC13RABtxAXIlnG0G9jkiqNh/XYBpE7uMTXoeOIvcsd4Sb5cCQ3OGo7i44Qpr5x92t/zFnn6d9SD3GdIc5XOUFiirqEYj4AlmmaTwbIiIW1wIhQw37PdtNYWm5/yr9KNQT2dU5FU12Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yn03BKO6; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5ff7a8b5e61so30543287b3.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 13:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705958169; x=1706562969; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pGqZvA6E4e+NStTPc+SywkRNhWAXW+4bhcagtnUKSEg=;
        b=yn03BKO6pKtHlUtpSvwlJxMXoKTF65yUe7NWaOCQmXwX/Ux4LF3clAiCb5V2pv0qYj
         MqOvvygGygfghFx1XXwpIzeUBG9rEigb09Jcuo+qCxptlaafg19jQanfxKUbnWsAohMy
         RizRr4ned/lW26ru8BzIXgHU2PCrGt2ANyyrKUSh15omnff83rc6gzWEF3wpevUQ11vc
         litpkuK3IF7koNSoIeUGAVK9NH3tSddTl6F0st/pZvmB+6UcDJP2rqbZ1xIoN561Ejlg
         AnHopeg2w8V1ScmB3MQFGRkdAZF0ty/Px6ysdOkC72JX5rzMvPunK41PdyHnFGjdHTgI
         tuLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705958169; x=1706562969;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pGqZvA6E4e+NStTPc+SywkRNhWAXW+4bhcagtnUKSEg=;
        b=KjgkWvYGaejGdP0O40/J6MYM1Q5hF8brXhyexo7YW/bxK1nT9G4KRQWoko41/9bN/Y
         g0GgNN81d+fWmOV/WEwMwlPZHrQFOOJom1V/msT1bZGUfEwClgft03vgLUVlzQGne49B
         q7ccx0vtkFjyOrXN2iokgwb++gkwWHORbDeOflShf/P40YBfkedsczMl9zHxHKxsZz7r
         sCoWM8D4dCi5JFap4omXEzf9rz5KToWS2ao3p8gegijcHiz8QPMp7NceXC14szWApAyb
         IjUnyg8p16DmVPILYR3UagUMjYr+DYAtS7IPvp8nYwi47sMNB4q6xlQll36LbtEPzIkk
         f/1A==
X-Gm-Message-State: AOJu0YxIvuGibYx/U8lhhUYnIwc306wfykSyPJbA0pc7TzNIeFIdZTE/
	QyJV0xELw0JpQ1C+gYzz6pfI1vI/boSIwNaty+kQis1CKF4Z07dnWjL4TgT0IWt8RVqAYXFDdu9
	J8mABYXMh/mWu9v9iIc9g9pbSsKtUY+KqU2VYSQ==
X-Google-Smtp-Source: AGHT+IESaF1AXtC4BX2ZTnkzlB1e7Y9Q782BRoZWP9n/wcha9NYJnXtqtFtc+Q8WNSW5PywSQWFSXkS18fWSqnl1O9I=
X-Received: by 2002:a0d:eb07:0:b0:5ff:6173:e98e with SMTP id
 u7-20020a0deb07000000b005ff6173e98emr4058278ywe.63.1705958169431; Mon, 22 Jan
 2024 13:16:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240118155711.7601-1-quic_ninanaik@quicinc.com>
 <rq2dnfh6ctn5gbf3o3op5ywxx7zhx6r5sh5ykautye56o3p4dg@rjttk3rr65ld>
 <20240119191144.GR3013251@hu-bjorande-lv.qualcomm.com> <CAA8EJppLNFReZn1HK_radSkKkf5L584fx3FCuqG0FoUt4+H=nw@mail.gmail.com>
 <Za5xj8S3Gs7N-UUc@x1>
In-Reply-To: <Za5xj8S3Gs7N-UUc@x1>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 22 Jan 2024 23:15:57 +0200
Message-ID: <CAA8EJpoa+ZEL=4bg+Su30kGnVTLZmrUdgxQW6t1cFECSNSPp9A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Add new memory map updates to SA8775P
To: Brian Masney <bmasney@redhat.com>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, Eric Chanudet <echanude@redhat.com>, 
	Ninad Naik <quic_ninanaik@quicinc.com>, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_psodagud@quicinc.com, quic_kprasan@quicinc.com, quic_ymg@quicinc.com, 
	kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 22 Jan 2024 at 15:45, Brian Masney <bmasney@redhat.com> wrote:
>
> Hi Dmitry,
>
> On Fri, Jan 19, 2024 at 10:35:43PM +0200, Dmitry Baryshkov wrote:
> > This kind of change sets a very bad precedent. This way old kernels
> > become incompatible with the updated firmware. For me it looks like
> > Linux kernel suddenly being unable to boot after the BIOS upgrade.
> > Generally memory map updates should be disallowed after the board hits
> > the production and the DT is published and merged. There can be other
> > users of DT. BSD systems, U-Boot. We spend sensible efforts in making
> > sure that DT is an ABI: newer kernel remain compatible with older DT
> > files. We expect the same kind of efforts from device manufacturers.
> >
> > I think unless there is a good reason, the memory map update should be
> > reverted on the Qualcomm side as a breaking change.
> > If this kind of update is absolutely necessary, it might be better to
> > define a new set of board files utilising the new memory map, marking
> > existing DT files as legacy.
>
> This is on a development board that's not in production yet, so
> personally I think this change is fine. It's in all of our best
> interests to have SoC vendors push their code upstream early, even if
> it means that later on we need to make memory map changes like this.

Then this should be clearly a part of the commit message. And I anyway
would suggest having two board files, even if it's just for a few
releases. Otherwise you have a tight lock between kernel and
bootloader versions. In case of any regression it becomes next to
impossible to debug if it is caused by the kernel or by the firmware
itself.

> Once this is in production, then I agree with you that changes like
> this should be avoided if possible.

Please strike through the 'if possible' part. It must be avoided at all costs.

-- 
With best wishes
Dmitry

