Return-Path: <devicetree+bounces-244183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E20ECA24C8
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 05:15:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34A963063F4D
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 04:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D9BA2FBDFA;
	Thu,  4 Dec 2025 04:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ALueFDjk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79541398FA8
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 04:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764821716; cv=none; b=s39NdvQFgFFcea/+HSA8y5tpkbENnO2rk4CjtMoB3eH1kIhP6a0PKMVbF2XjhHPXNZQb7fRs4QcOmzZo0KuCteVkgnMSbu4+tzMoY//N4LZ02/2xRQUkSoC83j7IY6rolF/gLTb54vRX0eDl0j5X//f+8wlV3ZHZjc5C4yah8+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764821716; c=relaxed/simple;
	bh=KQlLOeYKQLCbucDZVV2LbQztFK2UUaQZThb/9dchSog=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DJ5d0NWQdp4aEO9YkJcxd5A97lPMhe9pHcbNp10mjuBZifNpqCmQJqhFtau76jLh/iSQZl9Hr5UDQ76x2/Pjang/EFmbWjnUdoVZGYqBpEioSm98ScPpuqV0uBRzFnKMw+VnOXUh5VTo0AwZdLFpoNlLqhGChL44T3LukeqMtO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ALueFDjk; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5957f5e2755so15614e87.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 20:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764821711; x=1765426511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g/aKyLPighVmCzwn2uLwvmmfEWg7/kV25SXg9WbyeIk=;
        b=ALueFDjkPUJvV/Lz9iWl7ROU8aihvA0KU7xSPu6B8fz9m+p/NOh0aU6qckBq8QRoeD
         fAfLfzzcUYFqwrcYFfZVJux8mLZgnWKVdwuAj27caLXi1e29Y4LLJ3lYqqGtkCFwvQgQ
         DKooNSIuRU4+vve08njVOfhKqlMAppv+Nse5XJSDaLMGdl+BftFA9wwlTSG2YBwRHI7x
         XYBwTYAn2FrUQzRJqg4iQDzFRxzJiIl3oH+/Jo7gKfZSY2mDLyEtKScP5xcvOb9ZTYRH
         rDJJtJwO7VGjU61S8kunoNHoKTF9HRNJeNTdH+gBTWawDG4qDUuAjROaQRKOmICsuJU0
         0jiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764821711; x=1765426511;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g/aKyLPighVmCzwn2uLwvmmfEWg7/kV25SXg9WbyeIk=;
        b=bt4NVNCpx/nTkfBOJfp43iMDviVPIxACnxaS4CILAbkZZESftgPJNYHmDLqG3gnV5P
         7dG94wpRQrI6jht1FFfA3FGx6zQDT6XqzUL9LOqJjDGwKIFiYBHmuPVmmjiVuhDQ81G7
         +Nze9ySBTLM8ciK3xRBNX6luRADzQZ+s3mhU9svMJc7ntE03ZfjeqiMG5NlrC9Om15gF
         ArjhfeDNQWbK2jM+z945BYN/xc4oLcONzH1OxI03E1xkAhuHkaG0JueRyMT8GiAh/Utt
         hcUqALYGbn0bkOssdxtv4jjnhzkmwHLSIF4fhdqK23bcDN/KjhteibpwSA3o9IySrOyP
         Nh0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUgnXXxR3Tk0BOFQKG/8OtSALDYhwLptxrY5ErtHnPYOFc/w/LNs/PNl5CAKFRIi+j3HjKYFFOIMhMr@vger.kernel.org
X-Gm-Message-State: AOJu0Yxudf1TvUAIMEkk6LpWJEPOzlTzr1wf4ZaivMqzVFW9DQvqw5PC
	Hc62waf140QgPTfREHO6ABNX2x36zdkI8oU/qt0oSGoGWbKAAxL5joPXqZA5jSn7/VQ=
