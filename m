Return-Path: <devicetree+bounces-264572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFDFDZzji2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:04:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3C4120A7B
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:04:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3F260307C494
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 174F62EFDAD;
	Wed, 11 Feb 2026 02:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jv1kR6N3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3A02ECE9D
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775360; cv=none; b=e5rU48t1QCXF7kw9pQIwEgYGdzxQGUc3V4yV3qk83EVOY0dHvBPISN9ogXKIjv8ze+edeaRQVCpzJCaNgPN/24Le9FMSFkGDUgAVHqY1kAuO412ZA9cgSND8KqcATwst+Is/d/6WGKlqm4rJhRjdTBanyih/Eqgbw/jma6VNj0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775360; c=relaxed/simple;
	bh=7qSLRPQU7D7s9zMby+yRBewosfp6zldKthQykZjW0Lc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UD301JtMP0ltwPQJXO6KSUXHPoJYQTOj8eiUJkd+P2JCB84D/XF5FbF0ZnzYfRh56kmk+s2mnEcuHn4u792f9lJ1/oPBQTZfd4/7rf0YuiI2+lRvAfLpdu7w4JogF+CNQv8nLAIVVumD+N7tkHQhAJ7PHuxTM+p8rkIwqdHzO/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jv1kR6N3; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8cb20bcff5aso120439985a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770775358; x=1771380158; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iyuqweM7CIcr8tGUpS73TaJBp2mA+Iw0vgZfHt4KGyk=;
        b=jv1kR6N3zT8CGB7/JPnSkIM9wcKymrmcBlOA7xZzzO6wd3cNA9AyqeZgydsvO6r0PJ
         SJZLVmVO5DdNRX7ntu665qkT6py3UVHC8lpcC/xvoPJE/ww7+GVM7sDyapBUKhFdwqoS
         lM3dYC4WjOcki5UphmOIEkCI4rfVUAeNKeQK0fsoW4E+llpf11cJW/b4ZElSZrSMNkJd
         +Qiflcd6/lDNDCi31ALRJ7YVJts0S5wZbrvjCQ7Pg/xuxe7KaMK5QngcCJTJwKUOOGlP
         fyY2E+2Q1I4VQye18Itm6EdrRWDzVzVrwwjuNLTUmTjpGlP7WnjkUfIqjJW8YUHejDuc
         fRpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770775358; x=1771380158;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iyuqweM7CIcr8tGUpS73TaJBp2mA+Iw0vgZfHt4KGyk=;
        b=aggmdA0ZQqB/+5loPhnJSZwv0OfOjlzAID0KiJgRgDgIonjUq36p/6NxKDOYEjgi/k
         Sn4K4dW6pg7lRCSLclhSoE95VyT0IvxHJddUpbn4WjEIuIF1dh2aWWucmA8Ir/PFXjit
         wJo59jYJvt6V+vcUCmT76KbhGXXBTvpGtkYPilhH/Juk1qpqb9PVeziqGlWFoI6F5k51
         km+77WptLmuFohf+2rQ7AJmTo1Q/v4gHvEJ9aFq4DAUXTUbtENY4qBk5yJ5CJPuAljcV
         97qiX2HBHeQxDElgUEnTo0NhE/x8x1M0YlifEqfDmDnyXQ/gNOKik9OOLp+OEC/t9ScO
         BNew==
X-Forwarded-Encrypted: i=1; AJvYcCVG9ZdhnHSQqVs6YMXT8LcYLL/9QZTUzQVA+srmukSpvvgGdKOtpGWAEVMNkiURQfuSQFN/xJMAFOnr@vger.kernel.org
X-Gm-Message-State: AOJu0YwYdQjDH2Kun6I2aPZpGMEiZ8tUauRz7W7tJ/2iw0RlgvUHP+hr
	J7gc/+l8lUocmL47I/wKIt3mT0aTYbfXrSDs5oJxk3nn8q3kjdB9XWZs
X-Gm-Gg: AZuq6aKuM+LkPCkun866kdsJIRny3QDW9/1El02Alrbapz8riQanjvYTvaLbdvBsn6a
	hg4yzmOlUQVgjToTkhpQ4hoDIFO/OY7N6/VarcoorVysdabOSBTbvGkt9/HE//LqWdz4NMzsahL
	EaiHOPk47Lns40JdPMZxgrFaMOIhfLcAA2PC92V+dRTIW5LpwkjpZpGXzAtm9BpeTLl+PEaAYI+
	osYg/ZUJvyMcSeBp+xcWak5cxM0kM1YuYTaHFi9v9qxQOl8D1KrKqHvx9jOfn6EhTI7I92hmheK
	tqlqIwImTNXoATHAT2sAjMtf/3W06xsSSyS9tK6Oq6S3kF1pwUFdTedKEDUb9pR4J8StdepVjBM
	dl2CysMRGE3/mXHXI5t8zuGcbiKubOTVi8YRRYcrfljfEA0DVMkPePhG0mLP/6fkYANkDIDfPss
	J2Psp9qXOAnZYR4obD/CR78Xq6nZ1jUwU0AXyIyy3vG0iRJwXMUshXB60n+IpHaIb2t9wNW39yr
	dYHn/jB6szFMOc=
X-Received: by 2002:a05:620a:1a1d:b0:8c7:fdc:e86c with SMTP id af79cd13be357-8cb1f64d2f7mr544508685a.11.1770775357740;
        Tue, 10 Feb 2026 18:02:37 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2b0bc8f5sm12002985a.6.2026.02.10.18.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 18:02:37 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Johan Hovold <johan@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 01/10] ASoC: dt-bindings: qcom,sm8250: add compatible for sdm660-internal
Date: Tue, 10 Feb 2026 21:02:53 -0500
Message-ID: <20260211020302.2674-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260211020302.2674-1-mailingradian@gmail.com>
References: <20260211020302.2674-1-mailingradian@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264572-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,linuxfoundation.org,quicinc.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mainlining.org,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8E3C4120A7B
X-Rspamd-Action: no action

From: Nickolay Goppen <setotau@mainlining.org>

Add compatibles for sdm660-internal based soundcards.

Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 15f38622b98b..ad5add422c4d 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -44,6 +44,7 @@ properties:
           - qcom,qrb5165-rb5-sndcard
           - qcom,sc7180-qdsp6-sndcard
           - qcom,sc8280xp-sndcard
+          - qcom,sdm660-internal-sndcard
           - qcom,sdm845-sndcard
           - qcom,sm8250-sndcard
           - qcom,sm8450-sndcard
-- 
2.53.0


