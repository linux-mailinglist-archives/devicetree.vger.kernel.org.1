Return-Path: <devicetree+bounces-70922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 641228D4FEC
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 18:36:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FCC0282D70
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 16:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41CC522F17;
	Thu, 30 May 2024 16:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oZeSbWJE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C2F18755F
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 16:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717086958; cv=none; b=sVklV820PWVvEXBlxSxui1X9VgGT0vohReJyFnF0ooje0m8RNpi7uTS1vjatH0DwMAwI6T0qx9CzoqiG3E3JdYwlk/0SQdMBdWA7EeMBSqUHqF13u/jH/fwekavS1d015+93kCA9Wl28HSfduQrp1QdCuMln7gxdPl3yCGmGR4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717086958; c=relaxed/simple;
	bh=BKr5PiPt2rkHAKd77k/CQfzajkgBPMNpBIQmCz2Ij10=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=H9E/QUI8U5+FAldz5GIVZYl8FvQCoUWB1Ibz2euDu8P/WjAvT0oe0uIW0e33rQkPmSyV/5hAJndElIkALqq0n7gfwZ3On0RzvN/9+RCePysvg7JKPz7uFhXSbXWapm23D8BGfccIvt62GWPpgMaYGl8HqHED6YAjl1b05mTyOKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oZeSbWJE; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57a196134d1so1120528a12.2
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 09:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717086955; x=1717691755; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lSTTlQ9inxclMtvN9VfD3xxa8EKPAm+Tvw7rOPw/hy0=;
        b=oZeSbWJE5aVYMXaChcD86nl4pVROI3Xym4gFCIVV7XMHmRFwUpzr0wnc8x8KAcgFbU
         n4DIJfVW06M10cS3QtLJIYxvGg72GRxVgn6hJSQNEd8arSiR+sXCMfAL2yajM0bU5Q6V
         BiMbApQSFvJUUiXleKSogb+3CqusW5G/AUoqkvTV0ECzrT8fMESNEg85HNa2/TooOkK5
         P4JH2VwxMOuuUsDM7lckr2eg4f2EpRAfWXObv5Kovf0vhPmVtzQyoJVWUsiDtsLyUWEA
         9jtsd0oMwUAvQw+wrCiC9sn1SaVjKAI8QkrDNH1vrb6kU/38O8AUiRyvsgu72TFjpi60
         JSGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717086955; x=1717691755;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lSTTlQ9inxclMtvN9VfD3xxa8EKPAm+Tvw7rOPw/hy0=;
        b=Ru7hUZD3Zlf6cdYouMKonUuy/ySLVmMG4mwtzgK77U6aAlLG7FuksVgccDVwf6j1qx
         ljU5DIvtxOyWoNnIxtv2tUSIzSSPn0GCLrdoMLF7yu6XOet6pxtMQezd643K78Po1iYU
         nteyqN/y943Zs9BtPCKJ4CLc47Oci/2aq8tLr8VuSn+7BEn7i+0JNqzQJouGe1JzB+Fe
         ayy5gR/pl4gyBxrbHBkJww73xz1h5WIPB/tpDJynvtx7EKJI6CHp+mcRLotlC5akOvr4
         VNBlkLGJkSEMGZ6E1uL+ZWLlmHR4mq7y36Heb+HOWMm7ZLN0KgVVVcqVew+xTV9V1LDG
         TpPg==
X-Forwarded-Encrypted: i=1; AJvYcCX0BPu8TYHligmXFnC6d/TAllTd9bHREAW5SyJcbMpBvMB65wryXN+QkY18pkoybVtQiYEHv5cP9YDNnL4aiOT0KElW/qwt46YlQA==
X-Gm-Message-State: AOJu0YzeCoKQnprQWMDm799WnNqSPHnlalJNlxAGLifaK66RXELYstme
	/sjJpgJAJN55U8zT07wUzH2I9vjS5ivNohLgNZEn7SQIy/06ObnrbvePcC2eBH8=
