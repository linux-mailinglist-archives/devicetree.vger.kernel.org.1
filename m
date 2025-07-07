Return-Path: <devicetree+bounces-193620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 62314AFB085
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:58:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA8E63AB067
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 281D3298261;
	Mon,  7 Jul 2025 09:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="iyEYlPkF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D418293C45
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751882229; cv=none; b=kolPJZjiEN96fqoCKEXK5dJbwSCVeGTRupaetP6oAvhiJNmnP/rh6zNKF9PQkfsXkMqPURN9cZkrqVnXObtKxCc9Ynehu+JLMGOt2cSHaDowuqcEnvH/MouKYksnNJYJFSgNRi3LWAQSY9Xf4j0Wyd6R45IFMuopcpE9ft7Zne4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751882229; c=relaxed/simple;
	bh=3Mu2inPeLurTgxYIMXmvWJLeE7eR7Fy6XDeF6vArhtI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KXyy1BHKW+xACm2TwEEqs3zDm0XVtsRFv91fay7ijTN/TlUwKbld8hVp7jte11RO+lxwc9L1tbinrNzFURrx7oGo0rkIS4gQDCo7GQ8MSBUA2VhSLV/OFBd+mgO7NjVMUNC3BHiJd58UBoul5OJHKcEmP4h64JwfyeZD9iRdTDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=iyEYlPkF; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ae3be3eabd8so587700966b.1
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751882225; x=1752487025; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOnXjDsqREhCmFz88p49UNo+eXUiRZ56Bd8zYTlBpIA=;
        b=iyEYlPkFwUyAwTcMUvc97NQ6mZcgozgZfTX0JFclFwPj0oSZtjX/JbqZJpETRaRRby
         YEbqmfxvwPF6TCMwNxzPnsa0o3Opk1iv3fXuRV6Lwg2SwK48FnwR/XhOm22NrMb74kDQ
         ePNR/zFNKGRzBH5fk1VVK9qVbzTielD+ESYltioF5j6DVntVug/Kexisg4mAxgcm7tCg
         BnKWvj8Xti5XhKIRUlTZtGcg+4tsWAvOWx4ZmUG7NzsgkN+RcoNB/83BMZDMQ0LBl5Cw
         Pxl33yNqTpsIytR8Hq5qJjxHFdvCvYBX8QknIc7euv4vsYD7P95iQFWz59GEtSC0hwR6
         +R/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751882225; x=1752487025;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EOnXjDsqREhCmFz88p49UNo+eXUiRZ56Bd8zYTlBpIA=;
        b=HxM9G7TXHZnaD/pFeW2ZN4Aepke/De2+vnAoI5X+k7IQ/Er5VtdpsS7KFiL9Q21D6G
         BVZmHotpxYtFIlQFrVETXoewltdxPh5KrYk/VrtEv7YM9oS9Qy1gCDWNe76glMjxjAQ7
         uZj08oZhazaNTcrEq8TWkkD1I0vI1OtXskLAJPkvd7rzxzv2PeKKRZ5QNHR98Tfd6dpE
         vzU5lOZY0bm33Nxkeb+bf1+sKttEfy5CWO09KpZ93h9xuvX8MdfCZI0CkNTcOcDRhd2/
         D7QpzgRIgkilqCn9ItwSSrYaUt9EB1c3xtVhGy4gKZDZW2of/+LauYpDvU/Vpsfm5Q0i
         64vw==
X-Forwarded-Encrypted: i=1; AJvYcCUFrbci0k9K3018pUO/PAqYXOPeN5d6wYOJFESiN5xEn+uTYt/maYVwaS8pfXgfyBFnM3FsmeNmeDIM@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy4QMaf6kQs3EyhSqbXM1R9qUhD3piIsqXpf1ewl/DwdA2P+my
	NrprmHqOidNLThHsgWHEipnl4mnU4+qpwr2IBeeoZae6lmBhCaoKlN0SElMqQvTPsTc=
