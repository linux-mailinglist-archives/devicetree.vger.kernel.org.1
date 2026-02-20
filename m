Return-Path: <devicetree+bounces-266814-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGcKE/gGmGmh/QIAu9opvQ
	(envelope-from <devicetree+bounces-266814-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:02:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AD659165109
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:02:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 719EF301303D
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73A32D7817;
	Fri, 20 Feb 2026 07:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=quora.org header.i=@quora.org header.b="ZMnHArYW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998F12D238A
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771570933; cv=none; b=EVcO5dJnDbkNPyIX17qZH2PABDFyP6B0Pe2MSHGkHIvePiLxT+zG4UMAZlTWLYKXSFxdf7MlGfOBNo0B7EdIJLUq7yOSa+wGDWJVOG3zDhdEecBA2geWyYF/3UnVOkgJa6bxbecGHObSFljcwRDV7XpvenUEr+x4rQql4KELl5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771570933; c=relaxed/simple;
	bh=Ee+OdocZ2twtL1BAKLCxPB1a5MZDzIcVky35G4Ykez0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=khqAVfP8KQayLscyiyZf34hrOs8QJX6lzCE6ibD/iliNcNYu78G6IuRTigjYq7HCe4qvtoQhLWWIhyzM2irVa3JmLCrjbqo0LM/x3hKsoPF9UaQHF0qMymgaRrwkD42oAG8PDyXp0NV0iAmYsvzygjV+TowyRkhy/NFv4CiOnDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=quora.org; spf=pass smtp.mailfrom=quora.org; dkim=pass (1024-bit key) header.d=quora.org header.i=@quora.org header.b=ZMnHArYW; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=quora.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quora.org
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-354bb7d2cb1so1258077a91.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 23:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quora.org; s=google; t=1771570932; x=1772175732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x2nLpeNsVx9I5k7S6orQYgamemvZgo/LtBQat8yK7xk=;
        b=ZMnHArYWe5oTPi6mSS2j+oVgPVqUgE8GjAqu7ujEWnbha7ECTMT98+LpLH0D8GhpfA
         pPRamE8Vzec39d5XlDtwHw7L0Gv/AnNHN4NkI0qRXA6Cy8Eom3ZuYwAFYiewYilwYQmI
         a3qbHNKFAi7n62nfIe938dF7QV/vsmox9WsRA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771570932; x=1772175732;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x2nLpeNsVx9I5k7S6orQYgamemvZgo/LtBQat8yK7xk=;
        b=w9mfxF3nCBJ+osSy1w8u7t6KH4qDuC2WIdkkETf0ywHLGpYX6q5MORSh4B3q3+dLFe
         /nE89PYQoLOVsFGESeikqgjrLhTPqxCS3D1JoyAL/EnbdlwL5IeuojOekpkQ1dYotpph
         RBkn7doSinZuL7xByR48ILGrXX1C7EaALOD7xC5j648jZQYJUAqtBP8mnQjj2ZJnUmBY
         AJ750B6EyfnjPIC8rkLzYZmOqM51g8MRqkCytECEeUEI2OnwLwiUcn17taFGtksr/BlW
         WyOkxr0PRd9ejFxEwkJRAt5zWEym0XZljVixNYDFFv5S842zweklQ3sVply7xfdpwDbz
         KMbw==
X-Forwarded-Encrypted: i=1; AJvYcCVjM4gvb57/50DCW8drcs+yYRBXTMVQBW1abnbAmV+jiQwoUMC0lKqlcq1WJ7JChMhMeAxcZ3xnT29q@vger.kernel.org
X-Gm-Message-State: AOJu0YyPN8JOVGBgUOiNSQCD6ExDSH4ywxXZjISZUcCZOp18rC9iMPr2
	xGvtUx2TF/4b6n+e8v28hGJboQ06iaNtRN+jo+n0GtDsmVs7pv52HSf9sjLNGJfnUuw=
X-Gm-Gg: AZuq6aKlT/1nZNQ+TqP4JB6huqpTLeMIB2PRzQll6Kr8+Co9AU0y38b8DeTGknnD5o1
	AXpqXdKuBllC/hNAwA6HN6oz69QR4NgqB+QCkzweLVN8ziE6jqZNrhTjdR7SUMry/y7ZJemDY/c
	ALoIU3/tOA1cKbhOB6+B/wQ7SjDlmlO7BfIBl1TiJgPOB1OcM0O6KGpMgmiNP0NmxY/qBlCMd5w
	TMnuPnrFJ0w0YG/EqAiX5eofo4VK6k8LOV2dbRrmu7gE9f5nIfU49IW8qfM+V2eCDd7IieQZPUM
	oQMg78nmYb/5kIjeRYA8AZpV3FIfTkb5nQj1z43qKG9XF6RUtoRGkRv7DbVzUKMNzIpiRFdYUE5
	Xp1n2Cz7jxQyKBNKcOMqQWcvSngoZBKtrerKfFQMqPe/qt4XTqFS7U3AJvSpQS7bIJBqYMKW8ak
	xkEB4r+zOAMT7J3DIuy8l4JNIezVR87wRU67qno9jj+G73UU9XYyHjZWuZFt0axFwi7UltGHGpg
	XnLcQ+AFM2uVqezQUFMvuwZ9DPnxgv8SGlL+RVh5mcOpFeHfhXSvbGdPxW95mdtYcE6T2cc2R+6
	0LknB543Fq0OExwqAwIWAHfObAW7MZ4atraHF30ybpp6rVECKJ1llKRIimb7CC9Z
X-Received: by 2002:a17:90b:54c8:b0:34f:6ddc:d9de with SMTP id 98e67ed59e1d1-35898581006mr3655739a91.16.1771570931936;
        Thu, 19 Feb 2026 23:02:11 -0800 (PST)
Received: from aegis ([2001:fd8:c146:1f00:672a:f6b3:e686:445b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3589d811aeasm2645156a91.6.2026.02.19.23.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 23:02:11 -0800 (PST)
From: Daniel J Blueman <daniel@quora.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel J Blueman <daniel@quora.org>
Subject: [PATCH] arm64: dts: qcom: hamoa/x1: fix idle exit latency
Date: Fri, 20 Feb 2026 15:02:03 +0800
Message-ID: <20260220070204.101672-1-daniel@quora.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[quora.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[quora.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266814-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[quora.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@quora.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AD659165109
X-Rspamd-Action: no action

Designs based on the Qualcomm X1 Hamoa reference platform report:
driver: Idle state 1 target residency too low

This is because the declared X1 idle entry plus exit latency of 680us
exceeds the declared minimum 600us residency time:
  entry-latency-us = <180>;
  exit-latency-us = <500>;
  min-residency-us = <600>;

As 500us idle exit latency is overly conservative, fix this to be a more
realistic 200us, in range of similar silicon. Tested on a Lenovo Yoga Slim
7x with Qualcomm X1E-80-100.

Signed-off-by: Daniel J Blueman <daniel@quora.org>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a17900eacb20..b870f4dc9c42 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -269,7 +269,7 @@ cluster_c4: cpu-sleep-0 {
 				idle-state-name = "ret";
 				arm,psci-suspend-param = <0x00000004>;
 				entry-latency-us = <180>;
-				exit-latency-us = <500>;
+				exit-latency-us = <200>;
 				min-residency-us = <600>;
 			};
 		};
-- 
2.51.0


