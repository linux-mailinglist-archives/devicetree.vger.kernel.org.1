Return-Path: <devicetree+bounces-236165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A77FCC40C45
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 17:09:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E88118855D1
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 16:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64E8132F74D;
	Fri,  7 Nov 2025 16:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="mLw/fGot"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFDA31A076
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762531736; cv=none; b=gYOg2Ec0jziHjsrxF7Bak0Ey2a3CRuUzlZtu93wtI2cxe47i2MKvrY8Nu1iMM0uKLSXcSfyTapSmx7LXLK9xWgWUrP3k6fQGvYA4zyi4WZ5ab7Y8xS5RaVlkzV4VW30nujsShzqyQVFSRupXLxLse/1KR9dSB/+7YoHljCwfxwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762531736; c=relaxed/simple;
	bh=FrKylvjtIbykfg6BNRKjScYknFwVxGFQEfuD+JLYCCg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ChZirhOHCoDRl6EpAKa/WKeNgH8tXTSYCmr9046e6Sh4ueEw4xU9cQz6JL14xYqETWJRy9yQ0023yyCy94EsJn99pBiL14PCqq4rbWhQEJHMzHp7xWNEBRrWd9TD2rdVS6oaDA7mXUUjuWeCkrL7Q+p6XH4ezARtJ6z7tr1R/08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=mLw/fGot; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-64088c6b309so1576146a12.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 08:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1762531731; x=1763136531; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M6OFyEM0mwtoBUd6fjbO6FrIz0k/kDLhqnCZDGR6L50=;
        b=mLw/fGotcCQwPOCJGVL+xuq/OAELVkU5YcmAVQmghR2VUtWG9qU9Yesn2UaapGPOUA
         ZstY427FF26r8ErT5jQkcVUAcug9cXJZXM339I6ruD3as7frY7Mv/i/bH9Plmvr50xul
         SQgDvIaaVS0s6LGS/uLY5r/mQBis2Qn0EmCgoNa7tW3enNqyS8opyuIPgfqkEQ739lpO
         tN1YbKYDu0Bx8yPcybmN7ufzJPkz0GpWrSV4B7aLaJTE+QLC3GUkKSenLtxVlgz4IIax
         IUfjKNz905l525j50YXexlLsIe7TSMunug6FVkBUuAxjWjXQSGt1iZl79gWudU6hws+6
         FY3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762531731; x=1763136531;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M6OFyEM0mwtoBUd6fjbO6FrIz0k/kDLhqnCZDGR6L50=;
        b=e4HIuu9/Tc5svzunSrVzjWHeV0u7QYEM6vlEmap5M7+tdaez8aZ93jvQQJ4XnSLlyf
         zjwhgOM3GAiEVZqfqwsf6LI0MR1gdtyURRayJsix0P3ZdGT4apOBP5h7F+aORyhI26ff
         05SZW5o2Uj43pyc7OuKGluHHyJmH8lR1kiwQWfzmmr6Bn0GH35p52HgbxdE1YjuWr3LG
         XkUf7KN3uYOQo6+VTw0+huU7zaRSqNtg2DoEusSRFCFt32FRUXAN9xUD5PePw+6u/FbX
         SvmQsAHPcI1PNAnpZtyUav/lOfzJcTna/fAjpDHTIvFUeOWrtU758XezyF7LJXFTlEMy
         88yQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkLx7K6LB6JlwNqZd/QXMNzyprzeDNczp4Qnnkga6NlbTsFsNtvlq3G30oZvUDE7ilKWtfgZ8iaYNE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyfj3rblasSlUrzM+BegVztGb/62g7KP3nBXpU6ragshn0D7lMP
	6XAxhcgqccwgfz/AMxdFJ3ip/oKUglMGLM97Fyw869UVxNcppWh6IN4Tl660HqwV7Vg=
