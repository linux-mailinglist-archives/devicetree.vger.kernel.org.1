Return-Path: <devicetree+bounces-85773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F131C93155D
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 15:09:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD5ED28498D
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 13:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A05E18D4A6;
	Mon, 15 Jul 2024 13:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B7vHuuOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC9118A926
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 13:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721048953; cv=none; b=o5VK10RMDRqALxZFwmOxyFaWb0xs3CUj69Fav+bLzF0Nuf40CcdQ9G7PzO7BEtp3mUIj29IckoQkRbm5rDN0om36T3mptLC2wnDnJNeEJnEo8OboNTt4rR/ufndG198G7d0QaGEFwuKCNt7Mjko2r1iffo4QPuCviCE5FORiDR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721048953; c=relaxed/simple;
	bh=IFLwMoxCunm3Ojw6v9lnBRc8Et8RQlpt+FsS2w6AuNs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=U4oQAx9vFGfkzg3n/cLDXatbJveAQc8w6rCrUXLRIds+HjBGKFYW8eV5cBWs7Jf0ymXNsiiNcJG65ulcoQAvULAS6RSEukQT9nkqXyChjB1tQEnjRm/EfCpiEILMCJpbTUGbrO8BIy6uESvLEmnwLbiq2IaRfwAMEQPr3srzHs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B7vHuuOE; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-36805befd01so1548568f8f.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 06:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721048949; x=1721653749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h4Cy762NHODqPEEZKK76RCvkyGJzJYGhxMZVjlQtC8w=;
        b=B7vHuuOEAaBkWUEivD94erhLWY02M6jAc+FW0McgNMOPw4E+KLSU0zKnYfum7kJcfU
         fqmkiWjGlyWIhsdxJCsq3y3kLbd3ktODg6EU+cD7Gsh/+sdIfq0DXCPoPbtC+CCLzS2K
         EFefwnGVykVVGVIU3MFdQru8M64VO4p8QN2g2WNWMpwsmPS9JVN6srgZXtox2rWjU1v4
         NTn9H9ebhiyY2UWwnY3Gb5Mphoh5gO4EijYCjOKHuJo8rT2wqP1yec69ZXWXDdvwEg3y
         zG9YVFQP/e7HuyR5MaAL4Dp/JDOpvocv5AWoiDTF6t2clAmHVd5zE1Za0Xn6zNXaYd9T
         rKPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721048949; x=1721653749;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h4Cy762NHODqPEEZKK76RCvkyGJzJYGhxMZVjlQtC8w=;
        b=k1YrJVhbiUoUmIvdfYy4SBU90kON9yGi3u/BzxQpds4xX59TV6vlK6D/8/GIFYEtDl
         /RqQ/18OG3pmsQ2RXuvCoImlJ/fifDoajBShoNA7brsbmPFuULCEFQWDwnJ9SysTN561
         Fb7dSyNsxECcxKeN9C0XRvr/bZhlSw7nHtgBYMh8EIiUOCVnbTyX0LaGZ9z9InMRsHJQ
         kqede0a0EeWGOFtCTrDBdLiHJXOhxxat3TXrevVze5anP8g1ol/S77GTgeD8ps2+j2kk
         wMMc+cBL8vZD092aoYmZ6tcDL6WutG7ny031NgxyeLjOnLQ3JFWplLK6aZvWTIadxbjt
         VbsQ==
X-Gm-Message-State: AOJu0YwmD/Uv8H/O0DYJ8qCyWd7A0+rPAX0mfF0sSwBadf3u8tddEoAx
	xr5N5D0H0NO5sh14QFrkap5KJ6LlbJMsvpgP1twdDjuvGH7NonHH6jVYiT/YlmiPMXr6yavv3Tn
	0
X-Google-Smtp-Source: AGHT+IGKr51kKIeIqmt034nRc7HfCYRczHzCwLYmIb7rCOJa9a+MeLW5PmGUvpro7kxdQiOOqlQJyA==
X-Received: by 2002:adf:f348:0:b0:360:7887:31ae with SMTP id ffacd0b85a97d-367ceacb451mr12705003f8f.54.1721048949519;
        Mon, 15 Jul 2024 06:09:09 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680daccdffsm6417766f8f.54.2024.07.15.06.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 06:09:09 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 0/2] Convert Qualcomm SATA PHY bindings to dtschema
Date: Mon, 15 Jul 2024 14:01:05 +0100
Message-ID: <20240715130854.53501-1-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,
The following patches:
- Convert the old apq8064 and ipq806x text bindings, to a new unified
  qcom,sata-phy binding in yaml.
- Remove reg-names from the SATA PHY node in apq8064.dtsi to conform to
  the bindings

Thanks,
Rayyan

Rayyan Ansari (2):
  dt-bindings: phy: qcom,sata-phy: convert to dtschema
  ARM: dts: qcom: apq8064: drop reg-names on sata-phy node

 .../bindings/phy/qcom,sata-phy.yaml           | 55 +++++++++++++++++++
 .../bindings/phy/qcom-apq8064-sata-phy.txt    | 24 --------
 .../bindings/phy/qcom-ipq806x-sata-phy.txt    | 23 --------
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi      |  1 -
 4 files changed, 55 insertions(+), 48 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sata-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-apq8064-sata-phy.txt
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-ipq806x-sata-phy.txt

-- 
2.45.2


