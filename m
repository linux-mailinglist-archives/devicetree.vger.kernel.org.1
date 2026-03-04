Return-Path: <devicetree+bounces-271245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCRUFuGOqGmzvgAAu9opvQ
	(envelope-from <devicetree+bounces-271245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:58:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BFD2074F5
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5D15D3021402
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EC32373C0B;
	Wed,  4 Mar 2026 19:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KJmso6OH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692B93A5E9A
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772654302; cv=none; b=tsgRcBfWgfQXpAt8audqmhoqPaQdZp52+zLNvcxtUvpyIC+i+NELFTwJNKUhzdks6aAHA1IbMZ0L4fIBo4fRoNShyCB0Mzsdm6ZdiNFHM2DgvO1D8eNFCXkeSFTNhZoOQA1zc2V280m+r9gYjjlEKj4lj9gWSVj5YuubvCK+lqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772654302; c=relaxed/simple;
	bh=n0R40XRfDjy1V9Ne4xBLWMj+F0n2Xug4NvKwAOU0ctc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jfJ9op+njbd2gIPbqK1fSFapbOFuh6IO4/uwNzmuuaIcKupl+cm2cU/92WatCwxsmVB4vJI75XDxJYdlAQzHhDv2aoGS51lpI/o9HA0qI+BXvboeZOcHjA+N5/Gt16HY2eP/jEYDYL6TW580fghDQ7Z3/SgTK6vtO/L1jyAzHAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KJmso6OH; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8c7199e7f79so971519185a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772654300; x=1773259100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UwqufDdP/7LZrzEeKntvUtFudz4/SZEf85WjJVi8KGM=;
        b=KJmso6OHJbjGM4bGpLWN5KTzHVXj6F1yoeR9f/WAWlE/vwzSYViVNd4QZFTxnkoHDc
         9bQ2IecCDTj2OVSaXuEvr0V2xYPnQ83lnQb5Tbhx5pjXFqE+AgBCEZ1TOKJV5ssFdv2E
         Rwl22/RVPL5TwWpPxw168wvsC0aa31hWlhQKo7WJjuV6feIZtG1r0h0m3yaIKs/DP7ap
         Yyu1BB75uydmDFtGTSwtDs/4egOOkHsXHRhXMsWY+eXmlHC/80aBtiA4Duofzn8gRplw
         PKT01HUQ8sAs+AxbiOKM6B82H29k8eJTo6Y6RK1lkJUdR2K89YwNmryLpM1PUf8ddsVQ
         voYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772654300; x=1773259100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UwqufDdP/7LZrzEeKntvUtFudz4/SZEf85WjJVi8KGM=;
        b=kMXqLCew73LMQ9aOFrj2NVH6xD14AF22wK3Pglicy/jiZIPbjNKGgc9AmqTpiHTn2/
         dv78RIx7N2TAWdq1pZtCZoHgYBnOrKCfHbhkO7FlgU0sieVHuMJYu8HiplZcVOkmc0wY
         I3nFtMtyv8MIBKLS49vYa/iLvVomgvnJt/snG5Kxxq9WU910MyxfBzSrUYsKmjGR73gB
         7fshZU/MEya1f9qGBKhigFpPAlRE+SkVZ0gy2g8NXjxMM/SqgfcAY/9Ugldr1JgRyAYM
         BA6E/+pVztotsuRB1YGBvLewS2S32On6qIRsscy/1y7YZOKoLxyc4UEGuedEnf/R61rM
         J5gg==
X-Forwarded-Encrypted: i=1; AJvYcCUHSwvaCTaQLtK3FYlRqbj9ikL0rwP+A+OPoNupl95r5uvnCX9CyU1hZykCRU/uC9jaJ5i7Qhs/sy3y@vger.kernel.org
X-Gm-Message-State: AOJu0YyNisLB+0U44DPU/9wgq7alBDRBZWA7irubdIOuadSb2tTiIn1N
	z7Tx4xOh/UW/JuyoJR+T2ATZYE19MU5Xpagh3DlexJoAsq6J/6btFYCP
X-Gm-Gg: ATEYQzxf/PE7/6SpaaVWjtz75ExAX698M+Mi74ODOha25/DdI7KILrT+NbbBxr4i0Go
	tqGTw1fI8OxKxXqtIHwAS9fDhocqvjGhoGoXVt3BxMmUDNW39men08/zpvlGF74Ve28BhV1JW2D
	ktwsu7UVJ7ofUxDeaWrDnfdFVMZnrO6CzBwAo/8p27MwGhiKZYIMIWyW80S6QjjWrB5yrUm+Hjg
	cQVIAhu6l1NbgmldQBiENLpYtrMI/j7IPMQomZWB1vUoqUustNmJCWLrcAZT1ZSL7EA1N1wuM5b
	qf7h/3ZjiB7NmkWmEnUsq5M9XxAnBLmlpS6NtrzIYSj/5xefEuyBBNfpqSsnqBa9DnQlt8MtrW8
	jBtaQJ7YbIb6uXRIdoaOk2poXldBgohop6ogGRwY7OaoKnwB4HvlM7Fd8fw5q4fMqskwgwmr3hg
	ThsnqsYUGJ2H0ZQLsFilKhGG2kow==
X-Received: by 2002:a05:620a:1aaa:b0:8cb:50d6:18be with SMTP id af79cd13be357-8cd5aef9863mr364551585a.18.1772654300437;
        Wed, 04 Mar 2026 11:58:20 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf65921bsm1681618985a.1.2026.03.04.11.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:58:19 -0800 (PST)
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
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Johan Hovold <johan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 03/11] ASoC: dt-bindings: pm8916-analog-codec: Add PM660L compatible
Date: Wed,  4 Mar 2026 14:58:07 -0500
Message-ID: <20260304195815.52347-4-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304195815.52347-1-mailingradian@gmail.com>
References: <20260304195815.52347-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: F3BFD2074F5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271245-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[mainlining.org,quicinc.com,linuxfoundation.org,kernel.org,opensource.cirrus.com,renesas.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

The PM8916 analog codec is also found on PM660L, typically connected to
the SDM660 internal sound card via the digital codec. Provide a space
for specific compatibles and add the compatible for PM660L.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/sound/qcom,pm8916-wcd-analog-codec.yaml      | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,pm8916-wcd-analog-codec.yaml b/Documentation/devicetree/bindings/sound/qcom,pm8916-wcd-analog-codec.yaml
index 94e7a1860977..c7424d755cd8 100644
--- a/Documentation/devicetree/bindings/sound/qcom,pm8916-wcd-analog-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,pm8916-wcd-analog-codec.yaml
@@ -14,7 +14,13 @@ description:
 
 properties:
   compatible:
-    const: qcom,pm8916-wcd-analog-codec
+    oneOf:
+      - items:
+          - enum:
+              - qcom,pm660l-wcd-analog-codec
+          - const: qcom,pm8916-wcd-analog-codec
+
+      - const: qcom,pm8916-wcd-analog-codec
 
   reg:
     maxItems: 1
-- 
2.53.0


