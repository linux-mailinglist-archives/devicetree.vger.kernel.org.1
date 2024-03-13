Return-Path: <devicetree+bounces-50193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D846B87A4CA
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 10:20:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 921EE282F21
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 09:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 787981CD22;
	Wed, 13 Mar 2024 09:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RRC+ROjM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21B31CD25
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 09:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710321604; cv=none; b=QoY2aMsOC+4o1oT8yWaBMxdswkMbpbona9mupbDRygv0BUdOywp0m/71MzsGQwQlq3w8INLc5+hoAC1lO3ZlStDKgX/+UbMEYh0rMkvIrbS/CgIsn3DHDDNjCtx0bMWwQ/TiAq3neopmbQmxJUwpnmyGiPplL4tCgE50F0D0SQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710321604; c=relaxed/simple;
	bh=YfNa2HcP33gx/cy1Fy4b4hmZtnEzlibHuZBeZyU9yds=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ciEDK5PfeCfPHTTfFyHjMT6x+V4tzdPsTeBFXcyV4XdOcfT9bgzTvtO+JHjeZc6WA8Bznb5MPxy5B3/FFRJVG9yC/YOi91xERFb5wYTI9xGPGMo3UJh4b/CzeodaE0ism4FQ8F7x33YXzwnHmgUvdNXrPF/wj1/5l3rS3Dou4u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RRC+ROjM; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dc236729a2bso719399276.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 02:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710321602; x=1710926402; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YfNa2HcP33gx/cy1Fy4b4hmZtnEzlibHuZBeZyU9yds=;
        b=RRC+ROjM8CdCjs9dRY/uWngwa918h88Jyrb23Y4+l2On7wubcMdTuotiTB0BTDzJum
         KcOHDU9CK2Do7tC9RDMeclFHe1BXxcVMaHaoQyCKltcX4QY7WKPvXZCWATELk1AwVViB
         Hn9pLhJ5E3xNXaZq1QKrGRF8VMdI9sYc/F++tW/dqITt5wrwJQJkd3lKiOtV5iL+lNia
         Jknnns1+Pxdnx2fDwe5978In9ChaU1fU0QBecqn4wFNrVD26ZK6VY3xggdKmlNBk92Xj
         ccQwaHK/JncHhaXAxPj49PBCCzuPZGvO+TwVnz1UwUpOgZmTGo/jxsxzL9LL3VV05hVD
         ryrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710321602; x=1710926402;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YfNa2HcP33gx/cy1Fy4b4hmZtnEzlibHuZBeZyU9yds=;
        b=fuk90u6p3vSaeUSXMWtwzM7U60xFVovnU5HCrrjlXNExN5UPpfndYP4nBAVRu5rkv7
         Qr9cmmahgp6+ZUzIJpmUGlz9M9PN3b6AAn7ZYTyUypb5p48GfN0rmTxYT8uiOOEihLK0
         Jzo3pU2MKwbVEih4j5hL5GOCIsg/Gmar0k6MDA43lgrLl5Vv7ztYdYw5Zn+NGSyX4H10
         kGR3JqC0SZLYgvSwa2jGk/Sf1aaaccwssTlY3ppDBDinB+ko7xQolgZH0QJZiwq61GCc
         DeafiHX24ucNo1hAt5cYVZ2EDpDtCyMSmAMQgo9nZgaUnCFmxHQeQietYNNKpSLYarrB
         nL6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXaMeGoyyzJ6wN7GYm9V2Y4XlvGM27fuaFyyr+qx6Nf99wajTZE52cqWurrjrI1BIPPpqvvvmsA8mM5Q4xUxwsVc95xsSgUzIvIBA==
X-Gm-Message-State: AOJu0YwiHnx6LTz+WjC2Hm35Tv+CklcjPrjSy5Zi/DCvLOlW9s9oXRzu
	8VKqxd5P/V7YaoulUVeuTFsqsjLG2MKPAy7tiQ5RIIA1RKshoHM49NdZ96fsYvmxDog4tXs4Vmx
	uKQWlds++naVcpZJruc5Iu4b0x4Frh7x75U3Oww==
X-Google-Smtp-Source: AGHT+IHTbEDBjZpoqkNK31rikuCu4MXa66H8dPvnQW0wuW+MJy6rtAx+cAr2w0I+xMYKIxfFXSHxX2LAeMzGl3+xUNg=
X-Received: by 2002:a05:6902:291:b0:dbd:c442:9e60 with SMTP id
 v17-20020a056902029100b00dbdc4429e60mr1750327ybh.36.1710321601697; Wed, 13
 Mar 2024 02:20:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ZbFH0UE9zZQFWm8Z@bogus> <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
 <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com> <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus> <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus> <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org> <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus> <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <3aad2e6b-88fd-06ab-95c5-d07f012e8306@quicinc.com> <bd2dde74-e4b9-4cf8-b1f1-9bc52f3b83da@linaro.org>
 <989dee90-9c44-09b9-6940-687082109ae7@quicinc.com>
In-Reply-To: <989dee90-9c44-09b9-6940-687082109ae7@quicinc.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 13 Mar 2024 10:19:24 +0100
Message-ID: <CAPDyKFpNo1g9j-JojzN3sbq==mnaKsamrd9EyskDUDZS=AB3mg@mail.gmail.com>
Subject: Re: DT Query on "New Compatible vs New Property"
To: Trilok Soni <quic_tsoni@quicinc.com>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Nikunj Kela <quic_nkela@quicinc.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, krzysztof.kozlowski+dt@linaro.org, 
	Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, 
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 12 Mar 2024 at 18:25, Trilok Soni <quic_tsoni@quicinc.com> wrote:
>
> On 3/12/2024 10:21 AM, Srinivas Kandagatla wrote:
> >
> >> Basically, I would prefer better than "qcom, fw-managed" since this is not
> >> a qcom specific problem.
> >
> >
> > We already have something like this in mainline where the BAM DMA controller is remotely powered.
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml?h=v6.8
> >
>
> As you can see it is already fragmented. Why we need to create one more approach
> which is not scalable and specific to SOC vendor?
>
> SCMI or RPMI based firmware is not a QC specific. I also have allergic reaction
> when I see drivers modified w/ if (fw_managed) {..} but that is a discussion
> for some other day.
>
>

For the record, I fully agree with Trilok here.

More importantly, why is the other suggested approach(es) a problem? I
don't get it.

Kind regards
Uffe

