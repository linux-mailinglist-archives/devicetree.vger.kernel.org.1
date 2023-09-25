Return-Path: <devicetree+bounces-3196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 594257ADA10
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:28:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F28222812F9
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FDA31BDFF;
	Mon, 25 Sep 2023 14:28:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E5111C8B
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 14:28:16 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D92C810D
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:28:14 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-405505b07dfso25913305e9.0
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=aceart.de; s=google; t=1695652093; x=1696256893; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:organization
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o3p8nJzBx02DNMJ+7EnZtFgR5MAZSx4FbGOUUlLpYxw=;
        b=d9Lkph9E3pMO4GQYRdiuYmhfuCQRo0HYu2OVHL7mzNYBTBpuRd0DftyfFmVJ5F5Wm1
         N/kcJQtI7m54vukvj6tNBZpFPCqWY8PfyxnlGREn1IYM/Lo9gkfMCHcGu5GX5GsfgOyR
         hV4g+AP56ngrIZZxshO46d+Hz1D0jtn+Qoq+alBkAafHdb18uvWcgu3kfYMdrUq12nTy
         mmJvQi1R8tdUnMtRITfbzTHmXXw7T2q6RcO1D1Wws7b1U7hijbEYS5uI00PlomE4ZMZt
         nVZBdAIbvr26Kc49OOxUd54kPMOfIp4ROU4wJ4Nx7BxKZ4gi/IkfCM+Kfc4nHuwOvigR
         mTSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695652093; x=1696256893;
        h=mime-version:user-agent:content-transfer-encoding:organization
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o3p8nJzBx02DNMJ+7EnZtFgR5MAZSx4FbGOUUlLpYxw=;
        b=QI2zipwTo4/OpvuEjf8LUCjndCOXnSxN/Lqw8iRrKiPsnhwMV2w0AVh0MJtXNzWgw5
         8ujTeSpR63zH1E1JQgZCSt1H4N6DxKg6yrPmRSGvWMjCbdI4+zt7W+F+Q3br8RJykRtS
         OKOI3dUNrq2EREFdt77fDjJS+bcvR59Cdnhx9Zxj6XIhrFtpz65RJrl8Qg1IWn+n65b4
         UThFcfRDrMeTOBsgyZYyUlJ59zN851xXC/U22JkFtr44BanMqumyttbG/Zkq4j5Dqb30
         U3qUgRf0Hc0KKgfhTFqa2SjQ2CctES0ZQ3zb4MwyKJVFXSBzWu9/Po8xfVmgBTjy2AUa
         M9zQ==
X-Gm-Message-State: AOJu0Yx25uFVV4BMk4t+zF6dSZLFa031R7a7xxaPNmQ6GC6EP7703sN7
	5PEKBUfk2JkH44+Y2y8GOZOn8Q==
X-Google-Smtp-Source: AGHT+IHyhLLHIMrxMT5+MjTuP9mXxsxsvs3bZXzseRBVbE5hWbY+ZOUden2sS//p4i8tzLc8BaX4jw==
X-Received: by 2002:adf:ef0b:0:b0:316:fc03:3c66 with SMTP id e11-20020adfef0b000000b00316fc033c66mr5604701wro.3.1695652093259;
        Mon, 25 Sep 2023 07:28:13 -0700 (PDT)
Received: from [192.168.2.171] ([94.186.212.25])
        by smtp.gmail.com with ESMTPSA id o9-20020a5d6849000000b0031989784d96sm12043993wrw.76.2023.09.25.07.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 07:28:12 -0700 (PDT)
Message-ID: <9ca32137e42a22b016d8d417ee9e0dc024ef2aa9.camel@aceart.de>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8939-huawei-kiwi: Add initial
 device tree
From: lukas walter <lukas.walter@aceart.de>
To: konrad.dybcio@linaro.org
Cc: agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	lukas.walter@aceart.de, phone-devel@vger.kernel.org, 
	raymondhackley@protonmail.com, robh+dt@kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht
Date: Mon, 25 Sep 2023 16:28:12 +0200
In-Reply-To: <44a00fc6-d700-4713-34f0-36b172d8cb90@linaro.org>
Organization: aceArt GmbH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Date: Wed, 20 Sep 2023 16:47:30 +0200

>> +
>> +	reserved-memory {
>> +		reserved@84a00000 {
>> +			reg =3D <0x0 0x84a00000 0x0 0x1600000>;
>> +			no-map;
>> +		};
>Do we know what this is for?

This seems to be some QSEE/TrustZone memory required to boot.
I would name it `qseecom_mem: qseecom@84a00000` like other phones
currently have it.

`[    1.162115] QSEECOM: qseecom_probe: secure app region
addr=3D0x84a00000 size=3D0x1900000`

>> +	};
>> +
>> +	gpio-hall-sensor {
>> +		compatible =3D "gpio-keys";
>> +
>> +		pinctrl-0 =3D <&gpio_hall_sensor_default>;
>> +		pinctrl-names =3D "default";
>> +
>> +		label =3D "GPIO Hall Effect Sensor";
>I think we can have both hall sensor and V+ under gpio-keys
>
>And then I am not sure how useful the label is for the container
>node, maybe you or somebody else can tell me whether it's used
>anywhere
>> +
>> +		event-hall-sensor {
>> +			label =3D "Hall Effect Sensor";
>> +			gpios =3D <&tlmm 69 GPIO_ACTIVE_LOW>;
>> +			linux,input-type =3D <EV_SW>;
>> +			linux,code =3D <SW_LID>;
>> +			linux,can-disable;
>Should this not be a wakeup-source btw?

I am not sure how to change this. I would like to leave this as many
other hall sensors seem to be configured identically.

Is this fine?
Should I send a V2 with the signoff and reserved-memory changes?

