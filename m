Return-Path: <devicetree+bounces-144667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6A5A2ECE1
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 13:52:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 981981888809
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 12:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88303225384;
	Mon, 10 Feb 2025 12:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VFfVvc4Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F1522258C
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739191928; cv=none; b=BYZfKvwbDUNl4UsmXzmsAJplU3fS3STYlC7vNYNA84RGX0vXHQHIpRgfSmj34VG1nTwk3+xSx9DqaRJXkg240gDbhCffpAnsXwuyte8u2LpxjgVKARtWJkPIj+9q9xa2td/DJwKFao3+nnKjkqHN/GfgjtnheqWG+ioH69eiBs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739191928; c=relaxed/simple;
	bh=DOgwB2o78HqwOMGNZ/JwWJJka3ZJ5jZHlvRUFck92Rg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f3wrbBeUppdAy2e5+Jc25RoDXBR9N2QOfJ58F1+zi9BXbsyWGhZX0boAhiFqcWpXsVuGk4qp24Fkff6C/Xlz8b8tZioSN9MNoBKDDBukxnR1fUmCql6a4hvcVYAkhoCocKkffrLmPJnHNEP7XpVt6ZXSzmIuGW0dHGv6DjOaF34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VFfVvc4Q; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ab7d451f7c4so26147466b.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 04:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739191924; x=1739796724; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=frAoU9FSbapFrq+HpklqCcJQ3Ks77Q8uuZdWNADgS9o=;
        b=VFfVvc4QLCYP+vuqR3XidDRe+rupwrrB5NJkt3weXOFrSWsLPfF3C30zwNo7WPVdnY
         JxYJ1OZ4E9yFeZY/jpl+CJEB+hqleKBOfa5T7pI3/tjULkGNb1lau5nQS6AKFyjt6vs8
         rbddsjFWo3Cti3pRGgL/Pt0iocoLDnIhth9f213RfZrr6+QGh+CnndugOb9qZAU7XOXj
         PpuRpfuBH1U99NZIljgrIL3ll8xdMXCdwhX27enWc36fZa8qMdZPtPt5LDNT1FklRipz
         6+AeifHvkfC+zTEIst5w1W+9+v6Qlfj44h4KQLJHaioH8MuQjrW+cIrpXyTQlAigQQPK
         mSUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739191924; x=1739796724;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=frAoU9FSbapFrq+HpklqCcJQ3Ks77Q8uuZdWNADgS9o=;
        b=HXVMnqJRMN5t/jLXLRx6s/fPGWW1/838sct4irtotm6JFJzMhEZcWQ+yaI9LteNe5Y
         5X54O9n0/pxxegnPWJL+LQh1KcQR63GF0wh3ViAVmvGOMlqRt/YLI1GturxPo++cHcF8
         RG6jFWUunqXXNbQGyFHQ9HqC3czyom1H19i+MEKjHMTu8ExQE/qx5MzG6GaoFFTiFEfh
         qKDTro/QIBLtBQmUcFiu3Ni6Blcgy66NVdZpsge+F8mmWdxTfmOyr5aWx5Lb3TfNl7px
         pYbpeEi4YEz8CDZszkwPW7U1Qb+PXqJZV8pQfbJcMrNDGpRN0SB6j5IJaIQTT6u7wO3l
         ygAg==
X-Forwarded-Encrypted: i=1; AJvYcCWuNSSOcGeEPZ616YOCq317wkKne80WZBFeI976/3qBVPU09uArb06Mnouv3VYhdYP4tdHBXgBgRVHC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn86bGXvvyVmral1dV3R5uqOUiKb979D2cEtnXQzuBJaLhpVqh
	Hy017j0GgxfRRQgWnyWKDLnaCi+RjOa+Id2fg+YIol99lmo/dFIp8qu9uBdl26w=
X-Gm-Gg: ASbGncsI44V6/Z0339ImFmd16b33ZqOjbhYdYarylH575fblTTemwIL7vRAkqPyxbWN
	Kxr0lM5/nuydyyy7Xu82V1HiESchA04LjbqDIcTDhHfxEwnfPdOn8L9Qj/XoFRK21Kt7TKW27tV
	EC/qacCsKfxvGY8qA5rByU7f9sj0v2CS1qLqy8w2tf2vxahRNIOOByuug/+exjsIcksxSQtD7iA
	fDwwlYTQRsgKqrnzv5JzUCq5M8oC290tyNxYqf1GOzXr9U7DCI7vwsy07/O3Vz2U+3aZpHtTlka
	dTX2XTJ0UzsSjRp0GCFtgZEnWDuDbEU+3yt9D8fnjV6JZNA5WT5mgYilWYBHOC1qVxIUxdwMyIM
	=
X-Google-Smtp-Source: AGHT+IHlPw1KLXMN75TVclRX8S/qE4XVwnFHG0ZCFXVtVKAbnSQdsY2Nvm1erECM0CzNh8K85VHXjg==
X-Received: by 2002:a17:906:4fd6:b0:aab:d7ef:d44 with SMTP id a640c23a62f3a-ab789aecd06mr1234271566b.24.1739191924470;
        Mon, 10 Feb 2025 04:52:04 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7ceae3a3bsm85819266b.129.2025.02.10.04.52.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 04:52:04 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 10 Feb 2025 12:52:04 +0000
Subject: [PATCH v2 3/3] arm64: dts: exynos: gs101: add reboot-mode support
 (SYSIP_DAT0)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250210-gs101-renppt-dts-v2-3-fb33fda6fc4b@linaro.org>
References: <20250210-gs101-renppt-dts-v2-0-fb33fda6fc4b@linaro.org>
In-Reply-To: <20250210-gs101-renppt-dts-v2-0-fb33fda6fc4b@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

syscon-reboot-mode can be used to indicate the reboot mode for the
bootloader.

While not sufficient for all boot modes, the boot loader does use
SYSIP_DAT0 (PMU + 0x0810) to determine some of the actions it should
take. This change helps it deciding what to do in those cases.

For complete support, we'll also have to write the boot mode to an
NVMEM storage location, but we have no upstream driver for that yet.
Nevertheless, this patch is a step towards full support for the boot
mode.

Note1: Android also uses 'shutdown,thermal' and
shutdown,thermal,battery', but that can not be described in DT as ','
is used to denote vendor prefixes. I've left them out from here for
that reason.

Note2: downstream / bootloader recognizes one more mode: 'dm-verity
device corrupted' with value 0x50, but we can not describe that in DT
using a property name due to the space, so it's been left out from here
as well. This string appears to come from drivers/md/dm-verity-target.c
and should probably be changed there in a follow-up patch, so that it
can be used in reboot-mode nodes like this one here.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 86741994bb7c..d60e6a8e8723 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1411,6 +1411,19 @@ reboot: syscon-reboot {
 				mask = <0x2>; /* SWRESET_SYSTEM */
 				value = <0x2>; /* reset value */
 			};
+
+			reboot-mode {
+				compatible = "syscon-reboot-mode";
+				offset = <0x0810>; /* EXYNOS_PMU_SYSIP_DAT0 */
+				mode-bootloader = <0xfc>;
+				mode-charge = <0x0a>;
+				mode-fastboot = <0xfa>;
+				mode-reboot-ab-update = <0x52>;
+				mode-recovery = <0xff>;
+				mode-rescue = <0xf9>;
+				mode-shutdown-thermal = <0x51>;
+				mode-shutdown-thermal-battery = <0x51>;
+			};
 		};
 
 		pinctrl_gpio_alive: pinctrl@174d0000 {

-- 
2.48.1.502.g6dc24dfdaf-goog


