Return-Path: <devicetree+bounces-100438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A659696D999
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:01:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 242AF1F22828
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 13:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6703E19B5AA;
	Thu,  5 Sep 2024 13:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="UPDZPeyi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D792E198E84
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 13:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725541257; cv=none; b=QBm45kpXw48R8lzftoZiYkaFoCNPE3tczaRubJ3ljE6afx8dClVI1VCQCY83T198GmyJTvEWavkOUgieS6y4wlreFulNLBGomEI+zdEUmohRmfvt2e6w+q53xDsuH0bZU0g5bBACqxku5n8XH/QDbC971bOyOqrAtTkQcG0ghhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725541257; c=relaxed/simple;
	bh=H62HkzGbpUesjFTP4vNGYXdw2q2nWXplLeqQxuLZrUo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BWyEfvw7Lgdrsl0UCXSMjz/cWsfzB6gRrJYlzgCxDxc4+PWQ2rJ9ZKgWRzejGlTNETDdgwTeQbcCmlzvIQsoh778RmLprj1E4xY6SSxI851Ia2gFA5iAI9yvqWZbzuxBIoX+ZuWZKXlREsP/9z3pFSJK+5C8Dic/D7YmpxfW5a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=UPDZPeyi; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2f406034874so9114581fa.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 06:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725541254; x=1726146054; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fvX5LhsKt0yPVXIiiRUeNnUqB7Sn1CnGbkl7cLPC1hU=;
        b=UPDZPeyiIztbPMSnNnursXpi8ibtNa9Vms+ngdHXQ8LvnGo8RVpqoY5upTBGZCVKZM
         53DYdJCT60WP/+8j8rf/+kZ/wNzbmlNEtgmSn1GiOyWk6TaZEWCSOEnxSM1hal6HwLPn
         SMlPNFvz8AhBxEP5kLUfsHi+iYxW4BM5g6MOSHWR9dhybn67TDlB6cdidJtzMkae1feQ
         /FU1Tew/TzhFElX5aMeBVyLQJqM0Wxi3PK+T0t2o2iihSXvj9NCE2JzW7M49a/x0EcAZ
         US9NZU+hXmXaTL9ydQLObBQaB6iRs/tc6OVZyN2IlkUZJwGVEgyKtveL6UY0j/RP/Qlh
         eUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725541254; x=1726146054;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fvX5LhsKt0yPVXIiiRUeNnUqB7Sn1CnGbkl7cLPC1hU=;
        b=h9q/7Iup5GHfV5wvSuGkEAgCl2TAjjBYDCzZLqe6P65seDeyEg03ACeVZ58wO5kmHQ
         e0sSkgV4KyNtCZntuV9n+33dXjmJYWRPDG2WZCa/HT+Z9vP8LCWcn9LQvZmpceUYN3va
         SgmGrXUhiFbflFSUtZ/8LxV4vf9N4rMl+6GuTjEjl7Pu/kK/iI+mTO/+nwbUf2on0Z5D
         70Ho/HBPUv4SNvM9SauCmWSPFOc8QdfxmHze5x/kKWQkTzcEEjWucbAohCmIurzlTz/0
         uS+ZXZ+PfdbQvuqALnEOfo5BLCFFoxq19J6mcRytycK8xfxQnjt95+DzdO4GoOkK7rAC
         nu5A==
X-Forwarded-Encrypted: i=1; AJvYcCXQvfbEFjPe14Iobe/wJGtX3FPOyZMtPZt7RkcIE8ab1UFkqmFiouE2nsh5lWkUtgDO3DXS1PHnKj1+@vger.kernel.org
X-Gm-Message-State: AOJu0YxL07+sRbfeR++vwm2xHLO7FNJLmE3H11Y4lrE80rHhx0UPJwOl
	sUje4HL2bKhnra8PIzZS7ljvJo551cnIN+Ousiu6RWZeT76hs8u/jIrgQSTokpfYZxTJU47jAs5
	69wbEpaEFYGsq3zzCo7Z0eoTpzsZfi/i82bI9Vw==
X-Google-Smtp-Source: AGHT+IEQXzk8r71FGV4TT/9xQ+LnzpJLAomuikseXPDLCmA8Cef3NfFKbL6iW/zApYVy7QOcvAIZqKXrFE3r15xXQcs=
X-Received: by 2002:a05:6512:159f:b0:52c:d753:2829 with SMTP id
 2adb3069b0e04-53546b36b1dmr16588869e87.19.1725541252177; Thu, 05 Sep 2024
 06:00:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905122023.47251-1-brgl@bgdev.pl> <20240905122023.47251-2-brgl@bgdev.pl>
 <6vikrqhdnkefzpahhhtz2hpi62jvcwnzclm7touwtnpxdzvgrf@uc7r6a7bbjek>
 <CAMRc=MeijX2by+MS_vq_OVx25JO6z=zNfymta35h11mbm=vmtQ@mail.gmail.com> <CALT56yOP+un5nkxuirJVg=gr7fo4Hqjt1ew3z-=F2J_Y_RcTqg@mail.gmail.com>
In-Reply-To: <CALT56yOP+un5nkxuirJVg=gr7fo4Hqjt1ew3z-=F2J_Y_RcTqg@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 5 Sep 2024 15:00:41 +0200
Message-ID: <CAMRc=Mci-8R1Oe3Fe+1E+K-7khzwBPgn_8SQSUPXthpE4032Pw@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] arm64: dts: qcom: sc8280xp-crd: model the PMU of
 the on-board wcn6855
To: Dmitry Baryshkov <dbaryshkov@gmail.com>, Johan Hovold <johan@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Kalle Valo <kvalo@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 5, 2024 at 2:56=E2=80=AFPM Dmitry Baryshkov <dbaryshkov@gmail.c=
om> wrote:
>
> > >
> > > As you are going to post another revision, please also add
> > >
> > > qcom,ath11k-calibration-variant
> > >
> >
> > I had it in earlier revisions. The only one we could add here would be
> > the one from X13s as QCom has not yet released the data for the CRD.
> > Johan and Konrad were against adding this here if it doesn't refer to
> > the correct one so I dropped it.
>
> As Kalle usually merges data with some delay it's not infrequent to
> have DTS which names calibration variant, but board-2.bin doesn't have
> corresponding data. The driver safely falls back to the data without
> variant if it can find it. Als  usually it's us who supply the
> calibration name.
>

Johan, Konrad,

What do you think? Do we know the exact name and should I add it or
should we wait until it's in board-2.bin?

Bart

