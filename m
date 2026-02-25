Return-Path: <devicetree+bounces-268425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEVjNGsTn2nWYwQAu9opvQ
	(envelope-from <devicetree+bounces-268425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:21:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3459A1997D5
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:21:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB20032175C2
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B8223DA7D5;
	Wed, 25 Feb 2026 15:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rCIlYHf/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A056E3D9052
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772032302; cv=none; b=RZTYX0IgebccyojSi/KCFisgpXAXrspr2sim9d7SYQ4f5+F0pUC9U8zdE5N3SsirjksftgQcBCCXKn5a3eXYBPceRHCmDwM6Ol8mnYuIsl9HSKb0g5PjuRZp9bwf+faqi5N31fn5LwOZChVRC/I9AIY7FWAR7rx06WV3drOrxPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772032302; c=relaxed/simple;
	bh=vxDWvv8mb+epglkH3Hn0cudwOLibzt6cGtozzyPrd5k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s5YIL1t9fiB5Z3+POiOpU3VQ6NdiJth46RTo2RjUr2OZDJPwTur3nhHi2eIjndEILHcNvf7GwdyMg3w5z9vqkn6rXFVcvjPfj4tZ8FM0+4nP/Jm/rtpGi1pi/94fUY/NT5U+pgdz403WOrvD5H8uHhma6xkEKTJ5QMObV4IVnMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rCIlYHf/; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48374014a77so71739875e9.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772032299; x=1772637099; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9s59gT/FGqvCmBf20Rfr3SRMt29VGd619pvEn9JbdW8=;
        b=rCIlYHf/MuJLoWaEYbV5yNZN7n3D7u+rj77U0xteEzTJj61GY5wLr7N7AcmVO6pMZS
         XlrxqrDLzdClWRWZAeOjEPVxRshtrinLadwmOTz/1nWAM9Y8C73ArEBIxdMEhAO3Cr6I
         5ZZ9dLR69MTrqQ4wI0ayWIgvJ2k4tA6y1TvdsyAf+S72T2oZTkPzM56Ridw5ceIJPNWr
         lmM5BDwJuN5QwpLC/ZdJaJW6U+8A7Jf62of8fuA237iu1wzL38jMnNzmvkH9lZy9Q/x9
         zH5RjdhQn+/woQSwegaB6pz8YoAAP9UeF4UlTAlxnRKmIgh82kXct5kIW4iRM/8lrn22
         42bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772032299; x=1772637099;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9s59gT/FGqvCmBf20Rfr3SRMt29VGd619pvEn9JbdW8=;
        b=MC1VIM6MBkrwtgqAwXBkbUajD1qADN3v/IWOPdPRsdRcCxXqGMiyuDfMIWgdlRHWuu
         aToXm6Od4SAy1eKYbU4RMsS3gJnt4syYB1vswEPGL3oa5negv4vvFo08wdPL51AH7hNr
         RCHHrkY9SDlaQaWEkMY2HseaN73iHzRB3YPZhQYWc9Hr8YM/mKXTh3RjjAqCHzaKEuos
         BFD5leE90OOwTJ0sDNDK9M1/nxy33ULrHKCjbWVxW4WygR/LMI0PF5BPQvja3W243dpw
         fblRuCnynYtwtySTim+cALs7Ycus0SY/4JDcAfv9XzkEjaAqCh8c+PliM9/HHkhGatQ5
         5bDw==
X-Forwarded-Encrypted: i=1; AJvYcCX5x/NY86j9l5CGD+FoevkcowqczJFTc7lBaFvQO8D1055cFiHM21VRhs2WZPJHl/8wJsc1MjiSC+Xo@vger.kernel.org
X-Gm-Message-State: AOJu0YwoO3G5Q8UyOsdm0minwxcpLbF0Xv3LJ+GAhUXkyU8+VhSZ5+T0
	S3AGdYrosFqNy1godrKbumOX8u2OsBlIKKAbOh84xwv3H5hGABxatF3WXikwO3ntdnk=
X-Gm-Gg: ATEYQzzBY0jrDFwxSUQmc2bKebCfN4iKnlG1Ylc2+7qfhvPKQbxNwKstGg44CDrNRcT
	VEh9JvxoyTt2nhOtRljff0m8xAUwTUepsH5rjkt8Jxjo35HBP3xrghIO7ownpXks1QBrKFkpmON
	qFmabgmH8/hrkC6V6wawdpcXWPP5+Bj95oXvLMcqr+fUzOX0mCMFwpk+3+PYLKWYh00RmXmeH2E
	dpcBWj0bG0K33ChYFogFsYESgJrO/7arWAex24F2a0qjriHgwsqdMYtsJ0GqalfC7y1j624qRzy
	GZCcVMhUEi109v76U+TfuZ3DrZUd5M2JfZqrUaiVzYTq/m9B7fXk1/89kpgv/3QxT3JU6sqZKWW
	hLvgz1LqhMw7FK0qlAJNt8m9AbfZTl3hXm6NUK2E0vcXnf1ghTOs+YTqmZ7xMGh+9tXn9kYg/hn
	lFEXiMbCvnBmhRuizBAC9pHGgF+3usNbjLe7ccV32AuDVV8gfyNTtDYbKAVocwKrLB
X-Received: by 2002:a05:600c:8287:b0:477:c478:46d7 with SMTP id 5b1f17b1804b1-483a95e205emr250031735e9.22.1772032299093;
        Wed, 25 Feb 2026 07:11:39 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfba9a5esm33950695e9.4.2026.02.25.07.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 07:11:38 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 25 Feb 2026 15:11:25 +0000
Subject: [PATCH v8 08/18] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-8-95517393bcb2@linaro.org>
References: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1765;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=vxDWvv8mb+epglkH3Hn0cudwOLibzt6cGtozzyPrd5k=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpnxEaEoIre19oxe1OvOCjKS5o2WaF8BvG6PeQe
 aENn4a3986JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaZ8RGgAKCRAicTuzoY3I
 Ot08EACIiJVmDfS7Z77Z/BcB4AiHRGmLOsl56C4TSvRZFG2UI0585PiSErQGcY5YaqN9ohoTcuh
 MMc2ll0mpv8cA4XjKiknzMyArY03vruff0HEhi2NtPE77SKjPZaXAG43sFVvXHBn1vFlNa+0OSc
 97sOsB5yGfx2u4fAqMkWuiclKLnifaC9ei/TRzWMyLxJ9/Gxg9KKPGQU9a7zdDs8Le83t5DoKsw
 lU3KiUtuekm0uEk0IJKIwFFrrWjszbpnQ6f1q1pZDldv+6udIbBS4wvfnSHZ+YdfnX/c6BdaocY
 rfhVKA9cIMAylGGDuwfOPnJucUZbkUAR9fmXI2stKrue5e3mdmGRx/YDQu7thXRP5somoNo6MQb
 H+Y7MfN7BvC/UOHmA2AQTZ/frhfFGkQrqmMI58ql/YSSdfoYV5lAMwW5ZiLWilTkXbHDnAaGotm
 dT9s1T9l9X5Xmjv9jX0bJMOOK5vc1WRyIIZEmiTM3IXyDlewM73E/NADV3iVpeAtTkxPldy/IdT
 bvLk+ThDvukHQcTp26hw/3fCdiMcsLr0pqxHJJ4Y5qC9IWrudCCrXGzqOeZ2cKw9Hb1mlv9MGHn
 rdyx+W4gPNeLdLOBgZr/5vhScMjnJLYsB8jjBhDOtcXVtT15az4NlE9JA+9DHiyiW8a8dZYPIZr
 cXegTQh5fGISTjw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268425-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,gmail.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,ade0000:email,ae00000:email,aaf0000:email,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 3459A1997D5
X-Rspamd-Action: no action

Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
of previous CAMCC blocks with the exception of having two required
power-domains not just one.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index db65c392e6189..f96411f481305 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
 #include <dt-bindings/clock/qcom,sm8450-videocc.h>
+#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
@@ -5464,6 +5465,23 @@ videocc: clock-controller@aaf0000 {
 			#power-domain-cells = <1>;
 		};
 
+
+		camcc: clock-controller@ade0000 {
+			compatible = "qcom,x1e80100-camcc";
+			reg = <0 0x0ade0000 0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: display-subsystem@ae00000 {
 			compatible = "qcom,x1e80100-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;

-- 
2.52.0


