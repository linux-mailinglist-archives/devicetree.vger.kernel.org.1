Return-Path: <devicetree+bounces-61601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E638AD671
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 23:17:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0567F1C21008
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 21:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B161C6B7;
	Mon, 22 Apr 2024 21:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JEcu7p4q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5001CD3D
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 21:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713820663; cv=none; b=Q8HAwTReOne0Ji1QxPIee4GiEU9hsK7BdMiOE58Q1y9wQXrMWqV5wwO4Ssfl6W2j6kVhp+YWwQ0QOq5ulUp0y4wPqvHrZggMDjEqL6ddmd7DYmY4UDqjZTu2jJD69747JDIaT0Gt1Ahx6FscpgtkjA9rxXdFeL3/DZ65A7CQ3nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713820663; c=relaxed/simple;
	bh=4iw7ODXz7jcXnC9I/HtNNzAfisnjy5MrvL1n6NmWuIk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S+9aQL/DEXWLNIFxjrirFzmcBCejy+QxpPHIgeuKUCKVFIClr1G65M1faN7JYeDCJAwQLpXRjqK7L5yHiFqT50D28QJUXXEvtUEVzGq8pZppHi79A7oOQ/TFn2MnUSl1e98vwZ9yhL0WLFF/TAJDagovaPJEQGs4tZYmGLyCa7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JEcu7p4q; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-51967f75763so5821920e87.2
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 14:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1713820658; x=1714425458; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y2m/l3tOuUABljidnIMWozMhmQuiJxyH3dIJhKQ/b+4=;
        b=JEcu7p4qoVZpuWe3hbhvUJC83fW83yZlZk8Ke4ZBA9n0yJ9nVGoaVczYKURVsd0LKL
         qKhQgbbQA+25CFV92DR4QmxXWOC12qYw8A8rD3+/2wT3t6e+71eBn8mWAan+FbzEvMel
         KoKqulkXt+g5M3jZpJzrnREXA934xTlizrkqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713820658; x=1714425458;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y2m/l3tOuUABljidnIMWozMhmQuiJxyH3dIJhKQ/b+4=;
        b=GE8KRy08mwBDXDbyhDWeVhzsVXJ5z9KRZg205ZlSeTSUxVMNZmpmR+b309WEaNA4kA
         bwK78QzvvpHX2cJGUUbczf1zQfCqojt7/2/Obc7/8/Ku9FjUQs/p3Ve1FtClyIo1tLmK
         5jdnXKjVwc14NwcBXwgBV/dvb6fMJS/ss02ZNRjWQy2ci5RX3onmZ3a+ijdfbYScykIA
         BEsocDnHismFnLaKya8L8lB1I0ADvhL9q65ferMmCJI46dUttQ66srmx5wmJw1qwYE8K
         qU285D8y7cm7vZhm9ROsqjNC7XFLxpnDxbZxXeRCPW97YiLIRZZTRKk65LeKA1z2gwmV
         FLbw==
X-Forwarded-Encrypted: i=1; AJvYcCUxsQbveGa9PxmRNHRL/UhlDdoIFmXBlnXodSGf9XnE+4xaBy+YaGDe5vzq1cGt6hZc0DN7qeoqLLFbHO7/y4lHNW9oz8vGio8GhA==
X-Gm-Message-State: AOJu0Yw2Wt9+3MpM+JqM4otAvdbGa/Z5qJl1iBdTRxte/Vpt6ECHY8h3
	2G8SxT5S42/rbmpKVln2WCa4wmc7Uotj7SJcQWSGkFg2me3QLVEPXDHxWFR5VDM3Mun8jbeUOKh
	6tHjs
X-Google-Smtp-Source: AGHT+IF3meN7RnwI2LBJbnY9zOFQ6yGO1NmSYgWbryIouiYpMNUIcOirI9Rev0FwyotHRw3ys/84xA==
X-Received: by 2002:ac2:58d6:0:b0:51a:f11c:b229 with SMTP id u22-20020ac258d6000000b0051af11cb229mr5438741lfo.25.1713820658216;
        Mon, 22 Apr 2024 14:17:38 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by smtp.gmail.com with ESMTPSA id og45-20020a1709071ded00b00a587696d536sm263667ejc.36.2024.04.22.14.17.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 14:17:37 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-418820e6effso25065e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 14:17:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWtrYYmMLGfWvf99gTNHH8tyPGPwv2yeZHB/mv1XaiYzihut6blCWNdQlHIiODKrUxBTeDhg+Q73lJM5m69MU6RoRRIAtJj7OpoZQ==
X-Received: by 2002:a05:600c:1d28:b0:41a:4331:89c with SMTP id
 l40-20020a05600c1d2800b0041a4331089cmr55545wms.2.1713820656705; Mon, 22 Apr
 2024 14:17:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com>
 <20240422090310.3311429-4-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240422090310.3311429-4-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 22 Apr 2024 14:17:19 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XWNf6-Qtf91EkDZhLzD0J_SpSEmm=APjuaqV099QDj+w@mail.gmail.com>
Message-ID: <CAD=FV=XWNf6-Qtf91EkDZhLzD0J_SpSEmm=APjuaqV099QDj+w@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] arm64: defconfig: Enable HIMAX_HX83102 panel
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Apr 22, 2024 at 2:03=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> DRM_PANEL_HIMAX_HX83102 is being split out from DRM_PANEL_BOE_TV101WUM_NL=
6.
> Since the arm64 defconfig had the BOE panel driver enabled, let's also
> enable the himax driver.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

