Return-Path: <devicetree+bounces-282774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Fz1IE5jy2kUHQYAu9opvQ
	(envelope-from <devicetree+bounces-282774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 08:01:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 913D7364525
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 08:01:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4A6BC301C94B
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 06:01:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2682371D09;
	Tue, 31 Mar 2026 06:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sgp1t+SX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85312C0F6D
	for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 06:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774936887; cv=none; b=ZX5Ehu8529Y+DnfrYk6/qmxqqTwKQGIg6z76ah/ZXzNFufcJUlS/rRdSV8uuv45N0dAMNxuIyL6OEIB6vvUhcCBQ/FPSbtzabkFLoxqQHcaXOB6uzEuJGBb4obmF6twwWtfN+TAbWpkEoGO9jkXYpHa4j8FPudUe32HhvDnZ/Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774936887; c=relaxed/simple;
	bh=O/yihGboy+FTCkYVvxgb6uXFh4UUA185s7tjmYvOF4Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=c/OhmlwAdjNj5WV/eu73r9zjQbq1AHXGvcwT2M7DJPdjNgeKJ3gvsyzpUxbSHQ5IccWLmb49KzJXKTqtY/nsxWxLLZXMDIgXtEkc++ZvXaCgi3pYsg0WaOaD+reliMJBb8VVlUc3DSl7yflYw7rIFIu+BtagHRyEN5VKnBSxQZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sgp1t+SX; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-35d965648a2so1838849a91.0
        for <devicetree@vger.kernel.org>; Mon, 30 Mar 2026 23:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774936885; x=1775541685; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVm6EvQFL1tf6FIf5imoasS9pTSBnkcqhsk99KOiQi0=;
        b=Sgp1t+SX03Li7pLBzfDpgbH3/uE0LcjCB2hLTetSBCx/ybwVytvuOrowPHHhfTxq44
         cua9uwp69rkGptXSEe3XfpADEKO3HHVvkYUl8bdt68LrlHYqQTrRHpaDytlwCePF4Wyp
         HQT5Vc/efmpmhiHaHl66zC2UVEPykLo7rOLHK6J3QnX0Q2t/CeXkgEFabb9Tew/qwdQy
         R+Nbi3aqZ6hrjcCiEIFYI23HWgdxew5PCsd13tybmVl5QS0eUsJjragemM5et1B9uhG7
         mYicJ9tIvwSKfCFuVPNnYNHsatur1Zve24exjPGk/o6egilWLvDFRpKbSz5WDH2Ho6Hh
         NqSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774936885; x=1775541685;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UVm6EvQFL1tf6FIf5imoasS9pTSBnkcqhsk99KOiQi0=;
        b=In4j7PsnJWi36oGcFScqJUp2jXiPiItuDQ/FMD3MsUhgWEgNSeyt9gUmIi3LXaUOe+
         0CohMFmvTPAPeEkTzctGKZURjoGyryWuaDrclXbXz3U7mccLCMv+p+TbRJ5XTAlk1wzR
         HJlhAqjYKBhxO3sC7t01LA4zj8e8iYQO6mJG5jtzEtrOjfz+6HVWeGyqv0Qdq0v7xbhD
         bE+63wGiDJ77bUqUrW9Fs5IHOtwq1h6YgQC8ghXUddR5ZfC7cnKQsKj/g0x/ZuI6ZfYI
         6V0TbxjdjS3EVxcKV2eJ35j+sZ+/8eTug1pyLHjN5AuJs1L4m/8cZD74mVC2WR/9J18K
         cpjA==
X-Forwarded-Encrypted: i=1; AJvYcCVYYkJ7MxUuFuNYLuDzKN68As8BjX2Fu0Wb1XmV/U9FXLhk2AFYqjCzAqI3Df7tMvcPJoLpGHbugXRj@vger.kernel.org
X-Gm-Message-State: AOJu0YyB1ya5g6Na6jBEtR054myIS8xgq7ZRLMsVwJPVpp7ulvzjQUSj
	8s9OZqS7FOeS/oPiv6zwilELRM4DDhYMJT+0rG0im6uCY4w0Rpenvkxu
X-Gm-Gg: ATEYQzxzVlzzrpB9uDxkPcKqPbUHvRX8XaYhc7+GAPnpigmKDzB5DyV9q3zRD88RlbY
	Yld6vXZEdE3LRnsDmQaUIEEcK+6flYMFeJoyBucK/7R/KlvvANQLzDMv2NY50rtcLAPitxzPb2k
	AK/93ZVH7vaJeUsCBvkESSa/ygq9CsC45P6howNGer2NcrM4YuPhtUUdEdJt+c4kQl7FYF1c/if
	LAUC/obXsrBCzg5mdAyx8y5DUV0S9BS80PfcthJ6qywusp7xKuLzQjh8F5HvU7yzHmWgMId/dXB
	PF6Ls50dsjCCoxK7nqPM3z5eAJc8gJSzwIioG/bELmt0fsX/WfJ4cNSc9rIxQMm8pu+/dRs9wre
	WEmIHCe+Y3PLEAmSlLiBD0GWXoUiYac29YArOaUodaAzJ4jwS+mtRFC1180jSGFBz4NW2Z7Po+W
	4G/ekBsiY0MOm10ejPp1H5F0L88EHIrSfhUjSFBjZwAFYFVRWl
X-Received: by 2002:a17:90b:2b50:b0:35d:9efd:7956 with SMTP id 98e67ed59e1d1-35d9efd7b8fmr8448932a91.11.1774936885018;
        Mon, 30 Mar 2026 23:01:25 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35dbe606dd2sm575343a91.3.2026.03.30.23.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 23:01:24 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v16 1/3] dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
Date: Tue, 31 Mar 2026 11:31:05 +0530
Message-Id: <20260331060107.501561-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331060107.501561-1-tessolveupstream@gmail.com>
References: <20260331060107.501561-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282774-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 913D7364525
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add binding support for the Qualcomm Technologies, Inc. Talos EVK
SMARC platform based on the QCS615 SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index ca880c105f3b..9e68402cb5dc 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -924,6 +924,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs615-ride
+              - qcom,talos-evk
           - const: qcom,qcs615
           - const: qcom,sm6150
 
-- 
2.34.1


