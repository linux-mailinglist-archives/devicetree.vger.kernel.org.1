Return-Path: <devicetree+bounces-189402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B35D9AE7C2A
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:19:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DED01773DF
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69C0329C34B;
	Wed, 25 Jun 2025 09:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="CandxWgS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABD029A32A
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842818; cv=none; b=AJTkAA5BK8kXaa0fLF8W1QYzBLjqLdRijei2H0Q/TUO73/ugXsSLvdaLP5vvOHvEiuPYeoMB8BcJqK0SDc5CUFMXAfKhiBU//ogOB32at4fWxYaJIESYZUQbMDs0aAK++5GsNXej50dvGS9wHIV1AEYckQohW+7reHfi2RRNtT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842818; c=relaxed/simple;
	bh=4sR5fPpma/GrOJli/eLiVTPPr/9TVkwqVfopkbkw2Yg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qcPOeqJZwds1I5MmY7xMgsYhEofsQA8p8DafnoXJcr4Eh4YF9moUaVwfvW/PylWV5a1dK2pPLMvph9+m/FOj2l5yBdOdSC2zYaAhI3N9ojN+jLAScjzb3SvfAfGOf9i6Sc6C+b2bDH9zBT7Q9TKVefQvNss/0reRtaO8VSHWQoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=CandxWgS; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ad883afdf0cso256491966b.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842814; x=1751447614; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ks2KgKPEFickNI0g8cLhP0+7PkHVzo+kxkQrWM9s9Jg=;
        b=CandxWgSEa4zslHSRGyTO6dsjXvFLFADwNBqczzvZvsMIgh29Buk46VcZDX8xeg0Ve
         SNE3FQcpEUor9G3ujm8oSMA/zk0ior8Gxc7scTMWmFh0J2TUp3rKu2vOzkVehQEwuOef
         9k/V43W9L/DbiPEMV4PRyKjJKXspK0OGtAiAWaXJ7PpZWga9vUVSi8mQN/hWAhyOMQuH
         QFBmHRXNiJ6LotIPeHhnp2BNHTbmX3WIAGYxsCTT3AAYIzrY+SPez1BcwDATg13wQN7o
         dnrlZvgpYqzOEyx3Oj3MbdHTkKDdC5+OcGOFSjDnN0bKO7sDqq6zuRJsRgn3nQ3S59xU
         Favw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842814; x=1751447614;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ks2KgKPEFickNI0g8cLhP0+7PkHVzo+kxkQrWM9s9Jg=;
        b=mDI/YwzSRgfM0ZWDkuGQMB7Xuas2Re3nH0oAlT93CKzfzR+8XjqTgl5TCmnWLo0Y3Q
         8WDkOaG3BJmzcgCV9Eux7i1hl8DojDkJyal7VPVXvXYbA6mpkLENKQizyszzWEMJxQxF
         h9C4touE7QfKEcTAOv4aFOkYFCNnTUiOS+mXOtfM/MyUrOqFwKTfkSjIKaF1xCHnKZaV
         8ehHV3+jrrHtgM9w9fJgnpLwFSt+3cYSPAIBDQsdR21QjVcGdV4BSHTISRLUGrin1usO
         uVHZdAHr/edIClW8S/3/sNJN1HGgC3KjZWQDFjhsShTyon9pDAJeGbMbJsxebpV5W1FW
         qySg==
X-Forwarded-Encrypted: i=1; AJvYcCW4Za5Sjvph7CNdghjniQIGZQ7qQtbIYufNEqWpCYJftb/cqiBWOca/pJQKTZF2SYo4KRtNTb4AyXI3@vger.kernel.org
X-Gm-Message-State: AOJu0YxHZgHkZe4/Ch+KfUocWY68GLo6j6eF2dy8psGofB9dn3jiZT8O
	FGLaoTCocIiBr4blgBsgGUjEWEE0n5zj5EFxQJXHaf2N2wLN0ES8C6N+MLbFfoZAJQI=
X-Gm-Gg: ASbGnctO0OnXZs3whHuTzbMesPuPTmSUzTIyos/6l0m5Pxu7p72ND+OdvqZu3kTsWNz
	1Bh3lmus2m7ARfJyeabEzNIBTKxKJ7tvtdCoVLXXM86jYeadNrxFHEIpufh3ju3p1YUlRMZ+yKw
	TJ7E7L18FrXaWmIyHOrNwceP2qBMw0Rs4gFOFRqrmxSkQtQoOPHdrtPLnIekqIqK7HwLN1gBWst
	TYyV6XOnfSApFmI1S5DP8O752sz6siRZqnqi/2LwcCzAJCFjyAIDzonJTt2wb1a1VgK2BXNaMIz
	ctPCGEO+yZVP+xKXGFyldthYUOHW+6I/XUzA9jkJtDmUKY2RnjwXM/xH0r6QAKJPSZLmaRkr/rH
	mSqzjafi663u9Kfg203dDCRZlmse6vefeOZiWQ1ngNKE=
X-Google-Smtp-Source: AGHT+IG3W5RmwW0KXa53tzqdC7aGtVxDcyIrcDLyCjEyycANLI9U+Z+hJ/jXQi64INJPHjABBmW7Xw==
X-Received: by 2002:a17:907:7289:b0:ae0:35fb:5c83 with SMTP id a640c23a62f3a-ae0be9dc2c3mr227506966b.28.1750842813609;
        Wed, 25 Jun 2025 02:13:33 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b719fsm1002786366b.128.2025.06.25.02.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:13:33 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/2] Add SM7635 RPMHPD power domains
Date: Wed, 25 Jun 2025 11:13:22 +0200
Message-Id: <20250625-sm7635-rpmhpd-v1-0-92d3cb32dd7e@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALK9W2gC/x3MQQqAIBBA0avIrBPM0KCrRItyppyFJgoRiHdPW
 r7F/xUKZaYCi6iQ6eHCd+wYBwHO7/EiydgNWmmjrFayhNlORuYUfEKJ7jDolLWONPQmZTr5/X/
 r1toHeTYSf18AAAA=
X-Change-ID: 20250620-sm7635-rpmhpd-dcb5dc066ce2
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842812; l=624;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=4sR5fPpma/GrOJli/eLiVTPPr/9TVkwqVfopkbkw2Yg=;
 b=8C1xOSR+fZgfOr54HLuwAQbc2nKk/SYaba1UqxJmSlY8b+huwWPWF6bTrhmee79uk+3mUFy71
 0mNZhETK1znDIZB43YvACA7IC+galriMioJlCwd9mFhd0P0OjvZYVvO
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add support for the rpmhpd power domains in the SM7635 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (2):
      dt-bindings: power: qcom,rpmpd: document the SM7635 RPMh Power Domains
      pmdomain: qcom: rpmhpd: Add SM7635 power domains

 .../devicetree/bindings/power/qcom,rpmpd.yaml         |  1 +
 drivers/pmdomain/qcom/rpmhpd.c                        | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-rpmhpd-dcb5dc066ce2

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


