Return-Path: <devicetree+bounces-85833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A029318A6
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 18:41:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 013492828CE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 16:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 695EA481AA;
	Mon, 15 Jul 2024 16:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sHqCNBNa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B208C481D5
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721061636; cv=none; b=Sk5pCqRrdVFyPJtDP+MmoGZUKzfynZh2vFQz2+lB/ZJiR3aHNei1J4TOPCQqjzLTAnNSsUlIRMldcLmUQwpvfjyo7Ltga5ABUmLo3ZVvW9kzIcQksXsBNTssitEeRtaz9JCvuYPS7jP9fjH3EK+QCHaSamX8z2xYAiob33xR4pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721061636; c=relaxed/simple;
	bh=9f8Qe6ie90wo/DDF464tuizO4E1SnfvAfFUf1QUmyUw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BGoRURyI4pAeIJe1AKKmvS7o8BS3UmHQaWFppwso2VBFq28gfJq5ZI68WgCxutndCwMry8MPszMy9faDGx3QUW7TU4nvmsRsW1OBA3Um0sEV0t5lIYcU1/rqnAiIp/1fhGXIJXRIebzVf8Jd+pPPot6/O5f9g6tl+kr3rKqhKdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sHqCNBNa; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-65fdfd7b3deso18949197b3.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 09:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721061634; x=1721666434; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=en6+puohAfynQkBKEllMr8eQHTxPNgc5bkI+PFZYQQg=;
        b=sHqCNBNa8O1RqbaNGyAVX4Q28wVhrwLbZRT8aSaCHz7aQuXll2sN5miMFWCC8kCW73
         GIIUBweicQpbB8OX+2h2I8ZRzGHumUs+Bre0aQg7PKil+PjsdowX0vG7zHy6yw/JlRKJ
         BZDm3UPvY6TIKfBP58ksnaHI3S78qSUQMRGGQ3yn5EqkZN2YM50UhzDtMB1NeWBSGf7t
         CwhCKfta5dWORwXgwGR/3UkX86fm+Gbu3kMuN+l6vpzzKW9UZTyLeP2CyJ5i12xxg5Jd
         JVOHHf6DYlvfpw7U8obdQri4H46LGPKPKWQ0rgUwaUAUbdgnh52se+rgykvTZIsxPCpP
         hArw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721061634; x=1721666434;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=en6+puohAfynQkBKEllMr8eQHTxPNgc5bkI+PFZYQQg=;
        b=olqPYEvfLhNpWMPdSrmrXc0Frl5UoQjyioVCjh+TKk74AbFsnz/wFgAgH5IXaJugbp
         GodXSqYa6YcJ+ErkinlgOkIdMoNW/yb20rqOAnWWYd1KFTdQiGgc1pp//9/jeWJhXCF4
         uPunC5BTrzA6tgbdbiqbVDgnV+xrxPUmcTxVqBZDGpIoGJAeBG9/s9qiSZj+SRhIWPne
         vY6bZoRy37tHJh14dQReILZm3DL1rwJFCLGnHID9uUJ2kUcjgMebvD87qY//NKxfYjPH
         AkUHFjTsOEImuhekDxAojDs/g6j6z5SleCCBpZLjI6e++oWk/PIFmPLhmSWMRX9SWx5o
         8GNQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0eqy0nVBFhJAT324hqQmd3fwM8NAzjA0JATPE/lyrvWllQgvRQuVeDGKX3wN4Z4mBEMQQy6Qwq/q9q7Ik1lBZGKuvboabNS59TQ==
X-Gm-Message-State: AOJu0YzevLKyFbwz7HcS3ukTvMPUoUcA7N25/R+jTX3D89M08isz3a2F
	GDdfNRP4dbqRuTuYLKQbF7rBRkY7SVDbxXXYIOIuEetv5lsOWnDQRqm1Rx55IUMd/ozlswkOhSP
	s9yb44uq07ivAv+5w8YZ2/pnfUexLsu70tPyP6w==
X-Google-Smtp-Source: AGHT+IFv3aNlqZTAbfEk3+SJkAU1VQZMZYGpG/ZTnboW7SE4kuCdio6mZh3pytXItsiGKqcKgm2mh9g14iNQpuvfWas=
X-Received: by 2002:a05:690c:97:b0:63b:f919:2e89 with SMTP id
 00721157ae682-66353dcf097mr646877b3.2.1721061633716; Mon, 15 Jul 2024
 09:40:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715-x1e8-zap-name-v1-1-b66df09d0b65@linaro.org> <ZpU1vxsYUdVg9VGv@hovoldconsulting.com>
In-Reply-To: <ZpU1vxsYUdVg9VGv@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Jul 2024 19:40:22 +0300
Message-ID: <CAA8EJprKTm-FzDjUFwi9jKaHJ121W2m655-GN3DjzB9rSOpJ=Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: disable GPU on x1e80100 by default
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Akhil P Oommen <quic_akhilpo@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Jul 2024 at 17:44, Johan Hovold <johan@kernel.org> wrote:
>
> On Mon, Jul 15, 2024 at 05:23:58PM +0300, Dmitry Baryshkov wrote:
> > The GPU on X1E80100 requires ZAP 'shader' file to be useful. Since the
> > file is signed by the OEM keys and might be not available by default,
> > disable the GPU node and drop the firmware name from the x1e80100.dtsi
> > file. Devices not being fused to use OEM keys can specify generic
> > location at `qcom/x1e80100/gen70500_zap.mbn` while enabling the GPU.
>
> Please enable the GPU for the CRD as part of this patch (e.g. move the
> fw name property there).

I can not just move the property, as it is going to have a different
value. I think GPU enablement for CRD should come as a separate patch.

-- 
With best wishes
Dmitry

