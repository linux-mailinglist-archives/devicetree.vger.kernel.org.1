Return-Path: <devicetree+bounces-12619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2157DA82F
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 19:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A6EE7B20E95
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 17:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF8A171C4;
	Sat, 28 Oct 2023 17:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NxMl2YYc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2B6443D
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 17:14:07 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D456D9;
	Sat, 28 Oct 2023 10:14:06 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c50305c5c4so45707781fa.1;
        Sat, 28 Oct 2023 10:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698513243; x=1699118043; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0UndJn2/nu2Zy2RQaz4YjrCQP6c26sYsuTUBg3bCtZo=;
        b=NxMl2YYcWSjPaZKD9GpewKhKMqLqX9OgtcrwbskK3YI/4bWxGpjjgQ7ChmimGQoMeq
         sebq0j4PmQ6UvPHwUYW5NN5MmZAaoy/F7kHpGflHMFWieFZnlMH9QgTh+1WHmrhZVtBx
         usR+OA/tvGvN67XwyTcJT8xJ1ooeTP0E2FcnNHAEgg6mgeb6k6BghUPH4Df5zw5NrH2O
         iS9T+aBscR4rq26aD6As6Yhk0zSJwMSyQ8g3fqcYMggKegyFuoEhvpj7Q/2Gy9y5iFz0
         3QBgQqdb1ad+v54ebJabz7gkjdCnq4Ol5jaChUvqNJ7myGTkCG0USZRFdQdNXiN+qXKL
         A7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698513243; x=1699118043;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0UndJn2/nu2Zy2RQaz4YjrCQP6c26sYsuTUBg3bCtZo=;
        b=qum1bNaWaTZk8NSIktlbC67A634R3HknTDo7dd5FQ1/4t9k7Iafzn8YaxdQ7Y4G0Le
         iOVZe2z7VliST6S5h3gIl97x4mUHpUhOEsdP/YpE5ZlFf03Rw4o4uz9zdY0U04D46ASl
         PQcDwl1Ps/Lgq/hUBpcRkCDGbxpM23f10klb4XvZS7MXQgnO8GKN5iX44Wv0ZxXuM4cf
         pi3l/C8oLgiC0du+Htte++5IA2blrBMaflI3Ha/5CxhslVOBzF4I7PCjMzUnWMA8TkS5
         IK7rfnrHw8nSUaOVXqXS/VGsm4qqED5Q6ti6uk+epP3VeJynk0woWhmb0Y5+F9bd7cDS
         oJDw==
X-Gm-Message-State: AOJu0Yz7o3hIov/e0AvsY9YYwBa8giBKCHbbS+eKA5YvoQAhJ8xYxxHI
	0BmdYlzxq/dy088zIXYxvAUER8zHpQm0et5xoOr/Deq1Jww=
X-Google-Smtp-Source: AGHT+IFs8Uw2QcTg4vjN1FVGlo0p55NpmQVez61RyZIbq7D+y/uFiVQyYJfrpgfdxsW6gNkAoqJ9rx/kuz8u8LnHVAE=
X-Received: by 2002:a2e:a16b:0:b0:2c5:13e8:e6dc with SMTP id
 u11-20020a2ea16b000000b002c513e8e6dcmr4649383ljl.31.1698513242832; Sat, 28
 Oct 2023 10:14:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024154338.407191-1-dsankouski@gmail.com> <20231024154338.407191-5-dsankouski@gmail.com>
 <af9f75e3-0b64-41b5-9854-c7edf544c9a0@linaro.org>
In-Reply-To: <af9f75e3-0b64-41b5-9854-c7edf544c9a0@linaro.org>
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Sat, 28 Oct 2023 20:13:51 +0300
Message-ID: <CABTCjFA4Y5o8S+JUh=9h3zHo2VCRJCejabs_UAkn=n1WUnYK3A@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: starqltechn: enable more features
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

...
> > +
> > +     touchscreen@48 {
> > +             compatible = "samsung,s6sy761";
> > +             reg = <0x48>;
> > +             interrupt-parent = <&tlmm>;
> > +             interrupts = <120 0x0>;
> interrupts-extended with a fixed irq type (not _NONE)
>
Can you please explain why not _NONE?
Documentation/devicetree/bindings/input/touchscreen/samsung,s6sy761.txt example
says it should be IRQ_TYPE_NONE.
AFAIU this 2 interrupt properties should be changed to one like:
'interrupts-extended = <&tlmm 120 IRQ_TYPE_NONE>;'

