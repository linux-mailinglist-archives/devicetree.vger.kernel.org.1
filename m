Return-Path: <devicetree+bounces-15183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8FE7E8CA6
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 21:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEF191C2074A
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 20:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19ACD1C6B9;
	Sat, 11 Nov 2023 20:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kX/kZTon"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCD113AF9
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 20:49:26 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3DB52D77
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 12:49:23 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40859dee28cso25360015e9.0
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 12:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699735762; x=1700340562; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zzxKG8FmQG/QiSceBe9NLjt7GSztbReGb177SqO02RA=;
        b=kX/kZTonsEkLGMYQZDrFfrZTnwo3Sb46n8qZg1mAIRXC0x4PFPiAs4tBGllovOH36Q
         49bkr3ysua4ADJTjbVg9qKKMH13AOx1qWNI+7KGQBNOPR/eDzgVy85oNehpenN+8RsmS
         AtRh8cPMwMwwFrjcRT69aOf38PDpwTAo9/gHqZjVvC4QnI8yylekj63AdhZ4mPO92RxS
         vsARFk3WFCfoQc8L22AtQq7IDgY3PhxXBkfNpnu8sfzPfqH1nyPl5EnNi74LDGbuzYD/
         ykv8NBZBD7JBL/iDgIb7ZpvqYo2c+7p2fIbbcUJMQP2fcBC1jU3CcTnq+TZpioIe+k+q
         zXTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699735762; x=1700340562;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zzxKG8FmQG/QiSceBe9NLjt7GSztbReGb177SqO02RA=;
        b=TlyjPSZdQgyD1QXZdttW4vhxfymsZ+UM+fthVWSFXMLrZyvQ1dnoiulbc0Sw+e4Y/Q
         trnAfFI1Vja+J5+9tlc70+UOvUl0krxg6DsE7fBiEHVTEZGaFrf59zXWto+DcJm2vC1w
         EwXKCYEhdiYBDOqyAKYcJfHkUWu6DAhr34OAa6cbtF4qoWM1izuz0jeV8HVf60gcr4Nd
         +3hBq1gYnvlZFmLXS0oVbzKssm6UrAL5RQdNrHoFB6lNAyepXoMT1sG7crwWqEJddNZX
         ggz7jVOvdBV14Kiha6xQqqlcMVkDuNG0h2vWMd32fSjH4UboGux3r1/35pvT4zHHUxR1
         dNQQ==
X-Gm-Message-State: AOJu0Yz5jYB8HhJGHyPR3oiQzBfYVmSwdVRBWeSYQ79BF7Pw+sNPQeiF
	hwfyMcsjQyvrfkWK1CYvIW/lHQ==
X-Google-Smtp-Source: AGHT+IGq6iWtEtCacNYFkoPOd1d+bCOaS3T0W8tGIc01caux6dOOsSo2ncPZB/+eM1mLqDqakLRVAA==
X-Received: by 2002:a05:600c:19cd:b0:405:36a0:108f with SMTP id u13-20020a05600c19cd00b0040536a0108fmr2338642wmq.41.1699735762281;
        Sat, 11 Nov 2023 12:49:22 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id t9-20020a05600c198900b00407752bd834sm3121226wmq.1.2023.11.11.12.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 12:49:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 0/3] mailbox/arm64: qcom: rework compatibles for fallback (continued)
Date: Sat, 11 Nov 2023 21:49:13 +0100
Message-Id: <20231111204916.35835-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Changes since v4
================
v3: https://lore.kernel.org/linux-devicetree/20230322174148.810938-1-krzysztof.kozlowski@linaro.org/
v4: https://lore.kernel.org/linux-devicetree/20230327140752.163009-1-krzysztof.kozlowski@linaro.org/

Important: v3 and v4 are quite different.

v3 did not reach full consensus, so I prepared v4 doing a subset of the
original change. Then DTS pieces from the v3 were applied, without bindings
and driver.  OTOH, bindings and driver were applied from v4.
So we have DTS from v3 and driver+bindings from v4.

This leaves us in inconsistent state and several warnings:
['qcom,msm8976-apcs-kpss-global', 'qcom,msm8994-apcs-kpss-global', 'syscon'] is too long
['qcom,msm8998-apcs-hmss-global', 'qcom,msm8994-apcs-kpss-global'] is too long
['qcom,sm6115-apcs-hmss-global', 'qcom,msm8994-apcs-kpss-global'] is too long
['qcom,sdm660-apcs-hmss-global', 'qcom,msm8994-apcs-kpss-global'] is too long
['qcom,sm6125-apcs-hmss-global', 'qcom,msm8994-apcs-kpss-global'] is too long

Bring back changes from v3, to align bindings and driver with DTS.

Changes since v3
================
1. Narrow the scope of the patches after feedback from Dmitry - only few
   variants are made compatible.

Changes since v2
================
1. Split fixes to separate patchset which is now dependency:
   https://lore.kernel.org/linux-arm-msm/20230322173559.809805-1-krzysztof.kozlowski@linaro.org/T/#t
2. Add Ack
3. No other changes, as discussion with Dmitry did not reach conclusion on incompatibility.

Changes since v1
================
1. Rebase
2. Make msm8994 fallback for several variants, not msm8953, because the latter
   actually might take some clocks.
3. Two new patches for SDX55.
4. Minor corrections in bindings style.
v1: https://lore.kernel.org/all/20230202161856.385825-1-krzysztof.kozlowski@linaro.org/

Best regards,
Krzysztof

Krzysztof Kozlowski (3):
  dt-bindings: mailbox: qcom,apcs-kpss-global: drop duplicated
    qcom,ipq8074-apcs-apps-global
  dt-bindings: mailbox: qcom,apcs-kpss-global: use fallbacks
  mailbox: qcom-apcs-ipc: re-organize compatibles with fallbacks

 .../mailbox/qcom,apcs-kpss-global.yaml        | 62 +++++++++++++------
 drivers/mailbox/qcom-apcs-ipc-mailbox.c       | 10 +--
 2 files changed, 48 insertions(+), 24 deletions(-)

-- 
2.34.1


