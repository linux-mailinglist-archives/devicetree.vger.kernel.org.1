Return-Path: <devicetree+bounces-309212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iUyNBfpAKGpjBAMAu9opvQ
	(envelope-from <devicetree+bounces-309212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:36:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BED54662722
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:36:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=WLn16ltH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309212-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309212-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 92FB630851A2
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 978233BCD00;
	Tue,  9 Jun 2026 16:23:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D7A3B71DC
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:23:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781022186; cv=none; b=CJZgQt+lJJE54bUtYub7j9Xw8ZMQ2/xtTJ6JTjv26/2nfYTMxdwWmqAUce4bB+p9/DvXKGi602HOos8x5nY4VnVpzNkdgoUw8cwzLrkPaMzEIRNSqeDJ5dgw86fnycbqwY4vbJBgizoXJH4MSDlap8c8eFzcZtnql4CMkWCfQf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781022186; c=relaxed/simple;
	bh=vpshP2r8MUWGtBgRCle6mYC029Z7mMLtZvh+81mD8lo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H07ECNy8/eFs3FDYEx0LFsON12eTHUsdFfrQgTC0301AiupCIsQxtR8fhOLJa3aYHkyGvgf5zer2k2p3ZR7qsMzcJLkmlhWqm62gtzQSKMclNUWwsofAluMLxc7UBZdYxo/JVoj1fdICBX4SGs8TYowRQHkw2UbANBkNB0MXo/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WLn16ltH; arc=none smtp.client-ip=209.85.219.46
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-8cceb2ecc03so48612266d6.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781022184; x=1781626984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ex1JumNzOOfFIPKyf4s2vKOD2Tzr8WIN6i8cBTe4660=;
        b=WLn16ltHVRrarM3AGRfFduKTZnaNlVJTxLB7gBuRCIzlOZnal+lm7S8xo3bcNXvEHm
         ZCVjxliG0Wbe9AzpcOESHcuVu+ib4Eu6UOpZLCTfv/R10POok/j1knhppxP3jk1ZHxIs
         TyZLo+JOKMb05olz60brpdXQMznqXCtfScYoeHf3fKU98ChcQth8ogMJLihaqiPpGJUn
         lxRaSojd2RAUOKh7OBHfkeq0kS57MxI0JHCXuFbGmEB0xDWqWLc5B47vhmDIMAiFzmU0
         EkBCbMcPwVasJpd+1hutTYxGVX9clcPyG90V8/ShOjbd/fz63QRhe/cmCMRvJtdO2y1s
         qq1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781022184; x=1781626984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ex1JumNzOOfFIPKyf4s2vKOD2Tzr8WIN6i8cBTe4660=;
        b=VVyfeeRDcTFZzq6fIRGaFQk4SlSss0HdHIaO7YALA9fpegOz5tt6aWrA+vElfKIKLZ
         CIK6qnmAAXaFkynJwzSiU+SMf8DcAhqN9ql1uG2bisCelQT9GKoMTdJGEkS7lPQ+aBJA
         E3XTd4MAkmjjbRsx0gssrK4BNUaHExI3fVN0otSeBPOsyDUzYH1Pn3EWTXIM1NaiSwV5
         lFhSU922iPtj5icHcWmDokk/sX+1QrmBUncvRDLX7eg628zblhXEMH7cwZe/bdQlOC2J
         v4oGY99Q1SHzWuiBoKtTAx+aAtA2W8ImSqXQqblyWiriuhbfqt7x8eRNEGj69tpLfEID
         4u7w==
X-Forwarded-Encrypted: i=1; AFNElJ8IJCzmdnGd4CJAVrOzNBUEpsVft8pkMz2hsSR3Cg8XLfECRV25LHsTaHFYJW/u4d185eyv0UadFCXC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1Y5yn3BVJLJfgPZbsjOWNK+JZJZ5ZHA+F91yw/UyAm6JxNmZE
	hq8aDgN/IzpiPee9r3T28u2Y7lG4ziFJ/EQEWdjNYPLkcJ/Unrn8EQ1p
X-Gm-Gg: Acq92OGSVLjYWEL/qcCeO/wtcWBocR8uslfGo6/ZjT0sqkDK5ioX9n/xckR5aTheogn
	+pxTT9ahUgSE6hMnqR8zfvdAukiYORv+oBjTLfecPmzP7QASkRmBzl1Mo1j4AY7jElaALqfnDOF
	z4ZV04Lu24vZyYN6TVkKJ/mE9y+ZpedkzvVKXgAI5vYcJllHheUzT/M+aCHqRnJ+Znmsk4+Abvr
	EvrxodWwbLLv9ms6rGCc7gsxiFFpnhJREO+k4c5KT6VAOlpFmHtDT+K8jP2CtYLt7SxwL8NLMUb
	WSKmzF7igbeiD4zNzXNff29HkZGl1x9wWEzQSowylFJq87IRyOQuSqm45eUdehL/zyPg5QIWYDO
	eqcdRnnSCd9vp8lHd2Iwj2JpydGG5239ggCqp1vf5BY2P+HAtw99L9B9sS7/9MJ5Fx03m5rj9ik
	8VKRqRlzKqeXOz2+ueqwtHMYvN7YiDojVr5kDdJhkCm2jKmjP2
X-Received: by 2002:a0c:e747:0:b0:8ce:b2e9:a4c1 with SMTP id 6a1803df08f44-8cee5fe6a67mr258782646d6.14.1781022184219;
        Tue, 09 Jun 2026 09:23:04 -0700 (PDT)
Received: from localhost ([142.181.163.192])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8cecd0708cfsm206620416d6.38.2026.06.09.09.23.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 09:23:03 -0700 (PDT)
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
Subject: [PATCH v5 04/15] ASoC: dt-bindings: pm8916-analog-codec: Add PM660L compatible
Date: Tue,  9 Jun 2026 12:22:44 -0400
Message-ID: <20260609162255.31074-5-mailingradian@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309212-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BED54662722

The PM8953 (cajon 2.0) revision of the PM8916 analog codec is also found
on PM660L, typically connected to the SDM660 internal sound card via the
digital codec. Provide a space for specific compatibles and add the
compatible for PM660L.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../sound/qcom,pm8916-wcd-analog-codec.yaml        | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,pm8916-wcd-analog-codec.yaml b/Documentation/devicetree/bindings/sound/qcom,pm8916-wcd-analog-codec.yaml
index 15389645a3e8..be47dbdb2e92 100644
--- a/Documentation/devicetree/bindings/sound/qcom,pm8916-wcd-analog-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,pm8916-wcd-analog-codec.yaml
@@ -14,10 +14,16 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,pm8916-wcd-analog-codec
-      - qcom,pm8950-wcd-analog-codec
-      - qcom,pm8953-wcd-analog-codec
+    oneOf:
+      - items:
+          - enum:
+              - qcom,pm660l-wcd-analog-codec
+          - const: qcom,pm8953-wcd-analog-codec
+
+      - enum:
+          - qcom,pm8916-wcd-analog-codec
+          - qcom,pm8950-wcd-analog-codec
+          - qcom,pm8953-wcd-analog-codec
 
   reg:
     maxItems: 1
-- 
2.54.0


