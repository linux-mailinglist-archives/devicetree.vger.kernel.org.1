Return-Path: <devicetree+bounces-270827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HyFO3iPp2lKiQAAu9opvQ
	(envelope-from <devicetree+bounces-270827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 02:48:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7337B1F9A9C
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 02:48:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39DEF30F3ABB
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 01:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17F3831AA94;
	Wed,  4 Mar 2026 01:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dufEkz93"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB83931A549
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 01:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772588716; cv=none; b=Hie5Ikunl3RDzCaQkJyaZ3lPO07O6MDkGqf/mOuCfBe4qiAGIFX12hRa1F9V7pSkmi/1F/qY9yxaPX9Gd6n8r6ia/8ixxn7a16kAZyTHlftFzTjRkf/Vhmt6zcvGq70HZqjnkRUWedrSEmPdZr4Nzp/70W4rF0bRNkueSHhahaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772588716; c=relaxed/simple;
	bh=zT7VHqFCzDwH7dsnqHKBT6R20zasdavK49rOXk8BcyE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XE84hFR77YjDtiU+pWYdkTdKPMDdkAGSQfiCvb+Yf/WmcIQVlHbceiVFF3BfHaEHXKNuNgcafnlkGTkXxWf8r9yRybPF8a2hiLMBi8goQ9O5LRnBcYdH/6GQ4MILemuvMdOSG3EKlqS3h9nrVhF6+ZhMxBCTUP9PUDU2SCkvtUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dufEkz93; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-506a321cc53so72609051cf.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 17:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772588713; x=1773193513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yqMq09LrRUJ7Y1qu+vRwg7gsZM0+ELiCGik6jbn1EcI=;
        b=dufEkz93kA2OFwfPFt6D5qGlVwczlJGMq2MoiqWiZQ9fVXvA2vlsDWj2JfKtwIkq9z
         IL+Xb3oJeyvl5sEP5tACKHboWnVwn+ao+YF2io27ta/WKDgfcsyI3NrXFWXkreVAmA11
         GFkl88Sx/sRjBl15egnupG1Hkz++Xislhxb4mrk34bz2+YbxtjTJukHknTTUbX7GZb46
         Gq7S8CK5QI2x0j7vJFvDnb/uuQPBkHBw1QUfisVDSvL+wTqxIX4JVhqdfTpXuvgksWEq
         /uum8xnGcRSkp+9uHvCvnkJC7oxIK++ZuPzh0K3QBfP471JJRnhg8um2uDdD5Xdyz3MK
         nvOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772588713; x=1773193513;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yqMq09LrRUJ7Y1qu+vRwg7gsZM0+ELiCGik6jbn1EcI=;
        b=VHqZjunzPDTUFQlQKB6f6GknMximae1l1PDLJEg9a40zXCfjSCRDoR6RZwpelMwNLs
         bU6VX1TUP9QNXvWMuUW1YKs8kvTjrVntu0p9We20fbYvki+CYMdyrxE8uywZJ0vEcnCT
         2PXSbEq69vKGOCkNBouTNC8smUH3EPbyL2a6X0cKEVIItSVJyWBK9532tf/UupODNrxb
         Hbfq0QmgSnwSHoyQeDGwFtd/O7JbLlNDQ0GMO33XH1xMACaX0CTBQvoZy4wY+OjOhb2Q
         VE0B+nacGApzRmFnve700ib28bXrTapEMmDhYHKcV1h5hefsz0v7hJqY8fvnAyI5zPJa
         4tsw==
X-Forwarded-Encrypted: i=1; AJvYcCXx7gkaXLV6/wfNpuQwZhXgThFTt5t12R9A4jVuhWdjShA6+37GLGu2riG4N/KNvOQ0d5ZurkpWMiZe@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg4ZbWU+nPzjtS5XcunofK32q52T/D9KbfS8ufALQrNm38t7pW
	9M3UBiUuYqTBSbCqVOMbsgBTlD6Drwe8B5W6he7rh2zgUR8/k4h/uSjP
X-Gm-Gg: ATEYQzwDf2JVAMaWpF2qSOV/5MFftOBtvk/lKNGdSFd6qMNgMQlY7xccDGMnof1eesV
	uFPsP0xOJvLbnQULnb71IQVG1SoOxQyMh2kRGqbhYfgOB4eGN2T3vRp0qAiP1vceEveTFBNkpR7
	qrsh/3oQab9stTjmAuf9LLop0iJG84gifsSlJZ6+SjK+xOY2Dn3vBzTz0M1k3jZKs0NHC11/VWq
	Ratcpio1K/zz/cZKrk3pFBoRnMtv4DWJd9yuD8hjttqcF/oxfyneAGkKnI9xoNxBVxXiaY5K0eF
	DoH8BT6YSKl6v6rDe7voMuWtmEOjdM6YvBNdhN16RF8YmZKntbc13EEe0fRWYuHfDZpSZ6wQc+Q
	0pIc9kHtCu8TnCapRhb5w1M11jDBt3BR9VLy8+UCNindsRFrzNdaLk365XkmTyX0vtZr6ZSQxBb
	ru88frWMbklU5oTSsJ0uZZokRUBg==
X-Received: by 2002:a05:622a:199f:b0:506:6ec8:835 with SMTP id d75a77b69052e-508db397445mr5851551cf.54.1772588712615;
        Tue, 03 Mar 2026 17:45:12 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf73451csm1542159585a.47.2026.03.03.17.45.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 17:45:12 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 1/3] dt-bindings: thermal: tsens: add SDM670 compatible
Date: Tue,  3 Mar 2026 20:45:28 -0500
Message-ID: <20260304014530.27775-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304014530.27775-1-mailingradian@gmail.com>
References: <20260304014530.27775-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7337B1F9A9C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270827-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,arm.com,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Add the compatible for the thermal sensors on the SDM670.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 3c5256b0cd9f..6c84f22ae322 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -71,6 +71,7 @@ properties:
               - qcom,sc8180x-tsens
               - qcom,sc8280xp-tsens
               - qcom,sdm630-tsens
+              - qcom,sdm670-tsens
               - qcom,sdm845-tsens
               - qcom,sm6115-tsens
               - qcom,sm6350-tsens
-- 
2.53.0


