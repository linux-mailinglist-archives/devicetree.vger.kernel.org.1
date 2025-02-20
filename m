Return-Path: <devicetree+bounces-149000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A0DA3DF1F
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 16:46:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB86B189D658
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 15:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F25721FECBF;
	Thu, 20 Feb 2025 15:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FZZmvzQj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31871FDA9D
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 15:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740066264; cv=none; b=OaC5OF04Hdcvz8SRAsy5MAXFxAtqc/l8I0eT/OkxKr7Q50MszzrqfCL9AAMNKTB+u7zhP6sMC6xYCp18FvYxDZECqfgcNHvoEk4vVMJZNEMaWw5jNgr5y3J0/jaoqHBSA4jBEE4YxTJUaChvQ8z5ohaJ20HnEDjcATwI0ZoT/C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740066264; c=relaxed/simple;
	bh=WlcTt8f+um8w59cyR81BSacmkIXQZh0cNp8/QyNUV7k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lUQ6TVdr2n+j9iaYX/z9zGvDasEjYAnxDbqbWGTZYlKIHD+/JXjQQiuiVOo5pVWcRd/yN15gmMw5nCsd94hmBDjwwCaMUU7jKtU8ZV1DfHwifTZsbG1vL6yApHo9lersydfg0VQ441Kwv541eLi0d6ycvB/KET1ALEkM6X2rgpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FZZmvzQj; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-abb9fac29d8so17662966b.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 07:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740066261; x=1740671061; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T2wNYP3RncDUanAjxqu5pR1RjMEF7sw25ts4ovII3hM=;
        b=FZZmvzQjZJjmxwRrZoIvUcyW5Pk2JxfujTI/f//09XXQwWfWZqKjzWRl3xuEtSyGd9
         WC81kh+uUFk5/VPwWJ2iQoc9GyyrJG4hYLA3FBWqZltnkAlD/ZQLRpFC2uPhi5Tm2z00
         fQ+a/hh3xjLjZJdotUZHw8j9JF04Dq0M82OSmzycZqupGAc3u8CnxBitHbJEWqJABqn6
         56opvskUewURZaPc7mHHZ71ylwy0WuVcDGHo1br9xfu7hy9g6nR3O0FeO8atn7rSCQKP
         YO0DHgYKRflEO5tOKnxYSIyKjNk/4qpjyI8lDXAw5dmzSQoTV7giab/L7AGFKkxkNwsa
         jv0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740066261; x=1740671061;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T2wNYP3RncDUanAjxqu5pR1RjMEF7sw25ts4ovII3hM=;
        b=b2KTqmUty31aysvxrhbkGgD85/cuCc9N4X4aRetP6YActWdrjHWupotrRsQQxJj9ui
         mzuSg8sMwrM4WXhUdRT7nGn9vbM/4MQz01mKj0HP0669h/nMVypfAvh6mQOJF5nMMUu9
         g0fj4K6+j5SQh3nM0QVDB5nixBO/1U9rCo3P4tmE2Uxvv31r9rzHI7TT1iGjrN7teOrn
         yPharfW6IwhEoimrPzHEeQntY/BRyyZeUjQ4CxEMQmuttNBomGxiWpwqttr3XWhhtFLs
         ZTJukkFIXRq+sQi5rLA9pSiKJzbK0e/32OM6WlWWTZOJLtkI+nrDWxjt0Run31xhgqTQ
         Cm0g==
X-Forwarded-Encrypted: i=1; AJvYcCVqpd/1SQzW7y2Ga3TrmG0tNzaGVb8SOpPvy0HrX4XPDsn2rOeyAhz2NID35Qk3foN85UHALHJusoLg@vger.kernel.org
X-Gm-Message-State: AOJu0YyjYF9aP4vy6v8q7YvRve/uqmxrSMEhVKffsMSsXSNquZxtfeeN
	wnA3OYpNtALSuzPEWCfYrj148eK73gsyfaZYGxI1Z87jNWl4lnwmzYe5oRxsvoU=
X-Gm-Gg: ASbGnctCHFKfsQDyYrFhMB49R4Tb/4jTzP9DHHtgF2sUjBB8mfOlX+Rfg9WKk2O/tVH
	Jsq9mI3RIMEkoLec3fSVVcru9eRkCLwsT5x58MsaiQMVUdkn8i/N/Ec692aKSEMVN3dxEN6Glw7
	JLTHZPtpd0g6dgFTz4K5vAp3zgaM5+T1UMJ/ytP/DzJhRIds5INWjWNfFypveI6Ziv21FCyI0te
	tItVzv1S2nT8OZn9CY/aUAjQ2DxNweBw9hFZetxOpAjFuBjuBGFC3UaWluCJvmiN1sH5yfU7CWn
	1Mvj3oAxkvW00USC/vDMkD3HisSKZhBCXjJkNLZCRqhVbLyxxsgXRHMavGe9vFEi4g==
