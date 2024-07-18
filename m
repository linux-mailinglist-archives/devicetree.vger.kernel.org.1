Return-Path: <devicetree+bounces-86596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AD6934EB3
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 16:04:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 640D81C22F33
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 14:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C7813F428;
	Thu, 18 Jul 2024 14:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cpm53qQ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D2313D8B8
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 14:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721311480; cv=none; b=o1wqTx84JlJ8wHwAoJeSKVID3O1//wJuZxYqeKlQG+hiPNTAwGvo/AKCZy/x2L7Zg+rx33bH2k1yGjdqPjKUbpWlG73hbjV8xgse/ZH2H5UUfZgahZ4zhDjIENxO6jffJcU/5xUYJQW8szv57nPHkZwKRSDLJDnx/4sJ64qRDU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721311480; c=relaxed/simple;
	bh=7mKSULYsOZRiRiSYaR5r+kVLZIVlF7XgyiZG/+xst4E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tWYJS8+tDcfo7Bfd6pOQAvsjYeRWd5DvJfoxrEdEcb/8O7P+9vDze26ywom4DJKIndF5vx9CZrY1yY2i5DbI/yNqo97vmFuHFzGv1y3Wf3Sf8Rv9HMol2jTH1+WsHYu7+mT8I28E1/3g18HFY7ZVRsLLfsK0wTDBXh9jFxS1xX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cpm53qQ0; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-25e1610e359so324836fac.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 07:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721311478; x=1721916278; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=l3WTjubRD4NA6PA1aZkc5sumZd760DIUvpDf+w+griw=;
        b=Cpm53qQ0CdM4w1vrg+s6YLiiEO9cJV2GtdVHc7s/g2JEDWwEsO6g60uZRxhe4a6s4N
         RgwyyV/RvHn7kI0dPk6SN9rtFkz6jHtTEJOjQ7JjqsRgKfaj/pWpHbEBdRyVx9E7ylbv
         RzlCVKmPWFowTcJc+9MsUAMVcIUEqPQ3CEZFgvcRGyGtT/Ky1hBQpuuDRHOhZMOTQ0aC
         MfHO1rVMHArls9UkHryC01c9dK2EJ0uKGtE69eXOiZdq7WzqbS499PbNp8rlmxzCTOcX
         hfwWUrOuf5M+ZU5cVwt/ieC0b5Sa18kQ6sm/8is5bTGMoITvxnTIKw8oH+KqMtf81qK2
         RTAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721311478; x=1721916278;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l3WTjubRD4NA6PA1aZkc5sumZd760DIUvpDf+w+griw=;
        b=gFbTvBrMuZTZkiAMKvmv3VgNTKz3V4scf7th7lR6U6V4E7AnbPMhgyDMz0mklyv0BF
         2GieDgd3efxOsxc2tPSBqvzCdFz5Atlsjto54mAfsauSsySoOVrLCT/TypQ3Mt7f21gl
         WtaGysjLDdNWbUBGuUrZ0oxTsEnl4FF5wkITnDs34baqZNwGO/ffDY7JBovYp00K19y+
         uSmRUsQwGMebFiOwXr4ttv6GXmB0j6SmUgruQITNrNVEC0Jw8HXiJAZniKU4zGefRj6q
         qtwrmULv069wER2nNKSvtO5LN25NTVw6DF2AlwyxG+L8b5xnSSa1SkpNjZWcBh2VKcGe
         y1pg==
X-Forwarded-Encrypted: i=1; AJvYcCUlMANdHyNjuWGxn4EnqDUiu4T1wDITwShjIu0KDpk8EECd6Q3ke1z8HhF89HglBazQLJtnzL/Kaq8nb9a24gmhTiV3UxD5w0/nlQ==
X-Gm-Message-State: AOJu0YzME728bFixHc1GKC7oMNXUf0Ryvk6IB2o4w07Xp6Nn8X4zjRVU
	abNwh7FsiTiTBYuGyiErBKi4S6QCTYFuZesIQ+xe/I5HPHbGbrXjME4I+M8Etq77nzYqtFGScvA
	KHvzd7FxuJyij8n4OuXKRcHbmr2i4KBix6hebGNUua4Ywy7B3
X-Google-Smtp-Source: AGHT+IFsbUIhMc2W1HvDGSyiBSrarYG6v/MdEev7NIE3ZTndjqyt+c6mewlonjpkRzRFwjH5PGhD97w49TVHcju3rbc=
X-Received: by 2002:a05:6870:f112:b0:260:fbf0:d65c with SMTP id
 586e51a60fabf-260fbf0d961mr922488fac.9.1721311478117; Thu, 18 Jul 2024
 07:04:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240718125545.2238857-1-amit.pundir@linaro.org>
 <qitt2j5hw6pax7yekdooutxebhkznhdv3aafnhkysr5fjcbmd7@xqbp7h3ld4gs> <CAMi1Hd1wzvzStEv2zoNocvYBkJDis27vzCDcBtMruQQ5TdOkDw@mail.gmail.com>
In-Reply-To: <CAMi1Hd1wzvzStEv2zoNocvYBkJDis27vzCDcBtMruQQ5TdOkDw@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 18 Jul 2024 17:04:27 +0300
Message-ID: <CAA8EJpo1go=4zU0zvi_dd8ST+phP7+aMJz+sM-Jerwpf6s2=Hg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550-hdk: add the Wifi node
To: Amit Pundir <amit.pundir@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, dt <devicetree@vger.kernel.org>, 
	lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 18 Jul 2024 at 16:56, Amit Pundir <amit.pundir@linaro.org> wrote:
>
> On Thu, 18 Jul 2024 at 18:36, Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Thu, Jul 18, 2024 at 06:25:45PM GMT, Amit Pundir wrote:
> > > Describe the ath12k WLAN on-board the WCN7850 module present on the
> > > board.
> > >
> > > Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> > > ---
> > > v2: Changes suggested by Neil
> >
> > Which changes?
>
> Neil suggested a few changes to enable 'bt-enable-gpios' in
> sm8550-hdk, now that the hci_qca driver uses the power sequencer for

You should have described such changes in the changelog. Note, no need
to send v3 just for this reason.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> wcn7850 https://lore.kernel.org/lkml/d3416be5-b97f-4db6-a779-9c436e41dd72@linaro.org/
>
> Similar to this sm8650-qrd change
> https://lore.kernel.org/all/20240709-hci_qca_refactor-v3-6-5f48ca001fed@linaro.org/


-- 
With best wishes
Dmitry

