Return-Path: <devicetree+bounces-86595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A527D934E97
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 15:56:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5CFC1C21216
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 13:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3646813E88B;
	Thu, 18 Jul 2024 13:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OfHdyYKq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA9013DBBF
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 13:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721310968; cv=none; b=KGl0PxTpO2UtglrvOBk1fscs8tZTHGLR5WA31ZehT0L4cNNF7o0S3uHU8eXkIDoV44x6BIrsJ7oLMtxLMiqRu5C06hphavuQW8q9RUPR48YwMqAB3rutgDhk+mrDWh4Rp+XjPm+QnYdLXNyW7TsFBRLSYXMXsZLnaiEQCpfUXhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721310968; c=relaxed/simple;
	bh=kiAtcefpFbn8MafkCqnU2MkhxG+KwWmc6iZ6+xlp1nM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bHW0jhreaJSDorPFuYLyAikeTyYpXtkLmBW5DVsxhcL0s7uxdFyQrnhcZ07e1Dq3/qEyNAMseLOICDCNFQMwFsFFYUgAXRKLeDmsWBApsnofVKZtkYpa7Jaueo0lWG5gIIkpn9fWaJ+DlOs+b2TkwL4eFfq/mJk7dvLpWxMjnw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OfHdyYKq; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-825a23c5e4cso55817241.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 06:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721310965; x=1721915765; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hjaqbuLagF0JEEpk29ZLJev6JqAlNKRQML8PETlv7eA=;
        b=OfHdyYKq7o7lqK/nLHAGVDdXH7M/OJqFFzo98Lzrur11bYi1qyKa3Xo6F53GQSqIOn
         1gljjfKi3GOXIgdzqofKIcp8MF2SadnUZurJU3ca1VCfVtfzLrHS4n0JTW5c6yDfY/CR
         Mxn7Cw4NMJalariRzZ+ILcOMTKIKsk4sv3ETDHrbHq38e7dFij/t3yis33JPIkILRfv4
         f+9NnDNebTXY/HiHMvYvD6XjVT8+S2li4WETnunAhB+UaTqGteMv4MSXZx4EqC9VuETi
         1MoL8z9iUXOeCxVrrYDVQEbxXuSxn7fl1ggOFQ9RQp/86UBbZpoul0rvPfQ7J8c5joLj
         pQUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721310965; x=1721915765;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hjaqbuLagF0JEEpk29ZLJev6JqAlNKRQML8PETlv7eA=;
        b=RjbaDTt+xxo+NVkpDRPEHS1f/OIfi9rA8yVFsFGcO+qhtfcNu75CLthggBJN49s+Ki
         IgbMVw4oJ8O/ERewFN+LHwoWe9UGc1iSVnQha+zYUXki8VV+xmVJzmD3e1O8Cd8dZeU2
         AlV0xKyC6ZLPMAJy9OZlBJ13rDZLt8nF5ulMsgxLM24kHJMxRNjqcuf8adBHIMLKkttn
         nD/VINs/IeiPp5dezQGQtCJP0Hg0pcgCXBpU+v61jw7We5vdQqYesso3K3e95Y96GJTz
         KBk535NOukmGccKIVZV3D7W18y/Xdmcp54Jc4z2Hy6MVfWgvOoZZKl+KTFlGGfseE8uG
         JPXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcBWu+60oouVb0xWIPFB+DAuvK8/JgnWgGC+naYHyoyQz6uGMYVtrKGSIi7Qekulp74Ci1IGVwBtIvZM6gTsMqMMax7ODYtkYRlw==
X-Gm-Message-State: AOJu0YxnnChxMSrbiGQ0xzGPXZa/fsGTPgZcJuv5heKwyK5nOHw5SvUr
	Fw1ksRpGkaTxs6QDFwDOzkCe733m7Gamj8rXBUUGI0kC9lY8i0T4VPi9poau0O8yn6z3ok2Fhhj
	I3MpNMrIH/DaG6+TKItJ+qOzMSOEPlygL2bDjcg==
X-Google-Smtp-Source: AGHT+IEBao5ItMP4QyT2LAfmrmibbMJ/4flzNcciYnrIbz6h5/cn5rBOA5b/EI/enk/7jAbX+4iFkPp6JDuYiX+Ou7I=
X-Received: by 2002:a05:6102:2b83:b0:48c:44c4:75bb with SMTP id
 ada2fe7eead31-491598fda1bmr5399521137.21.1721310964320; Thu, 18 Jul 2024
 06:56:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240718125545.2238857-1-amit.pundir@linaro.org> <qitt2j5hw6pax7yekdooutxebhkznhdv3aafnhkysr5fjcbmd7@xqbp7h3ld4gs>
In-Reply-To: <qitt2j5hw6pax7yekdooutxebhkznhdv3aafnhkysr5fjcbmd7@xqbp7h3ld4gs>
From: Amit Pundir <amit.pundir@linaro.org>
Date: Thu, 18 Jul 2024 19:25:28 +0530
Message-ID: <CAMi1Hd1wzvzStEv2zoNocvYBkJDis27vzCDcBtMruQQ5TdOkDw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550-hdk: add the Wifi node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, dt <devicetree@vger.kernel.org>, 
	lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 18 Jul 2024 at 18:36, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, Jul 18, 2024 at 06:25:45PM GMT, Amit Pundir wrote:
> > Describe the ath12k WLAN on-board the WCN7850 module present on the
> > board.
> >
> > Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> > ---
> > v2: Changes suggested by Neil
>
> Which changes?

Neil suggested a few changes to enable 'bt-enable-gpios' in
sm8550-hdk, now that the hci_qca driver uses the power sequencer for
wcn7850 https://lore.kernel.org/lkml/d3416be5-b97f-4db6-a779-9c436e41dd72@linaro.org/

Similar to this sm8650-qrd change
https://lore.kernel.org/all/20240709-hci_qca_refactor-v3-6-5f48ca001fed@linaro.org/

>
> >
> > v1: Kanged verbatim from 490812872449 ("arm64: dts: qcom: sm8550-qrd: add the Wifi node").
> > Link: https://lore.kernel.org/lkml/20240702091655.278974-1-amit.pundir@linaro.org/T/#u
> >
> >  arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 113 +++++++++++++++++++++---
> >  1 file changed, 101 insertions(+), 12 deletions(-)
> >
>
>
> --
> With best wishes
> Dmitry

