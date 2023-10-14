Return-Path: <devicetree+bounces-8644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE1E7C9577
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 18:49:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF1CA1C2093A
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 16:49:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB98618633;
	Sat, 14 Oct 2023 16:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EHYGJqeY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5567418629
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 16:49:49 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E61FAD;
	Sat, 14 Oct 2023 09:49:46 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9b96c3b4be4so475820866b.1;
        Sat, 14 Oct 2023 09:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697302184; x=1697906984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=veap3HUMBgA583vnOk4BmY03alSHYRQTG/HGCOjLb9g=;
        b=EHYGJqeYCpBzoWk6D6PuIGS0dsdxmaKcp8QUfUcpzs8tZV6kSNonT25qI6xEWzyr0+
         w7RU3E7TltjVPXRAnZ70EgNW7qvkaiy5lXnsptXK/cx+ws7ozF0SQcW9CLUcRJONXccm
         TFA643QTBKoorlN5ssBdt50gX/eBuwYrvC4zS5Pn59CMRkxiyTb7rKub39sG0BzxaMEh
         hC56oYgcHCDvqyp3Vb/Yy6gYaf2GkMITEoItwqy7FkIAkuY6Mq2IwDxD9Srw1klNhhEw
         bm8nv/Hh4j9u3Z+DBTZ12G4ILNVw6RdAVZxgpDhMDxDxFWMfX+Ek/dmUnOlNSk3bquQZ
         ITYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697302184; x=1697906984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=veap3HUMBgA583vnOk4BmY03alSHYRQTG/HGCOjLb9g=;
        b=vT+zIr47jOV43wTiLHaQtphUvEjfeTD8chldDnBdwiKcZ5c4VpBf4kJBthwFiUvcLh
         whOxMOSYiY5Jr3oh3xsx+IxFltCuuHZT6PmqvQQFnXPJ+WF5or/C5y1l0TRuuLciA7CR
         hKztji374CBe1Ui+PV5IxGgAbaqVfC8bp2dk/Tagstb+95Lgu7K7aWjpBiTJ6Xv++7Wl
         C2OD7BH/j8UpXiE6EAW6r0qlHUvuvCKl2e4p3Ee+P+PouK06Vl+aTHjd7gXT3gfgP/Iu
         gJ2Ql9gagiu7CQuSaDMZ4mqVAXXHO+hmzv5yTkhLgdUYI5vmZkqJWeRSaUw5k2CnhlrA
         GAaw==
X-Gm-Message-State: AOJu0YzN7/Uf/+G92ZlRAQv4EJbuKdyvnOHURu7GX1GMemkq6Oy5BQXn
	uBuQDnifaLhrC9Eex+JPiGY=
X-Google-Smtp-Source: AGHT+IE+stZPfZFt/v8+kjd4oYjAoJOqwImXshPcHDylzFE0ASyB4jB90tYB51ZrQ4N7mmapG3cYdg==
X-Received: by 2002:a17:907:8691:b0:9be:d217:40b7 with SMTP id qa17-20020a170907869100b009bed21740b7mr1559152ejc.32.1697302184285;
        Sat, 14 Oct 2023 09:49:44 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8109:8c00:3664:9329:4692:d4de:7b69])
        by smtp.gmail.com with ESMTPSA id w23-20020a170907271700b009b654751c14sm1120727ejk.47.2023.10.14.09.49.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Oct 2023 09:49:44 -0700 (PDT)
From: Nik Bune <n2h9z4@gmail.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	skhan@linuxfoundation.org,
	stwiss.opensource@diasemi.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [v2 PATCH] dt-bindings: watchdog: da9062-wdt: convert txt to yaml
Date: Sat, 14 Oct 2023 18:49:42 +0200
Message-Id: <20231014164942.154468-1-n2h9z4@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231012-flaky-humvee-0a0532621940@spud>
References: <20231012-flaky-humvee-0a0532621940@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

>This property is a boolean...
>
>> +    description:
>> +      Set what happens on watchdog timeout. If this bit is set the
>> +      watchdog timeout triggers SHUTDOWN, if cleared the watchdog triggers
>> +      POWERDOWN. Can be 0 or 1.
>
>... but you say "can be 0 or 1". Does this refer to the bit value, or
>the property? There are no in-kernel users of this property as far as a
>quick grep shows so it is a bi hard to tell.
>
>Otherwise, I'm happy with this.
>
>Thanks,
>Conor.

Hello, thank you for your review!

Good point. 
It looks like it is related to property itself. 

I checked other bindings, like https://www.kernel.org/doc/Documentation/devicetree/bindings/iio/adc/adi%2Cad7192.yaml . They have fields of type boolean with description “When this bit is set to 1”.
So I put it as boolean.

I have just checked a couple more, and looks like they are mostly uint32 types with enum, when it goes about 0, 1 bit value in a description.  
$ref: /schemas/types.yaml#/definitions/uint32
enum: [0, 1]

I will update. 

Thank you. 

