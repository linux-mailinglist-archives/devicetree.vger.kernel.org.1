Return-Path: <devicetree+bounces-59968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA918A7CAA
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 09:02:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D493B22422
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 07:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E59C6A8A4;
	Wed, 17 Apr 2024 07:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TZSHvCfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E273F6A339
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 07:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713337345; cv=none; b=V26x/yVntAUsBqb88+5sM7R8jVibZ2ObRbV+hkPz9qHwlWfp4VPJQcSnxYgFg6vq/Uq3ScSoi+TQil52vyAILXjPq18E6uhqwMy0WSgAO/YoPfmVhjwV+fbwkx4YeenzHK2zrqrZw2kQyhLfsJ4CKePGURjunyHXLg35RedW210=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713337345; c=relaxed/simple;
	bh=ZEDa5YTizJoRKvvXZle+WMCzPDMzbAnkbhmq2IQY7R0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KGjcjVN4T/gf4N6Hw5lyLFOqKHC+jNExqlp1Fwm83+McKZ5Y6veGAUDbAfJwlKBwOr5aMIQFdzudQAsXsejgnHylJzIl72aWb3erhCjS9y0qjzU+XRKrP5Ioh7EFcfMMzEIj1UUcQvZc5ByzB+qCvoknxxOfnyEZcqDaql8xkhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TZSHvCfO; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dc6d9a8815fso5315213276.3
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 00:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713337342; x=1713942142; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sGvt/OcevPOUXaTJnaPKCznXL12lo9XavRWzKBHcfZU=;
        b=TZSHvCfO7fKK0pRSSY3yqOFhqCJUdQguPeDEvISu5T9J3IjCbL6yR6LlMS1+nSxnxE
         uekvqMnIIkcG2ZBXM286bUe6XFcuGshj70i6AyGHF2d++X9FneHriAnpRMaZmL/aXLCW
         XQtyCXI5Cle1SnR5R3F9ldI8CtHg1+sEiGkDxRvc6Jubpf3FoELzTf4BcyCPKT26u7Yu
         JKYUdlXCOGesjAHikSN4bO2WrpcX9nkKJo/VwZ3jwRBhcMYUON6kF4OZA6IddatF6qcd
         ofvE4KBvq4skg/PImWg7L3QsgaIVINCi5zj0mmr7wlsQl5Pz5l7VjGhtWuQQGQtYoT6O
         2a1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713337342; x=1713942142;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sGvt/OcevPOUXaTJnaPKCznXL12lo9XavRWzKBHcfZU=;
        b=Z9WgmGkLVugNETDWoCCZ00XrlWtfjBSLKIBmjOVYB06+ecUdnHon0V7bawZR4ZRqMl
         0e/RLw0cD42rTLudGbRKRkVTqKliOFJEGj3qZ8OB1pNCov90080+MvID8kr5jRMOnkQY
         d5LW6Cc5sX+u0Txl0aCKz0X+RQIeq3w8SBfsVxwo5AQu8/orDCi25zdfaRO1pCUaQ/6q
         Wwmc0BcO5LI5w1CsulhHInY8UILzZqrK1ReoHvZpb1uMe05KXZiVr0YeKIeAikjqz1rC
         EluuqG7X5tgit2Iqhatf3pXmi7fRQA8koSJFwD0ZVlIPg6LvDjvzEswAHf1HP5O425dR
         gGZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLvjKfSU7cQIW0rvtulXuIZqBEOldZogPHklNwmmEmjvgV6/+bWKaetjSEjV2wFrpZt4AuKSmK1xBiO9Sbve5izu13OMe4yCqErw==
X-Gm-Message-State: AOJu0YwgBkySSJ9EqWbeG4S+PimILzt8o/AOVBhSMBL6SnZBNFxj2rfw
	4Un+bmzAKMHkzVaIayI47/wWhmTr7ZppRjzVOOnHzVrPsH2ntupLqLiChQAxoeJ1HU1ul/QbbLH
	GQ5UyLDNvf2jHmviVczp9W6rsdpPi59KQ8wVDoA==
X-Google-Smtp-Source: AGHT+IH9CEuOupRBWZQNFxyza2VtLQoxomckgth+p7ynPNtYc07M5PELX35fU9fO3bLqrnFXrCHVMiYXlfx9K0YMLWY=
X-Received: by 2002:a25:aa30:0:b0:dd0:c12:411b with SMTP id
 s45-20020a25aa30000000b00dd00c12411bmr14962497ybi.8.1713337341963; Wed, 17
 Apr 2024 00:02:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAA8EJpo=nd8ywUzz2e42p7WAyuFm439yvNf6H=MD63LCV0xTnw@mail.gmail.com>
 <20240417065020.3599755-1-github.com@herrie.org>
In-Reply-To: <20240417065020.3599755-1-github.com@herrie.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Apr 2024 10:02:10 +0300
Message-ID: <CAA8EJpq4mEKi=WW2o-tmkSCoKv01sV5wM-U-KxXXGAcaKSp84g@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
To: Herman van Hazendonk <github.com@herrie.org>
Cc: andersson@kernel.org, benwolsieffer@gmail.com, chris.chapuis@gmail.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, kishon@kernel.org, 
	konrad.dybcio@linaro.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, me@herrie.org, 
	robh@kernel.org, vkoul@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Apr 2024 at 09:50, Herman van Hazendonk
<github.com@herrie.org> wrote:
>
> On Wed, 17 Apr 2024 at 07:52, Herman van Hazendonk
> <github.com@herrie.org> wrote:
> >>
> >> Adds qcom,usb-hs-phy-msm8660 compatible
> >>
> >> Used by HP Touchpad (tenderloin) for example.
> >>
> >> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> >> ---
> >>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> >> index f042d6af1594..ccf23170cd17 100644
> >> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> >> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> >> @@ -15,6 +15,7 @@ if:
> >>        contains:
> >>          enum:
> >>            - qcom,usb-hs-phy-apq8064
> >> +          - qcom,usb-hs-phy-msm8660
> >>            - qcom,usb-hs-phy-msm8960
> >>  then:
> >>    properties:
> >> @@ -41,6 +42,7 @@ properties:
> >>        - enum:
> >>            - qcom,usb-hs-phy-apq8064
> >>            - qcom,usb-hs-phy-msm8226
> >> +          - qcom,usb-hs-phy-msm8960
>
> > This should probably be msm8660 rather than 8960
> Hi Dmitry,
>
> Thanks for the swift feedback. I'll send a v3.
> I need more coffee before doing this in the morning

Please wait for the feedback from bindings maintainers (this might
take a couple of days).

> > Note, nowadays the rule would be to use qcom,msm8660-usb-hs-phy
> > compatible, but I wonder if we should enforce this for such an old
> > platform or whether similarity wins.
>
> >>            - qcom,usb-hs-phy-msm8916
> >>            - qcom,usb-hs-phy-msm8960
> >>            - qcom,usb-hs-phy-msm8974
> >>
>
> I plan to send more patches for the msm8660, so happy to understand what
> is the preferred approach, because it doesn't seem consistent.
>
> These are my first patches, so learning mainly from what I see in commit
> history (which might be outdated)
> It's indeed ancient platform, we just would like to get HP TouchPad
> (tenderloin) running with a mainline kernel, hence these patches.

This sounds really interesting. I recently got apq8060 so I should be
able to test your patches if the time permits.

-- 
With best wishes
Dmitry

