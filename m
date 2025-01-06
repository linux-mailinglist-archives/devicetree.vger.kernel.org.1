Return-Path: <devicetree+bounces-135856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CECA02812
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 15:32:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86BE116116F
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 14:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1985342A9B;
	Mon,  6 Jan 2025 14:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UWM31ldU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12B71DE4C5
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 14:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736173962; cv=none; b=O7J7PNlHyiRl8BYIYe0ML8SLZbuGoyOTG55m9gZeRSABNApTexU03s7Vc70l0DO/N/ItVpwpyDMzpLKJdoFGmG/biRC4k6u00yVD0wVEZsQORKp1acM6YG5dNHWmyNfhqkgz0dgRBTOYm8UljVW/tq3a+V/h3EzhpafqQgpiIIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736173962; c=relaxed/simple;
	bh=OgIdAy9ogkyyYhvDYj37F63RA/Xw1WasXt0F//d23wo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X55Vlm6WuNx3okO/e3r7T/J3LWZjxXawxoxcS3NNnD+RDLFDwf08nYK/Seiz0anr3z3XhKh8BqJnBB3F7nNgX2GUejcN5RRVSTIuhSfOycdbR3U3xtFUOsCwVwcKnecXOI+96PkT/paU2sdDDOzcjVhtpORsHaytxz7Jk8sjGSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UWM31ldU; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e46ebe19489so18293427276.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 06:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736173959; x=1736778759; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fJSZIXJSkHeJBkdcb6ya9oMRq6rzriaUtPDL7vlAVQw=;
        b=UWM31ldUkg2/0JHSrcvXMtchL8rqgOTTSAPQnlAcB1/ScnxpPYfmlx0pcfEMusie4a
         J+I4a8ne87KqQ/vrNJDxfPzfNB8lG/ZnTg6UG4CU9jQHZCsFocrclMnF0KcvWC5kRF4n
         65vvIuVI3sMfp5JQVcfSPod6DsuzzLXVPj7xwMIZte3t2/zSpDIo4jHh7cHb8BVmSOxG
         tx2q588wsH7V1VwMmxurzraPmg35tjtYbKx59KmZTglqDcH0n1LkkaabyEIF45qSBVYp
         BQL98bA10D7QCkeFMz3YB+4O0ApS4NXs5dY53oS8AOUUV7APewJjomOebGjY4L1vsioT
         dF6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736173959; x=1736778759;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fJSZIXJSkHeJBkdcb6ya9oMRq6rzriaUtPDL7vlAVQw=;
        b=aZGhZIvPKi1+7kXVakLpWhqWuQ0DKOLTvHNb2ylMOKDAyZcAWQtt37ppgQ8Ll2LUMs
         s9vEWtS9fu85K5YYY/SfgYdEKpdhrn0lXMwSP3AQ6r5YorNmfIleS8GLYGrJYS/R5NlJ
         sOe6gCzKyKFKqykSqfZkJ+/UKgmYX32CELTdJw+KcN1im+s3N+C3o7Y6lz/3eaEQigne
         munHs+cnvGipK5rlVZYqqO5mqLTFOI3nuHFmpApFco3frT30Vazj8n237Y8B8kN+11/t
         BUuu/Ez+U08IReyfblgs/6fmkd0aALshfNHppilmaMzurFSSN/oSvUgI7VLP9oPpLrwO
         vxwA==
X-Forwarded-Encrypted: i=1; AJvYcCWc8KJm9/BoF8E4OnZvx71edQetflQ8hRIuGLavXdxWhD9+wHXdqQ1/Rnl+JVZ0l1qy6QyPc6ypebsz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7X7tgx1lyMre+mieG7NKariLGjU8ZhiZ/SwFd17E44LD/Pty5
	ohe+LA8xx7FjCAGz9qv3bMc/Q4ajzYsQ0EzDhpOUinGYTd0zVuDtjvngVMzhEOLgxVU8D9vETzx
	QVqc/R5GrOZj0B0hsXZudPKZcHSeGMVu+HETchQ==
X-Gm-Gg: ASbGncu1YFIbI7wLtTHCH4zFrkBhiOoyBHe/iKUYr1O3LR7jddBflMFv1PdpPv4tYt6
	RrynWDlgaPPnrOp3k6wwOhinC9F+LrtNrT/2hfe3hyDl2qzHPv8XeW2BR4TQXS4OBsnPNwg==
