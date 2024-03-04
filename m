Return-Path: <devicetree+bounces-48204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 684E6870B16
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 20:59:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1283FB212EB
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 19:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CF8079DD8;
	Mon,  4 Mar 2024 19:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CbEZiD2/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D8D79DD2
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 19:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709582367; cv=none; b=ekOv/ZiUgZUvtZzTQp4UT4GvGLJukpOGEblbI8btLI3Z8gY/CJCuZg6P6OmeidbphSQbyccf7b8lmOmQqjFP5B4DJxqVTyME+z05oNsf/evtGjBTCrBYfheuGYTuXOFsClgIRuGbFkWsnJSJz0QF/vsHtil8jhSFMVRW1xDVW74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709582367; c=relaxed/simple;
	bh=GOoHfdkWRmHMiN8XDpnYIj0wPLSEn6LKn+e1lredcxk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a4JQI/JL3R52wjaaSBylOfBSWG06rF6VSs7T6ErpN4UNyAHqGnA7eZ2WPcxX9iQ9hsTB0ZmJhR7w1xOaR8RLNUhluTboutqkBHVUaYytodZcZ3TL7unsweW7Hb8C0O+OQZJm07cESgYQIO2SicFVodW5RadZvvO9Svce+lS+BSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CbEZiD2/; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-db3a09e96daso4319230276.3
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 11:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709582364; x=1710187164; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O7ApIryQlDH5kdwqHRhQLsTZp2nthteXM5vapyQjPNI=;
        b=CbEZiD2/XCY2kgN1a+REFqx2nAsaf4RG+ACMpbPNXALJwTy7vZGR5vx1oAW2TUqWYD
         RFcCUAaiHIElzYgYtyppSVfGKJi++TXSJRW4AmeCatohfun9l+vJlBvny5zrV949ENDM
         xZyAIBz3tE7oQNy3TYeSohYPb6izSNIBrM5fkSagipHm4/e5u4kL+QtNLsFr6u0zRDPU
         wYro7IguyZWxS0+1aesgD4ptMyiLcIHHmL5lVqkkMtlh61C5wJaCA8LLyye7OHeiWfeH
         WYDvc01i7+kCgxCEl7WhAGqdKP5ZrS2DnfLj+RZTJjGKiiCSS/Y9G6Z2rxzPe3LQEGAO
         Sg4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709582364; x=1710187164;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O7ApIryQlDH5kdwqHRhQLsTZp2nthteXM5vapyQjPNI=;
        b=inMxzx1Jj/SpiTZ5MMdPr84BnBFyACmydpfVVd+XySQSZXTsWdlrLOG+tpR8MXIfTD
         s4/J6n9ShZonvoJ+aCrQTnF/g68YfgMmEOVUtuYgfhmCHKzo/QQ4GU7S28IBQEOm9oFK
         KKhn8Xql0bGgGyoOvvheVXt5i4lP/il6LZOuHflKa3UMH2p9+GxIfMvDGaJ9jCycczWS
         bMzEyEx0+YWDNMfkf33NKQ7/AspJUXUb+JCKvwiXyN5snFquDiZvRfFZ8worsNdoMG4f
         ztCFsAwj51K/NVCT7OAosObRSyVvaaPahLNUpGjY/XZ1CMfdu0voZCeafI66HEWVfIQw
         hh8A==
X-Forwarded-Encrypted: i=1; AJvYcCUbayuUSI0RRvcoQYDoHIn861Fkb+lqlbZ2/u6b6KvWe7VP4TlkH8J5ggAzTPxYprf1Suz9EauAWH7k+P+WSWmCQsrcNme8KFDN1Q==
X-Gm-Message-State: AOJu0Yx87blVVCeVNLAODlqWRb1OETfthQXAmTGVXndtugeIX7eiair/
	7ZzZKjdND0q6G7eqJWqd3RvBWXrzJ9zh02YnSxVEO5QCMLEPuZFr2Yp2J7oxHt7hLu253AAgUjK
	zcvaQGYXzmrRzZsqec4OHNfImpd/evV7KHXVcEw==