X-Gm-Gg: ASbGncvUx29e5cv0pWlY9k6jeMHdJCx5Sz5Picds63Lrn3rX3VtB6bGwq8NZhnRLj+T
	FIJzcccA/XTlfmF3qYvrBfkYcL4C1sJSg0PqeXxQOEsEN5aH79z3qMXU2gbRUZG5pXJNznM05lJ
	4NQ5L9/B/zG0gEAayXmefD8ovXR+FORnE6RWdk236CpiFGLaiF7LcRyFbFCCR/uFDhyrDT3cWJd
	r0fFstN+Q43dRcfRi4BG8BvPTkieLeHcON0WfSEmsCMcB54Tk1GVFergSJcajmXMNEj6n9E5tKC
	ZxfTmbpr4dD/+6LaJh3yItSGZyWnQcD09HRgK7CvA4it40mHRcf7ItOD058OZE83GfGBusDFr3j
	kmGCgnGnDVKB4s4qHpFIaaRcKlylGtO+y
X-Google-Smtp-Source: AGHT+IGKhMhFSGKlsIJ79aw5G6QurSRw8NCQFcx3lleMs7147mX87cuyeRhXpjtmLkhn9V0f7LM0PQ==
X-Received: by 2002:a17:907:e90:b0:ae3:eab4:21ed with SMTP id a640c23a62f3a-ae3f80acbf7mr1348668966b.11.1751882225465;
        Mon, 07 Jul 2025 02:57:05 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fca6641fbsm5235815a12.3.2025.07.07.02.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:57:04 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 07 Jul 2025 11:56:40 +0200
Subject: [PATCH v2 4/4] clk: qcom: tcsrcc-sm8650: Add support for Milos SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-sm7635-clocks-misc-v2-4-b49f19055768@fairphone.com>
References: <20250707-sm7635-clocks-misc-v2-0-b49f19055768@fairphone.com>
In-Reply-To: <20250707-sm7635-clocks-misc-v2-0-b49f19055768@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751882221; l=1444;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=3Mu2inPeLurTgxYIMXmvWJLeE7eR7Fy6XDeF6vArhtI=;
 b=Wtvm1YrlQYeQB2SHtJa+HyB8AdrvrSqn/xb3Iesq39ZhGe/BB5eqogjRlpyJs5iP8J2pzA7I9
 3PdMXLLd6FaA9OORSwNJH0kAn/MNrc4SXMzR8zSMe8BHr8fmfVIiXy1
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

The Milos SoC has a very similar tcsrcc block, only TCSR_UFS_CLKREF_EN
uses different regs, and both TCSR_USB2_CLKREF_EN and
TCSR_USB3_CLKREF_EN are not present.

Modify these resources at probe if we're probing for Milos.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/clk/qcom/tcsrcc-sm8650.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/qcom/tcsrcc-sm8650.c b/drivers/clk/qcom/tcsrcc-sm8650.c
index 11c7d6df48c7b39f661cc4c2df30387836d2ca60..3685dcde9a4bd5ebc62ae9c054e6b6a44d68d0c5 100644
--- a/drivers/clk/qcom/tcsrcc-sm8650.c
+++ b/drivers/clk/qcom/tcsrcc-sm8650.c
@@ -148,6 +148,7 @@ static const struct qcom_cc_desc tcsr_cc_sm8650_desc = {
 };
 
 static const struct of_device_id tcsr_cc_sm8650_match_table[] = {
+	{ .compatible = "qcom,milos-tcsr" },
 	{ .compatible = "qcom,sm8650-tcsr" },
 	{ }
 };
@@ -155,6 +156,13 @@ MODULE_DEVICE_TABLE(of, tcsr_cc_sm8650_match_table);
 
 static int tcsr_cc_sm8650_probe(struct platform_device *pdev)
 {
+	if (of_device_is_compatible(pdev->dev.of_node, "qcom,milos-tcsr")) {
+		tcsr_ufs_clkref_en.halt_reg = 0x31118;
+		tcsr_ufs_clkref_en.clkr.enable_reg = 0x31118;
+		tcsr_cc_sm8650_clocks[TCSR_USB2_CLKREF_EN] = NULL;
+		tcsr_cc_sm8650_clocks[TCSR_USB3_CLKREF_EN] = NULL;
+	}
+
 	return qcom_cc_probe(pdev, &tcsr_cc_sm8650_desc);
 }
 

-- 
2.50.0