X-Google-Smtp-Source: AGHT+IHmvXuwvGSdBr59QFJmGXR85prnYmkeJd5ryoQXMvTWEemEChNFf5E52WxYsQ1l+y7kBas5ggRo21B4VIcMRB4=
X-Received: by 2002:a05:690c:7106:b0:6ef:7640:e18a with SMTP id
 00721157ae682-6f3f820f277mr479003527b3.31.1736173959645; Mon, 06 Jan 2025
 06:32:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-14-damon.ding@rock-chips.com> <e52pbjnusvuoqiyoorjr5msrfmgeqs2jt5sk6zcesvzy7cszzk@fzrtpsjoklgu>
 <e2a18f8c-dc38-4b12-968e-dd369cb34cb4@rock-chips.com>
In-Reply-To: <e2a18f8c-dc38-4b12-968e-dd369cb34cb4@rock-chips.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Jan 2025 14:09:34 +0200
Message-ID: <CAA8EJpo5aE4itm8MTeCpqns5eLuWj0TaZW5qwrw02_Zc73NNiw@mail.gmail.com>
Subject: Re: [PATCH v4 13/17] drm/bridge: analogix_dp: Convert
 &analogix_dp_device.aux into a pointer
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com, 
	cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Jan 2025 at 13:04, Damon Ding <damon.ding@rock-chips.com> wrote:
>
> Hi Dmitry,
>
> On 2024/12/30 21:35, Dmitry Baryshkov wrote:
> > On Thu, Dec 26, 2024 at 02:33:09PM +0800, Damon Ding wrote:
> >> With the previous patch related to the support of getting panel from
> >> the DP AUX bus, the &analogix_dp_device.aux can be obtained from the
> >> &analogix_dp_plat_data.aux.
> >>
> >> Furthermore, the assignment of &analogix_dp_plat_data.connector is
> >> intended to obtain the pointer of struct analogix_dp_device within the
> >> analogix_dpaux_transfer() function.
> >>
> >> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >> ---
> >>   .../drm/bridge/analogix/analogix_dp_core.c    | 92 ++++++++++---------
> >>   .../drm/bridge/analogix/analogix_dp_core.h    |  2 +-
> >>   .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  2 +-
> >>   3 files changed, 50 insertions(+), 46 deletions(-)
> >>
> >
> > [...]
> >
> >> @@ -1127,6 +1128,7 @@ static int analogix_dp_bridge_attach(struct drm_bridge *bridge,
> >>
> >>      if (!dp->plat_data->skip_connector) {
> >>              connector = &dp->connector;
> >> +            dp->plat_data->connector = &dp->connector;
> >>              connector->polled = DRM_CONNECTOR_POLL_HPD;
> >>
> >>              ret = drm_connector_init(dp->drm_dev, connector,
> >> @@ -1535,7 +1537,9 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
> >>   static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
> >>                                     struct drm_dp_aux_msg *msg)
> >>   {
> >> -    struct analogix_dp_device *dp = to_dp(aux);
> >> +    struct analogix_dp_plat_data *plat_data = to_pdata(aux);
> >> +    struct drm_connector *connector = plat_data->connector;
> >> +    struct analogix_dp_device *dp = to_dp(connector);
> >
> > I see that Analogix DP driver doesn't support
> > DRM_BRIDGE_ATTACH_NO_CONNECTOR, but at the same time I don't think this
> > is the step in the right direction. Instead please keep the AUX bus on
> > the Analogix side and add an API to go from struct drm_dp_aux to struct
> > analogix_dp_plat_data. Then your done_probing() callback can use that
> > function.
> >
>
> It is truly a more concise way.
>
> In the next version, I will add the following functions on the Analogix
> side in order to get the pointers of struct analogix_dp_plat_data and
> struct drm_dp_aux on the Rockchip side. And the way has already been
> verified.

LGTM, thank you.

>
> struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct
> drm_dp_aux *aux)
> {
>         struct analogix_dp_device *dp = to_dp(aux);
>
>         return dp->plat_data;
> }
> EXPORT_SYMBOL_GPL(analogix_dp_aux_to_plat_data);
>
> struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp)
> {
>         return &dp->aux;
> }
> EXPORT_SYMBOL_GPL(analogix_dp_get_aux);
>
> >>      int ret;
> >>
> >>      pm_runtime_get_sync(dp->dev);
> >>
> >
>
> Best regards
> Damon
>


-- 
With best wishes
Dmitry

