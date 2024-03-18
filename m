Return-Path: <devicetree+bounces-51394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A25987F245
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 22:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5223B20E7B
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 21:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A33ED59166;
	Mon, 18 Mar 2024 21:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ndoDeqAA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0424659143
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 21:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710797787; cv=none; b=tlaJjIX/f5CfGRlHaLauMfg30SOci5HNMMm5TKfGt6zsEPRVMBKDk6dhrf0MHX9SdafOXtFiM6AQ8OiCxXFhGY1+eA//SiM86ui8fQoibchV88Ej07rVr9tStWYl32/Z+1N+09VPvRNABq47v6WhYPQba4+e5LnMFsgi0/EEqMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710797787; c=relaxed/simple;
	bh=oN3ajsjXsAF9HfH4yepxydlxom6CmZW2+KuqWPApvOc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PwFpmDXrGc5FtEZg8irAxxD6Eh5aH+u8LYddnWqHnMZ+CElHUketS65ha0vUB1VNcF9Lb5oJXxSF26qm1rjg6pYi+8IjbGJq2dDx+Q/4ddUzvHGcxWY8P6IWDMs8QbTnf+PaeMlTElXg87B5fkAu5mstIETkb8HEl1O/vwFuL/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ndoDeqAA; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-789f50b3e40so139985785a.1
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 14:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710797784; x=1711402584; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oN3ajsjXsAF9HfH4yepxydlxom6CmZW2+KuqWPApvOc=;
        b=ndoDeqAAmWPfhfHCOjHbkDqMkYVpmkIoIfIiqDXm2dhHyMpWpRWM2yASK3kJZ8msrt
         Zd9pguj0VC/4WwyyPpK7h5ix2klg2rzxRM3EME0LTSXyh2rh+3VX0CMJtIYnE4cj57TN
         ceOV/tSJo0Hh28sibMwZrpR7BQKs9XVGK4bVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710797784; x=1711402584;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oN3ajsjXsAF9HfH4yepxydlxom6CmZW2+KuqWPApvOc=;
        b=U72HktsLTmMWpmKNjxJ5GG7JzaarGAuGDbJIXkZMpJTBmqPxwByJjnQlfkbddBw55U
         G8jzwAweFsd8KBdbrAcqOuFAmMyZa1mqi/Ul56vRp73nEQ0WPUwpTYYn8hQCvQyRUJ5q
         79gqmO+e6f765Z3uK8kPdB30xuduITxkku5YeRIjutmxhtjomaawdxjkURZ+qoFgjqEL
         Rpla7KSvIexvnxlpaJxmeEtTYtof77D7kvH1ZOrjDdnsMF/5vCjF79yYHWBYof1CVUFh
         rsSoVpxplpWzxIMZYQXR6PW3ZbKMv5iQOeKQ2FYqHWV6O5nC1kLRdKjog37KIedDd8Qy
         BYiw==
X-Forwarded-Encrypted: i=1; AJvYcCUdS5RAPVXiLLJS3Rl9h7VXFb57FmlFL/nk+5j35NGJC15V3AVtt7NDeZessHzfLLtuISetI6wB+GslgtXFdDqC+suy9W0NTlO/xw==
X-Gm-Message-State: AOJu0YwqK6ZyFcwfYKNkG8mRPOS2ftcgepJwZehqMnm/nd8UsEBl7LmH
	rHfzeZdIDxrscxigkEboAdD0SVwbgKIY7TTLVlrHv98iHVoGMQW28XEwwxr3FgRiG1IOU2e6gto
	=
X-Google-Smtp-Source: AGHT+IHkQNYfEWpNHzNgoSFAfKRaaflRimlBbS8WdYszXpT+FTkl6HxZljyst8SSYsk5EbNrcdyuIQ==
X-Received: by 2002:ad4:576c:0:b0:691:abc:ade5 with SMTP id r12-20020ad4576c000000b006910abcade5mr1593604qvx.27.1710797783849;
        Mon, 18 Mar 2024 14:36:23 -0700 (PDT)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com. [209.85.160.172])
        by smtp.gmail.com with ESMTPSA id ff7-20020a0562140bc700b00691823f0980sm4138553qvb.0.2024.03.18.14.36.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 14:36:23 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-42ee0c326e8so77701cf.0
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 14:36:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXqRaBYqqizZCLa6btayLj13apP+H25aO5t9L4nJNuEX7TubqiSH5wXK/GLamtsIh3FUpuanr2lqx+rB2ah2Pf9zFqhb2MDuo4r5w==
X-Received: by 2002:a05:622a:50e:b0:430:b590:e88c with SMTP id
 l14-20020a05622a050e00b00430b590e88cmr111577qtx.6.1710797782513; Mon, 18 Mar
 2024 14:36:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1710418312-6559-1-git-send-email-quic_amrianan@quicinc.com>
 <1710418312-6559-3-git-send-email-quic_amrianan@quicinc.com>
 <f6f317d9-830d-4c38-998f-b229b3d9f95a@linaro.org> <20240316-germinate-browsing-6865db3a44d7@spud>
 <20240316-herring-skies-6ee1d4a9c0d2@spud>
