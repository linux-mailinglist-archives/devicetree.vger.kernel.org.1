Return-Path: <devicetree+bounces-48200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46213870ACF
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 20:37:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C04B8286BAB
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 19:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 263CF79941;
	Mon,  4 Mar 2024 19:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l0z4duNt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF0843AC3
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 19:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709581034; cv=none; b=p9d2xUalk7Ix5UY+TJYdONOhMhVaZdf+y2pKNvusWx6qLHGKHuTbyDDNpI5Q3Z0x1x+wKJjMY20azZ/NOTMJCbVkOIZWx1sAqvo8YTmPoZVZ6RMFyVh3dEylREQj5h23qpAA0gyz3akk2RRB2JEDU+31uQKf6ra3C7nPNtPXuXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709581034; c=relaxed/simple;
	bh=zSZR47L3Q06bALQAjz7UncLPKPhky0zHAZkotbQNt6A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LUCgvp+Wmju8YNiQL7VMnc6xc2WPOjYtU98LNX27D9fyPhszk88xnvkqDC9KYa1gnkpY7Zpk20DDdBRo5slEWii3eANroml6fvceyzzt1zy2ZEVfp+LfUxiAqaCJ4CV53IP/h3P2rYRLFXY2min2wsKyuwLNzgRgS5Tgimrm5O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l0z4duNt; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-dccb1421bdeso5205894276.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 11:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709581031; x=1710185831; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=J8fbNX2+d4xJt/r4hFrd8+YanInaSaY5k4I1MnWjcGk=;
        b=l0z4duNtw3zloCFl5g7OB5ofhZctea9yY0BlKOw0HEIKf4WXshuib578vXtEL2EwvH
         GPPuO/pCkH8Bi3+kaZQeZXahWPwE0OG6NNnxGmDbMyNRfkYdfS//KcnNRxTxAKr/tMPi
         Xs9MPAXgHwfqLb2RM03F9hmVpPgIMFICDJSiG/l2ziJUOUc95KQ8qW9fKi3eFgNojwRu
         zJ5EMRxALoaPqFW/TimTbImtJr+Wxt/QUOiNAxWDXMB9Tp5NbMyOG8WkGKopsdV6dEwz
         UikGYJijpm4Ws1rwtL+E5gkiHmpbHelF5Ry0/ik4Y6I71GrHDJoviq/yClIWGNQFiCpm
         hZwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709581031; x=1710185831;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J8fbNX2+d4xJt/r4hFrd8+YanInaSaY5k4I1MnWjcGk=;
        b=ukJaDSetWhRjP802ua8weqPGGwVne2c0uBFnFkvR8SYQtUTuvt5fTEFj/VJVf0zL/V
         MWoy5sUyZjMke885j4fVz9dhDY+jzniTDNRsJsCXCP8I97KvblNkjWkNHfhVKqrra8xZ
         aXaMMRs3XhVeOywmZ/b6ia09iQQZ2qEBUMDwz4z6oZj3wyXNJsO1D8P9+sVFng03blx5
         aaNiPpJcaq2Wd6fIqKxtP59fulqbZehR4lChpEaez7/ZopLXBznQ3BkpzJkxoMFVlroM
         NRnIJUag/81nRE17u//JzeOV0jBV458Tm/FB3Nh4ykxpk7Plq3y+IfRKBRFgaQLghs+G
         F8OQ==
X-Forwarded-Encrypted: i=1; AJvYcCUohnPqsnTc3MSgDWEKzoSJFGZyCh2e3+F75rdNB7uIHzbx9Embs4TG15/07Y+0wYFpvesJ8e95OCiKFJFsQXpKoWimHWydEtcpSg==
X-Gm-Message-State: AOJu0Yyuj0pbej4U0QtnLZjeTwTvaUdC1GmluUQ0YJnRe9e4Qknb+IRl
	PLOdbV+LS4NEv/8hz0JKftL5sLh7FeOzH10SLTeCF1wQXk59JrMMz4EtQKy2jlKMktZtqQXrX78
	5mruRfIcvJudarvAe0ZiUnbr9CjXtvbH8xvs2TQ==
