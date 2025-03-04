Return-Path: <devicetree+bounces-153808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8F8A4DEAE
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 14:07:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B075D189A674
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 13:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D40820371A;
	Tue,  4 Mar 2025 13:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p1t912bg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC2E1E9B28
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 13:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741093633; cv=none; b=IGo8eRy8tqMrqxNrJlXcQHMc5PwTXNw9qr9HqIqBUyjKCLpKD+h5UQv6pDgDY77fCdMNVME+pY7YokJYZH0HO/qklSmz0CW1uOU/D6dkSzn140v6qIWOzsMUYbJ1bUYhj71BFY5akviqsTfeKhfABb08jOZsjLJPB5OZ12FFXv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741093633; c=relaxed/simple;
	bh=Ky+fvdyDoG3IissBsaiMMbiz45nPeSzwNjFD36o7tK0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pKY5F0Cc0/Drc5mtzTb9ZJH8NkJC2pXCRyN7EACAedsHJNLoO5GtW8noXpmzHbb8m599A4MOfQ1i0CwU5rx5dHrnyyl15FkPXJGIuarHAHmtxU1aqsqGiz4+QU9rXYW9H9Zs8eUu5UOA87foTdjY9fBYTUAwP5fBprrnkRFSsb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p1t912bg; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43bc0b8520cso13996195e9.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 05:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741093630; x=1741698430; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wZFlPwqznQHgnLAxscIdZsj0o5PqYme1kBm8s2m+DWI=;
        b=p1t912bgiEA7pVQg6xF8m1DSuE39EYevTwd//iwOHkfXAn45PIX+1Z7RtQP0DKzRJ7
         gz2+3/82sOEdxS4dCzhWJV0CEnRkbwWPXDwAvzrCMoH3fDEjrosC2cMGmAHcfpMdehd+
         y1sIJWSIhKFGnJkTirWAgyZtwm4/WVFj1VQ8RAIxK3GA2v3xv8eR1319V1hM3HLnd8M5
         OVzWtQHK86GG42TG03grZPyga84uqi+5z6i4IUKfD2AvUa4a3DW1nWTd4DPsKcFls6V1
         ZGShdabnxDtBQozz4eccKwURIhLaVe1w3Pa+fAfW01g7hLDniJn1zqSAfZgrmNgq4yXd
         1xDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741093630; x=1741698430;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wZFlPwqznQHgnLAxscIdZsj0o5PqYme1kBm8s2m+DWI=;
        b=isDW53sFF6AV6HynOcAqcodVJgl+c1XCZmhX6GXWJqMQLPnBRYIhUkcLK2ihg+o2fR
         xdybGISm6NQcCBwn5jDmIEjA+5TzvXaDpq1U4wOATxMa4pc2AEhgEgyKEYT2MFgQG1XJ
         kZN9OronaiTPeSDsnCGLZzIeZpUnvdHkq51nnz+ro8qdoLrOaPQM7W67srNbAvIj+uWO
         1pzqykM6xHS2MiAyANZPm47rat3/KnjoKBf3xhSXrt/47ps0l70Xpcx9oEQwQqqn9Apf
         +JFkmxXRhczUorWly2bmXd1iqmpNAaWt0UQKKqZm45JhLCs+74WBw2Pq2l+UBIZKJHv+
         v7Xg==
X-Forwarded-Encrypted: i=1; AJvYcCVTpEvxK5gXIjMovMM26ZzZYQGchhNqZ+gULzY65TYKaCZzxNCXgWOPvkomqW7CKW6Anc2dHnCS3aEb@vger.kernel.org
X-Gm-Message-State: AOJu0YyDiXcWeyT1jyTK7RGwLSKicGKVvAKPtV+B8E0dsWZW5F2n+5Tr
	9RX5wzvh1V7pH15PgNkuk9/fW5bIxnrODynDemZJ+eL87Uutfm3pVsq8plm5RRs=