X-Gm-Gg: ASbGncuglZSGgr1wrz+/XXa+doLcddqOBa1DhuP0n22bbfXLpu87k4xH/ZM1Pnhx++S
	40N4XricbfKHaRmHV01HlhhJlcVHMKp99eZ3t8tKZlwYrTYy/oOm1jJY6e90UWZCk9F8+JySU0X
	7OuHMjGu8Hd4/QCZp3y22HlTkzIwc5gWLD63Qbke3dIy7DRb6wsTz3fEc5NiDfFDQQpXFmizbhc
	Py3q+Bd74kd1UIeRsnD+vIH9KU/MmaF5xSqK6la3sOiSrLJYGWDYeBtudAWSWDWhLrUmskrv1Wt
	1wnNuEguglAc0Edj21XnAR/xa7wjfSigDDtcUuyfyJNRxBfFvpyvdDuv0aH3Ar3HavQSDnbwekO
	zSIx/P8juduM2zFVRpuQ9ipq4oFn0/lfugpZI7G6m0XmOM31AAV2HpWS/1DmFSPlzVUfEw+KKUU
	hBnchF7VaGagJhX/Rtd6XNp2cTaWtSs16tc7VN5tyedyRCmduo9MILgx8=
X-Google-Smtp-Source: AGHT+IFc5yHu64pZOVzhmSiW9o358Hhl91qRFBo7frY9TOt1voWJpvXX8q8w1oYhoIzDVymNV/t2pA==
X-Received: by 2002:a05:6402:3513:b0:640:e791:df67 with SMTP id 4fb4d7f45d1cf-6413ef03618mr3463236a12.10.1762531731544;
        Fri, 07 Nov 2025 08:08:51 -0800 (PST)
Received: from [172.16.220.100] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f713959sm4444376a12.5.2025.11.07.08.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 08:08:51 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 07 Nov 2025 17:08:48 +0100
Subject: [PATCH 2/5] interconnect: qcom: icc-rpmh: Get parent's regmap for
 nested NoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-sm6350-icc-qos-v1-2-8275e5fc3f61@fairphone.com>
References: <20251107-sm6350-icc-qos-v1-0-8275e5fc3f61@fairphone.com>
In-Reply-To: <20251107-sm6350-icc-qos-v1-0-8275e5fc3f61@fairphone.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762531729; l=1554;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=FrKylvjtIbykfg6BNRKjScYknFwVxGFQEfuD+JLYCCg=;
 b=nTRGQyYmySEkpmasdBUmEaPB51ISRGLTYkLSIUcHDR8tbweZYP3kljRlJhHKqSeem9gQeqLRC
 DHVQ5/NTu3BDPGZMEfeU2PpcIDxP74CA8UJEXfBUhruv7IqiClWTtIv
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Since commit 57eb14779dfd ("interconnect: qcom: icc-rpmh: Support child
NoC device probe") the icc-rpmh driver supports initializing child NoCs,
but those child NoCs also need to be able to get the parent's regmap in
order to enable QoS.

Change the driver to support that and support programming QoS register.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/interconnect/qcom/icc-rpmh.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/interconnect/qcom/icc-rpmh.c b/drivers/interconnect/qcom/icc-rpmh.c
index f90c29111f48..2103185a44a5 100644
--- a/drivers/interconnect/qcom/icc-rpmh.c
+++ b/drivers/interconnect/qcom/icc-rpmh.c
@@ -308,7 +308,16 @@ int qcom_icc_rpmh_probe(struct platform_device *pdev)
 		struct resource *res;
 		void __iomem *base;
 
-		base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
+		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+		if (!res) {
+			/* Try parent's regmap */
+			qp->regmap = dev_get_regmap(dev->parent, NULL);
+			if (qp->regmap)
+				goto regmap_done;
+			goto skip_qos_config;
+		}
+
+		base = devm_ioremap_resource(dev, res);
 		if (IS_ERR(base))
 			goto skip_qos_config;
 
@@ -318,6 +327,7 @@ int qcom_icc_rpmh_probe(struct platform_device *pdev)
 			goto skip_qos_config;
 		}
 
+regmap_done:
 		qp->num_clks = devm_clk_bulk_get_all(qp->dev, &qp->clks);
 		if (qp->num_clks == -EPROBE_DEFER)
 			return dev_err_probe(dev, qp->num_clks, "Failed to get QoS clocks\n");

-- 
2.51.2


