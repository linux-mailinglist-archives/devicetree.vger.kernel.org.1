Return-Path: <devicetree+bounces-264574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKuRFKjji2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:04:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E807A120A91
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:04:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9F87309D0CD
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29DB2DB788;
	Wed, 11 Feb 2026 02:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VwCCH51t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com [209.85.222.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E16D2ECE9D
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775364; cv=none; b=KJ3ZvOSxj/iqoOWN2Mewu7a7v/JmpC+tC63+wrPmSKxEzuuCO7m69Q0JxIP9l5dpdZB0qH0RtqgC00xly/o62+xN6hy9dMgMq69bw/bS9r0egrEHis2CL9Db/8/LkLCxiZfdxq22OD8B/nrpj4veXym+MZuKXas0tS7n9ccF0EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775364; c=relaxed/simple;
	bh=UemTT/Ea45TkyWQXQtnhTSn5rytRaDiczph1i8Pdn9o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VKhN0wS2j/cRUrRer5hmPzaMZeHZ25rhddKtgG/d+4bzw5M+SCikiT/hljhk57lCItLeY3qOZztQFwT/2QGe6tcK0KZSBnlPpjE9csm3svhJg4kuGE9DbsBmH5K5uiFj58i82/ZN7SHyXvV1zXHSc/TWqJaMY80Y4UjbqU8nGrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VwCCH51t; arc=none smtp.client-ip=209.85.222.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f195.google.com with SMTP id af79cd13be357-8cb1c4679ebso209800285a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770775362; x=1771380162; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8SQooQVS6z7NQlPoa6keMGq9s98T9K22xL0ks0nYRhw=;
        b=VwCCH51tLnkPu27Zj+fbW0XVjAhDCkbwCQI4REHpj/9mKy9TMpdycoUhilmr7FuO0y
         XhuR5nzdGOetk56/rP6PdC8eswpuK7whm8Z1ZapOb6H7rTppSumQ6oPsUsRkt5oDeipm
         mdQ4WZa+hVFP7i/HimB/4c0LkSRn5QTI+qXUscpYsnx/IV+9bHPvIPwAIg0moyhRdob1
         lvStSbBuBb1w4qrP7TywduFFzBWiNcLGcLY0qquJQLB3oel2a32UlgEF5TYfvCk6B7nz
         ck1MsPvqQz7AgJK/p3L39/BEfIDctYiawDAlRwToE21JZPcfBjEtu+fGgo/hFBqGZRmr
         Ukmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770775362; x=1771380162;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8SQooQVS6z7NQlPoa6keMGq9s98T9K22xL0ks0nYRhw=;
        b=PdO8LwN5SoMLsG6XUltqiqDeTddYcLjgaxop1qWsWo2W3bv9g1u7dB7zK6GaBxDdk4
         CxR7977gYHJUzyd8LY9eIQOYY/g5Baqqm4V1bDF7r/7Ozcq2RpoMyPp/qlJy5yEVkVBl
         9CbKHkZRDkqY+wp9IW7/qLy588IZ9Geju4YpvlGc2qU3e/2HyYYDxXIYn23BGxdVTTfc
         UuZ+XOYpvXPCBt+kEqVjMGsUC+DQ+jat7hH53MoUFiC482/+8CxjHt3+OJoBP6iTojYz
         Cu2TC5vL75+rsLFxztpYjO0gSfy0BZ1wDWcCTbi107t5UeI2ppSe1Tj/xVxktC+xiwLu
         EKxw==
X-Forwarded-Encrypted: i=1; AJvYcCU8h81CPfR9B6vG+rQLCVDN1PT5QfZQwkiH1tzyN6k/U8gJ9sBDN3sbkr243R5WzagHHU/w7VPBlIuF@vger.kernel.org
X-Gm-Message-State: AOJu0YyGaAm8wUDcJe8DU/YXhxoToDtkxxj+6G/yHkkPnQoowQCkCcbx
	yPZHDW8S1KtasLGKkLC/xAIXILtWwMYDg2W79O4jWbZTP1NYl5Q2qZs1
X-Gm-Gg: AZuq6aLsZH/IzrSwwa6c07HJTXG8sWcFT3TM6O55ImkQWBqEyXMbjR1LcWVx2dboX7i
	Qb4bXYqCtYgbrp3bBIGQEFc91Nyb1zcb8zugnwEJZlLGC+U/gmg0a+EyCFdsWqIE7weQfL5Frau
	7gD0TkDsu/4B/MiWiBIM4CwLwDpmy1y4cLUwEeE1arBXf8QS2POl+igcxjqmNT7ku8JURPbf2QI
	cf8uTBbylJByhbdIAzQ2fYe6IlAr5L9xjO3eTwOfPHkdtSrc2YSrYBG649BezqhkKcGepirMRyd
	3KEenXyo7iYqRm4iDd57n3QMXhXu21G6vRHeDq12ebJyYITMJ+jWx2qYkpN/Wq1DcI4cQhMHDtV
	px1lNqntvHLb2Y1OplP5Azsknks0n+yEHlT+hTPwZtv3bi6NBpW2cKAL1ok/v29BDSgIvnU2AjX
	FfHuH2RgJsx3RDA5OYyAWu2k+wobtDMpziMNzRyiKh1zBmgdBrYq+PZJ7VfmGSImaLovl1PCjIE
	RbT4JoFjt9zOxw=
X-Received: by 2002:a05:620a:40c9:b0:8a4:107a:6772 with SMTP id af79cd13be357-8cb1f72a954mr610497285a.76.1770775362468;
        Tue, 10 Feb 2026 18:02:42 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2b0bc054sm12410585a.7.2026.02.10.18.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 18:02:42 -0800 (PST)
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
Subject: [PATCH 03/10] ASoC: dt-bindings: pm8916-analog-codec: Add PM660L compatible
Date: Tue, 10 Feb 2026 21:02:55 -0500
Message-ID: <20260211020302.2674-4-mailingradian@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264574-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E807A120A91
X-Rspamd-Action: no action

The PM8916 analog codec is also found on PM660L, typically connected to
the SDM660 internal sound card via the digital codec. Provide a space
for specific compatibles and add the compatible for PM660L.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
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