In-Reply-To: <20240316-herring-skies-6ee1d4a9c0d2@spud>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 18 Mar 2024 14:36:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VZB9Dqsw6+2WBdWxaQVA9NgK_W2n0okBOU0haDMSogPw@mail.gmail.com>
Message-ID: <CAD=FV=VZB9Dqsw6+2WBdWxaQVA9NgK_W2n0okBOU0haDMSogPw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: qcom: Update DT bindings for multiple DT
To: Conor Dooley <conor@kernel.org>
Cc: Caleb Connolly <caleb.connolly@linaro.org>, Amrit Anand <quic_amrianan@quicinc.com>, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, kernel@quicinc.com, peter.griffin@linaro.org, 
	linux-riscv@lists.infradead.org, chrome-platform@lists.linux.dev, 
	linux-mediatek@lists.infradead.org, Simon Glass <sjg@chromium.org>, 
	Chen-Yu Tsai <wenst@chromium.org>, Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Mar 16, 2024 at 9:51=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Sat, Mar 16, 2024 at 04:20:03PM +0000, Conor Dooley wrote:
> > On Thu, Mar 14, 2024 at 02:20:38PM +0000, Caleb Connolly wrote:
> > > On 14/03/2024 12:11, Amrit Anand wrote:
> > > 2. A top level board-id property that isn't namespaced implies that i=
t
> > > isn't vendor specific, but the proposed implementation doesn't even
> > > pretend to be vendor agnostic.
> >
> > I pointed out previously that the Chromebook guys had some similar
> > issues with dtb selection when the OEM varies parts but there does not
> > seem to be any of them on CC here.
>
> That's maybe a bit harsh of me actually, I see that there's a
> chrome-platform address on CC, but I don't know if that's gonna reach
> the guys that work on these devices (Chen-Yu Tsai and Doug Anderson in
> particular).

Thanks for the CC. Yeah, I don't watch the "chrome-platform" list
myself, though maybe I should...

The Chromebook boot flow and how we've handled this so far is
documented in the kernel [1]. This method is what we've been using
(with slight modifications over the years) since the earlier ARM
Chromebooks and is, I believe, supported in both the depthcharge
loader (used in Chromebooks) and also in U-Boot, though it's possible
(?) that the U-Boot rules might vary ever so slightly. I haven't tried
using U-Boot to boot a Chromebook in years.

The current way things work for Chromebooks involves a heavy amount of
duplication. We bundle an entire "DTB" for every relevant
board/rev/sku combination even though many of those DTBs are 99% the
same as the other ones. The DTBs have been relatively small and we
compress them so this hasn't been a massive deal, but it's always been
on the TODO list to come up with a scheme to use DT overlays. We've
also talked about bundling a device tree that has the superset of
components and then using an in-kernel driver to set the status of
some components to okay and there is some overlap there in the
possible way to represent board variants. I think Chen-Yu is going to
talk about a few of these topics next month at EOSS [2].

In terms of looking at your specific proposal, it's definitely trying
to factor in a lot more things than the current one that Chromebooks
use. The Chromebook model was "simple" enough that we could just
leverage the compatible string, though the way we leverage it has
ended up controversial over the years. Yours is definitely too
complicated to work the same way. It seems like device tree overlays
would be a better fit? I'm not an expert so maybe this is already
solved somewhere, but I'd imagine the hard part is getting everyone to
agree on how to specify stuff in the DT overlay that allows the
bootloader to know whether to overlay it or not...

[1] https://docs.kernel.org/arch/arm/google/chromebook-boot-flow.html
[2] https://eoss24.sched.com/event/1aBGe/second-source-component-probing-on=
-device-tree-platforms-chen-yu-tsai-google-llc