X-Google-Smtp-Source: AGHT+IEo32/cA/dSF07Tv2ymu0/GefsB88XimfHTzqH0KHRvy5LxPbMTmBDMy5UeTbi9GGapG80n1A==
X-Received: by 2002:a50:8dc6:0:b0:572:cfa4:3ccb with SMTP id 4fb4d7f45d1cf-57a177925bdmr1460160a12.8.1717086954441;
        Thu, 30 May 2024 09:35:54 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a10670df6sm1888885a12.69.2024.05.30.09.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 09:35:53 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: x1e80100: Fix the supplies to the
 USB1 SS[0-2] PHYs
Date: Thu, 30 May 2024 19:35:44 +0300
Message-Id: <20240530-x1e80100-dts-fix-usb-phy-supplies-v1-0-6eb72a546227@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOCqWGYC/x2NQQqDQAwAvyI5N5BdtYpfKR50jTUgumxULOLfG
 zwODDMXKCdhhSa7IPEhKuti4F4ZhKlbvowyGIMnX1CZE56Oa3JEOGyKo5y4a49x+qHuMc6WwpC
 HPpRV3fnxDdaJic17Hp/2vv85EUeccwAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=720; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=BKr5PiPt2rkHAKd77k/CQfzajkgBPMNpBIQmCz2Ij10=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmWKriSWeEJowqq1va4I17wsNuerfZAKtLIw5GW
 LxmzVHlRA2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZliq4gAKCRAbX0TJAJUV
 VhS2D/9cljoWFGK2BPHutAD3JkFv2ZtCi/jICADD8QCadd1Ci6egcuC2LoTYd0YyBcQVbTE//kj
 5w+oIM6FpKOJLJNPNRJFVhZ2sRmlhR6BBM5RICZpDcmE1Dlrf+P407GbW8XaIdf7pZhO2JGef8U
 2zL9RBCIlMyOPaGGN/oahoxcNhkuWNZKPhe8JI+8W9vR0tLjn8+8Cr2u9uhCSLlsa9a4Ac6swEL
 /joSia/rb6aEsEh4+6GIjOPANGoisalmXEyb1rQp5sup5cqY+P8P/hREXLCkzx3KFKuYcoZGPZn
 eIpSey2dlXbw37BV28QWpRc2QeXZi7Xzf5AY60h+GacqhifYUDDNwsjP1nx81jrY5rlnI/TK/Mq
 vgVwdXZrMjkeRm0/EJ4wOuJKob7P2Kj0hjvY4OAs8Aquif1E53NbSjpywc8pYkcerK9ZJNizrMg
 3cOoD6gbjMVsS1ksfIs+JV9WG+kLQjdVou/Ikz1dpE7l5ftywfjKMwezaaVrUkFRlac2AZNqk5P
 hdnaz4XsrjHGrzU/s2ovSDDuYRLJ0c9fQ4mArE0s0vQFTpd4lGxa0+N15/eXXRlVJ4VDAYuLZ7C
 B0HnsDCpckbTHjrcByLTSXh3rKu8ZBi31uCX6BKJUEaXwPpUFI5Pz3+jjbx5TTBhqJgeBPxmDxN
 AnuQLI3bnPWgoyw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

According to documentation, the current supplies for the USB1 SS0,
SS1 and SS2 both QMP combo PHYS and eUSB2 PHYs are all wrong. Fix
them accordingly.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      arm64: dts: qcom: x1e80100-crd: Fix USB PHYs regulators
      arm64: dts: qcom: x1e80100-qcp: Fix USB PHYs regulators

 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 15 ++++++++++++---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 15 ++++++++++++---
 2 files changed, 24 insertions(+), 6 deletions(-)
---
base-commit: 9d99040b1bc8dbf385a8aa535e9efcdf94466e19
change-id: 20240530-x1e80100-dts-fix-usb-phy-supplies-c3cbc578a2f6

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


