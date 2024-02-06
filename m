Return-Path: <devicetree+bounces-39292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA95084C118
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 00:56:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29B791C23B77
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 23:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8EA91C2AF;
	Tue,  6 Feb 2024 23:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nhh79qqR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE941CD2B
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 23:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707263800; cv=none; b=lBW9tmiVQgWpke4TDxzBbjqANEJGUzyLzNySjtEkYjeGYG4rOdsdekLW0PjDKyhsZafgR0RYnRIPbgPA7jFhO1mvc/yqu9DmPnoTbM7CKzMrr5on7oVqIBouDrsqdD7pmSTbo5hEpHZt461o656SCaXHpFXmPpH2k1wMld83Ujw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707263800; c=relaxed/simple;
	bh=CY6CnplEQSBuLw8QELN4NeQcXpf6PsLxs6bvLTXkwG0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PvZQ8h3XCpAm6nxBRvtaYRptoF5mOjzIiOTkGKVgHlFB0CJXjvhwFyPH1VEm27dgM6Pd8MZSmHZt4f76OR2HOoY5NPQ61qyJKrZhq9P8FU5NMn+xeDmgT5nkcJOKXJQ1/OmZ2jtDxIYlbNwIQ/frRypPZ5BXh8eH+UqxXDxBtok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nhh79qqR; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-60406da718aso703247b3.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 15:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707263798; x=1707868598; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lPO0vylciwlxHh3ogoVDX/Xe2KENfa+Qqy6uMd1Hm4s=;
        b=Nhh79qqRVSw7MgVM+B31xuUdjRaHgs3VGwZza6qfaHCETSh85SfMBonEYaWK4fun+6
         NAMmEDvVhlqjzVV3VXpLSobZoNgEypblMOflEj0fDqTcUV/phmXAgeE3UrhP1aHoVh7y
         H5ZMNXJnL5yQ7+HqDypSaKi0cOAGkwzzjVe8pKgM1/TWSVZCcOA19JwbBfleZHDO1NBl
         EUs+N8yC1IYStMG9UklTKKL/8H8eQZHWPD3iTKyKUye0pzpYhHhcV7PCe2VUMsRxAFoM
         rgvWyk/CAeKr+Iy0huoV4Coz0lxPYdogd5DvZ+2HFhFJPNInxkFaIz8sC/4nVdbOXGDg
         fNYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707263798; x=1707868598;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lPO0vylciwlxHh3ogoVDX/Xe2KENfa+Qqy6uMd1Hm4s=;
        b=fH+nHEQ1Yspftbw4AwEWzFY6QuW1nzWBlJAXhyhbPDFDjyjO1nSHAmdWXk8BQRWpGT
         EPvq5f82y8tbYrIjrl7lqNNgROmv+wN7+NYAizOqkBK6rzxUi+NsO/Gk74DIa+ew3gIy
         itcEdtuE1HDvZEhqzE8j3WoM4gDOIhlTbSAuGdbGUzXbpmjdOJjWjiT1+jY5zP3CDjVu
         KrIXvR7dxS9k52bnK4UoteoghT4/+Z64AstTCDSEJgAm+mAMvtwFyKn7vcs+3updRU13
         mlRjgIkXhcpTpTHu3UyORb3tJS6VRV0lrLIDFUE1os33Pm4U7JSX5rD+LEzRBkXdkUiU
         RZYQ==
X-Gm-Message-State: AOJu0Yyqi7a039ZIkBv+e6f7D0MNsfF2ahAe/cUMiAMyaxIixB1rSdN3
	MHfU2amQ2JKkh4DsLS06LR44+rnZj62wxqR/3bGFuoMrscf+mhCs8UWN9soLNHnUjksFCjcgt75
	09agZvgljrIJWl+UFbwupvdPEl7BEKRfsNNAdLw==
X-Google-Smtp-Source: AGHT+IE6M0Dg1dF1XKQ5SZog5KVbT6+bWDmKAq1fr/keDl6DkOU0HeAaW6wB4lOG1URtDhlO4e8pMxN/MBRT07NjCl8=
X-Received: by 2002:a81:d441:0:b0:5ff:f176:9fd3 with SMTP id
 g1-20020a81d441000000b005fff1769fd3mr3364581ywl.4.1707263797880; Tue, 06 Feb
 2024 15:56:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1707202761.git.quic_uchalich@quicinc.com>
 <cf138f258ecbfbcc94717e4914de2f60153e5abb.1707202761.git.quic_uchalich@quicinc.com>
 <1e26c5b3-716b-4f16-bae4-2682667550a5@linaro.org> <79a01e7c-3a88-49cf-b227-804155a65a4b@quicinc.com>
In-Reply-To: <79a01e7c-3a88-49cf-b227-804155a65a4b@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 7 Feb 2024 01:56:26 +0200
Message-ID: <CAA8EJprbyvRMo0gEw0_Aa9akRNsgUwGA03sgQKLNv0fxupm3hQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: sm8450: Add mapping to llcc
 Broadcast_AND region
To: Unnathi Chalicheemala <quic_uchalich@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 6 Feb 2024 at 22:07, Unnathi Chalicheemala
<quic_uchalich@quicinc.com> wrote:
>
> On 2/6/2024 12:35 AM, Krzysztof Kozlowski wrote:
> > On 06/02/2024 08:15, Unnathi Chalicheemala wrote:
> >> Mapping Broadcast_AND region for LLCC in SM8450.
> >
> > Why?
> >
> > And why your DTS is in the middle of driver changes? Driver cannot
> > depend on DTS - you are now breaking all existing boards and users.
> >
>
> I was following a similar patch which has DT and driver changes in the
> same patchset:
> https://lore.kernel.org/all/20230314080443.64635-1-manivannan.sadhasivam@linaro.org/
>
> The AND region was added in the IP block in SM8450, but was not added to the DT or
> driver. That is why I included both in the same patchset - if you think the DT
> changes should be separate I can correct it in the next version.

Just move the DT changes to be the last patches in the patchset.

>
> Thanks a lot for taking the time to review Krzysztof.
>
> >
> > Best regards,
> > Krzysztof
> >
>


-- 
With best wishes
Dmitry

