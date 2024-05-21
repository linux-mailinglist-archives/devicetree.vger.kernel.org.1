Return-Path: <devicetree+bounces-68053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D43298CAAF4
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 11:45:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89F242813C9
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 09:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF2F16BB37;
	Tue, 21 May 2024 09:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QatskZQI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EF656759
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 09:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716284728; cv=none; b=n0Nq+hcg57f8SuPjgKg5NqgvXOJGzHa1jlaxvNpIZzAUyI+xusnMoJaUZYbpWKibmyEtsyby3UZHNeGEeU0ZZSmL8aVkoH2GBQ1DrQUKIwY3QmVJlw4e2c4c6r4nR3Ls/oVJATULv9Y0FuEWhhxMgLYFC44MY9WbmftWdOCvFTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716284728; c=relaxed/simple;
	bh=7qLaoqIIAaTz5fph0kyugjFXnFjLbaUGL7rC2ceDlok=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jlNn0T1jXy+uRnx4IJSzM5o4KlJMEIob7AyKEJeJUhf2UXtOY629eAZBBBH97jWvqXXQTW+IdnTq0Yeo556oi4D1rq3lT1r9IfTClUWRVtB8pt9bwFyOybJprC8uEN+l7sQ+rO559Rur6blD0xrraePSou6iOGKHXChXad1phEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QatskZQI; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e716e3030aso31389331fa.2
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 02:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716284725; x=1716889525; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Md+WRwALrBDV2V3shAX8d3uWCybuvTD8xlgzEt6mj3s=;
        b=QatskZQIbHWGZW+tpnSfL3wmD6MmPZjHIDBDY73stAXPfnCuv39Wimi9Tdu2n4jtDb
         bnkM9jMHm9VvxAi35ZjlndBBH4+JAVH7u40dsS1omHmyrqV1LcvZLqmguLYj1wwk9bVj
         nbZKUrny1/6CXq6+hIAJ+J4V94QqYbLhhs5VMKFEM6NoiRGJhTrRPSjhbQTgBMPDNdkz
         0h3Opsda1oGtmjK9+osG2JU2SFIFcDC/Zi03QNjdeQ7eIbO57pGJMSI4AcjIlPgWJBj0
         t6KW9M9BipEmEjkTq9/By/twYvlxbnfEn2r5Rfu6Avx4k8QTqKUwF+Run50oCtDXoI3o
         eEuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716284725; x=1716889525;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Md+WRwALrBDV2V3shAX8d3uWCybuvTD8xlgzEt6mj3s=;
        b=rWLJziBU4eZLGaABRysLNFuxo4FWvP9rl+bkJrWR5Wyj6wVPTyhM4VYHt6Yni2QiRj
         l19BeOaPEwgou4RhL3lZCdtulykPfL3AuLj0iy33dB5qjW7t3d/atbygfIZ8kyEzvwtw
         LFpd0EgYBGHni1/cKss/piEgeQHAEStB1rZvIgE39pz3F+WfoON4tHGUBh1uqaQrZxcc
         lQ5UFjAclOG9X4Sadvf85wnVmNvdRime0RsmdDwDGFM9e46ObwUQK45J0UyDsYrZFW14
         +LF8Ntx8JWnQxvn6JkrjloimVmTY9oV4gb35o91snLYFNEV9nh+6T3zlUw7QeZQL23uH
         JyEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPqN0jWJggbtD/rfRlz126wpH2YssBUHGAoB/qK+j36KoWBQZ/h1I9lpsv0j5ypxsEyJl58P21TEpYDT8f5vJt7RlFQbVgjzhCGA==
X-Gm-Message-State: AOJu0YzGMkr9xbssrHaKNmNconztLsH50LlcVirNqv9kzogyuWYu9hiv
	17Br00wew7+vlwzPVl0T8N0jNshk7ozfdFbfHeQCynXM2UjHjETRf0lHUbZYnmI=
X-Google-Smtp-Source: AGHT+IHei8MVuGwNP1mQ+VWZ8la4NiILOnWDAPhCft9QiMk5UUjYW5f5kC0nYQH6ZN+vh0aDQ4fT2g==
X-Received: by 2002:a05:651c:50f:b0:2df:7ac1:b27 with SMTP id 38308e7fff4ca-2e52006399cmr239371871fa.28.1716284725211;
        Tue, 21 May 2024 02:45:25 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e706ee0a65sm13906261fa.112.2024.05.21.02.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 02:45:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 00/12] arm64: qcom: autodetect firmware paths
