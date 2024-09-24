Return-Path: <devicetree+bounces-104802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D96298430A
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 12:06:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AE1428642C
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 10:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10531714CC;
	Tue, 24 Sep 2024 10:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ckM7syxk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08161714B3
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 10:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727172377; cv=none; b=llOsYhp9PD39gYir96ynWKhytBcBIpKgmOTOwJavAfpcZOOiBsjrx3HxIaH0mKnUTisr+uPbXOItHCMYTTmIqpgFKbYzvTwnNCa2c7BJ11hs9QWPOMP+fiTItfO7NM3dLTlwX1H2P7Hi/LLOlk8PC0Iiub8XDhp7gBF3l/s4aZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727172377; c=relaxed/simple;
	bh=SiwGiCdJUbAuLFB/gYQTvtcmhWOxR5h1hahUn2zmMV4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qfwdqMDiPZ9WnrNCZ7ypkY/hgTBDeb0LmtltMtPNQD0bAxAu9H/6KP7QPG4qGeZ4pGkTAhNUjGHv5+9BmMEsi8nGXE7LZbx0RxZGwNd0Ns5T2m8gQ7mDWgnmaeV3AyoiIit2xjaQQrzUoMCqL4bgMce3v8mOHXhzHoSyoEdCZQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ckM7syxk; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53569e624a9so634747e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 03:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727172374; x=1727777174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujYP+y0EUNZwkIFccXKu9SFgyHvwe0ijLDIWxznuEVI=;
        b=ckM7syxkDRz+ZXuvXykkBvQLFAoeNpr90Q59YBFWg1Nsm5cR8Kk3QLhQwZyCou4K5u
         o6KRkEDU+GIRb0W27FLFCBDtRrsEaK1zB1jfss3fndw11Y2egyVBYvLXZHtW5+T6ELAf
         e9KLgbgbiXHnrrQZDdrDpnSw0pRr6/yXCsWhu1FNpk3zSXr5PVGYjwGKSGztCKdo3Ovz
         QdowF7sb0p79cVJ75/J47oPFAqC1n3MoG5a+dilB1Q+MpGwmHBvKAvq4hzdjSfhkIq7o
         CY8LEKPnwRPM8IGRv6REij6tsCp6ioZjJU8k5kiZtQBCJKgu6O/2oV4o8lF+B99KIm58
         twzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727172374; x=1727777174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ujYP+y0EUNZwkIFccXKu9SFgyHvwe0ijLDIWxznuEVI=;
        b=Yi/9NBNawWIcDK30OjsVNb0cDLwH0Jn20COvdNlAPw/si57eofa5cXzSh6mlK0IMtk
         HWBSLJEADJx9feQEbNTQkXjpa1B8c0y1etzuwkPhXB8CjoGesgZqfuYghspF6/SIitKG
         i00PMTkbqs7G8c47hp4FnhfPo0mRub3eVjsbViGjaMP1RMmrIjPDWnJSeNA48hHpwKIU
         Yw09Ekc4lN37DQQgs/ZlyV6SDivSrUgPFwnNgvHQ/rar8fgwXxfPbXAawokPmwCAWjIM
         ZDRiE2LKs261e55zNPQOXkbizHTKpthk+gG9AoAQQpa9AYrO3vnFUN4b66+GLgjHUBUA
         KVJg==
X-Forwarded-Encrypted: i=1; AJvYcCX9NwEX9ngdSBgsiANPCsz2/wB+h+DXaNLJCrNGsQgEfOUlWA1OmoUERcAIXNpaKUJF4GrOkCnDB740@vger.kernel.org
X-Gm-Message-State: AOJu0YywgbfEPx6h3ajQObZKDnpUssZm3ADQyzFQEcXjmHuFmhJhg/0s
	rBP5o7w/j9XdKrDC1eGcMST/mpQCcyhClgTTBX2QhdLuJeJkRmBIehbjHvZCWt0eBnlKJyIfjqa
	/xyI=
X-Google-Smtp-Source: AGHT+IFE70oHOCRgCRB0BrC5zLx0kjeRIq82/DMMTIJU/czuSWKKCPFvWmlZRCqua0wxzSNGfhXfvQ==
X-Received: by 2002:a05:6512:1317:b0:52c:ce28:82bf with SMTP id 2adb3069b0e04-536ac2f5117mr2126227e87.5.1727172373977;
        Tue, 24 Sep 2024 03:06:13 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a864d937sm156713e87.273.2024.09.24.03.06.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 03:06:13 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/9] arm64: dts: qcom: sm8350-hdk: remove a blank overwrite of dispcc node status
Date: Tue, 24 Sep 2024 13:05:54 +0300
Message-ID: <20240924100602.3813725-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240924100602.3813725-1-vladimir.zapolskiy@linaro.org>
References: <20240924100602.3813725-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to the description of dispcc device tree node from sm8350.dtsi
there is no need to set a status property value to enable the display clock
controller.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 895adce59e75..796cbb58ef6e 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -382,10 +382,6 @@ &cdsp {
 	firmware-name = "qcom/sm8350/cdsp.mbn";
 };
 
-&dispcc {
-	status = "okay";
-};
-
 &mdss_dsi0 {
 	vdda-supply = <&vreg_l6b_1p2>;
 	status = "okay";
-- 
2.45.2


