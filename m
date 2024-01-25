Return-Path: <devicetree+bounces-34937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF4783BCCA
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 10:08:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD24428CF65
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3FBB1CAB3;
	Thu, 25 Jan 2024 09:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=8devices.com header.i=@8devices.com header.b="N8/5S9qb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89EF1CAAE
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 09:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706173469; cv=none; b=Y4DA0r1r6xOvis1NlNNhZnr9O4tF1hAEsR/KDzNcXrlfzSAKqWLJQA/uF6WNnoADTPsfPrKqF/P5Ag70LYdEI7aIj3iNyxE3qiqEW1MKeo2VsY+cyl6Up3z35LoLvBVKqiutkIrWm2m6t6tMV5CXgquFsFZn9WdjthJlRljHqzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706173469; c=relaxed/simple;
	bh=j8yHfYc8rT4cCjil4J1cdPfU1EMZKqXsrfl2Tj80u2E=;
	h=From:To:Cc:Subject:Date:Message-Id; b=QnNsTDfVRlSxp63ZVOHi99TF2ltrbt7lwXUx8yLrcFJ3AwEoEgArbuL2dHTDVxdqeKA9h4lfhzQn8yFF0q0lnRMvdcjF7rBvNzzAvSdTAczvbfV+Mv2/mXEhPzdpg5Bio2QvIgAZdLXioLC9I6GtbN9B4c9qBKcMl8ka5pEmKt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=8devices.com; spf=pass smtp.mailfrom=8devices.com; dkim=pass (2048-bit key) header.d=8devices.com header.i=@8devices.com header.b=N8/5S9qb; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=8devices.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=8devices.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2cf35e5c2ddso3818771fa.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=8devices.com; s=8devices; t=1706173466; x=1706778266; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tDv/sys5e51cK1vtXuPubCwtBeb3bjXaIBvIqtUc4wM=;
        b=N8/5S9qbXhaoYUe9T0+4RG8aUcb5ozkH+6iN1BAgnrBM6dVA7slbbBtwHpN+XSICOU
         EDBssTXmvWILTZptJhwFtkxveSX7hnXFBFpV0y2fszF9ONqbeqSvKUoODF3S5Pvy+3Q6
         U0VDWGGrVUfco7U4nl9qYMJZVQbBvCqp4Lc8TQ+0Gn73l2APJQxuHJOYtpQmowpnvP6/
         Nq0lRX5ElAdxpYlgIIHe85aYmWhRg7u4zlvzme8T2e3NQUPO4SAOcfLz93vbj/kkbswe
         x1POObgj7HNI/B7XCFjYYY8BZ4kBccpn5BOEE9/CDmIq2XvodGwPGG0VWsProiXJJvsh
         VXfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706173466; x=1706778266;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tDv/sys5e51cK1vtXuPubCwtBeb3bjXaIBvIqtUc4wM=;
        b=EYwD132EA9/slzUWA5qLMp2/IstLWLlZC35S79AMLyZN2s0xgLHrHy210Bc650wBmV
         rr/R+BlDdp7FTx3y/5TNA/hf22TFstDeIyasd5/5c2MdV/Dy5sSI6kaXlcnSXVOAZryx
         uMwIFxoP0VC6ritTmQJadYuO+S4Ynnr/NweIzonBt+aoF59eCeadV8QuZyvoDqjfTRWf
         0NQYNagT8qmqBdT+X3cMqjInfdzfzfIWJQDKxRsPX7/iKOIDw9/1FgvQAq+/GYSyD5dn
         tOebBHKK4ylMfwZhzCU/B40JhOmH8rJ1pIF4D2gMgab3KbmlSlCPRIFuuJxJPLk3IoLx
         opoQ==
X-Gm-Message-State: AOJu0YxTdf/oF21ITdL6mMCgZQuVBc0GzB+Z2v2Z/DoWbIUiuZSk6nq5
	Mq8/Ak1+D76bYiZO8wU86sA+Z8Ff4bvZE+GsJviH6BPMZsz1KhMvVCB0MSgvaf4=
X-Google-Smtp-Source: AGHT+IEgxoySDRJaWqdUU5wrFAsmsmlGqcO4GvfK1sq6qwJeE4xboJPEWSWa54JTJpONZeTuqOEM+Q==
X-Received: by 2002:a05:651c:80d:b0:2cd:1b38:14fb with SMTP id r13-20020a05651c080d00b002cd1b3814fbmr294833ljb.82.1706173465766;
        Thu, 25 Jan 2024 01:04:25 -0800 (PST)
Received: from mantas-MS-7994.8devices.com ([84.15.37.222])
        by smtp.gmail.com with ESMTPSA id m10-20020a2e870a000000b002cdf8c9af34sm229123lji.57.2024.01.25.01.04.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jan 2024 01:04:25 -0800 (PST)
From: Mantas Pucka <mantas@8devices.com>
To: Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Mantas Pucka <mantas@8devices.com>,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: qcom: ipq6018: support thermal sensors
Date: Thu, 25 Jan 2024 11:04:09 +0200
Message-Id: <1706173452-1017-1-git-send-email-mantas@8devices.com>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

IPQ6018 have a thermal sensor HW that's compatible with existing
qcom-tsens driver, so add dt-binding and enable it in devicei-tree.

Mantas Pucka (3):
  dt-bindings: thermal: qcom-tsens: add IPQ6018 compatible
  arm64: dts: qcom: ipq6018: add tsens node
  arm64: dts: qcom: ipq6018: add thermal zones

 .../devicetree/bindings/thermal/qcom-tsens.yaml    |   1 +
 arch/arm64/boot/dts/qcom/ipq6018.dtsi              | 131 +++++++++++++++++++++
 2 files changed, 132 insertions(+)

-- 
2.7.4


