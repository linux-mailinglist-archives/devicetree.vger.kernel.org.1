Return-Path: <devicetree+bounces-12666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE077DACF8
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 16:09:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 677331C2090A
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 15:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19A29A49;
	Sun, 29 Oct 2023 15:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GR6bmFPh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26BD7F9
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 15:09:10 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06EE1AD;
	Sun, 29 Oct 2023 08:09:09 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9d34b2b51a5so52213466b.2;
        Sun, 29 Oct 2023 08:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698592147; x=1699196947; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JDVvws0xcol9Z8gLUvHiqok3duMmv3cfjwte/9TgRL8=;
        b=GR6bmFPhJxo9bzgOxo9Nlp5nEAeWOcxwqGCmDl41WUAl67T5EpSLSu8b5OWjj3Ejc5
         cunC/CRFuuZV7VMC01iOYGwpzmPCIgcWpw2FbqTWRwGtvFVtLbj57M7NDeWto7xL/OXX
         dZzhQ/54kMK74tb+AkXhL5iQ+eDE/twvexrK/C0RCD63rNg+U1HdMB6nfJbENjs4yBVV
         zx9x4E8VJ23iTh7XVTV8yHDaVzopmAkpfl7w5T7qGeW3+IL8EUBdvNlP06HIGO1F0ISm
         rTEilrNlpjWID2Qn/yRgduQf+uekDNpEqfroRZCP3ObKjiiGNdbhyNlTkPZnurRaYPnS
         YX+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698592147; x=1699196947;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JDVvws0xcol9Z8gLUvHiqok3duMmv3cfjwte/9TgRL8=;
        b=fC0DQlCvvGZ/cxi8TJfqMR2cUMH+mQybGdVlomHP5OHSNOKCYC01KnwrVhpc6VCbUV
         z87pgW4fFQIb0yX/LMNKCitKB5YTiN+DnNq1Icrr7VeOVAkmjZ36noesJ/RwnApDUr0L
         F+y4m1yF9RpsOIWECJJtKEX4r6FOtItE2WQ7rGKR2uOX7cX2xu6CorsOutEm532KHV+I
         QOoOt/Ul3teL/3XNvQL00c1uovwn1z6IMVnURijRLOG9RxxqeUClZSGaOpxUveGWDQJA
         oKvSiX1PL0JIezannc2BthZ3nmTBE06zgGULphxdGG4y/9idWpiwyFmVCvI2dPxrLVBV
         2vSA==
X-Gm-Message-State: AOJu0Yz1zSsbqZJ629x1o0kxNZhg0/j1ZNKzkAZ3nwLjgwuORONijUWf
	JWvoiMO2queX07mXq4WJBJ4=
X-Google-Smtp-Source: AGHT+IE+TbbZnZkg8aYetZpu32U/3BElYo/MIJd7ZMusXP8zXHlZckohHAOeTlnBDVtu1+IOcInWaA==
X-Received: by 2002:a17:906:f74a:b0:9d2:7f29:2baf with SMTP id jp10-20020a170906f74a00b009d27f292bafmr1902079ejb.75.1698592147069;
        Sun, 29 Oct 2023 08:09:07 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8109:8c00:3664:9abe:5e88:5792:87a5])
        by smtp.gmail.com with ESMTPSA id lc9-20020a170906dfe900b009ad81554c1bsm4391076ejc.55.2023.10.29.08.09.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 08:09:06 -0700 (PDT)
From: Nik Bune <n2h9z4@gmail.com>
To: krzysztof.kozlowski+dt@linaro.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	afd@ti.com,
	linux-kernel@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux@roeck-us.net,
	n2h9z4@gmail.com,
	skhan@linuxfoundation.org,
	wim@linux-watchdog.org
Subject: Re: [PATCH v3] dt-bindings: watchdog: davinci-wdt: convert txt to yaml
Date: Sun, 29 Oct 2023 16:09:05 +0100
Message-Id: <20231029150905.108531-1-n2h9z4@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <147aebc9-8d76-49d4-a80f-eb6894868688@linaro.org>
References: <147aebc9-8d76-49d4-a80f-eb6894868688@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello! 

>On Sun, 29 Oct 2023 at 08:31, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
>On 28/10/2023 19:51, Nik Bune wrote:
>>>> +  power-domains:
>>>> +    description:
>>>> +      A phandle and PM domain specifier as defined by bindings of
>>>> +      the power controller specified by phandle.
>>>> +      See Documentation/devicetree/bindings/power/power-domain.yaml for details.
>>>
>>> I think you missed Rob's comment in reply to Andrew, about constraining
>>> and ordering the power-domains:
>>> https://lore.kernel.org/all/20231026203037.GA327324-robh@kernel.org/
>>>
>>> Cheers,
>>> Conor.
>>
>> I didn't get what should be done with respect to the comment above:
>> Should we wait for the response from Andrew,
>> or should we skip and remove the the power-domains definition for this binding,
>> or add "maxItems: 1" to power-domains definition?
>
>None of the options above allow to send the same code without maxItems.
>Sending new version without addressing feedback is basically ignoring
>the feedback and next time you will have annoyed reviewers...
>
>Best regards,
>Krzysztof
>

I didn't ignore. v3 patch was sent 37 minutes before the Rob's comment to v2. 

Kind regards, Nik.

