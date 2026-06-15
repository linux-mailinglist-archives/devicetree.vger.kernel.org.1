Return-Path: <devicetree+bounces-312108-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0/joDZ0vMGqSPgUAu9opvQ
	(envelope-from <devicetree+bounces-312108-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:00:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDA56889D3
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:00:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=Xg+suujg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312108-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-312108-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1258E303096B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6415E4183A5;
	Mon, 15 Jun 2026 16:57:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242AE411687
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 16:57:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781542636; cv=none; b=FbBczfZWrleSmGvmtPb8fQLjSW6TjyvCtLv58ckxbBz19OOuYodL4Omc5ygbK3juaQHBQdBz4qN96ZVtRMAENXiwWrMZIlE3bgzOTnAATf21JBYd8dCkpcHTyLZ6aDGGyX1TfFl75NG2gdPD/EWrB+uvJXPTP7WjJKZo09Lb9FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781542636; c=relaxed/simple;
	bh=9rgQQt8dY75O2Iww/Qyyxjh8JDNgjK6Qh7rEAzx7jTo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i/ts45nFf3molrXehnnhYtUzhUEboPGc4SSjU375PgI1MsjezaKR42c+8ATa+9PvXWnJN8lSmnn39KS7HYyYs6b6lIiCn9i3SCSwStmGGKKA4tToJI1JKE5YTRWe/OCQo0Y/RiF3GXR0PKIB9BOF/dEOrVuqo1pehR2tFFxQHJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xg+suujg; arc=none smtp.client-ip=209.85.128.45
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-490b3e03939so26661645e9.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 09:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781542631; x=1782147431; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nc7oHU/z1AYI46E7DltDd3RE6143p/yBAx1pHgMei4M=;
        b=Xg+suujgOnDdUcxm6IwqUVY2mkKsJMbGTsW5u+cVH/LhrwiXsRfjzPQzx2iLaDq0ee
         A0GrZ707xXh8ZaAa/Gk9FFD9VQK14tgxBjlsUhq9hGx6Z9K7cGaCVe9ud+cUHPArbkV8
         mgtAuWTyZwTEbed5H5sBxXRWLJgXfqk7I4gRZ+HlODkNs2w3Zg99s6YyVGY+ixr/gFeT
         khRUM3ByrjCj0ubff83O2tptys7vIZDTt97VBKXsoSy0ADpulaU0UgdfjkFJsmJwFIsD
         aS2cIT0JV58T+9EPFVMK6R+rLkL57PJ/0k00XQwkNG2sITIkkEyuN5b1+gtlTht/KwLs
         Upvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781542631; x=1782147431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Nc7oHU/z1AYI46E7DltDd3RE6143p/yBAx1pHgMei4M=;
        b=HuVmim5cW4zva0kI9ml8/g/bI6227b66nECZXLQYcsDYJtycrLK/6mlKAtvnC8FY5v
         qYERv2R/xg2qi3Z92IwOtyI66Ze/yxAyyKdiV4gq/7ZHBohUh3ReYQTbaUguYMjGV0b+
         58RJ8oIXmX2x668PFkpeIRXUxS603sTHQkdQldoYLuwbhmVpnuQSJSHvgdohcPC4Um6a
         jv4Ll/I5cq/+iDiNBNMXqHR2WtmnrJmxSX5ageGz75dOwdE4ZBM3ENgm36ttD7KrW2th
         QErFo8EJy8HFc1qExRCP+ZeMGquasLehSotuRSzqSYFgOBTR2Fx/xqTe3Cuj/Vf6hgKl
         WBcg==
X-Forwarded-Encrypted: i=1; AFNElJ9xEJ/Lxw2qJbRCFVppdG5Wb0k3jKNM9YZCw/o0hoqjg5EkUoSPLzet0USxmHR8aS314JPXuG2LEDHS@vger.kernel.org
X-Gm-Message-State: AOJu0YxM/p6CFABa9W5VvLwmrXvK5BCMKTeUCNgF2PGnIXdIIPcunG7E
	By35f8e05ISErO43cgeMZz3BfwmhAS/o2w5mm9lvjvhTBJt9UaOACmhDLXdbnzPoSftwOL7fRBw
	IpoYkD1Y=
X-Gm-Gg: Acq92OFaPtxiVeoLajjSxs4nRVHO4UBlJXkcMsujqsZ2adqBxzr3lRlQZpsONjz+71G
	n0kyjaiJPLFYMTAtSVtn0xRXi3dcw9tkvWnD3s7JC3hHzQjjey/7PIrs4Yy5agPQy9QS2QcKUy4
	RCz1WsjJ4pDWiS+g37HSdWlTmtfhtbm4ZmnLwFn2jyjoHqwVU/1BmDrfxg78zCKs1LdmklwlnIZ
	njnJ6Td6AewQVPAI1pVxplUTTvCKe5SO5VsZRUNEBxwmBT2b209U3yA/FnS9BBlMeOmOh1XT4u0
	Oi1tcW+zh2QVMzCZh4uXE560JQntxlF4rKOQ+X1KkthkqPVifTOCPhEiSdarlhd6yhkD8RWA0kb
	H9rbdWBlDOCesKbHvElGtwoGlkI0Jg31i4aLNFEg4Slp6qnjRY6RyETEje1H68DJIsVYQuVEudc
	Sh/wmhiXWiXNhHQ7dqr8fm54R4GCrVptEEKhHmbgiSTYh3
X-Received: by 2002:a05:600c:a20f:b0:490:e19b:9632 with SMTP id 5b1f17b1804b1-4922fb071acmr3292265e9.17.1781542631492;
        Mon, 15 Jun 2026 09:57:11 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2b0c35sm37202471f8f.22.2026.06.15.09.57.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 09:57:11 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 15 Jun 2026 18:57:04 +0200
Subject: [PATCH v2 3/6] dt-bindings: clock: qcom: sm8650-gcc: Add missing
 power-domains property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260615-topic-sm8x50-tie-gcc-to-cx-v2-3-6b5752dd4747@linaro.org>
References: <20260615-topic-sm8x50-tie-gcc-to-cx-v2-0-6b5752dd4747@linaro.org>
In-Reply-To: <20260615-topic-sm8x50-tie-gcc-to-cx-v2-0-6b5752dd4747@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Abel Vesa <abelvesa@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sai Prakash Ranjan <quic_saipraka@quicinc.com>, 
 Brian Masney <bmasney@redhat.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1384;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=9rgQQt8dY75O2Iww/Qyyxjh8JDNgjK6Qh7rEAzx7jTo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBqMC7hKCn7B7MnKDLpOdzh+dR5GkO+LgN3LqinkeH6
 1xXyE8WJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCajAu4QAKCRB33NvayMhJ0Y7jD/
 9StGVbsGxd9cM1VsJ8wK4d0CNwNXlYQCINj3hRbeY5JLf/4WiuyYHuxfXbWJXwBVSvO550A5ulvI9w
 UfrRHIQS1iZHumBRpU0eV0Xl14Pj8ZZB8pTZeHtT8h3yl7oAJeRrLXJTp3YFmCCmEoX2/c3xisARAc
 qp3pSIaQA4j1NhgVh84YiOGjsgf9ydlda5a+mr0Djf0s6dw3w7K2xnnpRZ8x5p/Yr5vsJW7AVLba3F
 O1gf//7/xhp4vGxoXTZzmeH2lkTgWYeAMPfKrToRux7qtUk8QRqgVY19FPB1pgG6X6jto50sc2+JYA
 imtunYnPPRcNoGnirZvhTr1iv32cD8F13A8RSi2lro2vSUfaB/9vVSP+mgRG7gd3fFC3bSYGe1mEr5
 U86+71Eat/yQ6rF6X340CUkMRMfzzyowz3KlaZC1IVM0ShuUpCVyo0IvkCsPWqzl+7L+LgE7FAJR/M
 h+5RTCgP70B8fVlrG2Yk+N4mCzJlXmKr8EYDB7QfsFkLvOetq/E3GDPWIrEpdZbqrEon4QGiiLTIxg
 PsxILVZwwizpzcgJNuoO0OZAPQPTabh4bfCAaLl98ffSd+OX8ry204SODaVSKzYR27e5XrGC8K+JQj
 5z29ZRwjauj0wGDZej5CbaG5UQ/+QoTTEQ45n3TKecKAfNda4p/rlt4b5ntQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312108-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:abelvesa@kernel.org,m:konradybcio@kernel.org,m:quic_saipraka@quicinc.com,m:bmasney@redhat.com,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CEDA56889D3

In order for the GCC votes on the GDSCs it provides to be propagated
to CX, CX needs to be declared as power domain of the GCC.

Document the missing power-domains property to that purpose.

Fixes: b69d932154dc ("dt-bindings: clock: qcom: document the SM8650 General Clock Controller")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,sm8650-gcc.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8650-gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8650-gcc.yaml
index c7143e2abc80..9c1504827cbf 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8650-gcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8650-gcc.yaml
@@ -32,9 +32,14 @@ properties:
       - description: UFS Phy Tx symbol 0 clock source
       - description: USB3 Phy wrapper pipe clock source
 
+  power-domains:
+    items:
+      - description: CX domain
+
 required:
   - compatible
   - clocks
+  - power-domains
   - '#power-domain-cells'
 
 allOf:
@@ -58,6 +63,7 @@ examples:
                <&ufs_mem_phy 1>,
                <&ufs_mem_phy 2>,
                <&usb_1_qmpphy>;
+      power-domains = <&rpmhpd RPMHPD_CX>;
       #clock-cells = <1>;
       #reset-cells = <1>;
       #power-domain-cells = <1>;

-- 
2.34.1


