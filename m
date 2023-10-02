Return-Path: <devicetree+bounces-5228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E7A7B5AA3
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:59:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 178B11C2074E
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E40C01F181;
	Mon,  2 Oct 2023 18:59:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A77C1DA28
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:59:45 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE9DDD9
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:59:42 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-503397ee920so41300e87.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 11:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696273181; x=1696877981; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WZip/SoWAYWjoJLiogZdNAb2cSzXOUGAYIfG+e2fOpQ=;
        b=AhPnttFaZgmSXHW+UYfdOoSYYCvIVqBFxhVLWvZPKT2iN0KrUuX6MtNE3jlZvKnahX
         XSuMlpwNQxouAjyeNkA2MUo7TA0oEZUTpuhwNGKt/97nX9iOiFeEZYc8YHgBqslbIEBq
         pigfZdtu2Gl3+i1SF9RTRDWGDuOHE3FnV2a7qQe4C+UERZqKtZNNyg0fzwMjaZtLUExl
         mD0jHLwNCKanvGEDiuntph0/OjKRzIM9jd9jgzp5vIZ+srRW+U9NAEd2MEGF0I9aQv/N
         oN+IKoYwQgi+R9Hze4u5t7KpruD88gkAhYY/SKdLcTc3EMoaUgx638ZuTieLFATe8wgY
         H1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696273181; x=1696877981;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WZip/SoWAYWjoJLiogZdNAb2cSzXOUGAYIfG+e2fOpQ=;
        b=c9JxLPLMj3xvmujAcnY1xe663wJRvuYBmAbcZnbXpabTUI4fAKDvhV3gUJAU3cPDFK
         +GbY375eRdsSB+wSud4nRmTBT+2CZH9DUO1hFWptE7P2UwdMfsP9GD2/IcwUqTRA7LjA
         vlORpgjSY/nqaM+Bl/M/dEyw0imYGrUaF5VvpQYWFIUUIm+Qt0YzaajAIZeTo72nHEnz
         rU91n1kxyy/t9uao9GQ0IRhtQbwC9idQNpKYJ23A1EJcSoVLmaLbQlpewDLeedyayNGO
         dWbqRAqdUkHJyBbJr3g1zWEYazdA5L+vQ2K+CrV5DH5QtGEikulI2/m3watqu3iAWYSO
         0jNA==
X-Gm-Message-State: AOJu0Yzt/F2stJhKZY1LWjdXBGDilpoqj+LwMs2by9meYYZTQSy/E+RH
	Jr14xdYQPx1ke/EW/w+3PSr6Uw==
X-Google-Smtp-Source: AGHT+IGjb5Jg1XcmsDdZdl0z4qoFlhyD+DRcYLLU1OIqismvL95SROetVKjucOuOZ23za4jdB/J2qQ==
X-Received: by 2002:a05:6512:3e01:b0:503:3453:ea7a with SMTP id i1-20020a0565123e0100b005033453ea7amr12823132lfv.66.1696273181222;
        Mon, 02 Oct 2023 11:59:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t6-20020a19ad06000000b00502d7365e8fsm2443981lfc.137.2023.10.02.11.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 11:59:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Ilia Lin <ilia.lin@kernel.org>,
	Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Georgi Djakov <djakov@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Christian Marangi <ansuelsmth@gmail.com>,
	Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v5 0/6] cpufreq: qcom-nvmem: support apq8064 cpufreq scaling
Date: Mon,  2 Oct 2023 21:59:34 +0300
Message-Id: <20231002185940.1271800-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This is a split of APQ8064 cpufreq series, as requested by Viresh. This
series includes only opp and cpufreq parts, with the DT and soc parts
being split to a separate patchset.

Each core has independent power and frequency control. Additionally the
L2 cache is scaled to follow the CPU frequencies (failure to do so
results in strange semi-random crashes).

Core voltage is controlled through the SAW2 devices, one for each core.
The L2 has two regulators, vdd-mem and vdd-dig.

Changes since v4:
- Reordered variables in qcom_cpufreq_init() (Konrad)
- Fixed of_platform_device_create() error check (Konrad)
- Dropped unused ret variable in qcom_cpufreq_apq8064_name_version() (Konrad)

Changes since v3:
- Split the series (Viresh)
- Unrolled loops in krait_l2_config_regulators() (Konrad)

Dmitry Baryshkov (6):
  dt-bindings: opp: opp-v2-kryo-cpu: support Qualcomm Krait SoCs
  cpufreq: qcom-nvmem: create L2 cache device
  cpufreq: qcom-nvmem: also accept operating-points-v2-krait-cpu
  cpufreq: qcom-nvmem: drop pvs_ver for format a fuses
  cpufreq: qcom-nvmem: provide separate configuration data for apq8064
  cpufreq: qcom-nvmem: enable core voltage scaling for MSM8960

 .../bindings/opp/opp-v2-kryo-cpu.yaml         | 12 ++-
 drivers/cpufreq/qcom-cpufreq-nvmem.c          | 80 +++++++++++++++++--
 2 files changed, 81 insertions(+), 11 deletions(-)

-- 
2.39.2


