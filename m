Return-Path: <devicetree+bounces-134932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6509FEF6B
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 14:02:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C0A43A2D70
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 13:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EF91197552;
	Tue, 31 Dec 2024 13:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EjNFVd56"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058642AF11
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 13:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735650157; cv=none; b=oUaJG6zld6kTxubM/0cPQ0an73CIdWzVlxq+8Ci1/gjdYDTOo0rOKYWohardWZ0CTed1KQluXguDItyws2EbOzlp3T75FKsezoewwRgOmCn0dkU+Jfd7Suf2/CzPOdpBbmcDTOSKwRzt9A4MvWMt31Cw+w7Io17eMotlLBY1pUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735650157; c=relaxed/simple;
	bh=A2svREI4FIVJzkKEwefSXyU94tPzvmDtXnUwV8G8N/Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LeeWt60BiVt+fUA5HK0Zj1SjnCuwVYRqPMifIth4kW24HTy3UCUUCTTcMmz8fDyLyi49iUTe1XuboD8ZkgtUd0YUFP1LZ9Lj7VmafpbVmhM7LFkaz/yXrjjX1XGxd6aIm/zchxjOUFA6Pe4o0jK8mHaEMNT+gsv3gQ0EnmleR7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EjNFVd56; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21628b3fe7dso128828465ad.3
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 05:02:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735650155; x=1736254955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pD++1f9rqBnGXBqsB0i/D/VQxXsfJ1lC64nLmc5hcVM=;
        b=EjNFVd56Nz0mWf+vslEky5Oxlk1LYpK8TqT6Jz5+44DHaWdCNCH8UfhtsrRUsB49uw
         2TCER7dtl9LbZ+WxRCt2Cg6du54DE1tQo/c4XGTe6EWEJbDIi4ir4qQLJJx6IfPknxT0
         7uexokrY1RY1t2PhLsJjvLaK90amfBtvGQEoZHvKOgS+MfP5PDZIgglxJJZjtidwS322
         YTBliw0WlSTMeejM/MZKEyEWDhQvzuZTs8o5cEopgOLNCA8pZ887feQr0oeHNiDSqFFv
         JlCGH4L16XvezxFfoP4djSBlxsN/phKmE/dq6ZyFx9owc2XUfjkW9IbR/P3RclYluuLD
         2crA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735650155; x=1736254955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pD++1f9rqBnGXBqsB0i/D/VQxXsfJ1lC64nLmc5hcVM=;
        b=LbfA/OiOobtkwEeBgXjdSJY0jupevHIhoHrucz8LV/f6+Ksx9UNl+wfNxQDuPM17g4
         oSBjlBo/txZreOLWDSqRk0lCrYz3YraIz2V1OkQjsrfA7666Pxp7Rv+tZ7EM0fuX5a1c
         BpjHqTTUYRvp8+8r/OkEmN1JtMARo7KHNsDDIJwxgsH8PqodJnIZ16LrhNLdJ6F3GNVg
         RCf/ne7yV3Z+b8W1Tn2cCzGOADHPGkNMBpymjAxrBiJHYYcR92xGzUzcFjNHySvJ4ks9
         Y/yxiFWtfgE3ds7tbwRvJ3wPZLiv3UDp0sPHA87jDt7U75HCIUmjzdWS3nKGFQPgyrbY
         zV+A==
X-Forwarded-Encrypted: i=1; AJvYcCVcojMxf+y6/+L+ixEbUuoc2eaMgiL4Xg8hgj8BoLYLvnPcQleLJRahhRk791a0KtsgUTn3ixJpBy8m@vger.kernel.org
X-Gm-Message-State: AOJu0YzdbWDPm3zUEwrCJM9zEwXfV854kA7G36eV37BUyFeDLoiZLeqt
	sVNta5dpRQyRrAq9rmLoyi29c1Wf4rHUrI2NxsmvDKjtfVZMy1QGJdh71276Uw==
X-Gm-Gg: ASbGncs1YU9bwUdwZ8rWh3aAwAH2WUJreq8CwdVyCwcfrVSnQzbcozsZ4MNnrDiRYDM
	OWm1sWI13K6Co3jPWkzr8I0SEQCth/E0VQlp8npN4qG2vkO5ftAHWISkol7dAPJO234ml2C5ZyS
	SjQpx1VQzGGpekknkWB0AEm3tcXv9Ga5Wj4SAG2UZL7D0yOHIvyJP/sJAM1mayBFNiucuIT5GYn
	sisBITzdU+QP4W+mWvCXndGfhMHr00Cxaqp579noDfh3z1XxkZAsk9FzGUPrxkEmJgkVLDw/G4U
	Iudh5X2JvNY=
X-Google-Smtp-Source: AGHT+IHskOPLWYz3FbdcCRFskO3yH92w/nP2ktKNyWbNAAQ2+U5M+AnqRVc9v6tod88isaSxH0Z6dg==
X-Received: by 2002:a17:902:d582:b0:216:282d:c68c with SMTP id d9443c01a7336-219e6e9dff9mr595650485ad.23.1735650154344;
        Tue, 31 Dec 2024 05:02:34 -0800 (PST)
Received: from localhost.localdomain ([117.193.213.202])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9d945csm194514275ad.117.2024.12.31.05.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Dec 2024 05:02:33 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: lpieralisi@kernel.org,
	kw@linux.com,
	robh@kernel.org,
	bhelgaas@google.com,
	andersson@kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/2] PCI: qcom-ep: BAR fixes
Date: Tue, 31 Dec 2024 18:32:22 +0530
Message-Id: <20241231130224.38206-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

This series has a couple of fixes for Qcom PCIe endpoint controller. The dts
patch fixes the size of the 'addr_space' regions that allows the endpoint
drivers to request and map BARs of size >= 1MB. The driver patch marks BAR0/BAR2
as 64bit BARs.

Previously, this series was part of the Kselftest series [1]. But submitting
separately as these are independent fixes anyway.

- Mani

[1] https://lore.kernel.org/linux-pci/20241211080105.11104-1-manivannan.sadhasivam@linaro.org/

Manivannan Sadhasivam (2):
  arm64: dts: qcom: sa8775p: Fix the size of 'addr_space' regions
  PCI: qcom-ep: Mark BAR0/BAR2 as 64bit BARs and BAR1/BAR3 as RESERVED

 arch/arm64/boot/dts/qcom/sa8775p.dtsi     | 4 ++--
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 4 ++++
 2 files changed, 6 insertions(+), 2 deletions(-)

-- 
2.25.1


