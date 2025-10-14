Return-Path: <devicetree+bounces-226496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D9BBD931C
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:02:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA8FE4020B4
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A24B3101D1;
	Tue, 14 Oct 2025 12:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yyz2y6Wk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0719530E849
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760443354; cv=none; b=D4Tf9OcU8m/Yy+mXrYRrgZc5/nSaS14iiBQptLDA8ivRqMd9fykwp8KiZhXyyqtShzHynnZizFviOXJZp8Pj/FhFntOfo5ujk6huabc0V2HZXydPjeFCmjK8bZxumG5K2NSEnA+9gJMUB59khftWOFNGu6HzrZr5aE0HXmTYLJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760443354; c=relaxed/simple;
	bh=uN3j84qVqwGAIGTb9j/2yqr2sDVtx6YN0tEWF9Jvojk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=g9WeytgEUnyZMwjvhsFVLeZSEfPj99C7kqgUeHLP1POcXxb661/NHM2a9nE65ULetFWcrbcuy47qKjJGiRnVVSGdEgqfgZwzkN8wk4c/8Dafb2qlFkZpHBw3Tz1TiPtyEg9kFeLSf1jWWjUIaUGY1Tjqm2zp6MilTPeWRM4Bm0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yyz2y6Wk; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-273a0aeed57so77117915ad.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760443352; x=1761048152; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HfQvU/Mw0ZJ9zXdFjFYOYgKDAzyRq42k4wpeXF58tTM=;
        b=Yyz2y6WkUisS1FglFUS2w4LGJKOckdS69kkSQKvFVoaJhIggn9HYWDyK7HZFLoRY2N
         LngQbLPBZUzucnKo3AeHenk4s85c7seV/NeF12ssi6njgcD9P9bHkD+CIWcP/5BPnLLx
         Exc9mw2VBuevG6/kiJkJHRfhF7ccR7h8MdYmB4gnFdF9X2bbVrqHKrAhYdSZeYjEHL4x
         fe2BEQMxxBAPZKnZOpOGCR3qJi82VAyQk61Yd8ib/4SwktWr622qgahOJ9RlM4QNAMrE
         WZgsOdP9zMmd/CX2RO0MleVMF9bqgl15lFWzveP/DykPQlV8Gy5WPEFzD8nT00Ks/zkF
         TELA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760443352; x=1761048152;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HfQvU/Mw0ZJ9zXdFjFYOYgKDAzyRq42k4wpeXF58tTM=;
        b=FgS2AW6urj4KhGSa/QHEuxtDREOQAmaZZfvCuPd0qiUkimhwS9vv+878/8cpp4eIu2
         AgY4l9lTYY2C5fh+yUbH2YH3aulQQLVbdj9S8OSXUzS4hhFeSoMrHGbXNo4y4ZrRYZMC
         qoJTWvTCEtnfqfdvJADrYVIOU78wPuT7Im1SE++QNE/DeVxM4QAeQ0z/rARB6OeFA/7B
         NyY+J0eeFZhY+yHlPnan/OYu9VdjbNWtWo5aNZvkfZgFlZQpO3rkZBPo/i37aCd2rP8j
         RbnzbxNl3zIMpn2ED55nERW8IOWTsV2f4WcDkc+TYebKUpdX36ItqAKtV42ZtjhtWa9t
         tESA==
X-Forwarded-Encrypted: i=1; AJvYcCUURMytXGkMsLIoBSyfonAix7cCwfu8x/o5ndyHCeaGHSVNv77tfOt4wc/DtKXldDbav8wukdu+AwLu@vger.kernel.org
X-Gm-Message-State: AOJu0YwvUkemgzdcYkjDc6CgOBI2ln10QhpAAytvMERe4izNKeNjJ+FZ
	tw994KYtShoCzhoxNZKlBS3OY8BY09ymu2D4CbhP+NB4I4ua0j/9pkIJ
X-Gm-Gg: ASbGnctNuPbP+Uhn+8MqjQeA3sKMhajbCawqxoRw00/Ca7xNZ9Uq/UXhvSvTx5gAozo
	n7F0xiG04Y7orVkVvlaOZ040SJUpXFsLFFOMAB8+aSIz7GgnaFA+KP1Pv5D39i0m90E6yN7WH/h
	WpTkjgT7vP5I1eKKZXilkumQy5rI+f1eHmwZz6qqLeLYgf/B36r+Z6WtMwEWq4bSzR8av2abAIO
	0yHO0GGsum72O5/D9N/W+BClMaJJjcUUO9NAf678pWTEKevh2a+Z/a/SRDcAOuWSnZzyEyEIoZ0
	24M+B3IcU8VH24Q8XnE3IFCc5zTJhtar1tiGwNxGG0114xui4+5h9bZApreiEcValTznFr1fLom
	6TTGmOBD7kq+UfPMZkw/8dajauRFg2mJ98JJsiPuVgiLWdKs75+SnNfmXL9vvSEj+M8VkjBe49e
	ATug==
X-Google-Smtp-Source: AGHT+IGxnJZuqD7D8HRrQsKpq2YeyVBl1nCR/ZYNgjF/OZAth0ma7f0ryzIGkzZOdXOx788KjLPmyA==
X-Received: by 2002:a17:902:f641:b0:269:8ace:cd63 with SMTP id d9443c01a7336-29027f43af0mr304373745ad.30.1760443351952;
        Tue, 14 Oct 2025 05:02:31 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f941a5sm162808455ad.127.2025.10.14.05.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 05:02:31 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tessolveupstream@gmail.com
Subject: [PATCH v3 0/2] arm64: dts: qcom: Add support for QCS615 Talos EVK platform
Date: Tue, 14 Oct 2025 17:32:21 +0530
Message-Id: <20251014120223.1914790-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi all,

This patch series adds initial device tree and binding support for the
QCS615-based Talos EVK SMARC platform.

The Talos EVK is based on the QCS615 SoC and follows the SMARC
standard, consisting of a SoM and a carrier board. The SoM integrates
the SoC, PMIC, and GPIO interfaces, while the carrier board provides
peripherals such as UART, USB, and CAN for evaluation and development.

---

### Changes in v3:
 - Addressed comments from Dmitry regarding USB1 `dr_mode` and added a DTS comment.
 - No functional change in bindings file.

### Changes in v2:
 - Renamed compatible to "qcom,talos-evk" (suggested by Dmitry/Bjorn)
 - Merged enum entry with existing `qcs615-ride` block (suggested by Krzysztof)
 - Fixed subject and commit message to use imperative mood.

---

### Patch summary:
1. **dt-bindings: arm: qcom: Add Talos EVK SMARC platform**
2. **arm64: dts: qcom: Add support for QCS615 Talos EVK board**

---

Best regards,  
Sudarshan Shetty  
Tessolve  

---

**[PATCH v3 1/2]** — `dt-bindings: arm: qcom: Add Talos EVK SMARC platform`  
**[PATCH v3 2/2]** — `arm64: dts: qcom: Add support for QCS615 Talos EVK board`


