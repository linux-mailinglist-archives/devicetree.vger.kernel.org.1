Return-Path: <devicetree+bounces-170850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA8AA9C857
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 13:56:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A66EE4E28D8
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 645D025A2CF;
	Fri, 25 Apr 2025 11:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Z4PUtJxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CC5258CF8
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745582049; cv=none; b=TeYtr3+cc/WfgQJi43gaTyu7HFrGXr2GO/NwHwxkA5FKbHg52lSASWIHM+TXFLJT+0lK4IZNv0UXvUgwFM+T3bBAXmcie58tCXARno2AGmcFUQkGc4LZrsa7EQ40jS3F4jNZ0KVghQyUp8zUbFd0fjBEyFXOUa56BjqK9te/AUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745582049; c=relaxed/simple;
	bh=hZja3DhWp4DqnrVBJnrg1UV+uBVj5+fTNllqLDvHy7k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D9r0xooKvrmFeJ2oJsIIDc66p8XJlfkAGKdkHBrE+M2HqDRer2iDhXb+WwCxN2fYy+JOOGuLiHAICZUPJwgphnbpeUuiNmQKcmWMzX6stB+dslH/1ONb8HGGNfzf598GPHf0eiHd9NKLYArh6CeRBLU/0OiUFP2U+xsR//q85jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Z4PUtJxJ; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5efe8d9eb12so3177130a12.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 04:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745582044; x=1746186844; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4SK5p8vc5OlPwJ0lqNJy5P1rG3nKiW25/X8diyPQdNQ=;
        b=Z4PUtJxJO4gfCLPHreo8OzCCP/6I/FAAXoZyCx4vPtah7PJJ4/KLMBo0IEWkkqEyZ+
         5xlzuJ5AzJ4sUFLETHZpZ8HXfDdEfcznrzAwQimHdJyn5EnSNespk4cbGGodRfce6IoR
         i6vsmHtOEpGkPTfbNd/1YE/kdh83O0qrRyFay89sOlRYO1WYNFumrwhDXOYh3p7ouBSg
         78IIuwQbi5H8WkFuX0ZI95tr/hx/nNZTUoDMES8+6l7/Xa7XX9eYKXaMs7UDuUuquWVn
         ovfoYQtXz3dUswxjueyimsPY3Cx48OB8+uYjoAkZZ42MwX/bLQtUZwGC03ATDJm/j7Ci
         q9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745582044; x=1746186844;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4SK5p8vc5OlPwJ0lqNJy5P1rG3nKiW25/X8diyPQdNQ=;
        b=IG31zNcjzbBBwixMC6iWO+HLoj3uNhw36pAjq3MyDjsqGR4F/+q7tSbvWQ/tqxVGJL
         nTbUEFemPTSknTc2/Xbm/ka2HXtUWlo0LILvXR/gm9AoF1vuZfOhEOLCGQh8B3Js2QtA
         9/5CHd/WP4Nb7WzL4gUCjfOdfth2VrAfvq5UyxvzzyZMJl1+LEfderydnt7iMth+3Xf2
         qlCFjx0U5RQT/4AjerKaxDnTZP8Yem1b7AxG+BHUehrRAQ0YwZkxFRHc/BspkV19OdiT
         HqyrlwVB8wXf+0jIV1chAkUj0lT2OlXGPyeXCgOIohLmHrknj0g0LsYLp/bIu3Cpbz3S
         rfsg==
X-Forwarded-Encrypted: i=1; AJvYcCV96DOHjNw1bsdNRUTRQH0ccuqZ4qEKNV5kt920ylDuCyiRSitZA1CPwW1ypfa7/rm6pH+10fEG59j4@vger.kernel.org
X-Gm-Message-State: AOJu0YwJrx3yI9GJo+u5R65t3KaWyABZJ2Y46j0sQUgxAfO/aNOdjY/o
	RCaCzrk9T1qhY2Mb2O0//jYFiQGr6DJVVdc7ndNxuNEATQ6mQQStNCiDL0yCv0g=
X-Gm-Gg: ASbGncs9r/ucH0wKpQUKkUeD+kPSUgBxn0ev0T2PUWWqUPUg7nj23b7ozXjkWDyQQSL
	Hl+GMPOuP0PiXQZ4MoheM0leBmMaJd5j0+UwjJWOL1LOvqyL4kDtLmC+G8wn128t6TsyvlnooMP
	fKbRE6XWmfYQsfy+2kvqjk7kcMc9jktp2WXvA5trhsKm5GW0039zdHNFMWh87Qy67xJTYod2fsD
	g6GPZnJ9FOckOFSJaXhQMRWOfS8SCqAIGhZuzcA6S3RqQFjQ8TNrnbJX6k00XmP7w9tVUKsGlaw
	RiYtVhk1PeVd2k6/5+mukjwJ08YM7u7GySrtA4TzbmjhPSx94BPRxOPwrXTB5zuU6I0XA98LVeL
	vJdsxj4JCYcgHFpkLrXdavAoYIU4Ibm0BIvC5jwdq1LtnE01KvRbWAPFU
X-Google-Smtp-Source: AGHT+IH8pJR0qES2zOkoM2zky7c3n1R1b6HaoctvcHOLcvJ4CDgnk1ffCK87cpuY4+1yTGln4yQNJg==
X-Received: by 2002:a17:907:1b25:b0:acb:b6c9:90af with SMTP id a640c23a62f3a-ace7108a929mr190169466b.16.1745582044400;
        Fri, 25 Apr 2025 04:54:04 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bc36sm126081566b.33.2025.04.25.04.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 04:54:03 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 13:53:50 +0200
Subject: [PATCH 11/11] arm64: dts: qcom: sm8350: Use q6asm defines for reg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-q6asmdai-defines-v1-11-28308e2ce7d4@fairphone.com>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
In-Reply-To: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
readable. No functional change intended.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 04a30df4362b65594c073b758f25bf2ae0398541..f2e12da13e686e68071ced0e7251b727d08061b5 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -22,6 +22,7 @@
 #include <dt-bindings/soc/qcom,apr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
+#include <dt-bindings/sound/qcom,q6asm.h>
 #include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/interconnect/qcom,sm8350.h>
 
@@ -1957,15 +1958,15 @@ q6asmdai: dais {
 							iommus = <&apps_smmu 0x1801 0x0>;
 
 							dai@0 {
-								reg = <0>;
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA1>;
 							};
 
 							dai@1 {
-								reg = <1>;
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA2>;
 							};
 
 							dai@2 {
-								reg = <2>;
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA3>;
 							};
 						};
 					};

-- 
2.49.0


