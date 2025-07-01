Return-Path: <devicetree+bounces-191398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAB1AEF25D
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 11:05:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 935CE4458F3
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 09:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA62F26D4C1;
	Tue,  1 Jul 2025 09:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="np7EHz3R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CA326C3A7
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 09:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751360499; cv=none; b=RV25Xy4rohsMpwtXgqO9TKAlJjV7aHKqlyjkHeqch1t7T21vjRGBvMalYbqMVZ7CzECHEIZkN95HfkDqeMvRandiZ1/F6aaP5p4g51SFLGm/uDm8/eHlaC2F202ne6YhIU5R6FC2novfkGjn1d6cDBfEQKUWyaq4YOIxUp2VFiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751360499; c=relaxed/simple;
	bh=UM/a95nU6vNLC8ZVtNDfSoDoqDmVKHLoqiuDZiPQOFY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Fqp57Xe91DFt7QCLTCQK2GBpZM+S6/ykklxBllVT3RjhTRWRvBllF5RP4gom7QFbQU9k5xLzLaJyzYw4/txm7x4azrpkpeFvY2qHC9ps1ng1Qz0nbdl/egFutJRpJhTHzwFBUCfbRDrXvZVyoyhmYPkkZc6/O6CzdV9/nFhw2SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=np7EHz3R; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a5257748e1so1919406f8f.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 02:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1751360495; x=1751965295; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WP8VKsIDrL+Rlg/Gxr50hjhldFCuzpVHMlIsVNdgSK0=;
        b=np7EHz3R+tpby4q8v+07EcNGGZjaP9cYWJWWz8VrfmjRl58RnpufLNdjmdmv7/2O8m
         8R9ldZJrqQO98aY81OdOJaDNqZN5087oKjEDzmKGH/yY39U5Q+2HzlDqJ4fWfUto1n2A
         w5WiiivN26Ll7hEerlpfMVJ1t/oD4PlN42cO/pKCAvvPKPIHhJZa5o404Je7iCflIUfE
         0B4e6T4AIJ2cuP2p0KTk15mOcQUdIIkVCxcD698mubR3yeYmyL4m9PfOXi49fXgEZ5k0
         id1xl9AmEQwzi8a4kA4I7FWASm5/FjSbeGfuWHMPEdGKrreOz/sv0jNFf8Cnyn1qcKdp
         4KRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751360495; x=1751965295;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WP8VKsIDrL+Rlg/Gxr50hjhldFCuzpVHMlIsVNdgSK0=;
        b=LJ+1UoDWRYDuErw6tnizjsa7ZPzrEjSV++lyLTS+6h0kXW3XoNYDaKSNdHk8aG9uz+
         WPDPep/TTgml/JhjgyqnPCUh94Nj+vrgIxNwBLWwdFgHIpsUboUdnw3OXz+hlGkSAXAs
         avj5cvK+Uf7yvpsQDIiSALMw4E0H0MnRt6ALBkN6/nV2p7JOR67S0YjWtB1EPNykNqcu
         vcYtCaMcaZhlvxoEU22u8u0+1uxgzTUvNgOwBmTKwlIQDgU0meSdwiccc2ea6ZmKyKWE
         pyu3Ajv9ypm5au261V5rV41zSzLZSpZARoq/QJs+TatFTFkLPU4NmthAEVlLOwOu5aeh
         6U2w==
X-Forwarded-Encrypted: i=1; AJvYcCX2k7asVCl8MvB/gVktcaCVRWbLRR95GcNfoiSdyMWtj19/PHHVIgw7LLQz/ovL3DfUSeTH4K07dC/o@vger.kernel.org
X-Gm-Message-State: AOJu0YxhkiJbmLnmdcXGRkUqW0/ZJOwIWf4iqPUiTToLZL/2190tqIHr
	AE4ygzv4Hg2ADVDcNLA8AfgE7RoSfrmv+U8B7WB5HwL2hdw58uQ+NNGdz3PKmuKPbpE=
X-Gm-Gg: ASbGncvrh9fynUNxwcJnm0zHjLkQnmSfZusTY38JZEFIQB9QxXFe27tZtWZ0VqpGSoL
	F/uVRtQgPxPHnW1y7PciwFT7LTYq9ohsxo8FvUs9s5AH0VohU1ID+6Eww5O/m5VqLrmjt3dGDYc
	A/ExLEPNQAQ/LqOzT5+WqZvPE56aR1Mdb87J6Kvd98u8IdlY7p58AnkuO6vbTmWLOFMO/ItB87f
	Zl7y9ibk1fJgRS6N9+1K5HPZpAm940U+jVF/gz4ymfAOtBXhSLlPtXBzEmE614cnR5nTutpf1xU
	yJfHq04zpvSH/Memk8Vp8lvXUAproBRrk81IAjk1ZJv3+HtghcSHgZI=
