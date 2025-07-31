Return-Path: <devicetree+bounces-200967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3461CB16C80
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 09:16:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 745D61AA56D1
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 07:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E001B29DB77;
	Thu, 31 Jul 2025 07:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T9KgxBo4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC1F15533F
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 07:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753946166; cv=none; b=plpI8arNhqjNaDX53jqiJ4IwbzPUVTYWhsP7FVNbLSAp9mehYsOpwavE+X08SnS+8GnOSDbxYLyG4BHRTkQt7LjCnSCtzQXUbBI18hZ4/QI7uuFq9XfRKw4jNCHxuZTIDI0v8io573VL+J/n+t5tKrSzSo+1v8cZtd+51BFGESc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753946166; c=relaxed/simple;
	bh=XaOUtYSONJrTy0Q6bEJNjC5S0oSCG7wZ1egPDTT29Sk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HOarb1vuWNGC0bKOrH85dZ8uLZKJO2V0ruDYKYrI4wIVeYEF1mHj3Xq7t/MwAA87uO0X89ZGKljUcTQa8tBj5BNFTIWpzuqGqogshEalz4WUlbEbVE55verIwWw/VHpzMRl4A3ptIXPp4uQnPwbNRrcZak/Q9wdl5zGS30HMCxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T9KgxBo4; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3b78ae64756so10737f8f.2
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 00:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753946162; x=1754550962; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D3p1o+9EUHGsPhY1wwdj7Mm5g/NuTdzZcqkBi+ANheQ=;
        b=T9KgxBo4i215pLOmoirrDb4K9CR4evkAxpUpIL1z175iY9V9p2sSfhKmtz6H8IuiRZ
         FXf5ULhvhWDyVlYhTu078gh9b8vOE9+l5DOkgzsPQQQGhmuuw0fbVgCdcE4NU1mtf8d9
         HwQbjRxpyLFQ6AvtD1tWofs2xKgk2hjG+p4pq3TuE4MmLG/Y1kHJzTFeH3uyEdBpU1vB
         xdfs27UoNqLOJ0f1ljPQQP5vyT15kPvh6v9bb+vmYS8qHTmS10+xQFZXM3Wl0FieULi9
         u4cj8hSZP09kXSNtPY2KC6Y5oObfW9x4bw9fB3N7Pl37Gw1Bbjjh+Up6De9PXAG0TYkg
         UypA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753946162; x=1754550962;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D3p1o+9EUHGsPhY1wwdj7Mm5g/NuTdzZcqkBi+ANheQ=;
        b=Q9Rr58vgsgU4qlZQAcc68bvQrf9S3c7GAAELEMx/GE0qHFGOSnbWoPtck7ZZQPgxyR
         QZZRzMLUlbJTkEWE+IVod5Ay2vMkwhyzzmQ+wkSReiyT4Od2mebQ8YIcUeYCmDihkZY0
         oNr0Q8wptmgeHL7qsBpdD84VoI9NRyawgVNdQ+Mu4aTeYfADJUkz7Z7Zmdupmj0RFRtV
         bTGRVaErn74/Vv5JS1AAcX+la4X6drAWByqpV1f6ufncHjZzCJB5lnAeOQh0gPcnaE/v
         BJqhoD1zn7mFAKSpDHpHBkdh3/cYXh1hHxj77RYEN7ELuJ/lVjsgO+xBgD+gF52LU5G8
         o1KQ==
X-Forwarded-Encrypted: i=1; AJvYcCWblSKFglS5wknQl3wPBpiUqmF3O5sf5T3CmTJ9Y5b4LztxOUCuCGu/ykkgiWdks6iTGukRIooZmA4W@vger.kernel.org
X-Gm-Message-State: AOJu0YzlJ6TER9rouQtVeajl0LOCV3CCAyxwjFYT7PfafBACYSruSHeg
	+sg8NpUgNRcujggPHb++idN2vaGWm3RcFTW3AP+lXl4G9yfCkkXNLzyQWpNH7xM0PYk=
X-Gm-Gg: ASbGncvk5lSMByhJVmiOg4vKFj3Ii20ctOwCFyOcRqmu7S4C3qxBn+lKikFOQdp+NOt
	yTi5agSZRdH69bXKc77ZmzL9/TCCCt/CrEl4cNh5sS2DE+QrZ7R2qeXmgbeBEYIg3osSw6mrSkr
	0CTe9UI3NlxzbR0c8WiyepwmRfm1QO8ti9+Rtr6kK69apX/1ORMOxHzYYWT//m30P1RGq3jv/zk
	iceOFunKY1WjbggBWO5kgZNB8rv6NqyI1jHqrLp12MgyNNqsKM2qn+mUJxhSsB8NXX17NBC0ocY
	L43tMJi4eveT7sjsmT3fgonBmSKgfIrs5ncaLTatAro02rVyGx0cZDQIkFLDpGdfkQfVXTJnmfK
	Ch2LFkcysGLajTkl6f0oTUW/Q0CeNLgH7K+ITPX4=
