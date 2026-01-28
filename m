Return-Path: <devicetree+bounces-260389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNHqJf0Aemnq1QEAu9opvQ
	(envelope-from <devicetree+bounces-260389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:28:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0003FA13D3
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:28:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 352EA30305F5
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2660234FF4B;
	Wed, 28 Jan 2026 12:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="uvxQFD7G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7586434EF1F
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769603221; cv=none; b=ukU16OXHzoFE/y0mOYBAxDiFYKpYvPsCiE+IFtEuI6cpv+kNstxw3qLj6kYAEhBZ7Bk0BzJ3W+Laq+1KFB1AMl9FnZPblRPvc+pJkrZmJSqSvKPs+ncw3qEUGU1WClTF+wVcLCZecEM57PTE25W4NRYHcNTYrfY5k3IgBaqpBD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769603221; c=relaxed/simple;
	bh=DAIXJZLgc99QDCiZ1C54DNaCXxm8xbhdrA2aDX9YeRs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FY17awzAqOA8gmj/8UelzMuZGGR77qRJ5G2JBiZ9qCfFuJs1iTEkLX94tNGAEYCzXFr9TYsDIL5Q0xfXaJKyde7Eh+tKyqJw9OMhNTT4a6+Hj4xNkaMLaNukaMuZ+ZCyiESZnmR0pbo6RU/bM/k+i9YgAlFuDFoyi4gbtL/NNaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=uvxQFD7G; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b883787268fso1058783466b.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1769603216; x=1770208016; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1J4Wgi9FdaGcRkgWW/fDa8if5n5CEMCZLtNv7Iii2Go=;
        b=uvxQFD7GYMxwquNMYkebdeSxCcYu27gMk+DnT/EhaanRubF1qYTscu2fNq1ZHHpYDX
         kZhUiFPCEvsz/Ysavx3bx1dCyhm9c/Eaa1YsHlW4KC+vaVmhxRe70cH55DuKkUfjkVhc
         2CfAuHfvkKnmsBawZc8Qhb1D3OmnnpJGfL7xD2ahHzMxv3/bxQ6BsoqC8r6n5mwm/Azo
         68C1AZmZiOYrcoEPZZErlOglpyyf4NBYmx7qQjEYranIgzjjWmbERx29aeByU6YRgPSx
         quGdMX6J9RbGAtvMtuXERw0t42VZQFKbrDzoe4/P4WqGCrbexuAnkgXlFNkXaLmT7YVv
         xW8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769603216; x=1770208016;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1J4Wgi9FdaGcRkgWW/fDa8if5n5CEMCZLtNv7Iii2Go=;
        b=WiRq8/ZFFFYUWGVhWsswLUnA18CFkc4fBQ+7BI0zLxMGHYj15WCXT+jRNLaQOIqGU+
         Wv+G6hR4AzopCt+gTz6ChSIaxN2Bk/C+ANyGDENcJnYxNBzVH5AXcx5ybXEXabWqDgig
         ug71Ob9IKH9gik5+OMjKtrxVv/xWPl5qMnlSoahlejPG5vWIqgemMpXHP9HRgvtJmKe/
         UP7xG/Dq+fzQ0D00JM3GruzAGHGYrSArUHOX/nbcYVBpVgpOjJxpcx1o5YQ8Y8iUvUqh
         GoL38ig5lsLIOa/H8rT1zeRm0taYHdJCfQdm6Za00zKZkcY6o1IC8/J/s/6dEeeZaJHq
         sagw==
X-Forwarded-Encrypted: i=1; AJvYcCXY5y15hCCrDGVVw/PqfB05Dk666vt8oRi+qwBovItOTQmWnskh6EeoNK6M/GCsOyQNCl/Rs5+igyYn@vger.kernel.org
X-Gm-Message-State: AOJu0YxwSS0b1T3vbaEZeub8fomHgxhHAqfeI4zn/3hAqJJjFDfgKmgv
	rh8eoBYkJCLH/owu0MNe445bJ2OFNsYpdiV/nwloYV90RIayPPtrZMHUHhypd9LKezs=
X-Gm-Gg: AZuq6aL1tuZ9dhBuW68D2+KoLnk2O8EBnQ+OAGkcRrunnvzP5Wfwa7WFAa0u2dPoaZX
	F5kKct9UQcpT36/FfpHMoHQ7pb9/TOudencaGHrUGbA/aosQz/ab60tPA0QJg5GnAUhPNiPQlz2
	Z1aRrVu1ARGjHrSSLrp/vTQAmjJ7djSOdg1j206B0YT769PJCCl/p2/Xg6TeIz8mwq0yT5e/bfp
	tfnEBbBBaEItyCngPuGtf+MiIhr+bi7HMeYdGW0WQ5flv2XLc1KK/pIt41Zz3tvX0kVfIsQ5EhJ
	sMKJ8032lk9tuJhU3vfUFPrBpzqJ3szcL+RbfllW4EhjvOuqkWyZ3TpXU+blJl+wNVuz9hKZmTP
	qIus8Qy0KQdypbT5JuWkWFf0idCqs1/3FJLSuA3a2Ukyi3LnoSk4jdAHXSYuxH/eTYCfPuGUiW7
	JuAi8uwYuCDQ1iZpnxw6J3nOpFoqtdPKl8STgUqMY4SnLhhyF8F9qqV9NsEzJ2iUcVxg==
X-Received: by 2002:a17:906:d54a:b0:b88:7431:3942 with SMTP id a640c23a62f3a-b8dab331b78mr418073866b.33.1769603216171;
        Wed, 28 Jan 2026 04:26:56 -0800 (PST)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm119536866b.46.2026.01.28.04.26.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 04:26:55 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 28 Jan 2026 13:26:52 +0100
Subject: [PATCH 4/5] arm64: dts: qcom: sm6350: add LPASS LPI pin controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-sm6350-lpi-tlmm-v1-4-36583f2a2a2a@fairphone.com>
References: <20260128-sm6350-lpi-tlmm-v1-0-36583f2a2a2a@fairphone.com>
In-Reply-To: <20260128-sm6350-lpi-tlmm-v1-0-36583f2a2a2a@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769603212; l=2150;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=DAIXJZLgc99QDCiZ1C54DNaCXxm8xbhdrA2aDX9YeRs=;
 b=D91UBY5cJfLVMutL2lsGmg1v4mvGKWsRzbXpEV4eu/U4K9lh0e5fm7C+ouiiz0kgmE3NtTPM0
 6L9OFAXNAvxDq12KGz1dCTCCPaJ3gME7iJyvbMthwVmtBDUV92lcK72
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-260389-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[33c0000:email,fairphone.com:email,fairphone.com:dkim,fairphone.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,3d00000:email,0.0.0.5:email]
X-Rspamd-Queue-Id: 0003FA13D3
X-Rspamd-Action: no action

Add LPASS LPI pinctrl node required for audio functionality on SM6350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 66 ++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 9f9b9f9af0da..b1fb6c812da7 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1448,6 +1448,72 @@ compute-cb@5 {
 			};
 		};
 
