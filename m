Return-Path: <devicetree+bounces-81788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1A691D6A7
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 05:40:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BDEB281F6A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 03:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2F3B171C9;
	Mon,  1 Jul 2024 03:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="UJqI3nsG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCFF2BB05
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 03:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719805212; cv=none; b=eDmMOUf3hqH4DFYNvbonyqBMIVL0lNOm5H3XtP1aOHGgZ7tKzI06dk0yBXSfLLaauuvGJAiPGMB4zyiqqZHGSyj4ATJScW0mik4LP/M5Z/cGhgoFER7jZKr/jzxWFJOZmGbkR9XOFZri30YB3Wg4CbahyOz/p8dXgNY9UKJ9Mu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719805212; c=relaxed/simple;
	bh=lcRJAEmHTQJ6raULC6gkbkqnZMKGOXISaRkYXI5/DIY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ElcyR3Tpz44TdBuCNhgyi4InbDHc0nwtDdqURMkbZcgrFEjdiOLcLFYQxRcwyJ+3tPPmsB/sL2Em6RINz3trSphYVw9owPnb3Emr0eTKWR+0sDxoqg5Z2DWd/i0tVvpMxr77eIZLwn4W15vN4k+t7e7QoZLXVq2aLvzkXOf+5gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=UJqI3nsG; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-444fe7e9f11so326351cf.0
        for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 20:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719805210; x=1720410010; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lcRJAEmHTQJ6raULC6gkbkqnZMKGOXISaRkYXI5/DIY=;
        b=UJqI3nsGuN3hZcBp9NvLREeZCYVf59FXBhnjcuDFBNeopXtwrvt7+Rx9B7kmsFqSV1
         4SsuqG3/qnxwXcholc0DFPc4KSmAq/z0yBcm8AZe7cV7XylCzg4+4cVPMgFyDCbf5NFA
         6GTKt2JjEM7asm+hfKjB9mgFJmfJVSkn3ZEio9q68m1dLFSRDTsuh/n9CMFsgz0/CrbM
         biN5b/XpcRuu+8iHJNGukqK+rUTVJKLni/xWcR9MP2JVR1Ldn+TA1kfBk654W4brtRQm
         8DQ8ckcdYZ+8ZIM0/1s35QviOKh/6JIMK+XDMVJfD/ztUXrUWouvIW+obCgCHDu9Ignw
         G5Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719805210; x=1720410010;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lcRJAEmHTQJ6raULC6gkbkqnZMKGOXISaRkYXI5/DIY=;
        b=MbHRHxyjegk/SALO+AVvgKLc+n4DraPLF+HVjQDftSyOEqmdIVSxi5gYynfDnOhVuI
         OWPTGaa+avsOXtstWo/TtrJPdFBVN6kA1DRgvdhHKrVNcYgbU3EnTHW6Gw4eW5ESHrFc
         dUiE328L2cZivC1ih1jTbaP24meU7GV4iM/MFkcxl7w+jHoQGTQN1yKswj6VIzb9Vtf+
         jLrBSWRbrCae4sIko2XvhQ+LwvRZSTuwHAi5bvOYH1WyIvy9NwIoMpDmkTUYkSgGJbT8
         DTDS0w9jlbZ6lRBC2nzvUUrzh+TXLM21uhtmCdLQv1BsPD1gMf3Z5SRDJt73xcniS+7B
         p6pA==
X-Forwarded-Encrypted: i=1; AJvYcCVDnD/bh8pHuEgy7GQA0iwEAB0LaUYpDHlSVfbbzcLx2IoGqsf1f3ZZ7VUpzTnu8oXDT8IZjQRYpMMxkm04S+qutJ2wiE+hwhjnlQ==
X-Gm-Message-State: AOJu0Yw0j04K+kG9vgI/rS90b1YD52Wt+SgUaMFiN9Z1oiouBTKW1uxX
	bnhD+ovDTw5RWVOgKd1DM4GUad4gJcwGDyjhhT7rjUrCfN1EK20ye4ZYc9n6+PEWOOzeOFjPwFz
	SYfqhQIM52N9tmXtu6y90Lyj2/G5uCG7bre/f
X-Google-Smtp-Source: AGHT+IHdqkjQn9wPvPDw2Eh/C0MehaQtK4v8qewVtwVVFGvFbeAIg0yq+VHAXtoLYIIkFDimpkKVCEnjTshfzCW67ZQ=
X-Received: by 2002:a05:622a:130a:b0:446:5864:f789 with SMTP id
 d75a77b69052e-4465df5271fmr4182161cf.17.1719805209738; Sun, 30 Jun 2024
 20:40:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240624052851.1030799-1-aniketmaurya@google.com>
 <20240628154526.324068-1-aniketmaurya@google.com> <20240628-primp-recite-6bf752fc5257@spud>
In-Reply-To: <20240628-primp-recite-6bf752fc5257@spud>
From: "Aniket ." <aniketmaurya@google.com>
Date: Mon, 1 Jul 2024 09:09:58 +0530
Message-ID: <CAMmmMt0RM4Pc-SWRrKVX1NdVDdZMUgPy58qPVvZvuApJU9FkcQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: i3c: dw: Add apb clock binding
To: Conor Dooley <conor@kernel.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> Missing a review from Krzysztof:
> https://lore.kernel.org/all/e3160411-59e0-4806-a00d-b99564384180@linaro.org/
>
> Also, please do not send a new version of a series as a reply to a
> previous version. It'll bury it in people's mailboxes depending on how
> they sort.

Got it, will keep in mind next time.

Thanks,
Aniket