X-Gm-Gg: ASbGncuOu3UnqFSxWuNH9aBX/nDahLM6lj+uVTKgLDzHVwv/LK0FcgXftCkKHviI5Ut
	ZPmVdnqr5RSC254mB5DHzmIkXr9z95Er3KrznK7ixlVBjXV/0YMk2bUTkBLPsm9RK8sj/jk4SAH
	iEQhHisnJ+SZKRedRbNfoEk1asWQ9sgGjew9ksSa0e8MNlTRRVrWxFQoE7mqbVVUAfbPZGhj8kH
	QW0zPKrdz+3KzjhkoCegS3MmlOGP4gXvgi6z/8BX+yQVg9gimcZ5Hf4amYO80k2rO9zSKa6n8Ui
	zdSHCdJEGHRAnFFxn9h+yk8OY7V+7dfsX9icu7kOTOYffTymAecVhyIN+0XN4z85MlYuLORcEOv
	D89nokgxdY158mBdbq8ow5Uf+4wds/htIGO1uyM7kN7L+UvaDBe3DFFbLvlnFnP1NvYiMgHuBUx
	ITe4i9q4djAOY9ToHyAChz6jzlW4xthgSWp9lC9mIKLD9w3f9zUxj65Q==
X-Google-Smtp-Source: AGHT+IFD5IspNPkijfGLwgvUbmnCal48Gg9s64XvOvLnn+DZMDY+lsae9jVH/iHMIeVcnudy+Pxzuw==
X-Received: by 2002:a05:6512:3f02:b0:595:9d91:1bdc with SMTP id 2adb3069b0e04-597d4b48eccmr878898e87.5.1764821710525;
        Wed, 03 Dec 2025 20:15:10 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c1e2a1sm67649e87.64.2025.12.03.20.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:15:10 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/4] arm64: dts: qcom: sm8650: Enable CAMSS and image sensors
Date: Thu,  4 Dec 2025 06:15:01 +0200
Message-ID: <20251204041505.131891-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable CAMSS and Samsung S5KJN1 image sensor on SM8650-QRD and SM8650-HDK/RCC
boards.

The changeset uses v4 Samsung S5KJN1 image sensor dt bindings:
- https://lore.kernel.org/linux-media/20251204041134.131707-1-vladimir.zapolskiy@linaro.org/

Changes from v1 to v2:
* added Tested-by tag for the changes tested on SM8650-QRD (Neil),
* dropped mclk-pins level from MCLK pad pinmux descriptions (Konrad),
* moved 'status' property to the end of the list of properties (Konrad),
* renamed supply property names to match the sensor driver changes (Luca),
* added blank lines separating groups of properties under isp dt node (Bryan),
* removed an optional 'data-lanes' property of S5KJN1 image sensor,
* rebased on top of next-20251203 tag from the linux-next.

Link to v1 version of the changeset:
- https://lore.kernel.org/linux-arm-msm/20251023025913.2421822-1-vladimir.zapolskiy@linaro.org/

Since SM8650 CAMSS driver part is merged to Linux, it makes sense to group
all dts changes to one changeset, 1/4 patch in the series is taken from
- https://lore.kernel.org/linux-arm-msm/20251017031131.2232687-1-vladimir.zapolskiy@linaro.org/

Vladimir Zapolskiy (4):
  arm64: dts: qcom: sm8650: Add CAMSS device tree node
  arm64: dts: qcom: sm8650: Add description of MCLK pins
  arm64: dts: qcom: sm8650-qrd: Enable CAMSS and Samsung S5KJN1 camera sensor
  arm64: dts: qcom: sm8650-hdk: Add support for the Rear Camera Card overlay

 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../dts/qcom/sm8650-hdk-rear-camera-card.dtso |  88 ++++++
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts       |  43 +++
 arch/arm64/boot/dts/qcom/sm8650.dtsi          | 299 ++++++++++++++++++
 4 files changed, 434 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm8650-hdk-rear-camera-card.dtso

-- 
2.49.0