X-Google-Smtp-Source: AGHT+IFnQw6N1M8E9h2cK2eBp9EVBI/pDE+40vH46B3fNHuxcXlR4tfux0fKhMgrMwCn2qTbqbQZ+zbrI98PG/Y2Aek=
X-Received: by 2002:a25:4b05:0:b0:dcc:7b05:4cbb with SMTP id
 y5-20020a254b05000000b00dcc7b054cbbmr7295644yba.31.1709582364453; Mon, 04 Mar
 2024 11:59:24 -0800 (PST)
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
 <20240304-component-animator-e2ee0ab7574a@spud> <CAA8EJpq5HQaO2E2Pd7yqUTsWyQ_pLDdyoWng8QmWTzYn5fv3PQ@mail.gmail.com>
 <20240304-superior-vicinity-3dc6ca88141a@spud>
In-Reply-To: <20240304-superior-vicinity-3dc6ca88141a@spud>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Mar 2024 21:59:13 +0200
Message-ID: <CAA8EJprMG=fY-G-X03bm7MMhcua9axjw5ULZz0efgHxwzgrdVg@mail.gmail.com>
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

On Mon, 4 Mar 2024 at 21:46, Conor Dooley <conor@kernel.org> wrote:
>
> On Mon, Mar 04, 2024 at 09:37:00PM +0200, Dmitry Baryshkov wrote:
> > On Mon, 4 Mar 2024 at 21:34, Conor Dooley <conor@kernel.org> wrote:
> > >
> > > On Mon, Mar 04, 2024 at 05:21:37PM +0100, Marc Gonzalez wrote:
> > > > On 29/02/2024 19:40, Conor Dooley wrote:
> > > >
> > > > > On Wed, Feb 28, 2024 at 06:37:08PM +0200, Kalle Valo wrote:
> > > > >
> > > > >> Marc Gonzalez wrote:
> > > > >>
> > > > >>> As mentioned in my other reply, there are several msm8998-based
> > > > >>> devices affected by this issue. Is it not appropriate to consider
> > > > >>> a kernel-based work-around?
> > > > >>
> > > > >> Sorry, not following you here. But I'll try to answer anyway:
> > > > >>
> > > > >> I have understood that Device Tree is supposed to describe hardware, not
> > > > >> software. This is why having this property in DT does not look right
> > > > >> place for this. For example, if the ath10k firmware is fixed then DT
> > > > >> would have to be changed even though nothing changed in hardware. But of
> > > > >> course DT maintainers have the final say.
> > > > >
> > > > > I dunno, if the firmware affects the functionality of the hardware in a
> > > > > way that cannot be detected from the operating system at runtime how
> > > > > else is it supposed to deal with that?
> > > > > The devicetree is supposed to describe hardware, yes, but at a certain
> > > > > point the line between firmware and hardware is invisible :)
> > > > > Not describing software is mostly about not using it to determine
> > > > > software policy in the operating system.
> > > >
> > > > Recording here what was discussed a few days ago on IRC:
> > > >
> > > > If all msm8998 boards are affected, then it /might/ make sense
> > > > to work around the issue for ALL msm8998 boards:
> > > >
> > > > diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
> > > > index 0776e79b25f3a..9da06da518fb6 100644
> > > > --- a/drivers/net/wireless/ath/ath10k/qmi.c
> > > > +++ b/drivers/net/wireless/ath/ath10k/qmi.c
> > > > @@ -1076,6 +1076,9 @@ int ath10k_qmi_init(struct ath10k *ar, u32 msa_size)
> > > >       qmi->ar = ar;
> > > >       ar_snoc->qmi = qmi;
> > > >
> > > > +     if (of_device_is_compatible(of_root, "qcom,msm8998")
> > > > +             qmi->no_point_in_waiting_for_msa_ready_indicator = true;
> > > > +
> > > >       if (of_property_read_bool(dev->of_node, "qcom,msa-fixed-perm"))
> > > >               qmi->msa_fixed_perm = true;
> > > >
> > > >
> > > > Thus, anyone porting an msm8998 board to mainline would automatically
> > > > get the work-around, without having to hunt down the feature bit,
> > > > and tweak the FW files.
> > >
> > > How come the root node comes into this, don't you have a soc-specific
> > > compatible for the integration on this SoC?
> >
> > No. Ath10k uses WiFi SoC as an SoC designator rather than the main SoC.
>
> Suitability of either fix aside, can you explain this to me? Is the "WiFi
> SoC" accessible from the "main SoC" at a regular MMIO address? The
> "ath10k" compatible says it is SDIO-based & the other two compatibles
> seem to be MMIO.

Yes, this is correct. MSM8996 uses PCI to access WiFi chip, MSM8998 uses MMIO.

-- 
With best wishes
Dmitry

