Return-Path: <devicetree+bounces-104301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C79AE97DE65
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 20:52:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 733511F21A94
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 18:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 189874CE13;
	Sat, 21 Sep 2024 18:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yeoYbb2S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0E62EAE5
	for <devicetree@vger.kernel.org>; Sat, 21 Sep 2024 18:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726944756; cv=none; b=VaZEfGptj6rv39XOTBdSkZTNdZUMoa2zQI/OEC2sYvGhFp9KttX6SWZK/5zk/qVyAyPKKaGf9DOBX0eYsKPSaE9cPTa6F2rKh4HMUbL7gOKQpYEafoppLODgT8gg3wHjVZcPGkCXuJD0X44UBpAtLRg+tkfeib1wAPIzw9bnKFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726944756; c=relaxed/simple;
	bh=bS8qi5sb9l6qZWoXE7ybyqltpxGbc0CNIgBhoQKKvII=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cApKf9ZDRJouYT5BuyGVk2duneRE8ML2KBjConnWCQfVwOovOEuNm66MVI01MJx2U9u1qYiTJMI6MnchoM7XrBshcCM2fkvqaIMPR4nRdJF2OP4TfDRXRrJD5XCo5jUSrW6T2jEDQXnRwnC+BjGQm3AWTQqsI4B3J5qSXut7dds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yeoYbb2S; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6ddccc408e1so23425827b3.3
        for <devicetree@vger.kernel.org>; Sat, 21 Sep 2024 11:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726944753; x=1727549553; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9YOWHzzVwKmpVXuH6tT4H74KWT1SKFzuJzeXObWQIF0=;
        b=yeoYbb2SxEMIkQaVolqPtiElSAVP/KEuGK9DusQtHrhMF41IK1mOa/JEj+lCZN4fxI
         6ThKBtLeT/Ur+NLXvsoIVH/Jh45qTGy27bXJxJt2Z3dEm8phUz474LQOGqpYG+/Q2Vn2
         Pb/edwpa/PxHiJm7y+haitROLsXYR8gWHt0DxURI6v7CfMKfOH9/89I7XZoZq+4WBKr3
         iHW0OY/yw9qrJXqAbz/k94k7utkGhq40YPuLa/W/orenjVAf1LvRhQy7/z7i//eiq2Vq
         m8vG3wkTedShrcyt0msHBe/gGZXsT1zM+jrDPfBjtdgMjLkOsSfhu5cHUmjohA7OOg7F
         HGAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726944753; x=1727549553;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9YOWHzzVwKmpVXuH6tT4H74KWT1SKFzuJzeXObWQIF0=;
        b=VXC/rQ6XiEy2m0r8nceIsOIx9Gz9VmdFHY/9Pj1lNv7NfeZOTpYA68BRWejW1M3Fdy
         VGgGBCtRL2ixFGDH5GWTE9v3s4o5/XrlVZDzYxwi4NTs1ZSqCXVBi7PCGqXgRXI2LBaN
         t+Kzz+uUuPlSGIboRq0qTMkuQjrASBtG/kWQa12QBEw4ezMGhjjiZKZ8O1Qedh6uteiQ
         9m+6v7CopNz+iYwidhUGKi7NxA6iaVq83H8tDNVASBjN15tQ0F/gapjLCrlxvZ+S+SOA
         SUPkwQe9xci5ik8BHvRR7umTBjoLFts3O90KwqutmGXBDMbqW0+TFdFPUlwGMWRd8jdV
         YgSw==
X-Forwarded-Encrypted: i=1; AJvYcCWWCcwfaQhYshI8VJrRejF3Mv0GmgpN9mhtu5G/FJQuO040wXxKXRfSlgfNcAFIFE89rlkyE4wcMp4Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd2W/3OWVjNlxTBzTbBfgvqN27oX+c/F+lmlf8A9DJtEoHruvl
	iH1v4uEY4SfVNVF2PDcJXioJcZ38wRlvWb5TXLDFtfDtaAGQ/QzSofe+Gh1Bl4eblHdlP7iYE2b
	5oqdYGOsI7Gs9cUjAuW2ePZbmy+TA8RfW9cgGzw==
X-Google-Smtp-Source: AGHT+IG5tWL7XQk5lTl4IxHn8rt6ybrJDIlTwRt+uw8pRlg2OHh+fLMthOUKic2sFVqZrPqkaKCtAgCb23pQ48rnvJM=
X-Received: by 2002:a05:690c:48c4:b0:6db:a7d3:6410 with SMTP id
 00721157ae682-6dfeefe5f02mr62623227b3.44.1726944753473; Sat, 21 Sep 2024
 11:52:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240912071437.1708969-1-quic_mahap@quicinc.com>
 <20240912071437.1708969-2-quic_mahap@quicinc.com> <78d9c6f9-5667-4ecf-92c9-73e9e4b9b424@kernel.org>
In-Reply-To: <78d9c6f9-5667-4ecf-92c9-73e9e4b9b424@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 21 Sep 2024 20:52:22 +0200
Message-ID: <CAA8EJppc7jUfVx7Fw=tBjWGdp7ULb2pbK9x-re+1bNq2kxMR4A@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: display/msm: Document MDSS on SA8775P
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mahadevan <quic_mahap@quicinc.com>, robdclark@gmail.com, quic_abhinavk@quicinc.com, 
	sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com, 
	daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	swboyd@chromium.org, konrad.dybcio@linaro.org, danila@jiaxyga.com, 
	bigfoot@classfun.cn, neil.armstrong@linaro.org, mailingradian@gmail.com, 
	quic_jesszhan@quicinc.com, andersson@kernel.org, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_kalyant@quicinc.com, 
	quic_jmadiset@quicinc.com, quic_vpolimer@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Sat, 21 Sept 2024 at 20:23, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 12/09/2024 09:14, Mahadevan wrote:
> >
> > +        clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> > +                 <&gcc GCC_DISP_HF_AXI_CLK>,
> > +                 <&dispcc0 MDSS_DISP_CC_MDSS_MDP_CLK>;
> > +
> > +        interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
> > +        interrupt-controller;
> > +        #interrupt-cells = <1>;
> > +
> > +        iommus = <&apps_smmu 0x1000 0x402>;
> > +
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +        ranges;
> > +
> > +        status = "disabled";
>
> Uh no, it cannot be disabled. What would be the point of it? Please
> reach to your colleagues for some internal review before posting (see
> also go/upstream in internal systems).

Rob, can we make it part of dt-validate maybe? Error out if schema
_examples_ have disabled nodes.

-- 
With best wishes
Dmitry

