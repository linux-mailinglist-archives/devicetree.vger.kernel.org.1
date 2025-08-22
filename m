Return-Path: <devicetree+bounces-207976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 84711B3140D
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:49:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 895A81D22C61
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB2EE2F49E4;
	Fri, 22 Aug 2025 09:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cfi/8yHy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99412EFD81
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855575; cv=none; b=uzvwaXbVqkVRBpPULj4PlHzpuC59518y1CsjkKZjIGFCL9Ula4UR8U12QdG4jNKXMLV9ccrj2Ude6/6hMMLtq39WYM78OIpvmvlzXKiP+4zheHL3UjsrBpY128Mb2TX6rquFeP+bSGKvqRcqOVaLE+OY0wbdLt5TV9oI8Iq6AWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855575; c=relaxed/simple;
	bh=DbsExdoRyp3kdjCk0epdoDIR0B1+3ES9cdqkRoNTHi8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tR814QZBJeY/UN91+1p6mIZv9t/6R6mcLPWyUgiG95VSQAnGX2KvttLQF6CFv0OnHo7fkYSOH+QOp0fP4fGcx193IR72HGVzvUZs9v8vPebiwHh8xYkVdZ5T0xVfLMgFh6okhMF6i7gduZbQZ88ViMjj6Ywa2inzik1bq3cWyaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cfi/8yHy; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3c380aa1ad0so1027122f8f.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855568; x=1756460368; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5otisq1c/9/dwhaTo3HsCPZ/30o0nEKHZQeBlO8KVEI=;
        b=Cfi/8yHyOfdgtC7uL7tSYtCSfzOdrvhB2s9RzVqRjlEPuyGU1JsZoh3a+wGyOGy9mm
         S84BcYdC9oP2xrotKi+YILCYjbZ8+UblbpOZ8kBmwbHIB6ScGoVg01Ov6eEB1kTv6QV2
         St/uW84y5biil3YE/CxhEVSWl4nk7WJwCXIROCR/G+jHOwmWQzPdOSrhF93M2bNT0aFw
         o4Nv5QnCmYkiWrw3Z8HpPyDWdjEIV1OOCrEe0B5mjXRvxU+FLKG5vG/YEji3pNeQeWDw
         vmnUYO7lpAsdMvfJT6opA+aDXtyiXa49oN2Y0N7pTnBa98ykhZlVSRgjJ2EOkwT52mm9
         fUDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855568; x=1756460368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5otisq1c/9/dwhaTo3HsCPZ/30o0nEKHZQeBlO8KVEI=;
        b=v12qQ4UdFl51vuE7ejGyhdLAMXDxlRwjM//ztpQzLZovf73j34AUK+eG+HEnZ2mkrV
         LC8hcHhv7NJYampFcliuI6H75ezOnvBF+LipmfSAf/iLDB8qeaw4jDBRJLBIkizyiZll
         cqloEit6TmSEMZAkNcWImjFQnU96rPFv6BcJGir3iUslC7AAWJQPuDyNJ0DJr1wF4hYG
         KTl7gEsqPFAtiugA8+E1s1cGnbgEzqIridb1euhOYKopxkK9NCEdQQouwJVVxFFsCvqW
         w0UuivoKR6nJZ/gAuxQhrzdJYbVtBVLVTw8Sikx5ztmnwzzYbSKId6XM8BaeCoZxZuzf
         2kow==
X-Forwarded-Encrypted: i=1; AJvYcCXY5DWlV1+DoJ+/t3qsRltHCm8/yAHwuupLkhPjef7gN5tXjFHY00+joEg0584EnCL0lh3sVHUreV1v@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2pusi16HvmjIdq+FE5F7c7BGAU1GLt8EkYjzmLn7oBOEYFJqq
	nLlbR/3swq556GVOsNqvSB29uPT2yH0sOVJEG8WkY38tOFIvOEDnBlT8sNyESzQUtKU=
