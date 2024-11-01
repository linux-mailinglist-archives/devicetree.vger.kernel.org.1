Return-Path: <devicetree+bounces-117949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C15409B884D
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 02:23:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50B7BB21E86
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 01:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC9673451;
	Fri,  1 Nov 2024 01:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BbF74Irk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DEB288DB
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 01:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730424177; cv=none; b=FFX8gHym4JHswqf26Ffke5YwV0wmzkOIg/jXG3N3hd5sc99lNk/3zR/k5xF/WP2Isy2AcgMaaIUqhGJ8NhvViYV1/ZY1BTNLzIZm4g1k+EXT7FgBPwA9Hi9MERZTC8DGakycx8w7e2mTwh0Re2T1RkB72mw7j+itL+GwQ4qBrB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730424177; c=relaxed/simple;
	bh=y3W0QlF0pHUhgxWrrr5HTFUY6Bau3zJlqfQaSdHHzJU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KgO5pWS2Q7+oR/Vw/sZwE91XOLhUIzlDrUi6fAbI+ebu4prF77HAxNWiokMFx/Hqpr8X5Rl4I2uBf7moSfl0E92Nv9HlpNBABmV0Z/cHmwnNH7r0KSR7OaE+ksCMg7hZqYIY+RlVm8vmfeuE2U09u3HqisI1pvdA3I5IYQbKfEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BbF74Irk; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43162cf1eaaso16533235e9.0
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 18:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730424169; x=1731028969; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rn4kry6m/4mklH5IfU4CmPkq9g/NGwiE8SJ27fMIJ2k=;
        b=BbF74IrkReJAHDw/0zZBwj8V17ANBg4V7puDhrKw7i3LaTQ0zasANVfFYNPvqyY7Dm
         86qmFC3qn6Z0NPKE+wsELDnvz+Cip3HzhT/9XXIYoXJ1cxEOf6Kluq0a+vW/oHCYS9Pj
         j1WwobR664sztxNx2uhKxfczJ1csVKyEx3/afYCxX0PQ1HLuIz7rhuOabwtNcpRMfDD2
         F6zbP5YvQ0pLgoRbMrWrGeACmkm13ENrfi2Uvd9HbWnfPg90a6pqZKSkvH/MOdl3akRW
         JLLXvWM70bU8Lumz9LqmQdLXsIh7YWF6dyAXkAJqd2V0ZmJTA/LjzAdOqnt5E095maJc
         IzsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730424169; x=1731028969;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rn4kry6m/4mklH5IfU4CmPkq9g/NGwiE8SJ27fMIJ2k=;
        b=CpEGujsBr1jTT3+owcd80FQUp6x8GU1vLkMvfF/tlwnvsKmpvVT3u4fLp2ml0iJC/c
         b3edp0c86Srd1fR99x0Vs48EtMV+7g3iD9flMz+kisv3VvXVI9Zc/wVaj2RdTd239isp
         tiDqQ83q8hQzCABUYE/NSlYFlvFVBbFRv9aNfNAWMdjHeJIQ0kkvGFeph/A6RevUB4ze
         AyadVuc4FSCnIl9WFLEturd2VN/IyYzGb/zQh9betQ14y4CM1JRZWS8Stc1pRuDjRucQ
         sdLc5byoNQBMHRq+n7l92OcMbRRuj+YhsCsy3mJWWCSVQvfegLl6BgaWsL9T5YK6tzIc
         3scw==
X-Forwarded-Encrypted: i=1; AJvYcCVgwHEmTssU7iWG3i+ukDxYROIegGGefl9wttLWm8x5nnJIhSDkR09Dt1vBXT2iBB2UL5IHcO5oLfo5@vger.kernel.org
X-Gm-Message-State: AOJu0YzEOrFhEYRJz70+Mp0HzvurXlHNJNjZwKAcdiq7SLeE1W9aInvf
	spYeNkAH7exK3olPA6KNf0noDDfWO362kAtyAzwIx3PaBNpdXCFXqi3/ofAYORg=
X-Google-Smtp-Source: AGHT+IEd3p8ING9n6nUBlO8Ke9VQAg3GlSiKlwo36+DVc7pK/fktIh4uuK1JDCaWsyMf+QwtDc/8UA==
X-Received: by 2002:a05:600c:5121:b0:431:4f29:9539 with SMTP id 5b1f17b1804b1-43283295905mr16252715e9.32.1730424169610;
        Thu, 31 Oct 2024 18:22:49 -0700 (PDT)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c116ad3fsm3501622f8f.95.2024.10.31.18.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 18:22:48 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	krzk+dt@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	srinivas.kandagatla@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Subject: [PATCH v2 0/2] Qualcomm sm6115 LPASS clock controller
Date: Fri,  1 Nov 2024 01:22:45 +0000
Message-ID: <20241101012247.216825-1-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is one of the required dependencies for audio support on sm6115 and
its derivatives SoCs. This was written by Konrad Dybcio, however his linaro
email is already invalid. Konrad suggested sending it as-is and keeping
him in c/c. Some updates may be still required, for instance the
maintainers line in DT bindings file.

This was tested on QRB4210 (Qualcomm RB2 board). The only changes from my
side were fixing compilation errors and small changes in commit messages.

This is second attempt and v2 as suggested.

Changes in v2:
 -- added Reviewed-by tag to first patch;
 -- removed the second example as suggested by Krzysztof in the first patch;
 -- dropped patch "clk: qcom: reset: Increase max reset delay", the change
 already landed.

URL to initial series by Konrad:
https://lore.kernel.org/linux-clk/20230825-topic-6115_lpasscc-v1-0-d4857be298e3@linaro.org/
URL to failed attempt to send it recently:
https://lore.kernel.org/linux-clk/20241017005800.1175419-1-alexey.klimov@linaro.org/

Konrad Dybcio (2):
  dt-bindings: clock: Add Qualcomm SM6115 LPASS clock controller
  clk: qcom: Add SM6115 LPASSCC

 .../bindings/clock/qcom,sm6115-lpasscc.yaml   | 46 ++++++++++
 drivers/clk/qcom/Kconfig                      |  9 ++
 drivers/clk/qcom/Makefile                     |  1 +
 drivers/clk/qcom/lpasscc-sm6115.c             | 85 +++++++++++++++++++
 .../dt-bindings/clock/qcom,sm6115-lpasscc.h   | 15 ++++
 5 files changed, 156 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml
 create mode 100644 drivers/clk/qcom/lpasscc-sm6115.c
 create mode 100644 include/dt-bindings/clock/qcom,sm6115-lpasscc.h

-- 
2.45.2


