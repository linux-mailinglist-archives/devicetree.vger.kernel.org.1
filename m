Return-Path: <devicetree+bounces-222801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B1805BAD1D1
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 15:57:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 719F51C7744
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 13:57:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0C2303A0B;
	Tue, 30 Sep 2025 13:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Ii58swwd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7661224AF0
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 13:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759240640; cv=none; b=q/bvfQcUmdlz7vVMiNKMEaYQL8MIey5+Xdr/q9fDAph7l0vVjtanbnCn5AqSG2PV9FIwf9DFlSRghSnlIveyXW3P8/nmyIT3rInuVCLgXYef7ok0xzc+90GyF7BJhlyAbpDBCvAa3RsnlD/nj9hlBjJqKKLdWzrMJFWr/fspgr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759240640; c=relaxed/simple;
	bh=tzYiBi1inoE6AQKDp3BZER5u/OgLXaF5Dw3TSJH/dpk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BNT1mic3RhfOCLXRzikAyGMF4BJHFbExwZgm35q2h0Wvtl6jk6qyfMrpR0t8GLm4YXr3YDEiY3wPXhMZU0yFbEr7m9Pox/bvolqfT9+0sPpKszDlfb590Q5rsg9nlz+rScMdipEi3ACZJrvZg0eSwO+jlf4EatTk+Ccq7jciPis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Ii58swwd; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b3dbf11fa9eso402859166b.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 06:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759240637; x=1759845437; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lVfHh0PGJNCeCUt53q0MGqTcrE5zWwJY78oS+k48p74=;
        b=Ii58swwdeXSxfwH8WC/n4oK0hwSUPc+khTuCyt3sHvSpgxgDK6AHjmPa4x+JUa5bfq
         d0zHSFSPDbTTc3OGGYmUB4VSINSRLuYcirQj3yuatR5y8OfIseqqflOqc2zFJcac7GNR
         W09Ou7Lri4x80uwK6d+OfTR9/VU/h43Qsbj6het5Ron1cCQTnEzMF86OsxmnPFwb7hZt
         ko5Zb25w01zd74XgcfpPS3EXmgUz851QEvwO01e+537Xe4ygWIggQHUsfc9ANYcP8XaE
         7mnk36AwdM1BGFHqBgHi5WbvJaIYqVka3sL4vcp17JPJ95w8ZdNtbdgwVz3OI19nd0mr
         nowQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759240637; x=1759845437;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lVfHh0PGJNCeCUt53q0MGqTcrE5zWwJY78oS+k48p74=;
        b=n/XiD7n2fVz2dbQwNXBq5dfOdM9aa3GK9IA+2I9kOjVmlHv3v8lbXvfJ7QsEBd+I94
         cCNv97+6oMXA6YDqVmlEleSd2a61y5ElkvJUv1exgzaobIG+Zhgw3JW8Tj42en9KL+Pg
         GdUXMIidjCBIIOqn+ZlQXqCmNcgBhLvL3mpLxMzvMoWcdXN1Y+cgnH0GR7Bthzi6QK9x
         Tp01pjtABV+OI+WlYpHIBxyLUfpKH6cWVlKNqqV5GmpZrqaZvqBSkHYxM3SJc/uGyszc
         phlq6eIpjAj2eaWumN/+MDpE7vzaHFbplQn7foo/40X1owPxGQTYmRVyMuRxjT0NUg6I
         EfyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIlLBNxRg8Z4VwZZ56ANQyw0E2Eq/h2MJeoyo9aeVKLi0CyoqQYoaAPl5cfyqSguA8QU42x0ZOdDjB@vger.kernel.org
X-Gm-Message-State: AOJu0YyD0m67ETc+WZWXn7f7gqkdFKDqY25sNvoXei6qRIsc9j7Lhu2Y
	bdw1VX4M0AI9xCU2g2RJ87IjPtx+t0wwJzHFQTstW+JsEMHzxvQ2PfbxsMrmx3CbyKNnPYOB+9X
	wkZPAGLM=
X-Gm-Gg: ASbGncuilxKUmghun7uCM+mXuMFDGKRFMQ+TS7/Fo37YHsB56sYDY59GKtpYibWni9+
	JFOaM3nNZwJv0iZnVqerWP7HY8DKnkoCMocTXVpJbWqUPcpSzbGKobcjNGD5+n2rBpjP2GQlMt4
	41DZNbEDbmhvKyVqPxMTuMyEXsLv1jrU2dE6RI3YU8n46RJbxKczvfD/uFTJYoYTAolIAtVR3uh
	VSgVpSTsw+L/A35p4qxWvWyIx94BUdGfjXj6Bfdpp2vAZ+6zvMUWU1c0zHFfAC+h5/2buPOpwjl
	Xzr0bYcuMkVDWO3ZYYWg+nbyDVTjrb57ieiFyt4Bwyl3VURbWm+QNZKuTjOWF3t19FOviMTh62Z
	9bvZG1n8kNXdSRMD9CRbvAYeBhLulDOY2PQP+DMbByjZ8pG9DtyeiDvJjtLQdxKqCtz13E0QCLq
	qfXqz6DSZ1EPS/vh8E9g==
X-Google-Smtp-Source: AGHT+IGYpOyuHrV3NMYdDmii+YAGqD9Cnpv6UIS+kz/yGdm4TlrhmHWe/hPo+Kke8kFGDiqYhnt+MA==
X-Received: by 2002:a17:906:dc95:b0:b40:33ec:51ea with SMTP id a640c23a62f3a-b4033ec5d68mr618735366b.6.1759240636824;
        Tue, 30 Sep 2025 06:57:16 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3fb818fb90sm370234866b.63.2025.09.30.06.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 06:57:16 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 30 Sep 2025 15:57:01 +0200
Subject: [PATCH 1/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Add supplies
 to simple-fb node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-sc7280-dts-misc-v1-1-5a45923ef705@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759240635; l=966;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=tzYiBi1inoE6AQKDp3BZER5u/OgLXaF5Dw3TSJH/dpk=;
 b=yTOVqbRldO1E+tGjFjGAFseABV4r1qByu1pbbAcH2yqG34o3vjM4uLWD1TvE2y8YIsU+8DoO2
 G4hPBGFUKpRDRrmcoYfv2t1HJ3SL30mFEMGZegh79iZKLBCX4mG/+85
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the OLED power supplies to the simple-framebuffer node, so that
the regulators don't get turned off while the simple-fb is being used.

Fixes: c365a026155c ("arm64: dts: qcom: qcm6490-fairphone-fp5: Enable display")
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 519e458e1a890814e5135450c60e5c71c1b75a81..36d5750584831d66b4c2faf6042e4cbb3274eca7 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -47,6 +47,8 @@ framebuffer0: framebuffer@a000000 {
 			stride = <(1224 * 4)>;
 			format = "a8r8g8b8";
 			clocks = <&gcc GCC_DISP_HF_AXI_CLK>;
+			vci-supply = <&vreg_oled_vci>;
+			dvdd-supply = <&vreg_oled_dvdd>;
 		};
 	};
 

-- 
2.51.0


