Return-Path: <devicetree+bounces-83537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D35D0928E21
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 22:27:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E4BEB226FD
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 20:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16B5B176AB0;
	Fri,  5 Jul 2024 20:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="cel2BcD0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F5216C87A
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 20:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720211232; cv=none; b=IaeSAa3ZEnCT8d2+A1fNIBV0F91N7qw8kwxJhjQ9ll5MY2sYX75PjXa4U2r8WN5knf4GmgSpK6hH0NuceXIfS9rib2XCGRivZpEub36/BlgsePHRmOyVupSl2MW4jdeWfND0j2ePWiK4Krb/7ve8KF67KRSiDV8z1QYibmS69TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720211232; c=relaxed/simple;
	bh=OK6jYoLxPwtFBJWxPeJahEzoklsGtNQz/Gd7Jk7cdEA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CjtjpEsM847bV5U4ym/4vJ9JmznfElYrBfQVk88wBr5Cvkp4vH0UczRfi0UMhu7YXkN5xr/J/ViTlXALTg9svYqQoyD6blh1PYuXaw2bx+jujVq/dx+QIJFF/03Elo5TuSb9bCWT6WLAyXFKFqEqVsE3M9hLKiHxat6NmEVH9/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=cel2BcD0; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42648961d7aso13807115e9.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 13:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1720211227; x=1720816027; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BZBriTQexyYaPpKzg4SRMuaz7w3jAUNQQyYCNn9LPT4=;
        b=cel2BcD0pImlhUqHK//Z0sEH5+3ZYx5vS90xGCdWygGx7aKIJEffTbqUnpEqseS5Jn
         enfqqaSzvJLNrUiRR+6DTjuBmk59AROuPD1g5B3Qr8mmq5Zl69q5gAHerQFbtKF4+42h
         NAFJqHtWJJn5ZCEu9CTyQ4ijHwPQ2HjuKK6laEYK+ER88ZO6ppismEp4HUILwRWUgh9m
         IotV6k41raOAm/pOkboJmSzG1Ms8BNqEkUn4ep7cWafqPLpZBrd8TATriys0NsDO2W6G
         yWL8IrA5Wk1hym9vchaKBsBbn1YEfbdOl7c7r8MjEYq5a9m3ArRYl+SxdXQk2TQ6Kwv1
         jLSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720211227; x=1720816027;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZBriTQexyYaPpKzg4SRMuaz7w3jAUNQQyYCNn9LPT4=;
        b=PAtODmsf3SAL4hJ6QXbbs0uQ2BBHJwGQavsTBVv9gpL7VsradAQ8L9VfJCVSHNUDcr
         xp6KzLjvWNr1e9zbPMe/E89NX1ZRiwW0xYcsqncQqn4P+45bGcFF9nQGIpIhMywIpI2X
         XXBXQ84ShNx69vf/G0p17dd6QXSNrViR2EuiUlHQOKXUy1jZa4gOKVETbVkII28dE1tf
         P2WeWUuu/As5vme+ANVDtqhChGB/hpD5QMwXzs8rOQlQ08iSZpMjWi2X6JYnAuR1hrqP
         3WtxLAVXQg9qXgv8yBPHNop3yPXm5I+c1PiRp/2nOaVpAVkgbdhdaG+48UWPFGGJv46S
         WWhA==
X-Forwarded-Encrypted: i=1; AJvYcCVXJ8gBow7ArXoNlHhzQ7xQPjLyAcUEzXRxCS+qiLcEIc6XEvYnsYzWaDyrFXxgyzUMWC2TeMA/QuChdJ6/I4mXphnNP1Dxv6xOCg==
X-Gm-Message-State: AOJu0YzmgDKyBAh1D0QilcM6i3OpMrE5leUrKrv27FX0zwirY8U0z8kJ
	mcRpgoZmgzzm+OslI30eWlI/tHBFZcFm+6822ijd3baEk6Z9RLWxH37RXHnadNw=
X-Google-Smtp-Source: AGHT+IE8ipGtgOCUKdNLsFQ1+XTQsj+5C0IbpBmhTXV5ldHk4CnisStKVXvLzexawBm3ek2/l2pOPg==
X-Received: by 2002:a05:6000:1105:b0:367:a4c7:a131 with SMTP id ffacd0b85a97d-367a4c7a80emr2307165f8f.36.1720211227503;
        Fri, 05 Jul 2024 13:27:07 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c688:2842:8675:211])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d5116sm74397625e9.10.2024.07.05.13.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 13:27:07 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: [PATCH 0/6] Bluetooth: hci_qca: use the power sequencer for
 wcn7850
