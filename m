Return-Path: <devicetree+bounces-43063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 594D48591B5
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 19:31:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7712B1C20A89
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 18:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 994BF7CF2C;
	Sat, 17 Feb 2024 18:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="q+ZTbwOW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF7CF4431
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 18:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708194658; cv=none; b=KeJElH0nXstWGM9901z99Ej8RbbHdc+1PCeVkNgNOsfJ+stokmP0Is2duxIxMeXABZ1MbToBBF2tCf87bev1daO4aZy5hWDpWG5Z+UKCvOHFqaxOKq/q7OY621Nw1WpukZ2oDlischojB68IAdKCt7ARDcRQ4yhpy9FWBRW4xwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708194658; c=relaxed/simple;
	bh=xTu4CwC01bOUIpKw1wk4DHay8JL9daGjNYWi0BvJoFk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s2poYF6qlhfeMYYcQqgOZbifGs96TvRVX1jcnyGjiCGY3lQOtp+thntBIbReEfRmzNIaOCiCdA+nFmjl9DYugHAYFT3gJNlgzMjtZuJgKPDZ0Y7i6m0VUwoSP89rdPc+LqRYqgUw5yBqB5RLBbplSSjeXNoqfxn5EUOYPNg1TeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=q+ZTbwOW; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-7ce603b9051so937909241.2
        for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 10:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1708194655; x=1708799455; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JeWu4dlZldb0QpDIIyWPdxjS/RZoRXziwmFM0VAD7xY=;
        b=q+ZTbwOWLrtB7LLK3P+2bWMpv7DfIvhgi/2egNQ4e52dlt56kAs4JbMUWCIypEPg3u
         jaPViUylF4qtQbcTBTyT70G9+UdrSLhxKL21A/9s6yJsxSRyq8xTATGcF88R6HEN/kSI
         FEcX1CQfyK4WEt+SUb+cFk+6mPzCSgU0ZIWA/kkH614YOW0bApp+lbnisuRUJID+UlaS
         oOt0Z2o/J2lyYUVPrLC0B6EbShI40Z+7a/Fx8TFCEz+8kcxXF+2Zmg6PaMWL2HnIyTdI
         P5Fq871GtTT8Z3hp9dz0flsuvXqyvv2rjvK5Pq1zsVljnHdz9MUClSO7sH1Y4x9CWtmk
         ubmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708194655; x=1708799455;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JeWu4dlZldb0QpDIIyWPdxjS/RZoRXziwmFM0VAD7xY=;
        b=FUCkz00V80BfH+San5SItH3l0eIBb+PnK1MtushIYMooTpIR1AI0rGKQIWZhKxpDtT
         kyUCOMWSfjIYU1vswl7nh6sy0If0tkzookYKwmPXuWkRD1omU8grWAxnCTeSDcw3WUuO
         PmobCvP9CAcuVM6QxFtgYUKqDCjI1qe68t109Eym3BiN6LsIEaHiu0dKAjFyiyty15QN
         NVCFipvspyPFMN8TXonHi/J0/kGS+wCwj/7ueskjKfrqdYkwhMZPZ0Stzg+bJKnLph7m
         zq49FmHPYXlI57h3BmXJByHvK3CRopGksyjyl7n4KSpoJd96CfqymNr4fyWiJ2w6gf07
         iNFg==
X-Forwarded-Encrypted: i=1; AJvYcCXEKSg+E7H/EYMD0G+mcJ+nXGliwyT2MZgWSkzIPin+JeQ5qU/dxRcgohfe9ZZxvetG8V0muX9yrWsO4peKWb946dNjNMK9sV80Tg==
X-Gm-Message-State: AOJu0YykXLp++wd7iLE5eKD7gxacnKkA4B8CpbrDaHWqWE+3iQz6KTbm
	T9ZEDt1D8YHk98CoLnlC67K8+5t1e0ls7SJmkAx73hsJbxgG2XjxeIhge1kLmUUAQLDAIaR4LRV
	sRDc7FtLdTKpVYBC+QPqbN3+Dyy7NT9L4xYe0NA==
X-Google-Smtp-Source: AGHT+IEGwogzVe3juwTbP5wzSPlB4FZp7n7jPtu9uTl+n1AS2iy9ckNua2af79j+lFRcSQmRv5yllrZrWuBKxrsF4JY=
X-Received: by 2002:a05:6102:3a08:b0:46e:c752:16e7 with SMTP id
 b8-20020a0561023a0800b0046ec75216e7mr8759486vsu.24.1708194655651; Sat, 17 Feb
 2024 10:30:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240216203215.40870-1-brgl@bgdev.pl> <20240216203215.40870-7-brgl@bgdev.pl>
 <87cysvd2er.fsf@kernel.org>
In-Reply-To: <87cysvd2er.fsf@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 17 Feb 2024 19:30:44 +0100
Message-ID: <CAMRc=Md10bNPswsLqdCmqzEmD+QmyZ+Eb4SUWknH-j5kK-speQ@mail.gmail.com>
Subject: Re: [PATCH v5 06/18] dt-bindings: new: wireless: describe the ath12k
 PCI module
To: Kalle Valo <kvalo@kernel.org>
Cc: Jeff Johnson <quic_jjohnson@quicinc.com>, Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Saravana Kannan <saravanak@google.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Arnd Bergmann <arnd@arndb.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Alex Elder <elder@linaro.org>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Lukas Wunner <lukas@wunner.de>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-bluetooth@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-pci@vger.kernel.org, linux-pm@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 17, 2024 at 7:35=E2=80=AFAM Kalle Valo <kvalo@kernel.org> wrote=
:
>
> Bartosz Golaszewski <brgl@bgdev.pl> writes:
>
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Add device-tree bindings for the ATH12K module found in the WCN7850
> > package.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >  .../net/wireless/qcom,ath12k-pci.yaml         | 103 ++++++++++++++++++
> >  1 file changed, 103 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/net/wireless/qcom=
,ath12k-pci.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k=
-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-pci.=
yaml
> > new file mode 100644
> > index 000000000000..063c576b99a0
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-pci.ya=
ml
> > @@ -0,0 +1,103 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +# Copyright (c) 2024 Linaro Limited
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/net/wireless/qcom,ath12k-pci.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm Technologies ath12k wireless devices (PCIe)
> > +
> > +maintainers:
> > +  - Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> Jeff and me are the ath12k driver maintainers so shouldn't we listed
> here as well?
>

Sure will do. I also noticed the subject is wrong, should have been
"net" not "new".

Also, Jeff is not showing up for ath12k bindings in get_maintainer.pl.
You could consider adding an N: ath12k entry to MAINTAINERS.

Bartosz

> Jeff, this reminds me that we should add you to qcom,ath10k.yaml,
> qcom,ath11k-pci.yaml and qcom,ath11k.yaml as maintainer.
>
> --
> https://patchwork.kernel.org/project/linux-wireless/list/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpa=
tches

