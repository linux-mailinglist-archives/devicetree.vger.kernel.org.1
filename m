Return-Path: <devicetree+bounces-157449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE89A60B3A
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 09:23:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DAE538804B3
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 08:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEF531C860D;
	Fri, 14 Mar 2025 08:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ABVU3d7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C7E1C6FFB
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 08:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741940491; cv=none; b=gh/xhWvqCIWbh7BMhGMn0kISvx+NqAzJR1D4Wg+3sfewMFiHCvqfBa0K4w7CB8igRK08iYMrBpyUa1oZdKewRGt1Zhegtp9796z6gC69wSPoK8yyuLI5S5zCmJzDuEoee/B5WkFcnTZZe6CWsdFzkU1zLZd006Y3dZdH7hjJo7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741940491; c=relaxed/simple;
	bh=mppd4LmheDALrusB9T4PJj9qjgXGvLPRSBiVOVkjTwg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=c+Z/zpB5xi6NIQPYFSajZvONUO0ZA6jsOXTckrGkn5l9jRN6EKrpTWpo84Xxl4WRavbWo10NazKZghvwwVyXB3EP7gMgjLkVoiZGBVoHAIatdr6pgbgSHxN/9/OqxozAIPWO46DKj0nczUUhDNnLO9KNirl2IiB9KNnN64BAmPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=ABVU3d7P; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e61375c108so2395632a12.1
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 01:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1741940487; x=1742545287; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c+NVtuVU2ISJtStqxHLi/aMeg5kRvIk3MtAqB/jXcng=;
        b=ABVU3d7P8JpvvrdxbtwdJZqVgs18QiWje9f/moFUNBBMp8qXej9XFyb+bJIfhWcRuV
         Ni4LyhVUYt6O062qf3Wa+d3iDLh3AAsGhBSb9hEJHi8GtykfW2MzuRREe3t86+PzwrSF
         sBdQl+5p/E/owPbn9ds+F8JMpbqS0vG1C4SzfB/ppDB0+wqro8hJ1I6PuFYG7Ib2DLWB
         xbuT4w4C5XXhobcT4jTpNaZ/MdCa6cf1XgK/V1gxCHKddIldcJU2tyFFywKR21PLADyG
         U72WgOxx8q7cziSLU3R/LL/pQmf6H36fUy67Ajw9m7nA8yUwHGgbnh+t78AuY8S/wEAi
         PeUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741940487; x=1742545287;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c+NVtuVU2ISJtStqxHLi/aMeg5kRvIk3MtAqB/jXcng=;
        b=Au5bWZJwUxieEKEN6i/gk+vd2R5Qs009D2hEt//SgtAwCzCS+G6ak3YHweSHPTodKH
         sGzzxaRIMlUyHXoCxKsgzc7qMhTp0RUW6oYPu/NtTOeab0b79flbtngO/G5lsQ9W5+Ev
         HhEymr8yUgCzdrWbMbxeR5TzRtPGv0FcNfwn0N/mYYT8uSOPApJDD9Eah5npuEft34UF
         EQBzGpsb7Y21OqHznp2QpUtElPrvlcjTsrGNDKcuP7s3i0Leh/IJklD1ooUWDHjHQ+EN
         EqCfvdt7bnVLSP806GjPGVmhimWS9IwWU/EbWqvf9TS+x0YRddV65TM6iGGob72N8KTb
         oelw==
X-Forwarded-Encrypted: i=1; AJvYcCUiYn9niFcr14+A+xX78RqsQdomOEb4oOSFg90yG1QLYiZTpO/IBz6iLLMmNzHANMEuvH+GpPuzJMzz@vger.kernel.org
X-Gm-Message-State: AOJu0YzeAg/s+zsKE6tNQkOgLKLnw843Xo1PpTkjmqaVDKldA2qx7ukQ
	Vny7nxqjfihPHXJZo6OzRdVa+z/j7If1yQ3f+rYEjDTyWiP7igDsC+2yKc7g84E+nKevebxo1Ek
	i
X-Gm-Gg: ASbGncvT2ppTTC+q8HTSCd7Wi5GjNStkQpkkEUyV0SIKCTyRqsy/1Rr3sOPY6PyYx2n
	a+WWvO1C/REg0swHbNMUUVS589F+VsyYhfEjQfpQY5mbFHllFj+xxik1/NgY/cWjEcFe3OtFMmC
	Ar9ujuBOvIGGEISBNwk2JYXuMUYyOOJ+m+uPPf6l4tJbSPq9uyso7n1DCwhNjJupeBlG+0JaWEm
	fyOM6WpC2eeUeGmXukhQ4CTCpPUSTarXNgZLF4hx0KLGbPI9WH5LvyspL/8ZL84c40TFwYbgKgU
	RKk2tGFX8+4dC/HiZ+Nm/WEe1z897ztABxmy/izjWSkZTXBGqp/ldwzDI2+kphhofG3ITRuNshp
	CrJ++1klVvinJ1DBYgA==
X-Google-Smtp-Source: AGHT+IE6U7GmQ58fz7zI6ECFfeW+9X4eiOa30l8vgfN5EOFVNew13LY0sJrmHqQgR2MvZBZ6zRu3qg==
X-Received: by 2002:a05:6402:1d53:b0:5e6:6407:3b23 with SMTP id 4fb4d7f45d1cf-5e8a0422028mr1472473a12.21.1741940486720;
        Fri, 14 Mar 2025 01:21:26 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e816ad38fesm1643387a12.57.2025.03.14.01.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 01:21:26 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 14 Mar 2025 09:21:16 +0100
Subject: [PATCH] arm64: dts: qcom: sm8650: Fix domain-idle-state for CPU2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-sm8650-cpu2-sleep-v1-1-31d5c7c87a5d@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAPvm02cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDY0MT3eJcCzNTA93kglIj3eKc1NQCXQNTi+SkVGMLkzTzVCWgvoKi1LT
 MCrCZ0bG1tQABYppDYwAAAA==
X-Change-ID: 20250314-sm8650-cpu2-sleep-058cbe384f7e
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

On SM8650 the CPUs 0-1 are "silver" (Cortex-A520), CPU 2-6 are "gold"
(Cortex-A720) and CPU 7 is "gold-plus" (Cortex-X4).

So reference the correct "gold" idle-state for CPU core 2.

Fixes: d2350377997f ("arm64: dts: qcom: add initial SM8650 dtsi")
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 719ad437756a499cee4170abccc83f2047f0f747..5844d7d0d0e6b31c08de3391f5cae3f8d823b2cd 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -1449,7 +1449,7 @@ cpu_pd1: power-domain-cpu1 {
 		cpu_pd2: power-domain-cpu2 {
 			#power-domain-cells = <0>;
 			power-domains = <&cluster_pd>;
-			domain-idle-states = <&silver_cpu_sleep_0>;
+			domain-idle-states = <&gold_cpu_sleep_0>;
 		};
 
 		cpu_pd3: power-domain-cpu3 {

---
base-commit: eea255893718268e1ab852fb52f70c613d109b99
change-id: 20250314-sm8650-cpu2-sleep-058cbe384f7e

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


