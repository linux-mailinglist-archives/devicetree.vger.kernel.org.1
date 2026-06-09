Return-Path: <devicetree+bounces-309213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RnftMQJBKGpoBAMAu9opvQ
	(envelope-from <devicetree+bounces-309213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:36:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 612A7662730
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:36:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=OLV0tbHq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309213-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309213-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A77DF313864D
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8F7C3BCD3B;
	Tue,  9 Jun 2026 16:23:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F793B774B
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:23:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781022188; cv=none; b=l2kT+R81tQ8g0JM0mImkf9URbWDa8SI+QIiUzTJ3fituVAzJffUtS1HOtrb0TaUmDcb4d8HI2hlPAlxfVGawbpiCKqZcAmcXIUVBR9cM7b8ST0xofdUeJUiFcs9hwL8qrcb5hhsFoA7vZT1/YPCKKwjbLoD6EfxfyAI7ehatPEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781022188; c=relaxed/simple;
	bh=sZptyh2YnTUW11YXeW5s0iLAeCrXBy0PXfU8miqgtMw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UNIryFVDxwT35lAXAQjvEdnsNx1OtWfiiScn5tzZRfhljPBzdqDwXQE7vQhFFvsGFkzZqsG+CXK+dxKvEDwtbd/D2z0e62DSnbayNt2sg9Tu4eBWlEl5sZfYelV2UF4BdHr93JTNh1HSsn5MTA79I6ewOfy5KOTOYddUnT78Nkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OLV0tbHq; arc=none smtp.client-ip=209.85.219.42
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-8ccdf8d4ac5so61663476d6.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781022186; x=1781626986; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qa2oscqijK70AQfxauHDlQKqXVQZbGo2+KnF0J46Iv0=;
        b=OLV0tbHqOOriT9GSQDxjldj2Ij2cpTrhRqAXUx+t46RxZ9JTkNB03Qk4ie4xkG8Lho
         /F7TGp6TiYdvkVIozAWQ7w1N2/dVSmZsUxwD5QO57wY1Yf/1YokW7Xt/IuW/sP5rzJ40
         P5vDqz3/mmsCt7MfcHIf0cngpwoMRovU7URVobXjaUmJ0pQiNDbLMDXxnZoQpToLqokg
         CCKpmzkgvVA1g5tgteZs1YUWyG+dyAg9/lSdlKJ1dSSmzrbuv1+klXuqY2kxQSpY//oQ
         lgF/wEPvoq++YFyXMpTmtZ6OnkJ+vdoOxU9chF4DFYCmkzi3vyyEaoZNa4scFeTQuD1a
         vnaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781022186; x=1781626986;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qa2oscqijK70AQfxauHDlQKqXVQZbGo2+KnF0J46Iv0=;
        b=aHverIEzBZi8WQTXvbgWGp0+0p310c9Tjpp/OGK1qa8flCro4J7sDLpsXCnjYDxHO3
         57PUGR6xO0E5VWQGy/oghvUwQg3BWMmS1e8NimuLAgjiCtwQ1m3v/tzksWNyCI4ZYRdz
         2h8Q253xhAL5ds3K1W2210TtAnJyUReJJfFoI2PYsleSPPoPEvYsAMOLzkGz2O0vsD4A
         6URvmd5FhKTaPABjXq/pojyTmGFr9F/8TEIajRzWrUDXAZMlzPWBlECRhrpqb4v243To
         G6pGOG8vcZE4H72lial3XxvPz+0FYLd3/SAvg3wehqw/m4qrcPv4G8OTqhDL5TUXcnhg
         6S5g==
X-Forwarded-Encrypted: i=1; AFNElJ8uCCCMkI4R0uMNuWOXq/AHAsSCqRVl6tOQBplzpm19VpHN80Bs92SgmNh1U9jqViYgpRaGDvPqJ5qL@vger.kernel.org
X-Gm-Message-State: AOJu0YxbMxt/6y6434o9gQm1ctX6eE+0K6SmFIj+y1wcAQOrlNCB0jl5
	C2WrZgqhkOpEJz/YhgvYqVAu3xi/1WDlxk7a69HQ30Yjn67jGNY4eMPv
X-Gm-Gg: Acq92OGp+ISI07laXC5WPe3XsRBKa3zE1nsh63rSVPSdl9nQa2LOEGTYR0EELxh+HR3
	BCKu8D8qNtqiGlCLuRG3wcue7H6NjdqY8Gbra9QHjSMikCMYzEwcqLlfgY6hI3hphxwYkFKuVNh
	mg6bhCSf1wnIAuxVCW7lP301W/0lv3MVxYU2sm7OunT4zIgqXddiuYxtiC3zeTFY1fvGzIX+TKH
	sqZ+ohFKbpSfLdM/MaobfzyGmhw5CcmGHQwENwgkQpaS9wNOpin4crc6NIzHT4iIECrE6rpk/mK
	ax1LzGspHHMySgRGMDb89rlok8XM0KGtTR0uYVDiZhUep+ZxFE0C71r+7/4KBvm/rRAGuG8ywfZ
	QPZS6tCYjUC4UsJgDHK4RzjoAXErKmgy366JrBl6i6tP2Ho2Y2Q7Nbc1bieCcmuKkaaWTpdWd6s
	Ui+ybJIAB1u5/9CoqX39FQjn+TnZ+bHsnhkT5DFA==
X-Received: by 2002:a05:6214:809b:b0:8cc:ec7:72c9 with SMTP id 6a1803df08f44-8cee5fddd91mr292765756d6.19.1781022185918;
        Tue, 09 Jun 2026 09:23:05 -0700 (PDT)
Received: from localhost ([142.181.163.192])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8cecd275dd2sm202873796d6.47.2026.06.09.09.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 09:23:05 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Adam Skladowski <a39.skl@gmail.com>,
	Vladimir Lypak <vladimir.lypak@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
	Johan Hovold <johan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v5 05/15] ASoC: dt-bindings: msm8916-digital-codec: Add SDM660 compatible
Date: Tue,  9 Jun 2026 12:22:45 -0400
Message-ID: <20260609162255.31074-6-mailingradian@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260609162255.31074-1-mailingradian@gmail.com>
References: <20260609162255.31074-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309213-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:setotau@mainlining.org,m:a39.skl@gmail.com,m:vladimir.lypak@gmail.com,m:dmitry.baryshkov@oss.qualcomm.com,m:mohammad.rafi.shaik@oss.qualcomm.com,m:johan@kernel.org,m:kees@kernel.org,m:ckeepax@opensource.cirrus.com,m:kuninori.morimoto.gx@renesas.com,m:mailingradian@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:a39skl@gmail.com,m:vladimirlypak@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[mainlining.org,gmail.com,oss.qualcomm.com,kernel.org,opensource.cirrus.com,renesas.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 612A7662730

The MSM8916 digital codec is also found on SDM660, typically connected to
the SDM660 internal sound card. Provide a space
for specific compatibles and add the compatible for SDM660.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/sound/qcom,msm8916-wcd-digital-codec.yaml    | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml b/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
index a899c4e7c1c9..33bc23b6176a 100644
--- a/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
@@ -14,7 +14,13 @@ description:
 
 properties:
   compatible:
-    const: qcom,msm8916-wcd-digital-codec
+    oneOf:
+      - items:
+          - enum:
+              - qcom,sdm660-wcd-digital-codec
+          - const: qcom,msm8916-wcd-digital-codec
+
+      - const: qcom,msm8916-wcd-digital-codec
 
   reg:
     maxItems: 1
-- 
2.54.0