X-Google-Smtp-Source: AGHT+IHaVKK5/KLi+D7h/i2dCCKCKD/8hgl9hcBgDka+2suPtO7Ix58QUwQem6y4dI/BfL73PW5K7A==
X-Received: by 2002:a05:6000:270f:b0:3a4:d994:be7d with SMTP id ffacd0b85a97d-3a8fdc1f5a9mr9410263f8f.23.1751360495002;
        Tue, 01 Jul 2025 02:01:35 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:a387:7a32:8457:f9b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ac6ee0d0b9sm6949707f8f.18.2025.07.01.02.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 02:01:34 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: [PATCH 0/3] arm64: dts: qcom: fix GPIO lookup flags for i2c-gpio
 SDA and SCL pins
Date: Tue, 01 Jul 2025 11:01:28 +0200
Message-Id: <20250701-qcom-gpio-lookup-open-drain-v1-0-9678c4352f11@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOijY2gC/x3MQQqAIBAAwK/EnltQM4K+Eh2ktloq15QiiP6ed
 JzLPJAoMiVoiwciXZxYfIYuCxgW52dCHrPBKFOrRmk8BtlxDiy4iaxnQAnkcYyOPVJlbaV1Tc5
 YyEOINPH9713/vh+OY8wBbQAAAA==
X-Change-ID: 20250701-qcom-gpio-lookup-open-drain-e3443115ea24
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1316;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=UM/a95nU6vNLC8ZVtNDfSoDoqDmVKHLoqiuDZiPQOFY=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoY6Ptvgi5B1OXpXy5Qc5dnFDSASskBDGBNT7tD
 OMK42Jx9kmJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaGOj7QAKCRARpy6gFHHX
 coV/D/kBLaSkzFODESNxhQquue3V2OATAFhq1h95NGrcmcbTr2WP1XSY35uU5H0aSGmg3Y2PREF
 lli5mQrrTjqGPUIuiKSC9/Wny8Xh/eJmZYIH+C71NuAOMklmKmPiR+sRapU2cVz4/w3ed+bXUjy
 VPf6Dsy4NyIxSopChXiWApRhxy4xNK85rqhDY0d33/tHhXlys55KjThYN4eymQkj0wXN1x4Skm7
 2jCtEYXk8YLOU17Go4prTHZfLUcTvqVR7/70oHsvHLi49tLjoz617+h7FqkrQIiRnTXNk5Yilex
 x4WRK9ejG7PeDo16zCXL2RaJSbOG17OE4Iesx9NN7+JoDywaZ/eBLXcUDwyN02mZqmX1tY+VxH8
 aTFucL7UmodT160gh4GBK6+/E/OCWy5CbLPXOcPE7/JylXuX5gRpQunrygiHoSXksXQYdSixh1x
 7DbRQO3QhGk5hVf4wAHr/46xkk8LZ7xkvj9jXk4Goxp8gAgmNDPvYgr5THBYArBxlh/MsZsC8sa
 yDcMKjYRBwvjaERWmgfY0nRy6AAqhzC3PwlZ3keyGB/yWGk5KvltgENDb3bBm7u/u/PoCBJ3Utj
 1fMARwmZKGWaqrewAZ7hOIEbA5L+Y/WN+schcjzlC3CGHWtoBYPC75eF1mxH+ahaM7kN/A7jL5g
 wVxVvMWO6Naff+w==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

There are three platforms in the QCom DTS tree that are missing the
open-drain lookup flag in their DT nodes associated with the i2c-gpio
device whose driver enforces open-drain outputs. This causes the GPIO
core to emit warnings such as:

[    5.153550] gpio-528 (sda): enforced open drain please flag it properly in DT/ACPI DSDT/board file
[    5.166373] gpio-529 (scl): enforced open drain please flag it properly in DT/ACPI DSDT/board file

Silence the warnings by adding appriopriate flags.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
Bartosz Golaszewski (3):
      arm64: dts: qcom: qrb2210-rb1: fix GPIO lookup flags for i2c SDA and SCL
      arm64: dts: qcom: qrb4210-rb2: fix GPIO lookup flags for i2c SDA and SCL
      arm64: dts: qcom: sdm845-samsung-starqltechn: fix GPIO lookup flags for i2c SDA and SCL

 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts                | 5 +++--
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts                | 5 +++--
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 4 ++--
 3 files changed, 8 insertions(+), 6 deletions(-)
---
base-commit: 1343433ed38923a21425c602e92120a1f1db5f7a
change-id: 20250701-qcom-gpio-lookup-open-drain-e3443115ea24

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


