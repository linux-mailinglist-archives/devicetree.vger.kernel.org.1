Return-Path: <devicetree+bounces-79310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C48F9149B7
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:23:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 431B22848EF
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E2C413B783;
	Mon, 24 Jun 2024 12:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XemWGzD9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731264776A
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 12:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719231829; cv=none; b=tnWPZ2WDKL1XgXEPvdehtJgS/g/nHnX5F2sEk6HbYUeWJejWY7z0lMA0QKiMr9Cw3Ciy0zFh3nxRBZzGf7Vu1gSbVzAEwLfRC3vSsOYR3/mHTd+KlxglHO3wu1IZPkeiEZgNf1b+5Dj29vm1zjocTdC9bTTQBwmoSxyGMa0APik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719231829; c=relaxed/simple;
	bh=nwe0JbEQAeUAP0BTZ+wS2amLU9j+G2W0CktghYoVRCM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ltLDX54heRPcDz9EjBuz3egI0STOMVRpnkVBPHiN+hmbANob//PNGzZiFVGwGiu8s4riZSBa8aI0zqFBenf9PAWQzKZ+KMN2p2v3T5FQU79PHHkVxAXQM4yc1m4J2p9Z5PR/w7BMGtPeyxbZdt+4jGK8nGaf3z4K+N9XPsB2rzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XemWGzD9; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a6fe7a0cb58so92580166b.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 05:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719231826; x=1719836626; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wSZE7wf/yd4vOrQ1gWWaEIjdsxjJ6hIagbVZFMYi44E=;
        b=XemWGzD9dJB1w5Ah7FV72w7MRdNNPDvzsGT/qHRjIvv+1HMAIbXBNjibT5VrvAh4fx
         QDZ/PIo299ruJT24fdxu6nfBMku5i4Td/mSwUfkVFWZi9KAWiYQLrxZdYVnp+00dpOL/
         EBzcke5KdAewYw1Wnlq4ArT5k3TRdFGH5Ezdh5ExA3wfseI8SI0/sBygj2ohespUtI/W
         7kOD+N9yWsYDp2krG8S054uoguIy0U/yYWwSWTOTE5nvqyNFREiYlTnWvoN2+auoFqB3
         MvMSI0Tq2WHqj++CJHKl2er0jygjT37Xrcu/HVeFySmTOBwtCnEHbIpnq6OyG9ZyRPiN
         dukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719231826; x=1719836626;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wSZE7wf/yd4vOrQ1gWWaEIjdsxjJ6hIagbVZFMYi44E=;
        b=DIzjKdFG6R3C/yeKCHL/7MmOU+aTV98f7kEh13zpEMsH5Ut2EEo1M9CnonYjmT85TY
         +lKkP2LTG5YsQWDwpQF5EIO7rx6gQhUl1ct7kwsgTWQGWDb8iJQtWohLhECmTpBstXDc
         8YDFPfYrinoFIpKWlEZxC7HBfUWTpl9Bu9Rql1LPv0Eyx6Gn1X4AjmMUNU9DfuSiVBfy
         BwlIhm81nE+20Gm/xs50WmKDW7MKUwx15rTEDmbx0iqkU1o8RLvujz0DTUG3T8DnSSaq
         zO52YZ3gyXwRp/crgpO+mmE1NKLvFOnKDA1JuNpDt4Ap9ZokQriupsWcPcApqf2vY2HF
         Sw4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVcTlnBp4wbXVdiLWOjyTavpH4Wigi1j5Ynkf+KwilCStJxyUhtfWu5Wj71s7oOKBH8Y9/DiY6VpSfOXdFSuwMf2PErspbu1tXJCQ==
X-Gm-Message-State: AOJu0YzWrjuNNCADZGz8PGallJOa5PyRJUAuqsq2Yn7k4pjGEWHUw67X
	gO8sBpXkPAJX6q9cCCyVVHBCcDD1UqxIQR0Cpl0hdqbigYidI2EmxNp/eVOyELI=
X-Google-Smtp-Source: AGHT+IHNguip5UnHxzgyJ2YCA6WTa6ffyCb+h4kkD0q7OpO2ZBoe0LgFjUOdKen2ozQ0+3xKFutRdA==
X-Received: by 2002:a50:99dd:0:b0:57c:5874:4f5c with SMTP id 4fb4d7f45d1cf-57d4bdcad82mr3349529a12.32.1719231825814;
        Mon, 24 Jun 2024 05:23:45 -0700 (PDT)