X-Google-Smtp-Source: AGHT+IFskfMkvbhuL7lWERfrGXnJYipiwsI8cQNOg7iPvazOr109t1rBNvJLaoiLtPJsynrOADgfWnkXxFwLlxr+9KE=
X-Received: by 2002:a05:6902:544:b0:dcc:9e88:b15 with SMTP id
 z4-20020a056902054400b00dcc9e880b15mr7619178ybs.41.1709581031338; Mon, 04 Mar
 2024 11:37:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <14daa98e-7fd3-4ebb-87bb-5d2c1fba679f@freebox.fr>
 <b8de96c7-cbb6-4a09-a4d4-2c11b3ab3e01@freebox.fr> <871q8wk7o3.fsf@kernel.org>
 <3392f356-7b19-483d-b9f8-3bd84068fa52@freebox.fr> <87wmqoilzf.fsf@kernel.org>
 <20240229-ageless-primal-7a0544420949@spud> <68a49964-7c05-4575-a4f3-35848c08fefc@freebox.fr>
 <20240304-component-animator-e2ee0ab7574a@spud>
In-Reply-To: <20240304-component-animator-e2ee0ab7574a@spud>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Mar 2024 21:37:00 +0200
Message-ID: <CAA8EJpq5HQaO2E2Pd7yqUTsWyQ_pLDdyoWng8QmWTzYn5fv3PQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: net: wireless: ath10k: add
 qcom,no-msa-ready-indicator prop
To: Conor Dooley <conor@kernel.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, Kalle Valo <kvalo@kernel.org>, 
	Jeff Johnson <quic_jjohnson@quicinc.com>, ath10k <ath10k@lists.infradead.org>, 
	wireless <linux-wireless@vger.kernel.org>, DT <devicetree@vger.kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Jami Kettunen <jamipkettunen@gmail.com>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 4 Mar 2024 at 21:34, Conor Dooley <conor@kernel.org> wrote:
>
> On Mon, Mar 04, 2024 at 05:21:37PM +0100, Marc Gonzalez wrote:
> > On 29/02/2024 19:40, Conor Dooley wrote:
> >
> > > On Wed, Feb 28, 2024 at 06:37:08PM +0200, Kalle Valo wrote:
> > >
> > >> Marc Gonzalez wrote:
> > >>
> > >>> As mentioned in my other reply, there are several msm8998-based
> > >>> devices affected by this issue. Is it not appropriate to consider
> > >>> a kernel-based work-around?
> > >>
> > >> Sorry, not following you here. But I'll try to answer anyway:
> > >>
> > >> I have understood that Device Tree is supposed to describe hardware, not
> > >> software. This is why having this property in DT does not look right
> > >> place for this. For example, if the ath10k firmware is fixed then DT
> > >> would have to be changed even though nothing changed in hardware. But of
> > >> course DT maintainers have the final say.
> > >
> > > I dunno, if the firmware affects the functionality of the hardware in a
> > > way that cannot be detected from the operating system at runtime how
> > > else is it supposed to deal with that?
> > > The devicetree is supposed to describe hardware, yes, but at a certain
> > > point the line between firmware and hardware is invisible :)
> > > Not describing software is mostly about not using it to determine
> > > software policy in the operating system.
> >
> > Recording here what was discussed a few days ago on IRC:
> >
> > If all msm8998 boards are affected, then it /might/ make sense
> > to work around the issue for ALL msm8998 boards:
> >
> > diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
> > index 0776e79b25f3a..9da06da518fb6 100644
> > --- a/drivers/net/wireless/ath/ath10k/qmi.c
> > +++ b/drivers/net/wireless/ath/ath10k/qmi.c
> > @@ -1076,6 +1076,9 @@ int ath10k_qmi_init(struct ath10k *ar, u32 msa_size)
> >       qmi->ar = ar;
> >       ar_snoc->qmi = qmi;
> >
> > +     if (of_device_is_compatible(of_root, "qcom,msm8998")
> > +             qmi->no_point_in_waiting_for_msa_ready_indicator = true;
> > +
> >       if (of_property_read_bool(dev->of_node, "qcom,msa-fixed-perm"))
> >               qmi->msa_fixed_perm = true;
> >
> >
> > Thus, anyone porting an msm8998 board to mainline would automatically
> > get the work-around, without having to hunt down the feature bit,
> > and tweak the FW files.
>
> How come the root node comes into this, don't you have a soc-specific
> compatible for the integration on this SoC?

No. Ath10k uses WiFi SoC as an SoC designator rather than the main SoC.

My 2c: I think it's easier to fix the firmware features bits, it's
more future proof (and error proof).

> (I am assuming that this is not the SDIO variant, given then it'd not be
> fixed to this particular implementation)



-- 
With best wishes
Dmitry

