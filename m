Return-Path: <devicetree+bounces-23205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAE980A752
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:27:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 905471C208F4
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B336330659;
	Fri,  8 Dec 2023 15:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cF1xpExF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D453F10DE
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:27:28 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50bfa7f7093so2704830e87.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:27:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702049247; x=1702654047; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N9Ak96umiRUkgBSSGvTsmBmpZU1S/LgoTvl404BpOFA=;
        b=cF1xpExFyleopisP/18L+QnR017G+WokLbsRVzJoF8ilratU1kLA6IjeGpolioxjus
         yGDUoz1zUzwzgzhhorNCf0L3qYTWJzn27wiHNTjizuuPX+La322Zq2c8Sq3aJ6C+cUsX
         4eWDvKtIp3GGPwRS0XpYfyLkPm7E9xvqg9T4u5JJD1Ay25eel585E80AwFDUSTNBs5ln
         5NmQ8JmTghNwFNhhjqpZ03XfjjkZwZhElh0ioM4v7ZgbSVvrr3/O2hnH/jcXf9hXI7G5
         oQ+YW/iukO3Jmv34qZiGzwl2zqW5JYV5QX7sNXC7cYmtSm4Qkd/2LdFs8y6sIDe6q/b7
         jW7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702049247; x=1702654047;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N9Ak96umiRUkgBSSGvTsmBmpZU1S/LgoTvl404BpOFA=;
        b=ksP3Ofpg4DyD+k5w5SHtxbAhdeYK+e7JpFcdCOuWkVOPaME2xO2tpAcAFDnGMhNiBB
         t6USWQkH08xeruf+c7FHTw3ToLEdkE3z0BqkhI6fKD/9k+R7atJSCkgtXmg6WURHKIL/
         UL9HObWawGGsfWpolmqf3nXPOpyC1TG7fVhehShYhRuFhTG6LdiLDgFB9+V6hjtynfHt
         AIuAtX1gQKfl1eSc0RdWOaM/bWBK1WpksfAZkJ1/zhZVgYK1n4fHwW6n+EW/o4RIWZL2
         t1eG7Vf3O6aJCMoh5yYPEhNzdByUuuZ5Kj/GxyNB82U8qu9UO/DtOQUw5PDFJlVfTpAY
         PC+w==
X-Gm-Message-State: AOJu0YwHhk2eyrsfAf4NrBx3EkUEu3xiDmho68uXTVuOqT8CyBNUvN0M
	je2aqJfceUknafwxJhNHKptFbQ==
X-Google-Smtp-Source: AGHT+IEQGeIMrcEK3yigdLhpqxev8fd5skaPLeiQFIISFIgZmapYZOTGsEOyJ+y3hoy1/VtpGBeqQw==
X-Received: by 2002:a05:6512:969:b0:50b:fcd4:832d with SMTP id v9-20020a056512096900b0050bfcd4832dmr28246lft.113.1702049246906;
        Fri, 08 Dec 2023 07:27:26 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id k40-20020a05600c1ca800b0040b45356b72sm5443533wms.33.2023.12.08.07.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:27:26 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] usb: typec: support Qualcomm WCD939X USB SubSystem
 Altmode Mux
Date: Fri, 08 Dec 2023 16:27:22 +0100
Message-Id: <20231208-topic-sm8650-upstream-wcd939x-usbss-v1-0-91d1ba680fe0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANo1c2UC/x3NwQ6CMAyA4VchPduk3YIyX8VwmKNqD8CygpIQ3
 t2F43f5/x1MiorBvdmhyFdN56mCLw2kT5zegjpUgyPn2VGHy5w1oY3dtSVcsy1F4oi/NAQfNlz
 taYbkKRFz5BsFqKVc5KXbeXn0x/EHUxh7ynUAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1352;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ZeeVqSkTaaQgJLzmJA0ExVUlJclEFNl7UqvmeCA9j3M=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlczXcFUMZx5ZnaqoabAI4uoGQtE70iJUJyz5sMcqa
 KsvaQUyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZXM13AAKCRB33NvayMhJ0f+XD/
 4jI4EjGZGzMyAGDy1t8HM/OSjx+fyCHtpVcEMTV0lMLYLGCghSzolmCxIwjh/k3sRXozq+oSzimrWh
 8LOz1NTKNQIb1Q73p4o/n5x52nk1Wf6jMbC/syxi++d7Z0momVlmd76Vbd6cfh8YpEYRLNBYOCdnkq
 mPWzQAmjqXvEi4wIRzC1l9bapambk5LXJLGy6jy8QBwpgNE+uXnjMJpvjJ4Ruz8LvX+Jhm6qOCPbup
 HPd6vOrtPXgUm5+DSi6hWhhMaiCnyV13bX8oCPVE/elwgViL//G/0weMHJnNa7WS97ZvOYY1WTNdh2
 OAhycLzor8rcDWNEZa2y3KxvlekywVU/1+Qm7OU4mOgs17EMptFaYbFZzYiLFw/p5ETItnL/mAExIC
 WSamqBNyZTyVTo4fk0Cq4xTC77JZ1YhVp4pFc23t5Qjzbe8+T5Bs63rfEtTm5zOZLEXySgqjlUcB0t
 JWdGpauuVQme0HkojtLsa/v9TIlwbB3ETL2a6hpV9X10B5QDx6Qwh1yydDfJg0uCz+mW+b1urWE5lU
 wzvSE4iwf/V4AxnoyAVVj1L7UQ9b/NzH9RQ7GS4+jb+H2g5YtNTaLhDRKrMO8O5Czhd0MjSU43Q4+Y
 R9zpaxludCOcICiaavxaSkLk72NVvYPF0Kznjzix580hIIaq0W/ERO3AAs9g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Qualcomm WCD9390/WCD9395 is a standalone Hi-Fi audio codec IC with a
functionally separate USB SubSystem for Altmode/Analog Audio Switch
accessible over an I2C interface.

It provides switching USB-C USB2.0 lines between USB and Audio Headphones
speaker lines, and the USB-C SBU lines between DisplayPort AUX and Audio
Headphones Microphone/Ground.

The Audio Headphone and Microphone data path between the Codec and the
USB-C Mux subsystems are external to the IC, thus requiring DT
port-endpoint graph description to handle USB-C altmode & orientation
switching for Audio Accessory Mode.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      dt-bindings: usb: Document WCD939x USB SubSystem Altmode/Analog Audio Switch
      usb: typec: mux: add Qualcomm WCD939X USB SubSystem Altmode Mux driver

 .../bindings/usb/qcom,wcd939x-usbss.yaml           |  99 +++
 drivers/usb/typec/mux/Kconfig                      |  10 +
 drivers/usb/typec/mux/Makefile                     |   1 +
 drivers/usb/typec/mux/wcd939x-usbss.c              | 779 +++++++++++++++++++++
 4 files changed, 889 insertions(+)
---
base-commit: bc63de6e6ba0b16652c5fb4b9c9916b9e7ca1f23
change-id: 20231208-topic-sm8650-upstream-wcd939x-usbss-030c011a1709

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


