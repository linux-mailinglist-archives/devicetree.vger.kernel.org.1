Return-Path: <devicetree+bounces-200796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E819FB16068
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 14:36:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C0D35639D8
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEC5729898B;
	Wed, 30 Jul 2025 12:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dK9Xc8b0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAD228031D
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753878958; cv=none; b=hRpmJ01nqNQDOdFjO98MJ3J3n3a66S7J8RDtheiZJQVvDaiSTC+VvFhGJDaDJGgIL7sIoWAUnVq+7/NVKtybUYEUenU6uJzioR33zqfusMEHz+1WWgiG4sLkNVLF5+J+br+QPw/bHG9BoXSGlJZVaAToGPvyRuSt5lG/RSNaFI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753878958; c=relaxed/simple;
	bh=TL1jslkYbGnwFQhxIVDseQLkHj1wo3EdT3LmGuFst8U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=R0m9u6jCxtIxlxyKxN0rumBWY5mTN72CibYv+X4NDCXjPPpErNthFtH7Azbd7CUaY5Q3BwjhqWcUfdDwHtIz6MydFTSXpyHKtc8sIlOzRW29bzg+XN8sl0k512cft70fWx/08E7iqhzVoTpQxU8HeV8LAj8mPrniMV73JA+yukA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dK9Xc8b0; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-70708859788so3202436d6.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 05:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753878955; x=1754483755; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CjCcWWa4qk/EoiiwDodc2dHJ7c4wzCVNfTSg63QPfzs=;
        b=dK9Xc8b0CDWCFOc4cVm3iLvlrhsS5bi2v7X19qbRVe+Tu+Q0zNCigUeD8o5XG++JDy
         crL/1/zZxl17ICAz0v0y80So5kBTPkV6lPL9YjgOaERMKLe00s3EoJgoC6bhICPaIA70
         meLf8mfFpVA2Z5cR5hPxvqOMB7jRsfe926IRMxTJqtXGrTcnuB5YE7zTqXhUqbP5suuK
         cp5sbCjP6BrX8NfWpXVfW9oFE6UGwmLr3SJQ+PS41zm3m9+p7AcUFNqsus6dro5cSW5q
         IbgH+kTG3EMxqzUdriUOY/GyN0ZUlmedExgnFgWrjHBeBVjUcFj7D/Z56FQhRO/3viW5
         3Weg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753878955; x=1754483755;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CjCcWWa4qk/EoiiwDodc2dHJ7c4wzCVNfTSg63QPfzs=;
        b=vyBl2PrOScN08AUKSWjdDUWwR7O6iDsyRqNQLFh3r4damur8uNpMbc+BQv74aVLE6F
         wXS0IlmW4RREVT5Y0Pj2ja9E9xK8Z1F9WGpVB+juPb78bGNCdOVKJFpXYLe0+AQCIlZ9
         P2DYJB1uErhP8GB31fxmdmI2klXn4mjomF1Vm989QPWhPBu2Q79PPevco8Hh0Ddfstv8
         4tuNmS9Rv7gTK9RrvAgIIl9cla9zfidjCDW0XqyoBdnjyGGzAFkz3rw1R7rLq8KcH0Ke
         Atc3nr0LEckegXeQ9U9conwOClsxZ2s8SfbJ0HGbmzRAAWRcvoQgGXQ8nN0CuDEu99+z
         vReA==
X-Forwarded-Encrypted: i=1; AJvYcCWnRbiKIrz389+9Y0qwu5YS6ob/cLsmmo270h3zCHGK7jXt4RM7mrOddzJSmfQhHqimjuMwxywRrQ6m@vger.kernel.org
X-Gm-Message-State: AOJu0YxXaBO4hWACYRY3ddObkkgp5b/PVMdZw2pbD15SciCqewttgBfn
	c5ps62gIk+F9SXgYkyfsAggn9oa3i1pIHul8tbT22fuv92OnPjnO4VZBBllwgZBA/04=
X-Gm-Gg: ASbGnctKBMJY55w6lG0DfHNAwqXyutK7eJO6ovmmWUG415xaGUNOHIpZQ4Jm8l3Ljri
	KOWUJzi9WNP13tsTpppU3Py2WMBfrZ5aaDTsA/fcyJupdnarE84+ehbEX6iSnOW51KhYYpfU0Rd
	1WhmWfy2h9Lk8iyZMpJ8GVR1lXeY2M2lL0DxjGci4PLVZL5enmjfx3qs6KVj6mel4H0jHOWMxY3
	f1Fd4sz6SZT/UDl5aXCju15dnVtUgTSiNySX9iH9l7oDEUkxArPVAdLG+cRtwjVKU2qhpZURupU
	hOYtiMaVd/qmVkI3MmBdw8DMe74PS9/NQhH6nQsCUl7G95U9VTzHmarQGorRp9m4x/zZQ38wN+j
	ccHtXaedYj5cvK44LwBTNCqWd5SpJZMFn2jkyDRw=
