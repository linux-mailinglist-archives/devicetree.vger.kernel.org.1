Return-Path: <devicetree+bounces-4506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2D97B2DEA
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:38:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E7E0A282D5A
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81FD9441B;
	Fri, 29 Sep 2023 08:38:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3188F5388
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:38:35 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17BD01AA
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:38:33 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-99bf3f59905so1821477766b.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695976711; x=1696581511; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=91bzG0Gvztxq9AzwDAH8hNYEi4ko/cSP4Liv9cAEuIU=;
        b=DdRblbFAPurXIUU3F+cpsJB31BK2VR2TiUJd5qijD2gkO6V2FAjVHMq6flca39GuDo
         Voo3bojKdLA12UeP6IUTduNOylBAw2iMp8pvm/tLkRjQh5yUhcAUYsbV1Nl5y/Iyqmm+
         3JY9IfjQWtMfaSQcJCGaPnUhdqiYYkNpkVIvXvPz8V/kP8+dgmmxWXMTp3Ywba9U56a7
         hR4lJBnX+SsfiJZYmRaU2Hv3iZCfQEZgYnXW7B8nxYUHL3yMKu0tfOcqDJ/P5AIs9kCB
         lVOvqStfxIJdwaWpft4ljxadtUSc1du876WdyQVh7Mbl5LrF7Oz/5KRVT/cGyq1QV4oV
         Aqfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695976711; x=1696581511;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=91bzG0Gvztxq9AzwDAH8hNYEi4ko/cSP4Liv9cAEuIU=;
        b=bbk4mxVzBkWBq9nizetxsYvg5NoYw4btyimcvtu7x3eUQDP6/gy3J7Y0pv/tgEjvdN
         PlbXRQifPGrDsUARCUSS54ktr3MZquZuO+XN4YfHaY/wwgT7/jSkKCByH04sTZOg8U4E
         3UNqiuWgShzsrT22DrigRvH6vdeukHuWsR2aNps6ECcRk1e1dg09uG41dC5bAv9sAAxZ
         rVEffZo6yPY1ehLl9ubMqNfsdwfuGOkQuoZ/Z0YHg4rzf0/P9i7vfEC/3GT0nJCAUXdp
         bA+vUIlCd+v+/V+XMFyitknvHJFbTfLFbD4CzlHiE4/HwcGXO7S/jECqDjZA/AVElBTm
         T8FA==
X-Gm-Message-State: AOJu0Yztr882JgUtOfdg6TZK1hgdBnr5ILejYzoWIuqlFEHtdGkcTXKa
	n/g7RMgovfs00pPmvpvABDJVXw==
X-Google-Smtp-Source: AGHT+IHLsYBhakgorb9cz9xMHTZREOY3MKxX8RWfDk0MxVttJTRKtifVvOUBTcfVorek5kiIlkefrQ==
X-Received: by 2002:a17:906:3402:b0:9a1:bb8f:17d0 with SMTP id c2-20020a170906340200b009a1bb8f17d0mr3167830ejb.30.1695976711532;
        Fri, 29 Sep 2023 01:38:31 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id qk8-20020a170906d9c800b009ad89697c86sm12208965ejb.144.2023.09.29.01.38.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 01:38:31 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/3] Enable venus on Fairphone 5 / non-ChromeOS sc7280
 venus support
Date: Fri, 29 Sep 2023 10:38:18 +0200
Message-Id: <20230929-sc7280-venus-pas-v1-0-9c6738cf157a@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPqMFmUC/x3MMQqAMAxA0atIZgM1pWq9ijgUjZqlSoMiSO9uc
 XzD/y8oJ2GFoXoh8S0qRyxo6grmPcSNUZZiIEPWePKoc0e9wZvjpXgGRQ6+tcaR65yFkp2JV3n
 +5Tjl/AHEswkEYgAAAA==
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Devices with Qualcomm firmware (compared to ChromeOS firmware) need some
changes in the venus driver and dts layout so that venus can initialize.

Do these changes, similar to sc7180.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (3):
      media: venus: core: Set up secure memory ranges for SC7280
      arm64: dts: qcom: sc7280: Move video-firmware to chrome-common
      arm64: dts: qcom: qcm6490-fairphone-fp5: Enable venus node

 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 5 +++++
 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi | 8 ++++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 6 ++----
 drivers/media/platform/qcom/venus/core.c           | 4 ++++
 4 files changed, 19 insertions(+), 4 deletions(-)
---
base-commit: df964ce9ef9fea10cf131bf6bad8658fde7956f6
change-id: 20230929-sc7280-venus-pas-ea9630525753

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


