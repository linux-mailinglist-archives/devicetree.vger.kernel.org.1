Return-Path: <devicetree+bounces-143686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81549A2AEB0
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 18:18:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 868FF7A1F03
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 17:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4671023958D;
	Thu,  6 Feb 2025 17:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lGLoDYlW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728AB166F06
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 17:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738862292; cv=none; b=Pixzk5sCQlU+HI9LVIbvzEFSsY1fLrotaEx3s08vGVqc+akh0f7A9Trjk65/64QfYUESeFQfDLSu6vOKwei/RM3OqrJE7FF0W5jeDdUw8RJdY2xOxmEjQl9JNTk29UvbS04sy6v6M5PTr4pI4L1+cZ6YaxpKaTMmMOOTg/2OFmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738862292; c=relaxed/simple;
	bh=JOwGLgYsPSFwIYyb0GW3l8HYahDCo2F/VehNRyBqSTA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PD1Xm7082muEAjVcfGKX238t2VuMzeTz4uq9WdwJlt8i/NAdC+Vw+qz47Sb7L2ItB7I4Nv9JHEqF9OxwvSuUS14wlExhMb5s05HY+eBjgvlkH66i3/h1Q5+vxIGMX/nlBf+s+hX/MQpK4FzHyEL6Y8VcLciAvSjmMsbu/lC8brg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lGLoDYlW; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30761be8fa7so11057571fa.2
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 09:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1738862284; x=1739467084; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ueAPYpXJvcfTr/q+Id1IwP1ydGbx5eYC+BvmtKb8pog=;
        b=lGLoDYlWLu8AlzVMDBa8qdnRzATYict6Qtl1RDAmJSfWEA2Ev8TZ+nYzmobRmpngOe
         Ex6Gm0HeXIPR5xIzho2VJXOwrD6EJH3XhuX1am3q0hmrj2loGb6LHK1dQKMF9+TgwOaC
         HXK+g4BNEkY1xg3u3XNFwq3H0xQeAZzGFyXhg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738862284; x=1739467084;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ueAPYpXJvcfTr/q+Id1IwP1ydGbx5eYC+BvmtKb8pog=;
        b=oABqz6PVQC1N4YeOJk9MiK/cO5IFLiSHSeHc3Dm9CWTRrkFm84n8cY6kED8iwwG7gF
         XVvKpPc5zqzMamkgqElPQmyhj3ZNF7Rmdsm3KQLmPMswNP5dFwlnbRDR2CcpEr3M3DHj
         LPlMNlF4EvhMcHKNxBJhvpE7mwDVndQ/cC/kP+n8bacyI94NMHx4c3ro2HvvSRrRYG2O
         WiaxJlG9xu4b0Rkv76LZSZwXsg/X8DE//OpNpRa2JQ6NmhSf1gH+eEPEDIXFiD1V8K82
         i1Sem7tzLdXGnu+tN1p10L2z2cHesDVIbKlGKuHuIFspTyi7cwZdqLwbDBq0EKkCojWc
         qIEw==
X-Forwarded-Encrypted: i=1; AJvYcCW0/X5LA2hgT59Wces7uQ9HvtiyNfzp0s3rU3aPTwk1maWq87HjkVtlQf/+fLW7JGqUmMQoHBpXwFYd@vger.kernel.org
X-Gm-Message-State: AOJu0YyaLPnZgVoKXEdV71iK2zKkMWF2yE8nVm7NrPoJpaMzL8sup3fE
	R3LcrMvwmHbzEAdozmRSxYq+ddOnO7K2vq8qr2YEj4d96sT0481eOWyjsXVWW0PpBapOwWtwb4H
	m2A==
X-Gm-Gg: ASbGnctcKvCN77hzAfg15JBiGFX+ui9Irk0wqUKaxIrTJSrym1oQV+wnERX3hMMbitD
	/F3mPVpLTuf3e2Y++t6WaPZFEFhVXXL+ZnPgj4cSweeghz5fZZw6oMFc3+WfnI3RsBKG0pUrHh5
	uQmUv3wJm6QlSF1DcVe6uVjjfA3JzfnhMGOl/kpMPs6+bOE33qx7PadiSXfwVM8Fx2w7097WTM3
	hm0QgDS4HAXR/yTzzU/tyitla5crBblw00CAN50ZCw9DkDltZT5l46o/rd8kkVr/ESwohmIkWep
	NLc6VdhwPXQTcW2W9ssU0feSVqEYB9lV4xHGEaepi9uAOOTTKfC8gMo=
X-Google-Smtp-Source: AGHT+IHUXxhF3yv4AKCK3jUmJ70CW6bCURWYzE/GsP+kKzbmtHNMPNNYK+OXYgM3qd8jFukybVkZ4g==
X-Received: by 2002:a2e:a554:0:b0:302:3021:9b29 with SMTP id 38308e7fff4ca-307cf30166dmr22737411fa.4.1738862284537;
        Thu, 06 Feb 2025 09:18:04 -0800 (PST)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de2bad67sm1831411fa.77.2025.02.06.09.17.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 09:18:00 -0800 (PST)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5401c52000dso1211545e87.3
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 09:17:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX9Q4huL0rwWDVKr0d8kwtcZV2lYb2extQBhCWSqxTGlmMrhWN8MFT72WrwgBtS0S0mDqfmYvp/wuCX@vger.kernel.org
X-Received: by 2002:a05:6512:280e:b0:540:1f75:1b05 with SMTP id
 2adb3069b0e04-54405a181d4mr2811882e87.19.1738862275685; Thu, 06 Feb 2025
 09:17:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
 <20250206131300.1295111-3-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250206131300.1295111-3-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 6 Feb 2025 09:17:38 -0800
X-Gmail-Original-Message-ID: <CAD=FV=W0jvGESB59f_Hnz3tL8y37YdX77nx0hO+e0KK5TngPpQ@mail.gmail.com>
X-Gm-Features: AWEUYZkNkoAXZHBbfT2iBqqpLsWvoirtpsqxceL-idOINtHwPQs__7CAWjInIok
Message-ID: <CAD=FV=W0jvGESB59f_Hnz3tL8y37YdX77nx0hO+e0KK5TngPpQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: panel: Add compatible for
 CSOT PNA957QT1-1
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Feb 6, 2025 at 5:13=E2=80=AFAM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> Add a new compatible for the panel CSOT PNA957QT1-1. This panel uses
> HX83102 IC, so add the compatible to the hx83102 binding files.
>
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
>  1 file changed, 2 insertions(+)

I haven't personally run this through DT validation, but this looks
good to me from a visual inspection.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I would assume this lands through the drm-misc tree and it'll meet up
with the vendor-prefix patch in mainline. That'll cause a temporary
schema validation error in drm-misc but I think that's OK, right? I
also wouldn't personally object to this landing through the DT
bindings tree. As a simple drm-misc committer I'm not sure I have the
official authority to ack that, but I've given my blessing for stuff
like this in the past and haven't been yelled at yet.

For now, I'll wait for a DT maintainer to give it a review and guidance.

-Doug

