Return-Path: <devicetree+bounces-222805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CC6BAD1FE
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 15:58:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAECB4A4592
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 13:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8EB53064AA;
	Tue, 30 Sep 2025 13:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="rXvPUwYH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D9C305070
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 13:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759240645; cv=none; b=YwqALo7QxBGoovwojwt/rFHYiWTidAg3W8nvwnG1x7nofWbnQc3rmlpmNpw2mIjHiMWOJXeb8zYTZckKuHMO1QbZM7zqstLg+s9j08i1y/sl9tcB/ZIXmXLYGt1cac8S0p3EKI661/iAXVWx45YV0PmY/JQUN4s8w1+6nUxeCPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759240645; c=relaxed/simple;
	bh=Qe0f2DSIOI6REPXvZsw6mfNG/f7zF2Kc4oN276oEtsk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YzmEwFqt8YiquZVSwf/GcWmjErxdOt32tjMhVGLRjxWK4Ik7jntsxA6Feij2zWqdlNm/eu3AaSlCcFF5CZS1Z5fGPE5tobXmesqgHBoNDu9CiNrw0LQOgJyz7nMp1+DSdKIM0mc/qsZBrJHIJ2YPhjM6DHFN2NZ2ahIpSBdUmDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=rXvPUwYH; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b3e9d633b78so550376766b.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 06:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759240640; x=1759845440; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BwEwaOkD7UmGdIyIsYNJIdPeNIJYu5qlxwHSoyboRho=;
        b=rXvPUwYH4aCKhfbpz10HjbPxrKZxEU1ILAlElKLVzULtot1BBF1FaPhS6it64jbQHX
         c9becfh5Xej7rslZBnlbG6Vufu0oHKYU0gz6UySDdC6WgXUw4Nnzj+AqpDPXjmykY2rl
         WctxkycmiUamKZJ8POVjJVmLP2PxZEKz2r6NNkiRpn4/xx11doj9tPR43lpeIXFxlJJr
         Ym13spEAgPWkSoFR4vnVHLxRRAi7yZyrVMOHIVQXP7kBcCbwf6PtE25fs6yhnfR4ZeRN
         xuwtJq625e5dKzCN4kye5JS1o2DWF/SMLPfu3WAAScFIAQgcvy3bi3Ee/PubcaJRfWMv
         ab7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759240640; x=1759845440;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BwEwaOkD7UmGdIyIsYNJIdPeNIJYu5qlxwHSoyboRho=;
        b=VM0PhgiiTsVuDTrjrQ1g9GX8wlOQtePrHnqsXHmM97LZj3/JyvyepTeErlkTmsBKiL
         OJIdpEVRckH1p81sYXtV9xHGDCb5LtX+H6zODZNpYfxB6jmry8h0CofK2DV/FN7CxlqZ
         zsXEpXiHVq3JehKl3z4m6F4zSedfQBTdZOxjvqSHQpwBgQl6H7ETNFszT/giDr3frRdj
         cCYfIWKT3hVu+r+vkGjZkoJKgMPikCbXrCM2K7Qy4bvrtB/ro8MzDSS1l10HMs5NF0rZ
         PAoSQyAHinpIpXTlVi5DIV5upSB3a6MAOUZ87GEr8N6Vn5qvFyH9QSS2pcccTUwQiU9g
         T7Yw==
X-Forwarded-Encrypted: i=1; AJvYcCXyhre6nruR//xUFS4/yO+aIH0DNTqXq7mUH6mBEAoyhC1g9Q8SsQTJQ8Gtaf//WswFyLG6WIE9PG2E@vger.kernel.org
X-Gm-Message-State: AOJu0YzCvTM7JdgAP8lz/8sWglYns+Wy6feiC9qQn+YRyaNt8zll3/85
	5oY4GuJdZpPRBDTshIK4RHHWf2uoM8Cw2ERoF2KAuAni3IaW31Ez8MltjAIh2ngu5yvtVtjpjaJ
	2Hfu1scI=
X-Gm-Gg: ASbGncvVbbZRx6gBLMlBV07uXpRHNhJdZlZYFAb5t+CbcANkos41ytw7Q9VVPZZjPEJ
	o7VngoHLdlkUolbbzpd3auXEJOWgBAdoSg/9NrizTC+DCRluM0mro+TipxehWzPfp5Pzo86QjRI
	bzEukGXZhAQ0SeIgjw6mFRwsOb5vNX1qowbsWFF8oFqHptCMyXOZ8yQp8laLZCkfwI38RCy57UA
	iQKJ8tNtnV1A7g8ZGnxAccrtjs4EQPot7cCQ0FYbQ75qVeyibuUgMCWXBibPfTffL2BdaCRGfTQ
	n+YQDFsZ55KesvZFF7Zb65QTVwi0RKJDdeLLju+msFeHip2k7FjKVHpO92l46tiLwDD1Z7K3ArW
	isr94rwHnQKnux+eyA3BrZ7k6vGvKrmvuxWJOlAqpV02D7W2J4Wl5ykR92bT2Oi4xnaMwBEZfrY
	I4I1iJeoXyuiSQs56gFStJ71RTRm6i
X-Google-Smtp-Source: AGHT+IFJQpq+WDwMaA7FjW347FsSVxwD9q92/cNDpC/Ji3gT0PuUoKthgOuYOi1dG6lyZEmWekcLtg==
X-Received: by 2002:a17:906:c155:b0:b07:e258:4629 with SMTP id a640c23a62f3a-b4138d53c0cmr550146166b.16.1759240640482;
        Tue, 30 Sep 2025 06:57:20 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3fb818fb90sm370234866b.63.2025.09.30.06.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 06:57:20 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 30 Sep 2025 15:57:05 +0200
Subject: [PATCH 5/5] arm64: dts: qcom: sm7325-nothing-spacewar: Use correct
 compatible for audiocc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-sc7280-dts-misc-v1-5-5a45923ef705@fairphone.com>
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
In-Reply-To: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759240635; l=855;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=Qe0f2DSIOI6REPXvZsw6mfNG/f7zF2Kc4oN276oEtsk=;
 b=B3B1V2m8I4ILfMLAP07WhFgzpb2Btd7IyCQvlV/gHJlnHz60/uC241UAB6TGvRLCLOrn77iYl
 7ounVtZZsn7DlxLzS3U09xKD2dn2MFQAYcB/DJJ9J6TcEM26TGv6ZJp
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Use the correct compatible for this phone with standard Qualcomm
firmware and remove references to power-domains from a 'reserved' node.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
index f16b47b6a74c5f16657be1cb1e1dc03afedb1167..cb59c122f6f6adc8aee127944dd1ec2d967f3c2e 100644
--- a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
+++ b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
@@ -978,6 +978,11 @@ &ipa {
 	status = "okay";
 };
 
+&lpass_audiocc {
+	compatible = "qcom,qcm6490-lpassaudiocc";
+	/delete-property/ power-domains;
+};
+
 &mdss {
 	status = "okay";
 };

-- 
2.51.0


