Return-Path: <devicetree+bounces-6146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A177B9F4E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:21:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2444B281B97
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE7D28E0C;
	Thu,  5 Oct 2023 14:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aceart.de header.i=@aceart.de header.b="Xa2ycxit"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBA428DCA
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 14:21:34 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB46116AED
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 07:21:09 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50336768615so1402679e87.0
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 07:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=aceart.de; s=google; t=1696515667; x=1697120467; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:organization
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=onRU8Y/jXDlaGXA+m6kH7bamAm9GIlcBQ1TGe+vGhSQ=;
        b=Xa2ycxitRJmkmyEPwvy1Ky5DIfNkkHFzikrjB2wJ7CqXvvmT/Z/MZnGcGgTZdCInRN
         oCGvz1UKgsRIj0lG7hAHF/IMkLubyfCiAh/yAQvfhWMKUuZLdGrJD/NaYtH60jysuVC7
         1KbxrebVK+c+x9p16HQqKvB9ZtH7P5n04xkqYT1yHm7zZy1n1Ud6NAedTuvwLRdCOgwh
         cy/32XlHQcX9/BvG/N9Ta7YSVBt6/Yr2x4/dftCaW9Ayzi7oqFO3rslV4f3seZj7h/6N
         TlXK/hNyM499cTblUyi1QaiCDX4fKJQ7zVfYDtAVEz/BgTj4ohw6aexdfPeRAjMMgxS2
         6bWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696515667; x=1697120467;
        h=mime-version:user-agent:content-transfer-encoding:organization
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=onRU8Y/jXDlaGXA+m6kH7bamAm9GIlcBQ1TGe+vGhSQ=;
        b=EKFkcslNkb6Snao89FYB4k3a9h5XyS1LC+I5YPZBg1CEoz6yZlHS55V5x/9mp/l4Qe
         CUS6VPDGwJ7Hsa2Z3h7nUIskTGmPXS40RBfIkTmOmEU7N+nSIvOoQmOgBAZrUJr6JCfY
         hInbGGclwHsvcpQyus5UPVf4hM6CswrADt8Nfx7AhfWuXwCC38MAARUCKP5qhxi69HUP
         9TkfeUN6I90LlT9DCEJfmpHA7kls+8FSs9cD3dzVfDzXraCOdj0ROEyKCfIbtKxl/cYc
         XZ2Zi36SIjILDgWalMkOTfPCSpsBY0iFAJkfhpXTrqCutkuQLotlEQNvLg0OwuJfAYoA
         Qi9A==
X-Gm-Message-State: AOJu0YwuiPSGYtxUrQyOqo1SMLF9AViZ6JhW4EyUuXDKg4AzGZ5SbD4w
	iMuTGh9kGPJFhFDnLenDmccj0n50mj9hdsm+XS6BKaC0xYg=
X-Google-Smtp-Source: AGHT+IH4VhF219dRGP70eZMjQoWP5soQazPniTQw0zoui1ncQEviX4+FQu6riCbAWM7259/4rJ7fLg==
X-Received: by 2002:a05:6512:210c:b0:4fb:bef0:948e with SMTP id q12-20020a056512210c00b004fbbef0948emr4039144lfr.5.1696515667464;
        Thu, 05 Oct 2023 07:21:07 -0700 (PDT)
Received: from [192.168.2.171] ([94.186.212.25])
        by smtp.gmail.com with ESMTPSA id y22-20020aa78056000000b00692b6fe1c7asm1457287pfm.179.2023.10.05.07.21.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 07:21:06 -0700 (PDT)
Message-ID: <284103cfa6bc312ccf12a552dd61d12108fabfbd.camel@aceart.de>
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
Date: Thu, 05 Oct 2023 16:20:57 +0200
In-Reply-To: <8e6a41b2-7ad9-4cc6-8f95-93b8c2e4151f@linaro.org>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

>> Is this fine?
>> Should I send a V2 with the signoff and reserved-memory changes?
>I don't quite get it, what signoff?

Krzysztof noticed that the Signed-off-by are in the wrong order.
But I was told this alone is not worth a V2.

