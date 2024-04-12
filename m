Return-Path: <devicetree+bounces-58805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 700538A3265
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 17:26:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F2905B21464
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 15:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 158B6145B19;
	Fri, 12 Apr 2024 15:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q9sFO7ii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765E0144D34
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 15:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712935570; cv=none; b=ceR+9xw14j6el6KLKGt/fenDJgh+qW/msHXOPOygsSrgsuDtAOLj7G9CmZUmmHK+4syg+BYU492M2J0kGOKgEH1s2SY9xeB3O8PfMmbpAfKGOoVdeRtYYFxxFJwFRwfyVSCgZ07GPWmeuQJ9RaZV96/1iwbehF6rFxHKzVtSD9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712935570; c=relaxed/simple;
	bh=o9IY7X0CaDwCSy4UweQdb1+I0NKnpEyXZ2zRKOjzlUU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=el/V5Tk/uZQ6fsRfkSThG/Zfzhh7y434OTksA4FHll9EKA+38Xwj/GGIXTGGTndRqPhwTZe80mA4uDG3UhLkJN6+11KF0MzuAvUZhsl233KTf37WLJ+TB5r8vljGkPVg+X4qp31DuVs7KNxVsf3GxtGnCYOVuubSASubUI9g0hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q9sFO7ii; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-56e37503115so889667a12.1
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 08:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712935567; x=1713540367; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=o9IY7X0CaDwCSy4UweQdb1+I0NKnpEyXZ2zRKOjzlUU=;
        b=Q9sFO7iinM0v+vEfoMKvuxVZoJsACvSHhZvd24DU2aYf0t9C51I98r1mdqQ42gWPym
         9LeTmXpP9gRVJiDgPvtwcRd3KAMLUp0TaD+Yonu1AVAgMmhotGKJhEcOQGSv15DIeabz
         4ldnq43EGkOvUSalLPCvmCFxF/DIyzg1lazQ2rfowhWUrS1w6sT7OrOBdy/LqSrY8lvP
         hqA8YtDN4HA6LhIAYjxGgV/l/efIN/vEyA6f0hcmpvFw8Pzu1xcc4H8/g9QaYSWsrPUZ
         N1cU6RfPAjeZrfFb6wU/dfqmK7dYGbvOciKbjwEfivEZs3EaPpmSK2v6C9nFAaPyVBUl
         gkFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712935567; x=1713540367;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o9IY7X0CaDwCSy4UweQdb1+I0NKnpEyXZ2zRKOjzlUU=;
        b=tItRglNkgxRapORYMs4CMi5k3EiWCXP0kfYw0eMQbrH4CNs+H3LfdGp/rM/aVjlXJB
         rEr1ZZ+36GwNdmlQoc5gSLZa7/rTtlKc6vPR3FejUmhJ5GhDht0xuK4IksPzkdcVGo4P
         hs8zRMMq8R9ePu/PEl09nd0s2cv0i1UgqRDo1nQq+VmZemTvzBsnAKNSGHQ/R6ZjUL+o
         6qaTK9FTU3RLuHpcYv8gIAdB2Ao9c/gFp6xL+CMnl8xYm3CnoMWqJpGXmdQ5vBDOM7L2
         kdIbwXd3tg5BhwkrVII4MNQBkWfRubUCU2oXv0GLN/c4JFQLRnN7nbvUuV5h4THEod73
         fWyA==
X-Forwarded-Encrypted: i=1; AJvYcCU4szqXRItMQCyEAdHPwmNXiSXHrv/5Yjlp9xFw+VQnB7BhzRJNKdO2GdENgHLrDcRX7JRbwhEeoLY1NCCOnPF3IYcknbH1AJLVDA==
X-Gm-Message-State: AOJu0YyJ/4uw1FU70KFzMTRHTGN4zQbAUsYMhTQriIhsp2cnLs/4IsHi
	Y6Dep6evL4GfXeIhAR0KmJ7Cvfey2/2B65oXMVvtHnSVM4EVIiKaqaCLNmbaduQ=
X-Google-Smtp-Source: AGHT+IGAjjM0SLS5r33qUtPesrT0swfDt0f+kZnlKIwFTq5mNAe4WUb9IoWZ3wHqFmVSIlrJcdPkjg==
X-Received: by 2002:a50:8a90:0:b0:56e:230c:d686 with SMTP id j16-20020a508a90000000b0056e230cd686mr1894521edj.36.1712935566630;
        Fri, 12 Apr 2024 08:26:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id ev27-20020a056402541b00b0056b8dcdaca5sm1785415edb.73.2024.04.12.08.26.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Apr 2024 08:26:06 -0700 (PDT)
Message-ID: <6e290aac-d5a1-4b85-82ed-b03220241e5c@linaro.org>
Date: Fri, 12 Apr 2024 17:26:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: omap-mcpdm: Convert to DT schema
To: Mithil <bavishimithil@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240404160649.967-1-bavishimithil@gmail.com>
 <78091796-fd0a-42dd-a4da-f7bed3025bf9@linaro.org>
 <CAGzNGRnuG_gLUrH1N57WvpKbpiNtFrcsG6nJcacQNJB_yMYNrA@mail.gmail.com>
 <ec7f77a7-2cf1-4ea6-b9c4-d4fe8a1673ab@linaro.org>
 <CAGzNGRktm5gMj=bhtX2RAzcn1v5ref+nV-HV3Fct56FzAzxjWA@mail.gmail.com>
 <c9084453-65f1-43b0-88df-5b73052ccb72@linaro.org>
 <CAGzNGR=2-us8GRB3RNi4_24QZ9rNBC7Lx0PFsWwbvxuRKk5ngw@mail.gmail.com>
 <352672fc-b6e1-458e-b4f9-840a8ba07c7e@linaro.org>
 <CAGzNGRnjCydMMJS6Cqht7zT1GvhbVtKAe1hu8oaf8YwRfA=hZg@mail.gmail.com>
 <CAGzNGR=60czJWH4=1_1Hf1yH1KZQpmDqsv_zySLr-S_D0vqosg@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAGzNGR=60czJWH4=1_1Hf1yH1KZQpmDqsv_zySLr-S_D0vqosg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/04/2024 16:16, Mithil wrote:
> Hello,
> Is the patch better now? I'd still like to learn from where i did the
> mistakes (which seem very silly now)

I do not recall any new patch from you. Please follow submitting patches
document. Each patch is a new submission (new, not reply to something),
with versioning, with changelog under ---. For example generated with
`git format-patch -v3 -1`.

Best regards,
Krzysztof