+		lpass_tlmm: pinctrl@33c0000 {
+			compatible = "qcom,sm6350-lpass-lpi-pinctrl";
+			reg = <0x0 0x033c0000 0x0 0x20000>,
+			      <0x0 0x03550000 0x0 0x10000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 15>;
+
+			clocks = <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "core",
+				      "audio";
+
+			i2s1_active: i2s1-active-state {
+				clk-pins {
+					pins = "gpio6";
+					function = "i2s1_clk";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+
+				ws-pins {
+					pins = "gpio7";
+					function = "i2s1_ws";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+
+				data-pins {
+					pins = "gpio8", "gpio9";
+					function = "i2s1_data";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+			};
+
+			i2s1_sleep: i2s1-sleep-state {
+				clk-pins {
+					pins = "gpio6";
+					function = "i2s1_clk";
+					drive-strength = <2>;
+					bias-pull-down;
+					input-enable;
+				};
+
+				ws-pins {
+					pins = "gpio7";
+					function = "i2s1_ws";
+					drive-strength = <2>;
+					bias-pull-down;
+					input-enable;
+				};
+
+				data-pins {
+					pins = "gpio8", "gpio9";
+					function = "i2s1_data";
+					drive-strength = <2>;
+					bias-pull-down;
+					input-enable;
+				};
+			};
+		};
+
 		gpu: gpu@3d00000 {
 			compatible = "qcom,adreno-619.0", "qcom,adreno";
 			reg = <0x0 0x03d00000 0x0 0x40000>,

-- 
2.52.0


