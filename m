Return-Path: <devicetree+bounces-130047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B569EDC72
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:26:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AED62834BE
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3877B8F6C;
	Thu, 12 Dec 2024 00:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hKCjdvhT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A014A29
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733963158; cv=none; b=RbARt8Dd44TXG2GrqVI0sh9n9OGJUKqz8Pdbpm2ddq/tl29g9RT3fEx4/VuO9xgK5HEJS3d5qAR8MpbFvCPSBFN36WGt1s2uUUhbYkvkxrUGYB0nqFPAdsavAQbJ6Jab9NUw4j/1oPTrSLB4ex5MTkMAawM0LU+N9PQ/ax4oF28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733963158; c=relaxed/simple;
	bh=VMRhznEfuWRzm4PskXKJVX6kiXv2IdahJDfuMosc19g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jyjq+rq1nhxOCHKckGzH1OSJUAouIqwytztwCY/TxWVue9IAAeDzQGdAbZCR7/Wp+iCeXBh6E8Lh2xKlh9cBJtcBJYxs3KF1+p2EuihTxv61VGvT0NI1ZX+5o+F2GG/m1tb18BmHFpfHo74483FR4q/AbVJGhhlTDU8LPyLL0II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hKCjdvhT; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4361b0ec57aso363875e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733963154; x=1734567954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=19KAgtQ3cw31dITBtSLiYsrKex1kzCFQG+F837LVi9w=;
        b=hKCjdvhT9fNckN373W0BpfhaPMK8pKL1Od1WN0HBFEmWQI2N2T+0IwqmHtHKXpOC7K
         4/6Z7Nk6/6ueneNKASTpyeIrK43UuZoNYJ4/zpc6TTJvRjmxsYNRreuhMDatuMP3BBlR
         XVkENOFOBhvPAQTFOD0ups1R0AEYDCNxkuqSQvDR2q3q1y2m0Qa0X7dNPY6WmSvUqUxb
         UuwTqI+olAvXjK0G7W+6hvKlg4yJMeOFHeiW7ZRsm8+vgkBOjswZqu8vOYsZsAykO5zI
         jBOHu8fdJFdOh3oM2ObMRRtQOCwEWV1dvUfRzS6eWlWQJv+AMz5ZwDSVQjxEzRjjfNm1
         hdtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733963154; x=1734567954;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=19KAgtQ3cw31dITBtSLiYsrKex1kzCFQG+F837LVi9w=;
        b=I6qVjZQYQ7BmOMsx9ED9IToNW294bi5wZRChP4c/weVjA/A3iSQ8+0l29HAu+s3SOi
         2RfY8D/ihx5ZhiwaxJFLS9zNQRFW2oq8j/EukHkn8KelN5KNR46rkVuU8MHV5mXWt3dJ
         I+YRikmkTsE67L7hGxY95bwHDhYDt0cNCqOUrOzI5scUwtZ/hRgHD5WlbgeIZ2f7rYXW
         GzgtJrNuCM5OadR0GfNwPhiM79f7BaVgSnsNew59ByImEwxuB93xnvcKKAgd+9hgi1yK
         mU+AIbr9bhm5Os27OJSHplRdenyIKEFmc5oDJ0PNLmwqGZezJvXM9rFPLa6DdhryfnBY
         J9Mw==
X-Forwarded-Encrypted: i=1; AJvYcCXUkmpBP3aEwVhcLRqHAo1tsm4KbESE+g4v1BuYA+8mTfoIo30uYcr5FuLQJNtQ+JtZMeIckGJUjvu+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzyku8zC6IrWIgHOOLibrQYtdyX/FY+DT4KKzqus7DVBqNMoJBP
	jZl3Jg9J4KMQ1y3a4lFQs+ebxvewcYCEVDqZeKp54ApMvvnQNAMWcODb8JvcDzo=
X-Gm-Gg: ASbGncutXiF9SPZu8XE5mIVLTfGJp3G2iKv/I18GeOVkNfDE8upX/4wcbH6BBHQTL01
	RLdHRSsnB1fxmGotjS1ndKFmQKwPBoRj9GKY/tyqsrPaAapThfW7o4qkrTVUz58qON5pcDhJRil
	C3aYMFhfIj+kugZ2LeCkFWaWJdf3/VYlKj0eAlx17GeJyceNA9GUMuIuVbGQqkJN6hRpqI/oLgW
	CDyyzzX+LbCSOF6nzQ4LSZimkD5Cvvfk4KPFvnVgAFiPzYfAtPe3VbIJm7nOHDkzLkYaTjz
X-Google-Smtp-Source: AGHT+IGvxDqLJUy3fFQzIVuzvp27FetMomZVJ18+KKI8WYt/hlHo5f831O2u91CuH917Kdc7PAT0Rw==
X-Received: by 2002:a05:600c:b99:b0:434:9c60:95a3 with SMTP id 5b1f17b1804b1-4362282abaamr12382335e9.11.1733963154513;
        Wed, 11 Dec 2024 16:25:54 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43625553333sm46095e9.6.2024.12.11.16.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:25:53 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: andersson@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	krzk+dt@kernel.org
Cc: konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	srinivas.kandagatla@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 RESEND 0/2] Qualcomm sm6115 LPASS clock controller
Date: Thu, 12 Dec 2024 00:25:49 +0000
Message-ID: <20241212002551.2902954-1-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Updates from previous version:
-- no updates, just resend.
The same version as here: https://lore.kernel.org/linux-clk/20241101012247.216825-1-alexey.klimov@linaro.org/
just rebased and re-tested.

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