X-Gm-Gg: ASbGncuOjQbsPrSBAkSy5Une12Zxmcg31iID3Cd1ir1Q6x7kpud+7YpiUXJXm+bde56
	dXnrkRQbu2tEPLm8KQLfz+cd7ozyvGVFCdd6UfizsR3zd7NN/Jf+Pe8AY1ySKKpXufQdxF6IwCb
	S4l4T7tIerLM0C863bIVwGHPF1w4Q9UXRj329mf6HzYUdhWHFEJ2gqHg+aCgauZe8TdI9jISv/d
	6GxB94SZB7Gfaz3erdQPQrJHla6vCGbqoS+O9NOgCJFZyp7lqF4XLISsC+0of15wYjygda9zM10
	VX9NCHwrYVCYWlr4/QCbqP5gA5uWh8p1CXsFkDYxy9NcY6W1ZF15CfETaj80D7FTcokRdURouFQ
	NosKKZw==
X-Google-Smtp-Source: AGHT+IEHFxGtqrv8BoxoMocArVZG35gEJU/5Ocm93/iIVY0b3mdodulWU6Lr+CIjH7ZiEcVq6DZcLA==
X-Received: by 2002:a05:600c:3114:b0:439:9946:af60 with SMTP id 5b1f17b1804b1-43ba676e393mr123014035e9.25.1741093629721;
        Tue, 04 Mar 2025 05:07:09 -0800 (PST)
Received: from [127.0.1.1] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b6cd8sm17401715f8f.44.2025.03.04.05.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 05:07:09 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 0/8] Reup: SM8350 and SC8280XP venus support
Date: Tue, 04 Mar 2025 13:07:06 +0000
Message-Id: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPr6xmcC/x3NQQqDMBBA0avIrDswRqW2VykuYjK2AzVKJkpAv
 LvB5dv8f4ByFFZ4VwdE3kVlCQX1owL3s+HLKL4YDJmOGqpxbPEvYcs4sxeLbpklJY6K6nrTU15
 x57ApsnHWd8/X2E4EpbZGniTfp89wnhcILkOjeQAAAA==
X-Change-ID: 20250301-b4-linux-media-comitters-sc8280xp-venus-e2cad579b4f0
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.15-dev-33ea6

This series is a re-up of Konrad's original venus series for sc8280xp and
sm8350.

Link: https://lore.kernel.org/all/20230731-topic-8280_venus-v1-0-8c8bbe1983a5@linaro.org/

The main obstacle to merging that series at the time was the longstanding
but invalid usage of "video-encoder" and "video-decoder" which is a
driver level configuration option not a description of hardware.

Following on from that discussion a backwards compatible means of
statically selecting transcoder mode was upstreamed

commit: 687bfbba5a1c ("media: venus: Add support for static video encoder/decoder declarations")

Reworking this series from Konrad to incorporate this simple change

- Removing dts dependencies/declarations on the offending compat strings
- Inclusion of necessary static configuration in the 8350/8280xp driver
  config
- A small update to interconnect tags which Konrad pointed out on IRC to me
- Fixed author and SOB on first patch to match

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Konrad Dybcio (8):
      media: dt-bindings: Document SC8280XP/SM8350 Venus
      media: venus: core: Remove trailing commas from of match entries
      media: venus: hfi_venus: Support only updating certain bits with presets
      media: platform: venus: Add optional LLCC path
      media: venus: core: Add SM8350 resource struct
      media: venus: core: Add SC8280XP resource struct
      arm64: dts: qcom: sc8280xp: Add Venus
      arm64: dts: qcom: sc8280xp-x13s: Enable Venus

 .../bindings/media/qcom,sm8350-venus.yaml          | 119 ++++++++++++++++++++
 .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   5 +
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             |  82 ++++++++++++++
 drivers/media/platform/qcom/venus/core.c           | 125 +++++++++++++++++++--
 drivers/media/platform/qcom/venus/core.h           |   4 +
 drivers/media/platform/qcom/venus/hfi_venus.c      |  15 ++-
 drivers/media/platform/qcom/venus/pm_helpers.c     |   3 +
 7 files changed, 341 insertions(+), 12 deletions(-)
---
base-commit: d98e9213a768a3cc3a99f5e1abe09ad3baff2104
change-id: 20250301-b4-linux-media-comitters-sc8280xp-venus-e2cad579b4f0

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


