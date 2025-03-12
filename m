Return-Path: <devicetree+bounces-156718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7E5A5D39D
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 01:11:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EEFA165E25
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 00:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B33941C32;
	Wed, 12 Mar 2025 00:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IUJxAp1/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42B633FE
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 00:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741738306; cv=none; b=mxWp/UjtMtTgLY3qJsu7WrB0vhy50zvELsoBXu5yFzMs8vI5BVbxxCb/V+vfrQjkjJxMY3X2q5yEGmL0TJRhhDXnFZKvfxLcVZ5KNbLYu+bcHilsuonzxnIKuHnYhb+b3X5U4jIluDRzlum/8XZD59Vp1rOixU8GnlXE5hEJB70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741738306; c=relaxed/simple;
	bh=r4uMDAv8ZLSzUVvmQWSjnGSf+Wa5/Jy45T2NBY/rZWU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OPo42ufpM9GWRUQSN1slFOFEBCF0iH6YUefNtdcWTfIHCybM7+7FZSbFYlNznRApz7GXKJ5qZafQAZrSs+SWBx3F5MrOVUp7MOCtMGKzaZBynjkI1en7k9p3M/4TeTOaSHZMKVx6ULfetJR06RA9YZIwhULoSA6DqG2RHk4/rYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IUJxAp1/; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30bec442a25so5092651fa.3
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 17:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741738303; x=1742343103; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x71rDFrG69wZWQuxGcSWuM7VOTt0MMfh9Nt7EV6dQ7g=;
        b=IUJxAp1/7H0GgbmfiWUMLoaK6coxlwKeGs+WcqTl6HVbbMtKQsE0toWP4YweW4s2M5
         EtY72MyME6dAgkzkW63Zkn2J63WIojHO/jP4MHUXvba967ubUWJ5/9zHF93C/FVfSlDv
         026x0C4Wf16zixi0bU/A93lSaBXbOnRBj4LYOYFqoZRm4z/xfnh7seNYFnGxr8NW+cXj
         LVFxC57BRkvbQiNI70SxWYZkeFAxfQg/dBcu0fM7IndXQuUyZfedsJafnlecEpvynx3R
         I709r7BkzOS4B/m/G816vL1aycmxj3BgcfS2diWm+oIkA6wVEh02dum1kdlCzjVjLWL4
         lwsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741738303; x=1742343103;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x71rDFrG69wZWQuxGcSWuM7VOTt0MMfh9Nt7EV6dQ7g=;
        b=suwa4BUYWaKLpMG0ZE5P56ObszqSof3r9JYmu27nP2QCAYZizzZJMCbVlx5By4O2GT
         Cm+Pgmy5DcQVh6L9yZlK9fpvmEk6FZXwzPDQFU9TjX/okDIafk+6FmrCre9sIaEydEUf
         PJgi/p5YqqRMl8tei7mx0aEa7uJEupv0WoteR+diWcf+d88H82B4YA8GkdepR3xMEs/9
         zvKqXEsA6tqQ1dCbC5BgsObAwuav48OBLjUKSttxz1Cn+xW6PM70fXTN5x0a8hUGhEK2
         W9AiRsjnpPTrrNJ0M/EmVSjRP83LrNtGY/0BOl+E2pLYo+/lxC3DCdPnM2IS0466p6Hw
         +kwg==
X-Forwarded-Encrypted: i=1; AJvYcCUz+NSlDNRH0sTTLAYb5eTQFd2Kh5k9xeGsiNgkFEjluTsN2ZgNUafiJm1coV1xekihuWoZYr8Pq6bq@vger.kernel.org
X-Gm-Message-State: AOJu0YzCwcid3tfXynAuuJ3H0D7kg8xnRL4Vch/RxENEafbZ8QoUF1eH
	1afQCgUpnaa9G3hbAwjZKwJpueNfDj/H+ELur97OA2s1rhHAgZZGY7oJJFaVjeg=
X-Gm-Gg: ASbGncvZa9OP06bC3BCGYBnXbwtHEwjXOyAgN0iogC7ojmMrMpxlanvk0FDENQMOZ2S
	6cj/OFn+0W4/h86vvSnZvRjlBtRSM8WQkHTfrlIo6i7F6tAWynqgPIEo9mvMXnQR8Kpr3eJtMKS
	AoSnnYMHYGwDtcfx5TeiFH+Bs1TikxGit+XipJ306oh44k6IMY19sySg/KXadwelojKWfbDTcrn
	Hsu2R3x9GBQ7da7ffIW/6yF1+z6gXg+Y0cbNsXhdEAm1QB3ZbEaW5OJYWSGHf8aOyMQbC8BThWB
	+MvwU9II+geqnYw1WH6MZAXbohdxVayq35NWP8cemsPmXL3ehiH0hnma1pq6wT5ZsuumyxvMI/h
	YP7PjqJuWolvpgpZXr63Owicuyu4iisZ2pdiNqTRbKg2L
X-Google-Smtp-Source: AGHT+IGueK5QoMNin55y1U+ReeRji5g+uoV6EuXb1xgUOJA1idypd0Lwh+bCzoqSFe0fWJeU2bJx6Q==
X-Received: by 2002:a2e:a9a4:0:b0:308:ed4d:6291 with SMTP id 38308e7fff4ca-30c206a5124mr8288491fa.3.1741738302256;
        Tue, 11 Mar 2025 17:11:42 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30bfe741fadsm15984251fa.10.2025.03.11.17.11.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 17:11:40 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: qcom: sm8650: Add CAMSS device tree node
Date: Wed, 12 Mar 2025 02:11:29 +0200
Message-ID: <20250312001132.1832655-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Qualcomm SM8650 SoC contains a camera subsystem IP, which is
got supported in the platform device tree by this change series.

Qualcomm SM8650 CAMSS IP contains of
* 6 x CSIPHY,
* 3 x CSID,
* 2 x CSID Lite,
* 3 x IFE,
* 2 x IFE Lite.

Vladimir Zapolskiy (3):
  dt-bindings: media: Describe Qualcomm SM8650 CAMSS IP
  arm64: dts: qcom: sm8650: Add CAMSS block definition
  arm64: dts: qcom: sm8650: Add description of MCLK pins

 .../bindings/media/qcom,sm8650-camss.yaml     | 389 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8650.dtsi          | 328 +++++++++++++++
 2 files changed, 717 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml

-- 
2.45.2


