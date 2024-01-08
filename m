Return-Path: <devicetree+bounces-30235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E20827054
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 14:51:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00C731F232EA
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 13:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE3DE4595B;
	Mon,  8 Jan 2024 13:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="MdOVdgNC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB86246429
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 13:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a28cc85e6b5so193408866b.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jan 2024 05:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1704721814; x=1705326614; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N7LXM3KgfbgyguER3OfUGbhzrMJWhuXRU6uPC0haymU=;
        b=MdOVdgNCBMnZDVPiTA0fmGyibHCz6I7zC7igsHiAw8LZSYQuTCPduz6lWQ2Csx9G2G
         LMciZ2wfRMwop/K8klJ4yZZMRrQRsJRHR49WCGI5ajcUROYx9pGKQOJsKCVRZuMapAqL
         O80iZXdooDYJsga72TYmpSoUBTli1UVwCLtqDta6hxDYGDW6eh6bXXo27nBWrNcOwS1Q
         sstxOj04eLxnYCqtZ2qzTrHlbG7MZ4eu89JklhCBHbVHL7S1HBMQZ4qevJ30BMI+jIX4
         7bIb/ffNRXMeQKBkNNQGE/0VKwLVttCHdlINwQR8Wt8/0KSx5murK022GaT3InpBBs+/
         0OMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704721814; x=1705326614;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N7LXM3KgfbgyguER3OfUGbhzrMJWhuXRU6uPC0haymU=;
        b=Qw+ZrGh9HW15t3mewCijxuPIonVY5ByInNyubxpMuqblaQxSCK8pFVyrTkJsKoPruY
         sKbF0WW5ETZZvswChlFJaKp9EnneSbfE1bIyKqSv3TgT038YPPLvQh/XFIrNZkZ9rP4a
         +uyp+QWCFL8ZIWTL54JBpXvhO9gIOs40FlqG6taOJ/OLSINhg1YSrP5AJZvNSSdMsIdo
         6WP1cHL3GG1gbCw9nerB+Tk6WRIrUKW4LXxWbceCTeCVDgp2Thu2AeEZHa+SZQ5t9Val
         /bR15cvgD9KVQjEUz3OM5P8PVgNPz/ial20ZUetcZg3UQ1It6Zz78057zhePS3Lup6rQ
         K77g==
X-Gm-Message-State: AOJu0YwjuST0DHFRMBfIeu/VF+37VbGRGNxshuoDM9hMOyalCKXgx0Bb
	Qnu92DfcedvdgEdA3tCKBa3HHIHvuOjXAw==
X-Google-Smtp-Source: AGHT+IGM5+CmWIg9M/4CszE6SvRMtGuh7gRrlse6pdfdbou4+pHKIRI/SPkLVIYVE8jFlP9FC8RDHw==
X-Received: by 2002:a17:906:f587:b0:a28:aab8:c4e7 with SMTP id cm7-20020a170906f58700b00a28aab8c4e7mr1281438ejd.34.1704721813712;
        Mon, 08 Jan 2024 05:50:13 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id fx19-20020a170906b75300b00a2362c5e3dbsm3930173ejb.151.2024.01.08.05.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 05:50:12 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 08 Jan 2024 14:49:57 +0100
Subject: [PATCH RFT] arm64: dts: qcom: sm8350: Reenable crypto & cryptobam
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240108-sm8350-qce-v1-1-b7d586ff38af@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAIT9m2UC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDQwML3eJcC2NTA93C5FRds8SURBPLNEsDM1NzJaCGgqLUtMwKsGHRSkF
 uIUqxtbUA3+epsGEAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bhupesh Sharma <bhupesh.linux@gmail.com>, David Heidelberg <david@ixit.cz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

When num-channels and qcom,num-ees is not provided in devicetree, the
driver will try to read these values from the registers during probe but
this fails if the interconnect is not on and then crashes the system.

So we can provide these properties in devicetree (queried after patching
BAM driver to enable the necessary interconnect) so we can probe
cryptobam without reading registers and then also use the QCE as
expected.

Fixes: 4d29db204361 ("arm64: dts: qcom: sm8350: fix BAM DMA crash and reboot")
Fixes: f1040a7fe8f0 ("arm64: dts: qcom: sm8350: Add Crypto Engine support")
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Not tested myself, but David Heidelberg was so nice and ran it on a
SM8350 board in a test farm and it seems to be working as expected.

But still please test it on some other boards so make sure it actually
works as expected there also.
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index b46236235b7f..3cd75ab552c5 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1754,10 +1754,10 @@ cryptobam: dma-controller@1dc4000 {
 			#dma-cells = <1>;
 			qcom,ee = <0>;
 			qcom,controlled-remotely;
+			num-channels = <16>;
+			qcom,num-ees = <4>;
 			iommus = <&apps_smmu 0x594 0x0011>,
 				 <&apps_smmu 0x596 0x0011>;
-			/* FIXME: Probing BAM DMA causes some abort and system hang */
-			status = "fail";
 		};
 
 		crypto: crypto@1dfa000 {
@@ -1769,8 +1769,6 @@ crypto: crypto@1dfa000 {
 				 <&apps_smmu 0x596 0x0011>;
 			interconnects = <&aggre2_noc MASTER_CRYPTO 0 &mc_virt SLAVE_EBI1 0>;
 			interconnect-names = "memory";
-			/* FIXME: dependency BAM DMA is disabled */
-			status = "disabled";
 		};
 
 		ipa: ipa@1e40000 {

---
base-commit: 0dd3ee31125508cd67f7e7172247f05b7fd1753a
change-id: 20240108-sm8350-qce-6ada49f90657

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