X-Google-Smtp-Source: AGHT+IE5lQpNvuTmyo8S8MAplsCi4FPsthReA8C7NbF6zOboaxnLtOHLs682fSoHujGnupi3y9HwZg==
X-Received: by 2002:a17:907:72c8:b0:ab7:63fa:e48a with SMTP id a640c23a62f3a-abb7093459dmr793446666b.2.1740066261241;
        Thu, 20 Feb 2025 07:44:21 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece2881b3sm12418151a12.77.2025.02.20.07.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 07:44:20 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/4] arm64: dts: qcom: sm8750: CDSP and modem
Date: Thu, 20 Feb 2025 16:44:10 +0100
Message-Id: <20250220-b4-sm8750-cdsp-v2-0-a70dd2d04419@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMpNt2cC/3XMQQ7CIBCF4as0s3YM0EqhK+9huqCA7SRaGjBE0
 3B3sXuX/0vet0PykXyCodkh+kyJwlpDnBqwi1lnj+Rqg2Ci41wInDpMT9VfGFqXNmyVkVbIrjW
 tg3raor/T+wBvY+2F0ivEz+Fn/lv/UpkjQ22kNkppx6f++qDVxHAOcYaxlPIFwbx0jK0AAAA=
X-Change-ID: 20241122-b4-sm8750-cdsp-38a6c2643a3d
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1161;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=WlcTt8f+um8w59cyR81BSacmkIXQZh0cNp8/QyNUV7k=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnt03M2UfuoTgU5SLw0Jq5lxYi9Vm49odfCb9a1
 QJS0OjEqpmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7dNzAAKCRDBN2bmhouD
 1wGSD/9ZmGBr9lS0p/gU8+NXTQTlgZjDJ99Kfx0gyt7RDNjP9FnrFMN8ybRKgpgQOk6faaStxG1
 wtiTpDKhbcmG1i9CUL1/furAvhrD+KHa4NfjaA2qBEkC++beKL/c4R+aeLqFDuoIA4Kys8Renfl
 ckx0mM6p0qex/QUX+aG328sHLZBt2/MKO/gBhyoZElelIKKzfrxdTZreBCZ2mnHYceUHVwLpDXV
 ASoGAwIGSSJATzK1c9dKN0TAOSOGmYFQhWe97IjCz8oHHhuAj+j3EO3Neo1KWrYunlvkxnkjlTX
 NzWJKZIksLVQ7rIusoXdD2LLxcEwI6CTBXD2zi6DCrAlYq2T87ngAgZZJbU616520qrk+AvjZy5
 Tz+7Jr9MnhJykYgA+NFnIPLHqHwtSpKOw1DW1nYbUWb7aQ9kwedsF2blPQxBa9NYKO39oy4zJjN
 lUKN/nmt183CVtBfA/jZa+eWxqvUu/A0ESwpUALw5x/cx5w8KSE3bxVolSepGwlm8AY6t1y1xb7
 fPakAo1hP2tWhTkpP55ExRg/ottmG3/OBds3NAOXM4ZQa8H94aKAkAdrk7MtBVBxUPvpnaEuq3i
 p+wW6juUuDDYPaS8glxVMYbz+fxiX+Sa1XoB4Tv2WlcKZ3yIw8ZfIxdn7vuDSVzjhlaop3fLiZI
 31+EQ3USfkLICpg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Hi,

Changes in v2:
- Fix CDSP and MPSS PAS address space range.
- Re-order nodes for correct placement.
- Rb tags.
- Link to v1: https://lore.kernel.org/r/20241122-b4-sm8750-cdsp-v1-0-9a69a889d1b7@linaro.org

Context of this depends on my audio patches:
https://lore.kernel.org/r/20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org

Bindings for remoteproc:
https://lore.kernel.org/linux-arm-msm/20250220154132.199358-1-krzysztof.kozlowski@linaro.org/T/#t

Best regards,
Krzysztof

---
Krzysztof Kozlowski (4):
      arm64: dts: qcom: sm8750: Add CDSP
      arm64: dts: qcom: sm8750: Add Modem / MPSS
      arm64: dts: qcom: sm8750-mtp: Enable CDSP and mention MPSS
      arm64: dts: qcom: sm8750-qrd: Enable CDSP and mention MPSS

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts |  15 ++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts |  14 ++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 286 ++++++++++++++++++++++++++++++++
 3 files changed, 315 insertions(+)
---
base-commit: 51ad5d52335d6aa0bda1d8305d44679dddbbfec5
change-id: 20241122-b4-sm8750-cdsp-38a6c2643a3d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


