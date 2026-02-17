Return-Path: <devicetree+bounces-265943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOtoAMexk2kK7wEAu9opvQ
	(envelope-from <devicetree+bounces-265943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:09:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 946A81483A2
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:09:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 560AA301DBBF
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 00:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6B311D6187;
	Tue, 17 Feb 2026 00:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TWNJoeZf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1AEE3EBF2F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771286922; cv=none; b=Occ2UHAo1E2Y/9Y1WIDgJtS8/OBDgUqlO9skYjwdwWi7QuaDQX0UU6g1JaC6CEOJR4kqPDFspcS243vzRmgqGdzxiiiqR7eNiy6rbZB6YyQwa0ccTjARoHxyl5CbXyVhySayR+wfU507R6hGirPcQHOadYtaQJ/0p+KjJ3sMIb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771286922; c=relaxed/simple;
	bh=UCbTN8QOD/U37r+qzSPFZzyQ/vbpx7Nk40U3KtWZMyA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=drPao4kKdwkUcJIs2EX+o9iTaXAm+PD4u2Uso6xOUOcgQSC00WsEH9gjsm9PDnohqXUu3Xc2Qjt9t7ArcGEMN8V9N6QG3fbJv6ZpZ8GCZ0DI4jwFwBtOTZL8y8uFF5yrjW6jENm2dAFIhgP404VF2YVEUa6U/BvsK+p56T7fw6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TWNJoeZf; arc=none smtp.client-ip=209.85.222.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f194.google.com with SMTP id af79cd13be357-8cb38e86cf2so398376585a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771286921; x=1771891721; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OyU+RQGolTTl+pL9xn1xmUSpDZLlt9dF+KwDZqgIB8M=;
        b=TWNJoeZf6IBkZlFFphgoKT+XBsLhB9ysLL6r8wkZju48nrJKsrTPIWaTUu9MY47V/M
         mTs4pe5CFrYjmP4Z5cNS0krHFm8bwZo9Ge99jfHur3F27RRMIvLdQHj/xlrZ9bohQF/c
         Q8fdLTczcUNr40W1X04LLWd7UcI3PKAczPCrHfDLawNCHgsK69f6kg8EF8nelWw2jNdf
         Ac2lusEdcJMuZV13TBc6WSa2iKUaJdy02KVhd7F69+2Q6NrM8VveW/TziGzSkXiMQ4cY
         8c1BFZxRO3w1H0f6WyfL1vo+FNiRqTUuzoeCHspUXGnqF8aKWdpo5bvDq28XTHYAjHBf
         wndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771286921; x=1771891721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OyU+RQGolTTl+pL9xn1xmUSpDZLlt9dF+KwDZqgIB8M=;
        b=pWp/o/lEiUISHaKQ83W8x0Oipf/nIUuG6eczUI+J4rGa/G23KY1/R/J8Qr7bpQQp4r
         DUWDOSc/R5t5Vv2Eju8734Atr4ieHw/FbShvVhbr99R3Vt3tM2rSC8PvqFzn8vZn6cLi
         uywon09l36pBQK8ubSfF79QUHZX4OGLXqW7mfuM6sbRG2IPUQ5IEUwBROPRdPU86CqHS
         O5271vPaIackyvWnhGasdTUXpPhSyijWcFVDQ9ytqAleL+snjGw3vXZvtY52S1tbxV07
         PxiZXl3gPmqUvBVbDBoM66VzXH+//KrITFrRV6pG9GOrbPUQyaMP0/pUXUoo6/xqR94V
         pDdA==
X-Forwarded-Encrypted: i=1; AJvYcCUgcX9YXaS7xePapWF4WSH/Lu1UmhIBI3wKnkc9r2bbYddC767XyhRQwL/1pHB1pVtw9eot1Noa/8Lu@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+8g+KV2Sv8Y5IT0+RrpQWJTxH/OZhAv8vf+QtEoFTAEKYjS0K
	t7dEsMVkqy5/kmtwNidIWh03C7QQjQnrvT+k87EB+XLNrG7s19hTGL0W
X-Gm-Gg: AZuq6aLbgLl70ZnDEvvzBM1K9xaMKFNAsonyzdLojH1idaX9bYNTAJMkP5UdxsThilB
	pvWKsX7AYHi8pm6SyBFgxWJSFcMfJlsnLjKCe8cGDo0oiyfky/Mr5HX/n2KBHRLAClyljolsRea
	fERMvGKSH3Qyv5V7VnbW6mCtKVA642yz44ElbJxnbLPM4L6ddtnkb6FNtFWZmBNVan2NdfXi3Sj
	+ClB9I0zbv5cJYDubtCfejcHqPC6T+kJW6h/3wvQpM/ZNj6QFK+psgR0ikB3o5kL/PBXct+tJ/4
	TQrJmvuxciRsKvKpXsgYrIkowiaLfqVVCxk1kBWiw5RmeyZFC0yLw/vYlfaOhfgBgZl3hj1FJ+S
	kHgZKrwkdoA+6OBQfiFVBWmLrTtrH3A/WZx6+lkUyLuKEmIwi0L+p/NWFFPdDCXkDy3xdkW736C
	MtBEtdflGP96Zu4ySD9xsOlc3pwiZUOUPPvfQsP1rC
X-Received: by 2002:a05:620a:3710:b0:8c7:fdc:e853 with SMTP id af79cd13be357-8cb4225fbe0mr1517757685a.1.1771286920626;
        Mon, 16 Feb 2026 16:08:40 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2b004eecsm1380960685a.0.2026.02.16.16.08.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 16:08:40 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: yifei@zhan.science,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 1/6] dt-bindings: arm: qcom: document google,bonito-tianma board
Date: Mon, 16 Feb 2026 19:08:49 -0500
Message-ID: <20260217000854.131242-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260217000854.131242-1-mailingradian@gmail.com>
References: <20260217000854.131242-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265943-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[zhan.science,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 946A81483A2
X-Rspamd-Action: no action

The Pixel 3a XL is code-named by Google as "bonito". The
google,bonito-tianma compatible represents a variant of the Pixel 3a XL
board with a Tianma/Novatek NT37700F panel. Document the google,bonito
board compatible and the google,bonito-tianma variant in the bindings.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..59118faffb02 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -831,6 +831,12 @@ properties:
               - google,sargo
           - const: qcom,sdm670
 
+      - items:
+          - enum:
+              - google,bonito-tianma
+          - const: google,bonito
+          - const: qcom,sdm670
+
       - items:
           - enum:
               - qcom,sdx55-mtp
-- 
2.53.0


