Return-Path: <devicetree+bounces-84197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E72AF92B526
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 12:25:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2AC02852CC
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 10:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6A2F156668;
	Tue,  9 Jul 2024 10:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WVPPD2X9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086CE155CB3
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 10:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720520729; cv=none; b=KJmwIN5FaZ4XuJKBwrWumXvigHLSQ24qFZf/1M1KQW7EK7L1/ciPpTBrDPWaUniNL7HDVGvCQyh9Gpvm06PtrzgwsPuYryRJCNmcWqCFBvpu616TGaC9TeHScfOnLaEJQY2acVHO74yUC4LIzX2POPAyK1fIVtQ1U3AbaGAxRqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720520729; c=relaxed/simple;
	bh=enVkZUFSMU1QRDCS+XCAqVCl+jt4A1xZ4jWNzQw6rl0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MBtYMX+3rguzK/ICBH1nHG7e2T3GGo6QnJidiRMp3WNuQW8AZ0wgO1NpyAh+jyXTitgKoD54mAXqoFysWXoUp/OwKxyxPmn8xvbEOMtbxvsMDxgGet4jqcKjbf5f3K5W7xuQRmxNveIFC3P50BpOQzYZeLBXdyW3ap3nYU7qt+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WVPPD2X9; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52e94eaf5efso5923338e87.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 03:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720520726; x=1721125526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kbmhfcZ3SHgTFqZSnpPANjyr5ZUXbDera72ZPEWAijQ=;
        b=WVPPD2X9VUcDvCj1r8YuFYJXD0M47sffN92s/+jAjxW3JsMVeeS0FemeXz10xFvdct
         jy2ezyEaWV3EwJN8CwVsHtgrX7WejHw6pYhuvZ8FurcDCXf982OY4ZNe4Qa7Yz+i/3Sk
         9V4E8mIiLlCZF1TqLx1qGeuU2RxhoAb5Og71vq68lPHnVoUhNqbgxbh0NCD/yu9lFtac
         +Nm2NF2aHnfTgW8FAhK9IQJf/DKAVugFWJcNNvQVZ/I78v7z5XrTMZLFqp2RPqBveUDj
         aDNnD3cvx2nRy9XjCvRjiVoEXS71jUKz+NmjVOjrvaq6hw2tTqJZQn14Q3jmXSfgMC3U
         BPLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720520726; x=1721125526;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kbmhfcZ3SHgTFqZSnpPANjyr5ZUXbDera72ZPEWAijQ=;
        b=wQitnbbBzkJZnFp8RJ4uYFlXFSIj0CIrmfVlWTjC8vWXjct8VRYNetEpF3kGQ5AmG6
         nmHUGGz2fuuqhh6WKu5/8gdDdfboHtktKdMPFiXdFefYIv3Tp1Ic8Wv+s+PFEtQ1iFxz
         XcERbuZFsEJGjJIqFz6QM2EsziDStslXcK0e+ueLiZ1NfCNK2QXoc872NZ9kDC8X5DIB
         iFm398YnN8I7VTvHxYcz9H4vQz6xQNjmBgcBy9+IG5J17j/n5SU8FP+63SyVqBdvXN+z
         OutR8ivgKPcxmRGkG72lxRoMTjOFmc51stN+xi+YpPOHRJI6kUtLYAjZeESHrTi93UbF
         DcJA==
X-Forwarded-Encrypted: i=1; AJvYcCUfm8i2BtPOL6sRzFsR8kO4Q2DbmLY/VrXUKZiORh01pNB4S7j74aI9K0lrtGs4ePqNmwKmiihyqNss5PDp+rXKtCvLbml/GuUbrA==
X-Gm-Message-State: AOJu0YwDtpodmSbrGD1RKFmMPelfYCqpuooRmUwa/1GV+rpICLdxvH6e
	NAue+31HGOzGc2aQSRJJexyBYU2SfkZOkgJcU+AydAx08ZU84RglMGwCUHkgZnU=
X-Google-Smtp-Source: AGHT+IGrIL4fjZ6bg4830FmXf6yta0KYdq8kOUiKm03vjyat3t+A9hR/YVniq6GbARZs3VCdQQNpIw==
X-Received: by 2002:a05:6512:b12:b0:52e:a699:2c8c with SMTP id 2adb3069b0e04-52eb99d1e87mr1360326e87.45.1720520726168;
        Tue, 09 Jul 2024 03:25:26 -0700 (PDT)
Received: from localhost.localdomain ([89.47.253.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f741553sm33954285e9.40.2024.07.09.03.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 03:25:25 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
To: akpm@linux-foundation.org,
	robh@kernel.org,
	suzuki.poulose@arm.com
Cc: linux-perf-users@vger.kernel.org,
	James Clark <james.clark@linaro.org>,
	Mike Leach <mike.leach@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthieu Baerts <matttbe@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jiri Kosina <jikos@kernel.org>,
	Geliang Tang <geliang@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	Kees Cook <kees@kernel.org>,
	Matt Ranostay <matt@ranostay.sg>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	Mao Jinlong <quic_jinlmao@quicinc.com>,
	Hao Zhang <quic_hazha@quicinc.com>,
	linux-kernel@vger.kernel.org,
	coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] MAINTAINERS: mailmap: Update James Clark's email address
Date: Tue,  9 Jul 2024 11:25:09 +0100
Message-Id: <20240709102512.31212-1-james.clark@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I moved to Linaro so update my email in a few places.

James Clark (2):
  MAINTAINERS: mailmap: Update James Clark's email address
  dt-bindings: arm: Update James Clark's email address

 .mailmap                                                      | 1 +
 .../devicetree/bindings/arm/arm,coresight-dummy-sink.yaml     | 2 +-
 .../devicetree/bindings/arm/arm,coresight-dummy-source.yaml   | 2 +-
 MAINTAINERS                                                   | 4 ++--
 4 files changed, 5 insertions(+), 4 deletions(-)

-- 
2.34.1


