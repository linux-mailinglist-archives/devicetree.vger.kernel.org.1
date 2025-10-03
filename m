Return-Path: <devicetree+bounces-223532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3998CBB6AED
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 14:52:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C440919C5991
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 12:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0F7C2F069E;
	Fri,  3 Oct 2025 12:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cDi6NY86"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F094C194A59
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 12:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759495869; cv=none; b=sfOkDtHpZXcnU3fMiSpnCV2ipiYlMvQZBnrmwV3fgumLRuLj7mRZ+JWX9Ke6JUd4PoGoaNRF0T3/LPDE5BnxasYJD8nb5FHjK0/JJC8VnBu3g5meAKeULFXWokYSxAg8VjpFnv6uaCxodchPsmRqHaGncWIn4Cx+VuhCWPCHDo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759495869; c=relaxed/simple;
	bh=kb2Jkd9IV6OKkT6ZLkEZyrn/OKU6iANd/7ecLkFvmkY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LAuiIMFZa7/+ZhEIPCAylEc6X+1T6wj3iF4yUqns7lyLs5kpzDTPYYUX6Ray7Tn0ZccyA+yPQk3jjgFmlj0b4hzpE/ysFbKZHAICfdKzVd2m20E6nD62Xo3aj5STWlUz+etbyfDd2VT18DWfsqsdm/6BEboio61K9mDuad0322E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cDi6NY86; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e384dfde0so24027895e9.2
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 05:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759495865; x=1760100665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lYgyMG07VqTYH5jn/t5TCThG/fj6xAJlnS1AF75htXQ=;
        b=cDi6NY86ZEzs43rvervQARRr0ciF9Vu2a393/6zQs8dowW5b2x3UG6VKhDyzxC8XBC
         JBIzCpjqeLifkUnTWyz0V51aupKH+jxJkq+Mgu12i1icY88Nj+dxzaaVGOhoD2p3Jz0S
         i/YLhyC2y+2V7wSK6ofiEyKZ6QJi4K6wVUTcrfhyIsKOn+goo3S/aZPPbR7lnnp2xtLU
         SBfoWRtu0gM3CrQkSP1PoprqWQ/VqqBHloBcy2E1jg4DEDrYE5H875ImsuHZmxPhFLns
         IeP/0O5ZgyA5TDF0oe61q6llIK48KHwqtD45azK1uxGEyCRCvo9NJ2zWh7mK9gvSwwmN
         b9DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759495865; x=1760100665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lYgyMG07VqTYH5jn/t5TCThG/fj6xAJlnS1AF75htXQ=;
        b=K715aYj6dj5LPHnOFFAz3elsUOJxu3HG7r0JhAGNxoznKP1Ga8iBBLSwHZhP80ISA4
         MnQIQQTpHrHGlpCmOPTRx6Pri5DFEsMpEXY0a7owmDG2VuGBr2irgTafT9wE/DfjJfgO
         pLnrRtpCnA0JLWQA0tp1OtoQaFZo315pVFfwn8geLPd4YHytaXeAyOiVBc00Lb+OAv6k
         bRaVbG/mPbl5tWahDqPPrZ/Ai65iHj+CZADTk5UFS0iLbtm75hxyUPX/cKb9iTeOE/nu
         OUI6ODCG9suE5LUXlNsBkKn/SI1cXDgEF6a+pjOKH8UevlLjRIkxb1DjaZTJvzsKsCbl
         j9TA==
X-Gm-Message-State: AOJu0YwZigUj9njzTDPKv0ttgDKo4bH41F2l6Gdld9ApVPl6Xd8t21m2
	kTMlk9Jfs4xBsKSbX2+m8wwGXDb6yNuxWO4f50M9bxTI14IyFVzrS3d8uCMKIOpt
X-Gm-Gg: ASbGncsLmNpPgOstAhaR6X3GQ3sKADuRIsnAZikr+WvrfcKgQT62SGS0I3iIKX8akkM
	EbGAbbxxU+spwS0wUgHO1Qf2jI7sOOa3meMdEe2PTKSN7LMHq5DMuhUK9M2sXifrPHToKycNBPi
	oGVHHj43Zjub4VJEgGETKsFeqMFzDgg2++oUjc7oiTZU3gABP/WEiyLq2ZTMRANoOe6bJgwkz+a
	XEvkp1TO9pjZLt883wlmf3wVbwPV0ocol1iJ9cGvU9qniVMFnjU1mGo0NQmFmTLt/0Izcg+brZN
	pOApNZkxOpdqGKpwfStSi2xbjjagVzhzO1psoruH+RYFQd4T+VM98J7oqD+XnME5xydYXopnYug
	BCTBkl5z//qKOWsWcrHHVysPCNYuC5Ks5UVfdPTHOcN+i4s/wq0MLa+8xSXN+me30y7cIbg==
X-Google-Smtp-Source: AGHT+IG4L2xBls0a2hrXeyuJrwzw+WfFt28AIUJ+Fp9Tp8p1FnhMDnBRj+XtHMpNn4kg611dyop0Sg==
X-Received: by 2002:a05:600c:3b08:b0:465:a51d:d4 with SMTP id 5b1f17b1804b1-46e71101a79mr23090835e9.6.1759495864829;
        Fri, 03 Oct 2025 05:51:04 -0700 (PDT)
Received: from localhost.localdomain ([37.159.33.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5c40983asm80598605e9.3.2025.10.03.05.51.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 05:51:04 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.radaelli21@gmail.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 3/3] arm64: dts: ti: var-som-am62p: Add support for ADS7846 touchscreen
Date: Fri,  3 Oct 2025 14:50:29 +0200
Message-ID: <20251003125031.30539-4-stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251003125031.30539-1-stefano.radaelli21@gmail.com>
References: <20251003125031.30539-1-stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VAR-SOM-AM62P integrates an ADS7846 resistive touchscreen controller.
The controller is physically located on the SOM, and its signals are
routed to the SOM pins, allowing carrier boards to make use of it.

This patch adds the ADS7846 node under the appropriate SPI controller.

Signed-off-by: Stefano Radaelli <stefano.radaelli21@gmail.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi b/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
index aba72d0b767c..fc5a3942cde0 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
@@ -322,6 +322,30 @@ &main_spi0 {
 	pinctrl-0 = <&pinctrl_spi0>;
 	ti,pindir-d0-out-d1-in;
 	status = "okay";
+
+	/* Resistive touch controller */
+	ads7846: touchscreen@0 {
+		compatible = "ti,ads7846";
+		reg = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_restouch>;
+		interrupt-parent = <&main_gpio0>;
+		interrupts = <48 IRQ_TYPE_EDGE_FALLING>;
+		spi-max-frequency = <1500000>;
+		pendown-gpio = <&main_gpio0 48 GPIO_ACTIVE_LOW>;
+		ti,x-min = /bits/ 16 <125>;
+		ti,x-max = /bits/ 16 <4008>;
+		ti,y-min = /bits/ 16 <282>;
+		ti,y-max = /bits/ 16 <3864>;
+		ti,x-plate-ohms = /bits/ 16 <180>;
+		ti,pressure-max = /bits/ 16 <255>;
+		ti,debounce-max = /bits/ 16 <10>;
+		ti,debounce-tol = /bits/ 16 <3>;
+		ti,debounce-rep = /bits/ 16 <1>;
+		ti,settle-delay-usec = /bits/ 16 <150>;
+		ti,keep-vref-on;
+		wakeup-source;
+	};
 };
 
 &main_uart5 {
-- 
2.47.3


