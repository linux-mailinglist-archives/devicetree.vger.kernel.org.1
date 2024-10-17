Return-Path: <devicetree+bounces-112561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB5D9A2B6D
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 19:53:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1507F1F23178
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 17:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7A1C1E0085;
	Thu, 17 Oct 2024 17:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J9lsunhh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4EFE1DFDB4
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 17:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729187569; cv=none; b=Kl/xQhwriiQ5/heHBzpMCT8DHG/wnfX289W5a6X1kyRFqgt7DTRZgORUd7vioHqfMiu/dCQ+tJqWHnZeo60Khrn5OyDHr1tKPkzkPgj4y8f1GrxDVzAgYEV09wc/W1XhBqUJTQ4fycSI3NwqCyuPE/HKzRqAQ6aZbILdIQAzaq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729187569; c=relaxed/simple;
	bh=mAi7TGRiia+Da5KPG1XOGf9tcPvkQEdQ3DvHsfu5bgE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LdS4Wfw73zGCom2L4WfzDvOSwMQOA9kmTy1pFeybmjv3y22Djx+tm29VB6+iMT5uZ32U+hO5Q/rkBHnwV7Hg3iKObeahvrU6Pv1N3ItFbGhDnYEMrGZ9kue0dTL7/oAJpRgR7gnAXYUE1l30Z7uj8C5RHD7bvWzmGi37JKJ1inM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J9lsunhh; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539f2b95775so1595470e87.1
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 10:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729187562; x=1729792362; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hbdFmWrJwzGiYfzVEsoi+j+b4BXGAP/pUVjSjR+sM8E=;
        b=J9lsunhhsqtZntZnPXP2/9jpaTC7ZjnxbKbldgGTbXghHHVYUpfToPO0lIdtZtu0PE
         Sl//Ou3LvLOXc3yi3H3gvdjjAIjtOUR8xIA0Wi6V8cEhk4nMEBXYNbQzZOc4YAwFnlrF
         hM1etL3A+8BADKbaVP0UiNunNAcXlHJyeszG/RI9oI42wJkUEjZyJ7aB/+1mD9X1P9XZ
         JyhnTPiZ7wBWYAr4L4HgvYq1X/vC1CpWs83pJBJT8tztkgTsPkovYM3XOzYv3pEedea3
         IDFG3PL4wmJeWGdr7SZc4JzOy6oIHJKXG/mJg9o116caq1Gc7LK5wdI4Ww9XgXc0vakt
         C7dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729187562; x=1729792362;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hbdFmWrJwzGiYfzVEsoi+j+b4BXGAP/pUVjSjR+sM8E=;
        b=aT/UHpgfXMXtAHttKWTCWSjzJcEfrYzvR9ie2PgveOxUeBz2pVEE2MpZCV0X749d2x
         gtJ4GvTCi3gatdDVBB446zzGqLSad+4f0RTrWh3jyuEEA9pERAEtKLlTrBi+hssp4Quo
         lBq8muFRXwL+eAtRjN/X4ZMLlXm1sh1z9Jckt2FVNnMTGL8cGIybxg1xcirQdVHLiuUm
         YQRBeTc8u50b2oGqA655m2gPOFb68tbRL/V0yVXviKAu+TiXTirEtoKiFM2cTuP6xCV5
         v93HuibVtMNyyC3ddfbw9sXr6vO7WrmxUi1KZ2ruB7yWBs1U8fwhK7lH92pWOgTKXsbo
         gjew==
X-Forwarded-Encrypted: i=1; AJvYcCU5ulVdmgTwiYLrsdb+oPKGRHcwWPtLrnt5e78cziaU8QQCVC3YZRdw7irBXwzqui21c/wBnEq8cQfW@vger.kernel.org
X-Gm-Message-State: AOJu0YxbgIkh/HB35AskJ+cJOiNUmi60GW3lNPaa+zCttgWW7OZQWAqE
	Twhix0Y9kSgX0RpjSb84POUQBd34buaDiXRRdxB3iHH1MQ3dCNPRAfB9elCG8FU=