Date: Fri, 05 Jul 2024 22:26:34 +0200
Message-Id: <20240705-hci_qca_refactor-v1-0-e2442121c13e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPpWiGYC/x2MQQqAIBAAvxJ7TlhLEPtKRJituRctjQiivycdh
 2HmgUKZqcDQPJDp4sIpVpBtAy7YuJHgtTJ02CnUqERwPB/Ozpm8dWfKArVGMqaXflFQs70avv/
 lOL3vB61W/shiAAAA
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2081;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=OK6jYoLxPwtFBJWxPeJahEzoklsGtNQz/Gd7Jk7cdEA=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmiFcUSGCsnbSJWAHsNizMNrNAVXqvPoosIJ2n8
 LHO4JwlNjeJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZohXFAAKCRARpy6gFHHX
 ciXlD/oCBy8BSDcF3JJdOa6DRSp1w+1V6N6kygXhOVi03ssxMpHh1EuV8gmpzeUh1XGfH1xXbq6
 W9/8pT6RjR4OSuipxDDX43gVOv2h1P/YUBtmHho9tl3p5MKNqwtrP+Qtye6d9CQ86Q/w/vUfoKs
 1t6fzGQUWNbnPInoiyy4SOw00tNaj2KrP6cWaxJOXz3JkiyAx4+3P3DZ5qzv3fFqtbytsjTClmX
 KJQpzA8GZsthMfLg3xRFjmow/9jXIhQYgPArAFqIDe/2/j6a9jr1Cxy6b4BKu1+lRXPsmK4639S
 yIRSSnEmtdsQuvWo50APwL/OJdpBFhWbjc0qeCBlLKLCgvjHO9qOhCdz7OasegC32/WvRzrVFNB
 IoRQu18MSl1wZyGi/P0OO79lH1kiIXhwFFL+u+j9wK7Q2GgKsi4PJjzYcXrPCIDv6wtqtd83dDP
 OAoXG7Fvo7OicjHG+73GdKyrgsyN4n6bBgIMXeHMqc4pB3KYVu522DnKaCZFEUd7Xtlm5Y5tCc4
 8qva4aKc44OPpXtT0IXrIlwnDo707yU8Dyi3Wi26gENLZ4ilelrOluxf3/ibjKfbBqWvdqgT+4A
 ZarDw0y7IoLUU0Dc57YS8scEJOHpbnP14I/KigqUZ7o7iguYuVCodllKONjIUSAkV3HgW3/nNsj
 TmvHCsuRaCOUlqQ==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

The following series extend the usage of the power sequencing subsystem
in the hci_qca driver.

The end goal is to convert the entire driver to be exclusively pwrseq-based
and simplify it in the process. However due to a large number of users we
need to be careful and consider every case separately.

Right now the only model that fully uses the power sequencer is QCA6390 on
the RB5 board. The next steps are enabling pwrseq for Bluetooth on sm8650
and the X13s laptop. To that end we need to make wcn7850 and wcn6855 aware
of the power sequencing but also keep backward compatibility with older
device trees.

This series contains changes to mainline DT bindings for wcn7850, some
refactoring of the hci_qca driver, making pwrseq the default for the two
models mentioned above and finally modifies the device-tree for sm8650-qrd
to correctly represent the way the Bluetooth module is powered.

I made the last patch part of this series as it has a run-time dependency
on previous changes in it and bluetooth support on the board will break
without them.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
Bartosz Golaszewski (6):
      dt-bindings: bluetooth: qualcomm: describe the inputs from PMU for wcn7850
      Bluetooth: hci_qca: schedule a devm action for disabling the clock
      Bluetooth: hci_qca: unduplicate calls to hci_uart_register_device()
      Bluetooth: hci_qca: make pwrseq calls the default if available
      Bluetooth: hci_qca: use the power sequencer for wcn7850 and wcn6855
      arm64: dts: qcom: sm8650-qrd: use the PMU to power up bluetooth

 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 18 +++--
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts            | 28 +++-----
 drivers/bluetooth/hci_qca.c                        | 80 +++++++++++++---------
 3 files changed, 70 insertions(+), 56 deletions(-)
---
base-commit: 0b58e108042b0ed28a71cd7edf5175999955b233
change-id: 20240704-hci_qca_refactor-0770e9931fb4

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