X-Google-Smtp-Source: AGHT+IGwmNhyLd0DJNnkCT8/jZWKIr1CBuLvQyt8ZpffWXjV7NHNiRP2B0ipuCo3xhp1GZHIOlRERQ==
X-Received: by 2002:a05:6214:cae:b0:707:4daf:62f with SMTP id 6a1803df08f44-70767230172mr19957096d6.7.1753878954791;
        Wed, 30 Jul 2025 05:35:54 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.218.223])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7076a647d47sm10105716d6.9.2025.07.30.05.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 05:35:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/2] dt-bindings: ufs: qcom: Split SC7280 and similar into
 separate file
Date: Wed, 30 Jul 2025 14:35:35 +0200
Message-Id: <20250730-dt-bindings-ufs-qcom-v1-0-4cec9ff202dc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJcRimgC/x3MTQ5AMBBA4avIrE0yiPi5ili0OpiFooNIxN01l
 t/ivQeUg7BCmzwQ+BKV1UdkaQLDbPzEKC4acspLqgpCd6AV78RPiueouA/rgk1NVVOydWQMxHQ
 LPMr9b7v+fT+nToDBZgAAAA==
X-Change-ID: 20250730-dt-bindings-ufs-qcom-980795ebd0aa
To: Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1146;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=TL1jslkYbGnwFQhxIVDseQLkHj1wo3EdT3LmGuFst8U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoihGhB/RGRzrg5Tdt3rmYaNBElttGKFnKKlPZR
 CgVwij/l3eJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaIoRoQAKCRDBN2bmhouD
 18OJD/4wpVCzAyd22DzRzFtEz75KU8fQ6hsp8mAxyM5GPjK00GuPcR+lthX4JfMXIiHGBd0n2Sb
 iHQ8uj9GGEOUlxYlNPI4BtyDqVu5K9yuF3PMjpYriQwuYacPVczW/zgEUpHg2oL8VJtTJF6kxch
 88h1ivpTvFLKdF8Q+CKKQbhbfTAy9Eixrsn9ZsZORDYbbb897TJ6a6uTqnEPXLb5octEOyihwgK
 B7EfkrHg6XhBoGh4F3ZNrPfg3moQDO23eNnSLwd0bW2VaXLPcSx0tEyU2Rjzu9y40xR/QTWtKJz
 g2QCZdj98DV3RcwW/Pc6YqoUZCN5m4bH+brGElQgCuWAM3T7hwuKvWrgshygIzXOfPFBSuwNUNr
 /ruUjfYMIJ8mT+Bw148mb8b2wg1o3ojuWvsgZ6JAPm5hv3rCOyD+Aer9FIKe6m7X3m8Dk7SLCMw
 w5X6ufiK5nz9svvavOhsEVa60kYvI6d1mXEMt5brtjONMZFG0hgCBAtUuYCV5hbrVbXYydr0qgO
 +4Fdgni0ISqZG9AlSMCcqX1UcMObmIrowhLW7qij33qA2mEHXb6fHBsupeX+ArcaSteQi4Jwkyk
 RTmE5ZX0XBpmUHWrcqVJGjfkNB1swDtzPF3Qx5mg4rQJMpPh1wbrm08M4u4xUHjC+1h9XeO5J1O
 jRaoPR+XZc8wLBQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The binding for Qualcomm SoC UFS controllers grew and it will grow
further.  It already includes several conditionals, partially for
difference in handling encryption block (ICE, either as phandle or as IO
address space) but it will further grow for MCQ.

See also: lore.kernel.org/r/20250730082229.23475-1-quic_rdwivedi@quicinc.com

The question is whether SM8650 and SM8750 should have their own schemas,
but based on bindings above I think all devices here have MCQ?

Best regards,
Krzysztof

---
Krzysztof Kozlowski (2):
      dt-bindings: ufs: qcom: Split common part to qcom,ufs-common.yaml
      dt-bindings: ufs: qcom: Split SC7280 and similar

 .../devicetree/bindings/ufs/qcom,sc7280-ufshc.yaml | 149 +++++++++++++++++++
 .../devicetree/bindings/ufs/qcom,ufs-common.yaml   |  67 +++++++++
 .../devicetree/bindings/ufs/qcom,ufs.yaml          | 160 +++++----------------
 3 files changed, 251 insertions(+), 125 deletions(-)
---
base-commit: d7af19298454ed155f5cf67201a70f5cf836c842
change-id: 20250730-dt-bindings-ufs-qcom-980795ebd0aa

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


