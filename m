Return-Path: <devicetree+bounces-82660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEA6925455
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 09:03:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93309281B2A
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 07:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8610A136678;
	Wed,  3 Jul 2024 07:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="FL3jI5fr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15D1135A6F
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 07:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719990186; cv=none; b=eXNOsciuT+IfmJT+v6PbsLYIetvWk717OhqslK4fy582jpg4BZReuvcGMQyz3Z97/lJd9us48eSegg4fCt+L4QtDXlQ8cp2tlacKax1AnF4q6UMPwbdbVVgLG26aGmi1VmgQbZWEdSzE+OcCe72wedqWMKxQCO08apCOy/P/zU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719990186; c=relaxed/simple;
	bh=GVh9ip8KLt/d5bm9NvCHREuBNl0zWxx0EuSWB7jNjYE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=kRLJPuLhVKQrOJ075Qwzn+HRNUAcEy9pOmJbZfvHAIG4sv/iPL6OVmQ8sCuoGWkZibYhXOqVi9WamUfc9d/5GSeYSIfrqIS8rJBJfXCxXqrg0i4NbRkcTP1S+VIcPt8VzdMVglRqgn3DGby0NmPxGJ8CiPLdC3IAGeZJBrlVjFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=FL3jI5fr; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-58b0beaf703so2591171a12.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 00:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1719990183; x=1720594983; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4KltvjFIOjRkVsHHBPCEopzINmvw8FbzGa8sdMwIII0=;
        b=FL3jI5frQK0dQtBYwpSkZb2gNNyMQKnQTDp/lCn3J4t7GFvdipvYZ45cI10gzOCFrl
         QaYXfo1PrU8Rx98I4OHDCBpLZmvwADwGll7ejpqzIO38OdlRCdCoGzCsYc796SHVeio5
         alzEJmTCA3Zg/p8bcJpUTAnDkUj3q6vQ/R+xj1Z/W9Vr0UOzHJofEKmO96YXB+fLo5nz
         va92iofsCoZFNkrIQJkgtDiCuhT6jLaBvMWvcIaS74jfHaDd+ahvfjdktGQ6B4iy8XUz
         Y7qTlodG9cemCfdwD5PPz0D5+XP+PVlIIcNNvH61iasm6MLy/tjtMvsUxUE1e22CTFj0
         D/TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719990183; x=1720594983;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4KltvjFIOjRkVsHHBPCEopzINmvw8FbzGa8sdMwIII0=;
        b=Ft0YPGdZ6X3xDyOOBTsmMsW/v/3tDR/QP74Z6QUIxaPNE/QpNpxqVFDlUd88rugL5O
         3WkHFY7RzWMDdrbQ3HcaR1+YLNfY09RAqvTfTwHLI//dOWyEJag9QD8W3EDk5UnYDHwX
         0ULYykFYyuXNVQk+ZqMivGjs5EYPn9s+6BpwPHQzaCD3rE+7irLjjTZE2fdEkNSvEoba
         vsjOb/9ncMBMepcZCYTRBx0xDRJmKKsCnCZVZs3wkUppDanOEtMJDQ8s9NmD5Iz4D459
         DjzxK3uTCtcGZxE864NlkGKiaIWaAMGRcaxxA22AKwLgq4Iqb+pn0s+RYdLYn+32nVcT
         A95w==
X-Forwarded-Encrypted: i=1; AJvYcCUPC/vepST2sXiNOh4awr+QlNjSkWMNtADesLhJQuHfajsGbG3po5p44SqrgHpSQv0hYDPcUk1iZGLC+Jt8uyQ6eSikhCSW2oYiUg==
X-Gm-Message-State: AOJu0Yxw9aI/bJFVo7mTfxkm3s3S4XqEkyAZz+zjo3joWnlyvOYaKJsf
	IJfxpVRGJiWBgdcHDkMhTu/VsvlTTaJEnX+RX0a8Abas2yi9+1gih29U6LFeQ3N54WWeRo0rcPB
	F
X-Google-Smtp-Source: AGHT+IEczdSS9+0ua/RbDHMAReKBYuM9KK1ScxdSMObEBuC1UbPsZcOdIzp38grF3lmzROzoYzH3rg==
X-Received: by 2002:a05:6402:354c:b0:57c:9d54:67db with SMTP id 4fb4d7f45d1cf-5879f0cbdbfmr7264238a12.9.1719990182911;
        Wed, 03 Jul 2024 00:03:02 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-58d3ab39f06sm124764a12.5.2024.07.03.00.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 00:03:02 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 03 Jul 2024 09:03:01 +0200
Subject: [PATCH] arm64: dts: qcom: sm6350: Add missing
 qcom,non-secure-domain property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-sm6350-fastrpc-fix-v1-1-9f127de17175@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAKT3hGYC/x2MSQqAMAwAvyI5G4hVq/gV8aA21RxcaEQE6d8tH
 mdg5gXlIKzQZS8EvkXl2BMUeQbzOu4Lo7jEYMhU1FCJutmyJvSjXuGc0cuDjSVn2qpwNFlI4Rk
 46X/aDzF+Mk41qWQAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.0

By default the DSP domains are non secure, add the missing
qcom,non-secure-domain property to mark them as non-secure.

Fixes: efc33c969f23 ("arm64: dts: qcom: sm6350: Add ADSP nodes")
Fixes: 8eb5287e8a42 ("arm64: dts: qcom: sm6350: Add CDSP nodes")
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 46e122c4421c..8b9bff38e687 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1323,6 +1323,7 @@ fastrpc {
 					compatible = "qcom,fastrpc";
 					qcom,glink-channels = "fastrpcglink-apps-dsp";
 					label = "adsp";
+					qcom,non-secure-domain;
 					#address-cells = <1>;
 					#size-cells = <0>;
 
@@ -1582,6 +1583,7 @@ fastrpc {
 					compatible = "qcom,fastrpc";
 					qcom,glink-channels = "fastrpcglink-apps-dsp";
 					label = "cdsp";
+					qcom,non-secure-domain;
 					#address-cells = <1>;
 					#size-cells = <0>;
 

---
base-commit: 0b58e108042b0ed28a71cd7edf5175999955b233
change-id: 20240703-sm6350-fastrpc-fix-760d2841d0b6

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


