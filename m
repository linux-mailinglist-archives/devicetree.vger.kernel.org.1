Return-Path: <devicetree+bounces-86597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D875D934EB7
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 16:07:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 72A961F21202
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 14:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D101D13FD84;
	Thu, 18 Jul 2024 14:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cu5tTbyL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BEA2AEE3
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 14:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721311670; cv=none; b=gkHwctvy5CPIXuxQOEYPIVOJKbnUTbKygwY3TIEN2qvT5zalzJE/jcFafdXvejgbLfmQWhP2TovaXY5CxKA09fXAEhcOSXDWBe/4b7WOzrEwrm1sRXTSNd3ClPve+gRusn6zwr5+9ZENxXPrd7Fc1txdeuQ6Gjo4flNofilU+DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721311670; c=relaxed/simple;
	bh=ginLRc2xnW0A1GmvhnVox7UgRQTqCO1LX3sjJ+8BHiE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F8BW9oQ7ntFvUaH5ifuV8JzRtzjRdSBfVKZ7XbN+6ibkJAjPji1ELnunQlh1uywgBq50qf/GHJmC6DsrRpIFT2G6foz+8fM6VmqIu6j6hvnZBzeLcXzpl+vyqY82vDRZ33PgIq58kVObefFkEuR/BopkAVOOe1qDo4GXnokzXVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cu5tTbyL; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5cebf0b37fcso411337eaf.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 07:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721311668; x=1721916468; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ginLRc2xnW0A1GmvhnVox7UgRQTqCO1LX3sjJ+8BHiE=;
        b=cu5tTbyLe7r3nQTDeDM7vxST5dJNTYCN2DAwqtmqXOIxqypZM3ben6Bs21WcA6qFLd
         +ZH8jnwGD5IB3129cJdQRejYi1yZ5JR60hiAmMkT+vxfFaJirtQIEj8bAPH2ooI1uXye
         r8mTJQ8Y3wEqx6cu/TAsh9Fk18MMxWflfwufznikbbVd/+MmnbbJEyscPiJfSmGYZcf9
         8SMLRy9VuwhBbT2q1RZO1RVgbvk+gJzlLxthbUFMqZMHkQTCDp1kpG+kaGdZ4WTM6gFc
         GWWdp8I73ogeDA1MBEzImM+68bHBMyHHrwdiZ1wa64YYdbs4zVdCer7ZSMNjPdV+G5qb
         jpMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721311668; x=1721916468;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ginLRc2xnW0A1GmvhnVox7UgRQTqCO1LX3sjJ+8BHiE=;
        b=e81jmzXNBxtg0xL4IDbbHhLbhzhTpj8ytaNAS2MBWDukt0nYSyMRfbM+XRnGf0cFu3
         STltHr4Y8r/4hEQP+fhp/P754jzkw07Nwuu2q44Li04GBWToJicRJRYptMgg0jlTbuub
         X7mOwHp5cgte5ezhjN0jP37+a+UcDrUOn07gghgPIG/McU404oP6exVWTlmKIPFxHgD0
         0xB/MewfW6Nxdosmb1uKuIp/TcSURaJ1oYG5zUAVgyVDPIp4cpD7fF7AjIcq6IVM+7Y1
         mVi6tuY2fPzvWwn3QM0GwJMzeiA+OG3tU69Qn9hR8xrxLkWv+5GrTg0X4HblrM8KvP+D
         iG3A==
X-Forwarded-Encrypted: i=1; AJvYcCVtwgaldy6eGCAl8Fh0oplsiskz+Kkjr4oEv5A3Ql8cPeL57zMF8UM917d72TbpS9zTV1aObXIdMrtnNzPO5UTy0FR2uMgEzeWM8w==
X-Gm-Message-State: AOJu0YyvcCTRNo5fuJDF1WZItFEi3hBQp4ZyCbff/g+Fd7h7KNnwHoek
	39ulBrXYAJfRhpzlJBuyedGCu6gpbuM+q5ujuEBoo8etb2bbdD6bUb9kdvAhX+pZMnRXegGiHDJ
	Ij1IS4f+vVlu1Dv0B6iaVWqJbWDKoV+FSTh8HpQ==
X-Google-Smtp-Source: AGHT+IGo7kWj6LRgg50CbX2vgq5HYM6cG6nd+ssW8D7KH6ek0XiRt2YeGDCasRSYvUJvO2GbobbvUcmVkiUp+te3/4E=
X-Received: by 2002:a05:6358:2909:b0:1a6:b070:a58e with SMTP id
 e5c5f4694b2df-1aca9eb8939mr243714255d.9.1721311668209; Thu, 18 Jul 2024
 07:07:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240718125545.2238857-1-amit.pundir@linaro.org>
 <qitt2j5hw6pax7yekdooutxebhkznhdv3aafnhkysr5fjcbmd7@xqbp7h3ld4gs>
 <CAMi1Hd1wzvzStEv2zoNocvYBkJDis27vzCDcBtMruQQ5TdOkDw@mail.gmail.com> <CAA8EJpo1go=4zU0zvi_dd8ST+phP7+aMJz+sM-Jerwpf6s2=Hg@mail.gmail.com>
In-Reply-To: <CAA8EJpo1go=4zU0zvi_dd8ST+phP7+aMJz+sM-Jerwpf6s2=Hg@mail.gmail.com>
From: Amit Pundir <amit.pundir@linaro.org>
Date: Thu, 18 Jul 2024 19:37:12 +0530
Message-ID: <CAMi1Hd14AeScwEjLt0Z68yatum_gnFKBwgndK-KYqd5Ox0G0Ow@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550-hdk: add the Wifi node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, dt <devicetree@vger.kernel.org>, 
	lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 18 Jul 2024 at 19:34, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, 18 Jul 2024 at 16:56, Amit Pundir <amit.pundir@linaro.org> wrote:
> >
> > On Thu, 18 Jul 2024 at 18:36, Dmitry Baryshkov
> > <dmitry.baryshkov@linaro.org> wrote:
> > >
> > > On Thu, Jul 18, 2024 at 06:25:45PM GMT, Amit Pundir wrote:
> > > > Describe the ath12k WLAN on-board the WCN7850 module present on the
> > > > board.
> > > >
> > > > Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> > > > ---
> > > > v2: Changes suggested by Neil
> > >
> > > Which changes?
> >
> > Neil suggested a few changes to enable 'bt-enable-gpios' in
> > sm8550-hdk, now that the hci_qca driver uses the power sequencer for
>
> You should have described such changes in the changelog. Note, no need
> to send v3 just for this reason.

Noted. I'll keep that in mind for the next time. Thanks Dmitry.

>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> > wcn7850 https://lore.kernel.org/lkml/d3416be5-b97f-4db6-a779-9c436e41dd72@linaro.org/
> >
> > Similar to this sm8650-qrd change
> > https://lore.kernel.org/all/20240709-hci_qca_refactor-v3-6-5f48ca001fed@linaro.org/
>
>
> --
> With best wishes
> Dmitry

