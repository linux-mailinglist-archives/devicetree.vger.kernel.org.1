Return-Path: <devicetree+bounces-178389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AD2ABBA6A
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:58:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DBDE188F470
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 09:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB00267B15;
	Mon, 19 May 2025 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WN7s8hoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590BC26C3AF
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 09:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747648493; cv=none; b=mCfq8OICnJQrobjLH179Qm+7B+rhWzMD6hb7D+bhPuZWp6WjZdhWyBbelDhzx1mKMptiPZRPVt9r4KNGgmH37TPpMG8cbHKjVFLgLf8I0XBaRopE1feczk4ARc7iK2MBRzS8EmiQKtfWCMAMVaxiEFqjptYEM4a0yuLPyUHv0zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747648493; c=relaxed/simple;
	bh=cNwXdPO6M+T9fK6cxRoAT5mOUe9T/8EvM4VXz9qHBhc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=mI6HLstEs4CQirOBXpmUsTz+tMyVZWzLcAnNC4vV1P4RiFnRyroYU+Wh57Awefy359atdjUnYcS+HbXA3wE+wPtnz9VwNxPpeI+aYDgVmyz5RiTcnvT8O4DPR/xdL/6q+RvpjS5OX6s7Cx86ILyx4G0oU47TWuoKZZ9TNlm5Y20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WN7s8hoV; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-442cd12d28cso1206685e9.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 02:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747648489; x=1748253289; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lGcoizW6HV7SkLxnU7zVS2X3OYQ4AmWSVHfokciEXsY=;
        b=WN7s8hoVKJkXgvFI5sgz2VOA6OFxEwn18F/A6vrR7V6EogoLfJpu+ggj6LC86YYMvK
         raG9PV5Bi7Ct54CJH7TO0temD10/XgZbY371gDbKlNWzVEiIcK/RzzHbhqtd/v/D7wJx
         48qu5kL/rQYpQqkdyCMoeJFPbZEtaA0jJZu4WzgnZhIhtWAWaWEmAeuC3zOPXQ/ZrNSk
         frcYiFqWf/vlUi9v8TItZTxqLjNfyaEKqd3cVxhsEKKk6BXGs8OvQR46vHDKxsu9diii
         4UdfTCAGFZeMWO8stG/OyeiL3EdF5SFN7H/fevLlKazQeKYhKiHPKwHSG4rysQnyc4m8
         cZrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747648489; x=1748253289;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lGcoizW6HV7SkLxnU7zVS2X3OYQ4AmWSVHfokciEXsY=;
        b=WM3F8EtyiPjD1QAiNR4J1D36aPW5win3g31oJk7pnLEEznN0lfelcRL9bs5vvTqTUY
         3X96tQFNEvetLzEPKuXtaheyBbVdHPBzdR0VTZYPIxdT7EVtS5QwcDA0aQJZ/n8YmHnl
         Sj3L8w0eu0g+6SMtBlbvYfenr8+DTwcaNpooueBakHe1bw5N34yuhuHQtrYlm2P0bRSR
         80od8utJ+5uxTrNjjHhbfldIjAKw8AGo3V96LPG8ljZ1KUEoXAhOewBRQtJflXQ0W9kQ
         jmF0Wj+gWaGAuQCpp0Q/mRS0vuIPjV1iqe70BEHOWhbTFQiQKCuJDec0qZ+AoM6EUOUq
         i1Ig==
X-Forwarded-Encrypted: i=1; AJvYcCUyhltyO/LT2u6Uz3KCH0V228g8Pweq+f7El746zZyvwJ4uNXUP7+jV1ym7PefnaqD3WxP2c/4UYKDQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo+DuTmkEcAu6aXLwCtzdYgxrso1P+pWojNR6k/CDdBs9gxi53
	tbY7UCyQp3cYLlgm+D61Vfgmj3tboZ88eTji+TpqOR9aPkkxuYj/EXKSjy91082zfRs=
X-Gm-Gg: ASbGnctxIwpg5rGFXUZrpfbuAV3XknS1GZFBMWie89HOY3daPFGrcJ8wn6DtdgCynwV
	/Ky0YzB+3JqG5qRfgBRNcXtopcKGIQ5IBnbn1AEqFz6bfXpdwQtjQzPQkfm8QNCU46gTIub5Q4b
	7K6/21HSa93WR0C3uGKBvIteD8lXQX9oHSf6QLuiViCBrnmknQfqGUXf01Dd/mgKmSopX+rT627
	Lf28BHp5oEDRl+faYaNx+qcLTXx7qzLNa79w1zcCqFigJOL9KXXi3hb0rcn+BewWkkv1cYHcL9j
	qFYdqxGnpEX3BoYxEBP3ZlfKzLjqS7y1jtncqFI6DVYLnIlyEpjNc9fcMqbMFX44gdRI0+Y=
