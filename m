Return-Path: <devicetree+bounces-30593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B070C828505
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 12:28:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FC1F284CC3
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 11:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DECB37155;
	Tue,  9 Jan 2024 11:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="jRE56T1L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AA736B04
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 11:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-555bd21f9fdso3189891a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 03:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1704799675; x=1705404475; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oKel/uL1tajPej7Kr+Y3gD2pm0Q/5wlP7q9l4+pRLR8=;
        b=jRE56T1LeQJAkA6mhHCrJJdZN4io3r5Q1w3lsA3Q5ln52EOtCaCvigxk9b1bKXV0Uc
         l02SqWOBEwm2aDRxLaY9990nhiSA5bCCcG82N5iXrasCHFLvI//xbMgDEnSApTFTwaIz
         MSl0tgwuDXnJQAxEyB5RBX4efzT5xCnxG+Eq5WBttWGmroJWSwIZBIRj7t2TRe0e0ToY
         Qpf93VqfghWjBWrSvIfCg6iHEtX9UAjbvMz4htxGj8R9rgG+Sj0OWoQT1E2nnwbujJxN
         hFnH3jAgeYx3+0Tlt26MUmgT40Lr3b2vukLkIF832pMOPF7wvUB2JSeGSCXx++3SEnj/
         0xgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704799675; x=1705404475;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oKel/uL1tajPej7Kr+Y3gD2pm0Q/5wlP7q9l4+pRLR8=;
        b=Bbc4/P9BVkaIlN4guMg44AQiwFXnARBxUvn9pOrxdVEX5Gsu0kyjHXuVbtYY+AGtyO
         8iMyzJXVyS8gnFBA97iGgiQj3wqgjKtnNW6/mjt3rwz1AYS1Bqq1UnMXvF5pUDd+dBGv
         nolsxMVh94t2km7EJH6O8FMGP3LR/g3WAJ75qZpAPV8cj9OeQ4HBgPBBqSJUinV+p9UU
         cyh/mMIwironNMnr+XslHD+ajCKRoC7RK5qrQK0qabyjh6e5nqzORZP5TnZgVVGpdiKk
         +hf5f+XqwAHkL5dIvJNuWR4JL4fvTrJpqVWtPHSoC1ZcqGuwoR94WB1NyZw8iy0zqfHM
         DToQ==
X-Gm-Message-State: AOJu0YwLijXaUZT6aCeiORb9MwTIfa2KZedLeTepIBMIJ8Xf8IVJW/7G
	FnfX7xZybsEow3eaJlP5QDpkLdUOXmW4bfqlViiXkzkWDGeAWw==
X-Google-Smtp-Source: AGHT+IFLDOEYrnaFAb1pvyYayLgZLIaQwOsuzV7aIZuufvzjoaHL+sD2wiqnSgjHvZSMG2kvOL3hGg==
X-Received: by 2002:a50:bb2f:0:b0:557:188b:eccb with SMTP id y44-20020a50bb2f000000b00557188beccbmr2752722ede.84.1704799675115;
        Tue, 09 Jan 2024 03:27:55 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id b6-20020a0564021f0600b0055678085e27sm847587edb.20.2024.01.09.03.27.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jan 2024 03:27:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 09 Jan 2024 12:27:54 +0100
Message-Id: <CYA51QMVFQZF.3NEPC3R2QY2VM@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Andy Gross"
 <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Thara
 Gopinath" <thara.gopinath@gmail.com>, "Herbert Xu"
 <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>,
 "Rob Herring" <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bhupesh Sharma" <bhupesh.sharma@linaro.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-crypto@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 0/2] Add Crypto Engine support for SM6350
X-Mailer: aerc 0.15.2
References: <20240105-sm6350-qce-v1-0-416e5c7319ac@fairphone.com>
 <c3e82c7a-fc03-44c6-bf83-97dffaf22dba@linaro.org>
In-Reply-To: <c3e82c7a-fc03-44c6-bf83-97dffaf22dba@linaro.org>

On Mon Jan 8, 2024 at 1:40 PM CET, Konrad Dybcio wrote:
> On 5.01.2024 17:15, Luca Weiss wrote:
> > Add the compatible and nodes for the QCE found on SM6350 SoC.
> >=20
> > Not completely sure how to fully test it but "kcapi-speed --all" shows
> > no issues. Let me know if I can/should test this more.
>
> I think I used `cryptsetup benchmark` with and without the ICE enabled
> a couple years back. IIRC the CPU should be faaar faster but also chug
> power while at it.

Are you sure you mean QCE here (which this patch is about) and not ICE?

I'm not aware of them working together somehow but I wouldn't be
surprised if there's something since I don't know much of this area at
all.

Regards
Luca

>
> Konrad