X-Google-Smtp-Source: AGHT+IG1Le3YFSl8WgpQdlVnifZaakoaYA8N7HkzTkmvAh1UT8hZ35WzDec8WEmxrqpJex38HuvlLQ==
X-Received: by 2002:a05:6000:25c6:b0:3a8:2f65:3751 with SMTP id ffacd0b85a97d-3b794fc07d6mr1912873f8f.2.1753946161762;
        Thu, 31 Jul 2025 00:16:01 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.218.223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c47ae8esm1353483f8f.61.2025.07.31.00.16.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 00:16:01 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/3] dt-bindings: ufs: qcom: Split SC7180, SM8650 and
 similar into separate file
Date: Thu, 31 Jul 2025 09:15:51 +0200
Message-Id: <20250731-dt-bindings-ufs-qcom-v2-0-53bb634bf95a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACcYi2gC/4WNQQ7CIBBFr9LM2jEUbWpdeQ/TBYWBTqKgUImm4
 e5iL+Dy/fz//gqJIlOCc7NCpMyJg68gdw3oWXlHyKYySCE70R8EmgUn9oa9S/iyCZ863HE4iX7
 oaDJCKajTRyTL7017HSvPnJYQP9tLbn/pH2FuUeBRkx6srU2jLzf2KoZ9iA7GUsoXIaJ0LrkAA
 AA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1640;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=XaOUtYSONJrTy0Q6bEJNjC5S0oSCG7wZ1egPDTT29Sk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoixgqj+xe3JxFrpHLF3JoW5lg0SDN4swxJjndp
 vFEvLIebYmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaIsYKgAKCRDBN2bmhouD
 1wXdD/sEl+GBP50e8xDxLCS2Atjz2u0E/kZjptL2U97ecet4JClxa4nnnp9S2MMiS3tyQUQ8ctz
 PdKoOXtuVgdt4dXPebEWt61ZA2AOJA6qpkdHZD3CXgFsJy+E8kKXR3keaPX/D+YINETziKRIA25
 VZWs+CHpYY1KdKoLrA/C2Gi0C59/O5p1tLVyeLN8/P28bM6cf+GXn2HmBMvgzvcQR3jBkEftbnT
 0jRlovAAnyIbuLDPaCkDhJNvtWhYiYU9qrukcm3mkAwqBqLzJUMiOZ/HWsBcFym/5n3GCvEG5X7
 WkYtgIWtiviY+UuW0O23JAgoootPhVUwMOxQdghRi1SF2PwvKQJ4Omr2mG7A3H/kY8tToF4XNZs
 J7D39W8Smb7UgS/BCfF7gSkwKgxB6/M4QutDsSXp70cQ3n1K50+cZx+lqBLXtIYIw+hqlyOwOrM
 eIOwn7WcwHpbIjONTEaJJ7dgdcUlrvA3ACOwYheC5MrGGXscZaERunn+uQDOl7Hg1muI8JJtI0L
 qXMhgB6lQ9xpOpEQSGz9R5g+yUcwT611m/uQGmu3xFN26CK+99iQLiQ8TOiTWbxYclR8tSJjXCn
 Bxm2K/pQQWR60A3yvf5oTFnk7s5i7JYm0UPA+4es66mALgWAI7kCfG0BECLNCxGMK598n4f3wFY
 TcE9SHT17brJtLA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Changes in v2:
- Patch #2: rename subject to SC7180 and include SC7180 as well. SC7180
  has one clock less.
- New Patch #3: Split SM8650 and SM8750 to their own file, because these
  are first variants with MCQ.
  Add also MCQ address space, to fully document the hardware.
- Link to v1: https://lore.kernel.org/r/20250730-dt-bindings-ufs-qcom-v1-0-4cec9ff202dc@linaro.org

Description:
The binding for Qualcomm SoC UFS controllers grew and it will grow
further.  It already includes several conditionals, partially for
difference in handling encryption block (ICE, either as phandle or as IO
address space) but it will further grow for MCQ.

See also: lore.kernel.org/r/20250730082229.23475-1-quic_rdwivedi@quicinc.com

The SM8650 is first SoC coming with MCQ, which was missing in the
binding. Document this as well.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (3):
      dt-bindings: ufs: qcom: Split common part to qcom,ufs-common.yaml
      dt-bindings: ufs: qcom: Split SC7180 and similar
      dt-bindings: ufs: qcom: Split SM8650 and similar

 .../devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml | 167 +++++++++++++++++++
 .../devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 178 ++++++++++++++++++++
 .../devicetree/bindings/ufs/qcom,ufs-common.yaml   |  67 ++++++++
 .../devicetree/bindings/ufs/qcom,ufs.yaml          | 185 ++++-----------------
 4 files changed, 446 insertions(+), 151 deletions(-)
---
base-commit: d7af19298454ed155f5cf67201a70f5cf836c842
change-id: 20250730-dt-bindings-ufs-qcom-980795ebd0aa

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