X-Google-Smtp-Source: AGHT+IFFKf2310dpab6/wFIKGBa37qXb6mFN81rojxkr82jCxmAiE9BT86ZM/ifVRAvLoq80ysc5Ow==
X-Received: by 2002:a05:600c:468f:b0:43b:c844:a4ba with SMTP id 5b1f17b1804b1-442fd62fd3amr36594205e9.3.1747648489381;
        Mon, 19 May 2025 02:54:49 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca4d0fasm12282616f8f.8.2025.05.19.02.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 02:54:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/2] arm64: dts: qcom: sm8750: Add sound
Date: Mon, 19 May 2025 11:54:42 +0200
Message-Id: <20250519-sm8750-audio-part-2-v2-0-5ac5afdf4ee2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOL/KmgC/22NQQ6CMBBFr0K6dkw7bQO68h6GRQMFJlEKUyAaw
 t0tuHDj8v3kv7eK6Jl8FNdsFewXihT6BHjKRNW5vvVAdWKBEo1SiBCfRW4luLmmAIPjCRAuRmO
 e14XVEkV6Duwbeh3We/ll9uOc5NNv7ChOgd9HeVH7ukesNGj+RhYFEqxUWjvpK22b24N6x+Ecu
 BXltm0fGpAAIMwAAAA=
X-Change-ID: 20241122-sm8750-audio-part-2-943277d85302
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1256;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=cNwXdPO6M+T9fK6cxRoAT5mOUe9T/8EvM4VXz9qHBhc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoKv/lnTq1YvEME8Xt0bBxgMhHGqTK5rTHhOLgV
 DEad1VXObKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaCr/5QAKCRDBN2bmhouD
 19mtD/4vvMTvkNaxDMMdie38gtrl9YNfnZrf0CF93OeU4LYNZfdJV3A2znueu4RHV1bXBKZGVMe
 w+FzsrtX4TbiWjbIcrVkXpO7v1avTsXvvD+5oe8A6npWo0UjtX/fzaNptN7ogmFxeivytFE2GBR
 COg1f8T7TgmY5RAg14goOoVQRY8A0tpc2UStsnTy9ECkvNmXNPhQZY9OLep6ucDoUEZE8nrYRcf
 9M7P1LQs2pmMEvbnytZ2gEowqMp+Qc5oVAdN/gs63318yuBxL7/o4OaUIumjtJnqjAsw1L5Nhsz
 m5R8mKd4nCdXSy7wO1IuACRtktmADcg5mi1x8qLurEOMeIr9aNF8cjv65SW57JGcwvZ8dWA6oZz
 cJc2PYMqSgchp4nB5pWwY2SdOMC+u5cqay8DZBGlHDL4vI+scgS5Au+BuBL/VNDyIopwhFOXAWA
 mwCJj0zH2/RXWfWkCZgbzCkv7or3QDieDek9pkJRfrhpgynQsqIYw3ai9ZIa7az289C+4Lb/eT7
 V2CF9xiehto5NzsFCkBsl9WAK5/oASN7LBQmoO8e1wsdXDnlXBM51mwwo4+gOR4N2c+P04cxngX
 fW7UpvYPEyGxlIzswLNQCCax9SqbBEZjU1GS8u22sW+vQVunrEVJwV35GrEBXDApDQTAfMBNgKW
 thYhobZAqukwJmA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Changes in v2:
- Patch #1:
  - Use v2.1 compatible with v2.0 fallback (Konrad)
  - Use hex address in <reg>
  - Re-order nodes to keep proper sorting by unit address
- Patch #2:
  - Re-order codec/cpu nodes (Konrad)
- Link to v1: https://lore.kernel.org/r/20250424-sm8750-audio-part-2-v1-0-50133a0ec35f@linaro.org

Bindings for the new Soundwire compatible:
https://lore.kernel.org/r/20250519080453.29858-2-krzysztof.kozlowski@linaro.org/T/#u

Dependencies were merged, so this brings the necessary sound on SM8750
MTP.  I have patches work-in-progress for QRD and also USB headset, but
this have dependencies and need some cleanup. I will be posting these
separately.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (2):
      arm64: dts: qcom: sm8750: Add Soundwire nodes
      arm64: dts: qcom: sm8750-mtp: Add sound (speakers, headset codec, dmics)

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 214 ++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 122 ++++++++++++++++++
 2 files changed, 336 insertions(+)
---
base-commit: 0fde2d760e610a74f67eee9e757a3d4a95388f36
change-id: 20241122-sm8750-audio-part-2-943277d85302

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