Date: Tue, 21 May 2024 12:45:20 +0300
Message-Id: <20240521-qcom-firmware-name-v1-0-99a6d32b1e5e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADBtTGYC/x3MQQqDMBBG4avIrB2IqbHgVYqLwf7RWSS2E6iCe
 PcGl9/ivZMKTFFobE4y/LToliu6tqF5lbyA9V1N3vneBe/4O2+Jo1raxcBZEliA6Icgz/AQquH
 HEPW4p6/puv54QBvvZAAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Loic Poulain <loic.poulain@linaro.org>, Kalle Valo <kvalo@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 Arnd Bergmann <arnd@arndb.de>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3460;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=7qLaoqIIAaTz5fph0kyugjFXnFjLbaUGL7rC2ceDlok=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmTG0yaDfbXvoevOUjHPs8IuKzmJYGjmc1kguRR
 zAiKXLcMdeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZkxtMgAKCRCLPIo+Aiko
 1UIfB/sE3R07GqWvVQQIOHXBJLGbD/snQft/uArKi60KzVDniDBBl5qB//sKVqDrgc3OWAJcIqA
 1RcJbCi4Mxee4Xz73+ryd3ZTjnkLDsBiodcG9KzI0CtjtpgFHlHAc2tMMdrgXbMi+U8tLzLDVBN
 w7ibw4ArXfhNbEuUTgphqgJPC83Xi77j41x7WENSEaBKKtfv39qBbAI7iyVsravdcFw8lgTzmOg
 FThYcPmWCgMS6Lxo8zlQ1K5O9skLBZJdhpIpn8qNmy3Q+AULTfMilXHVSYwp9rzXsFAuqBwhym2
 Gm8oVGyD77ZzYIiUCWRUX7GtOHE+J1iq8/t6xHllnWz+eb9L
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

This is a followup to the discussion during the Linaro Connect. Remove
most of the firmware-name properties from the board DT by using
root node compatible to detect firmware path.

The most obvious change is that the drivers now have to look for the
MBN firmware files by default, so this might break the case of the user
simply mounting vendor's firmware partition to /lib/firmware and
expecting it to work.

Also things are slightly more complex for the platforms like DB845c and
Qualcomm RB5. These platforms have generic SoC firmware in qcom/sdm845
and qcom/sm8250 and also the board-specific firmware at
qcom/sdm845/Thundercomm/DB845C and qcom/sm8250/Thundercomm/RB5
respectively. Making these boards follow up the scheme would require
additional symlinks in the firmware dir.

+Link: qcom/sdm845/Thundercomm/db845c/a630_zap.mbn -> ../../a630_zap.mbn
+Link: qcom/sm8250/Thundercomm/RB5/a650_zap.mbn -> ../../a650_zap.mbn
+Link: qcom/sdm845/Thundercomm/db845c/adsp.mbn -> ../../adsp.mbn
+Link: qcom/sdm845/Thundercomm/db845c/adspr.jsn -> ../../adspr.jsn
+Link: qcom/sdm845/Thundercomm/db845c/adspua.jsn -> ../../adspua.jsn
+Link: qcom/sdm845/Thundercomm/db845c/cdsp.mbn -> ../../cdsp.mbn
+Link: qcom/sdm845/Thundercomm/db845c/cdspr.jsn -> ../../cdspr.jsn
+Link: qcom/sm8250/Thundercomm/RB5/adsp.mbn -> ../../adsp.mbn
+Link: qcom/sm8250/Thundercomm/RB5/adspr.jsn -> ../../adspr.jsn
+Link: qcom/sm8250/Thundercomm/RB5/adspua.jsn -> ../../adspua.jsn
+Link: qcom/sm8250/Thundercomm/RB5/cdsp.mbn -> ../../cdsp.mbn
+Link: qcom/sm8250/Thundercomm/RB5/cdspr.jsn -> ../../cdspr.jsn

Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (12):
      soc: qcom: add firmware name helper
      wifi: wcn36xx: make use of QCOM_FW_HELPER
      soc: qcom: wcnss_ctrl: make use of QCOM_FW_HELPER
      remoteproc: qcom_q6v5_mss: switch to mbn files by default
      remoteproc: qcom_q6v5_mss: make use of QCOM_FW_HELPER
      remoteproc: qcom_q6v5_pas: switch to mbn files by default
      remoteproc: qcom_q6v5_pas: make use of QCOM_FW_HELPER
      remoteproc: qcom_wcnss: switch to mbn files by default
      remoteproc: qcom_wcnss: make use of QCOM_FW_HELPER
      remoteproc: qcom_wcnss: make use of QCOM_FW_HELPER
      arm64: dts: qcom: apq8016-sbc: drop firmware-name properties
      arm64: dts: qcom: apq8096-db820c: drop firmware-name properties

 arch/arm64/boot/dts/qcom/apq8016-sbc.dts    |  5 +-
 arch/arm64/boot/dts/qcom/apq8096-db820c.dts |  2 -
 drivers/net/wireless/ath/wcn36xx/Kconfig    |  1 +
 drivers/net/wireless/ath/wcn36xx/main.c     |  5 ++
 drivers/remoteproc/Kconfig                  |  3 +
 drivers/remoteproc/qcom_q6v5_mss.c          | 12 +++-
 drivers/remoteproc/qcom_q6v5_pas.c          | 85 +++++++++++++++-------------
 drivers/remoteproc/qcom_wcnss.c             |  8 ++-
 drivers/soc/qcom/Kconfig                    |  6 ++
 drivers/soc/qcom/Makefile                   |  1 +
 drivers/soc/qcom/qcom_fw_helper.c           | 86 +++++++++++++++++++++++++++++
 drivers/soc/qcom/wcnss_ctrl.c               |  9 +++
 include/linux/soc/qcom/fw_helper.h          | 10 ++++
 13 files changed, 187 insertions(+), 46 deletions(-)
---
base-commit: 632483ea8004edfadd035de36e1ab2c7c4f53158
change-id: 20240520-qcom-firmware-name-aeef265a753a

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