Received: from [192.168.0.113] ([2a02:8109:aa0d:be00::52af])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d45496336sm2946824a12.22.2024.06.24.05.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 05:23:45 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH 0/3] arm64: dts: qcom: make dev boards prefer usb host mode
Date: Mon, 24 Jun 2024 14:23:41 +0200
Message-Id: <20240624-b4-rb2-fixes-v1-0-8d763ee4e42e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE5leWYC/x3LTQqAIBBA4avErBuwUQq6SrTwZ6zZWChEIN49a
 fnxeBUKZ+EC61Ah8yNFrtQxjQP406aDUUI3kCKjZjLoDGZHGOXlgpMNWvuwUNQW+nJn/kM/tr2
 1Dyo2zEBeAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1863;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=nwe0JbEQAeUAP0BTZ+wS2amLU9j+G2W0CktghYoVRCM=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBmeWVQCnjyuO8VCm5WfhtTubPOjl7BdTfG4jQl3
 hWD203mDqSJAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZnllUAAKCRAFgzErGV9k
 to93EACVxbBPHfha/yfNAUYVr5EI+1I1iQuue2m85MHLjPw/k4fsqES94gnGW/HV5jYyC+SUHnE
 Bpj+fwUCkD0+3bxDFyBvW/rTR8dfncYkvfrN7RM0DZ242acs/QayvUrtI4pXRak/fBPBcFo4JqA
 E+TnXMjI+IUvrCa5HbybZt/4d64WrVccXyk1XnVC+BvHskaV1dcv80z8RPzNlGnoQ5oXrTgDXj6
 WGM6WgaShbJpM1jZxvaOy3aVX+IxXnF1TIkSmn3/6cQFV3fDMxVxZDAfGDH0gVnVpoocDohJSOh
 kLxl9idwbUiti7Oi8gemu6puYme8m+1pKzIzXx4CiyNnfzJA2rcYzz0u8L26aQQfGXXfjD3jBR5
 +nif7y6n7R+3O/Ry5MQ+jLq85BNB/+5XRu0oerJ4PD4vvRwwEn8fT3ZBcZMJKWA+IJkE9dYKzmt
 F0VQV4fQrylGIImW6B9iuMd1owHJ/+lDe3gOQQAWYzrdzM1U2xkwXMmRyicjrOPVSQ/EhJKRIi5
 088r9krmMVA/SFB7yJNDuwZTZb6OVm86dQ6miPXfEHPAeCJ2vrryBqTqRYg0NlMTGxx4WOOwv/r
 pJ1KTVhIh1IkiqpSnwJiZT1Ve94tloqnaiMA4KQp1oC8tpWznqAa5LP0+btTYYhXug9NUwIZJVk
 1OjK6+EvFvTnczg==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47

Many of the Qualcomm development boards feature DRD capable
type-c ports. However these boards differ from smartphones in their
usage, and it's generally preferred that they would enter host mode by
default when given the choice.

This doesn't affect connection to a host-only PC, since the controller
is still DRD capable.

The RB1/2 are a special case, since they feature an on-board USB hub and
a manual dip switch to toggle between it and the type-c port. Preferring
host mode offers a useful hint to the software if it doesn't feature a
fully DRD capable USB controller driver, it can just use the default
mode (rather than defaulting to peripheral mode unconditionally).

---
Caleb Connolly (3):
      arm64: dts: qcom: sm8650: move usb-role-switch to sm8650.dtsi
      arm64: dts: qcom: sm8350: move usb-role-switch to sm8350.dtsi
      arm64: dts: qcom: prefer host mode on dev boards

 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 1 +
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts     | 4 ++++
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts     | 4 ++++
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts      | 1 +
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts      | 3 +--
 arch/arm64/boot/dts/qcom/sm8350.dtsi         | 1 +
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts      | 1 +
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts      | 4 ++++
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts      | 4 ++++
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts      | 4 ++++
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts      | 3 +--
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts      | 3 +--
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts      | 3 +--
 arch/arm64/boot/dts/qcom/sm8650.dtsi         | 1 +
 14 files changed, 29 insertions(+), 8 deletions(-)
---
change-id: 20240624-b4-rb2-fixes-1ad33cd72f3a
base-commit: f76698bd9a8ca01d3581236082d786e9a6b72bb7

// Caleb (they/them)