X-Gm-Gg: ASbGncveFOlJ0Tmr0yX7EBiIY8mv3PgCDrtyY8rb2O07QAIcvmbgwh1oyYZyL0ywm+O
	aX0gUHkjpfQNRBBe2D9VuqRGX7RiZKd8q9RcIoTTUnfEF3JKi/XQDX43c2gA4Q38IA90FQVFenc
	6BKn4mV6RsgkawEbgRlO6D36+2TkuKPPwkLaZspQRNyF6sQ3Pok/I1cxDwy7cJagcPNIwHzpltl
	pds/YfZuYqKADEOIV/8SS47qANdmElRx9v9ZnmVxVGosWakpRZYwzpXZ57xJC/g9F7vpARboXb5
	jrpUZC6hXh8/jZm5J0dFdCS0jScatZbTrilc4U9JW2TOJ2MKwzWdLTQMQdvW5BPfnCAPx8o7SCF
	LRN/iKov3LfrE2RlehCt1KrkyMpIx1vfR6dAKmoXNPwk=
X-Google-Smtp-Source: AGHT+IGoSafaMShGAhyL0uPmSQ5Go+OMOZAWfey8bujTBly9Sd9IfalZviwj6/bmexg0ZbQqD5Zmuw==
X-Received: by 2002:a05:6000:24c9:b0:3a4:eef5:dece with SMTP id ffacd0b85a97d-3c5dc733e04mr1776437f8f.35.1755855568329;
        Fri, 22 Aug 2025 02:39:28 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c684524163sm609890f8f.61.2025.08.22.02.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:39:28 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:39:22 +0200
Subject: [PATCH v2 10/16] arm64: dts: qcom: x1e80100-dell-xps13-9345: Set
 up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v2-10-4b21372b1901@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1070;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=DbsExdoRyp3kdjCk0epdoDIR0B1+3ES9cdqkRoNTHi8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDrFUpiExxFun+gPYtavnvc68tqffKglmf6QDK+3
 J2EMioqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg6xQAKCRB33NvayMhJ0SoWEA
 DMD07+exlTYQzOOqpgxM02WzNd3YceTj+CorC/WBpy6n4rgAuCmiU2dfOH/rpmdZ57wR8kNDNzfpQd
 why9QAxQvCVYJZ9gemYW7tCCHJVSbr2onTaC5C5ouEgVOBFmYJG1wcPSQ+igY3C7Y1hSPmBGHiZGBv
 y15FEWSrTUOzcsaVcPdHW3J3lanVWOjci1vzE/4XAUhZpswEUMXSYixVE/v2q3r4z1NKPN6ttSqPyI
 H3jHemRDTG/usMCXbt8Gu/F+HTeEO/WAfEBaa2frXH45UzFKM0Ip1JV/o1Rqp7L5P0h1mJO3kAGyLE
 bjNXzbhwD8vdjAvxUObyIfSrTKeFjJ6XtyoPeiNHEVq25xGfg8BbNJNQfYDdIkuycpUjvEgbrY/YIN
 S/G1MqB6o4l6muPQFVbySUWpr4LOTUeM/o6oq5e8Ft8rxiZNQTyNP4OVkWyq86hJY6pHhb5c3ZbAgK
 EvqzaIurd2MOHLpGmraXO3Ekl/ZPqG87KXLTmW7VeBEkydS64QZDsnuN57cTlnLMvPqIaW0UFXFMKt
 toZn5geBxR4eJnw4xpYVH4IaUtDJrP/zKIvFWO9Qv+Om3AqfRJmja1NtKVnajMCZsvYiGvud1NvhSE
 UCb3boNBJYFFZHqcFWytlXYMy7ZrUrhj7sba4i53MgETUuC64yxx6udVuxqA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
index 6b27067f0be66b5c41fa681ff3b4f535100bdf59..293e557ee07e0e622984d6f869a5f79a5766ed18 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
@@ -884,7 +884,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
@@ -893,7 +893,7 @@ &mdss_dp1 {
 };
 
 &mdss_dp1_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 

-- 
2.34.1