X-Google-Smtp-Source: AGHT+IGynKfckX2uFyiVLEnT4UcWjPo9A6yWXdsJkWVGloEMWqnu1QKN6pRjdZJpPpHlCL/yUXkupw==
X-Received: by 2002:ac2:5684:0:b0:53a:64:6818 with SMTP id 2adb3069b0e04-53a00646940mr10470758e87.47.1729187561790;
        Thu, 17 Oct 2024 10:52:41 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a00013f8bsm829557e87.286.2024.10.17.10.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 10:52:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/2] pmdomain: qcom: add support for RPMh power domains on
 SAR2130P
Date: Thu, 17 Oct 2024 20:52:34 +0300
Message-Id: <20241017-sar2130p-rpmhpd-v1-0-f4bf7f6fd12e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOJOEWcC/x3MMQqAMAxA0atIZgtJtRS9ijiIjZrBWlIQQXp3i
 +Mb/n8hswpnGJsXlG/JcsUKahtYjyXubCRUg0XbE5I3eVFLHSaj6TxSMEjorA+D885DrZLyJs9
 /nOZSPu9SaBdhAAAA
X-Change-ID: 20241017-sar2130p-rpmhpd-010527d95757
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=639;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=mAi7TGRiia+Da5KPG1XOGf9tcPvkQEdQ3DvHsfu5bgE=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEU7nu99SuIhWevUnJY2HOrjhseGJwIJ3WPq7j
 4QrgH8doUCJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxFO5wAKCRAU23LtvoBl
 uFMOEADEI0rh9B/BygDr3Lc6AKh+9hUb9/PqNjpe2ZwyI255C1SWkJspyeTK1Lah8VrR9wx1nP2
 GTjgX4nYWTvIkothUHcyNED0OJReML2Ol9xG/ux3QfJvmkHEScWIpLPkPXqxXvOpjQYv9ELWh39
 PSuOBNywmhTPEP8P81fVjg5NRTrVnKlZ/lUeQnDrmUGhfz/ppTYlcKAAxv67KHPRrU5u20YzDWO
 7kYUobOKE6LC+rp7+zVMVJOu9G4M5h6eMwAnUZVwl9FRZKH0adeZUVLAVJOLEQmCImcuc5/lsKu
 K6o0GyU3/xmc7UufLVYDigSkHmaHV9+BQ+a+1+2ftk+V6j6PPphXsG3B2iZaFD57PkeTC4jJj8B
 d2Zs40VahWg1dlYpiE+YtsxiA+MrYoS9ocdHoU3h6QQpBt5h1E42kv5g1gvJB3K5moyhPgnVvpQ
 +gvFCZcqlMrEvz1stVHCIEpVjs7k9dN4lGzhfVG9VQWXXA1BFUHxwyDAourdKi/BZ/+HWKLSrXl
 aDwbW/lC8BByiBIi67bGkVzn0gR/FmswvVtwiaIv2G7Mj3jf7y5VgVyrofOGxiV+CnU51tYw33F
 yOcgNm+L+etYNkRClZrCHhLzbzDvxjdYZA4XlJhC3wQBy6Pryxh0pcwxOTYMe3bnMDGJBApHJJT
 gopaOLxggtzCdHA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Define power domains as supported by the RPMh on the SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (2):
      dt-bindings: power: rpmpd: Add SAR2130P compatible
      pmdomain: qcom: rpmhpd: add support for SAR2130P

 .../devicetree/bindings/power/qcom,rpmpd.yaml      |  1 +
 drivers/pmdomain/qcom/rpmhpd.c                     | 25 ++++++++++++++++++++++
 2 files changed, 26 insertions(+)
---
base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
change-id: 20241017-sar2130p-rpmhpd-010527d95757

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


