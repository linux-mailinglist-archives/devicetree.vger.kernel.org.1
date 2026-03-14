Return-Path: <devicetree+bounces-275607-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFItN+zJtGnLswAAu9opvQ
	(envelope-from <devicetree+bounces-275607-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3F328B698
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 96BD73048EF5
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E28287259;
	Sat, 14 Mar 2026 02:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hk7Jkciy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9186F282F0C
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773455850; cv=none; b=acjBlP/b/TOvq+oVhnjd7KimbwG2CJYV0pNozYftqjFJYfRv16mZWtY0w63H4ZUWOFB9bLhE+vvyWn7CG5950lCI9dxxu9O0+E9Fa74vzOcxbC52dbE75C/b4NZrZzQ8qs4BA/VDodxx5NiUqf74/CiK9Bxt/nGCbWMeo4P/hTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773455850; c=relaxed/simple;
	bh=Y22QSkFQcMcQrBAyz3XFwHnnW1vL1KkxGmj7bqUu0qE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RdWWL/FDlvO+eCkm6L3B+9iN52MkgyYrd0roI3YrZbXxwePkU/J0ShtbY7eI6Pn/mrqz1tmfgMa1cJeH0aPGa+y04l5B8UkG4IgIFsSXOYADqkKd/0cNVp1M944brIk+a315w3SQWky8DOkeAyCgm4WORwl+XbzzG9hys5hp5dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hk7Jkciy; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5a133f999bbso324713e87.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 19:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773455848; x=1774060648; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wsEY2UKfbHBkGCPHuGlE4GOEzyS3eytBT7AD2wfT4TI=;
        b=hk7JkciymfkDkN1oRZtIsZD9yq1o9VW8jzfrYU9vZNGgpGCO143KSiSD5FVDmVSUsr
         VSCPsWEAzzdElzPC+jJ1S5qcq2+vqn/Z8AteufvGRHriieDwCTH0hfz1fvipjNtD+QVF
         RbTvuU9WRD/ld/y8fSR/ea8buHnjpZbCth5H6f9dsrN1Kj8WJzfB/TwRja7Grjl0iOJ3
         HeLcJD41FHG6snCbkj/ZiI6c7iqWlrDmfSF00Dhx64WsRwewgmehYVt2RaPsIrSgsbds
         D+X7JtsNKDJNZZ8baWPVoDB960UoPsIwZCpu1pctD1EGFD/wySG0V3Sz+bdhZOvPFvzL
         9yDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773455848; x=1774060648;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wsEY2UKfbHBkGCPHuGlE4GOEzyS3eytBT7AD2wfT4TI=;
        b=g4BF8pqynJT4lQuWBV4mpbUAcw7N8mWbnNeF84pEDJA9yvCeY+pm7PxbeR5DanpRzP
         F+7KY+9U6mHEPbHs9GVU+QwHMQp+YzhnCOtxkM3TXPTm36Wfjs+DFUYCvf8yAMrM7tIF
         fNlUTDgVtDFRz07XDdOkAPToiFeWerkkZgdZDx7P1ODHfmQvlsPvvGyD3LTlaeTqXH4v
         LNgkW2Y1PFojcbgptijoyAby8dTfvL4p0KteL2J/vo7UyJtAOk0OKmY3Cbb0HHRc9ptQ
         tAeHVo8KsZGEhzZVz3q61FFIP+V+I7iXa15XgKJYODxbsvNSeCCd7S40LYPkN99tSWvh
         zK0w==
X-Forwarded-Encrypted: i=1; AJvYcCVDaec1FIgHRLIpxkjSVc795rebVRJpwNMpnfl2dYiFLcqCH8x//tUqgvVolIFZOnp+E9Z1vWdCvI4d@vger.kernel.org
X-Gm-Message-State: AOJu0YyhCTPTu2KrNjaiY0MgcXxYXoxOoe0KJKiAWTnKwh9XYXTK3xcY
	ZRg/ntxcxBd8FJolGD7t8L4peEkr60at2qO7fR4l8vH3/uAo5w1Hjz88sK9K4kfVjJ8=
X-Gm-Gg: ATEYQzw6JJ5ZpJrUchzh2ApGWkAXmGuc04CN6ODV8n74+cnNWfggE0+FRS05qj0U/rD
	8QKnbTT/ZndA+c5aeT2p8aHZYalzaXz/rQcPdsGve4INkkrxxzqaYhE6cEVribkeeTQdF3cbfFN
	27BHL/MH/4UoEkaHW2zhwS5Pi/nXj3hRQ5pIdTHUd3gM4BCYViao51rP0mXu16A3Gz0jXqVY2kF
	OZV1bi84fD/n7U0Xc5PdqyR1VEI7qz+wfrCAvV4u/0herzp58VL/dq9uLRVfMn7ifZgT+AsRTgy
	R8lCIv3Mvyxi0KKlFjlS+rg9Uq+6E4vrTRNlVZ4xxEP0v44xakFEmSnW1Lzhkb9sqXE9sP66S1H
	HhyPPTaoGslwd6sucVCJy9Ftcw4MKIxfpZMud1AShi17aIcTLlYhL+U4eWX9oGUfPtrOX5GLIRK
	mK3yhl9L+PLw6RguA6JZt87rYEZxV3OG4fl7U7kZSr9K7LopHTJbukJeRXGThIQ9JdqA==
X-Received: by 2002:ac2:5fe8:0:b0:5a1:44d7:1fb2 with SMTP id 2adb3069b0e04-5a162b4365bmr813703e87.4.1773455847182;
        Fri, 13 Mar 2026 19:37:27 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e692sm1884296e87.30.2026.03.13.19.37.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 19:37:25 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/6] arm64: dts: qcom: sm8650: Fix xo clock supply of SD host controller
Date: Sat, 14 Mar 2026 04:37:11 +0200
Message-ID: <20260314023715.357512-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
References: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275607-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.134.86.160:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 9E3F328B698
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The expected frequency of SD host controller core supply clock is 19.2MHz,
while RPMH_CXO_CLK clock frequency on SM8650 platform is 38.4MHz.

Apparently the overclocked supply clock could be good enough on some
boards and even with the most of SD cards, however some low-end UHS-I
SD cards in SDR104 mode of the host controller produce I/O errors in
runtime, fortunately this problem is gone, if the "xo" clock frequency
matches the expected 19.2MHz clock rate.

Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 357e43b90740..e915e7209750 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -4957,7 +4957,7 @@ sdhc_2: mmc@8804000 {
 
 			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
 				 <&gcc GCC_SDCC2_APPS_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>;
+				 <&bi_tcxo_div2>;
 			clock-names = "iface",
 				      "core",
 				      "xo";
-- 
2.49.0


