Return-Path: <devicetree+bounces-266936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADvNM81XmGncGQMAu9opvQ
	(envelope-from <devicetree+bounces-266936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 13:47:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FDB167973
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 13:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 79B243023D6F
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6B4344D92;
	Fri, 20 Feb 2026 12:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=quora.org header.i=@quora.org header.b="ASfEKYzV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EC8343D66
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 12:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771591623; cv=none; b=YJ73HVK98X8nFWUJQjrUGN+qwh4R0CYLn1m7x3QJ3NPYwIhl8B3Y1sduXIqaK5HQm1DaXSDVaZabCZzEbRFPlfeS8RYSrB7GjLRdFn2b5XFqAoeAWumCk2NCfKbB57QyZfAcysYqjkbF/C0il1cs04Sk0TuXaxV8mBslAnhhixc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771591623; c=relaxed/simple;
	bh=XUTBIlht5yes5zTDE2niRNudXqmgYHNeIG5zNKAFcBk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VFSrEyOpkK1ikia0vskm3MbU62FVGkv3LdzKkEqqjHUbwL6nw/XgO4MVVV+Xn3JJpPo8L1xjGoUU9STBkHk8H2jOfqJpPhMN+NWhDEacsLSMR+psAvtOiDqOLKVPOQx0YuhfrqIRPY5xI6xTqOKxlt6i1SzOBZmzJoNAaW8SQDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=quora.org; spf=pass smtp.mailfrom=quora.org; dkim=pass (1024-bit key) header.d=quora.org header.i=@quora.org header.b=ASfEKYzV; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=quora.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quora.org
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2aaf43014d0so14237225ad.2
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 04:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quora.org; s=google; t=1771591621; x=1772196421; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qO0eb9RcXU0w2QKGyhp7Hy9aMVcGq2gvV+OJ7quE6mo=;
        b=ASfEKYzVZgqHRek6LfEY+X56C4HVGpIRGKIUyyTAU5gWGQ0LdtC5SbucHPJ+t7G4eB
         QT0my/r7mVYGA9WJklgcolrm5JYPqbEm6JbCH940UATCzY0iG/cOv9rmY8A/24JUwQSk
         VXFHxdL+5jakYI2uaNUeuhBXXVu8Pj+Ic0uFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771591621; x=1772196421;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qO0eb9RcXU0w2QKGyhp7Hy9aMVcGq2gvV+OJ7quE6mo=;
        b=EcwkUga195jgIgNKujWYNtZHyALMgj8O1ZLjudgQSBPuEkPhujldZU8MHVZGtIYr5a
         2yZnVPG52Hy2adlx/Ql/SSaNUjZDLPErX0LEkBIj1n2TYMtj7bdsSR93r5jSHNk0tVS4
         EAhmoAduhKHxLOFW30zxPKtNxV5+Vy5BnrGLEt4ldsUQxtEM76mRKWsA1fnC9KxAWZPj
         ImTyvyHBYv33DgaAAdU+o4juFygg1TTmtI4k9pNUhYeLJYxkUwFlhBDpNRiAQKmJyBfc
         DmKT3VgD4wr7ijWnMzXZltThPyu+PRSmH/PxDJ5NqdUpaOm+mGEpgqZNZVUCQYOaZewf
         gpPA==
X-Forwarded-Encrypted: i=1; AJvYcCV4OHUPHIwBDD63/c/+QuoR+v4JBtjYO52NyUIRR0e9wSAlZkHgMtUruQg5UwvOCOrE0PYBD/1UMrqf@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1QvZhjWKwOPegRjFZM5QuE6U21NSfUC8GL3ZSElBKc6XtdS9b
	RYYNRV5IFtbCQC43plqC5WXJjzeLPgQW6TaH+MxGOttDn3EfdmWF8fPDftE8xAvQoGw=
X-Gm-Gg: AZuq6aI+ZS8zjP7gNskl8fi3Erm4MxuhnKUxUNJ0nmTZUvblGBf86zIo8DxhuMRbGXf
	J4AIKmvNtxmQSaVNl9j8xubfo6JIySmj12MFgg6zki8MIFqlNZyonG9rE7UBR0bKvEnvvVvexWf
	eNOeuRBXPbaDuBz9bcqoo3tq6Z8er8dEsVOMRYdDv6Ls7jWHzQ4vS4oH0QXJ9wdzDOEHVMGRKPT
	Pp6eLRNBq20GyC7s6Gdlv0U4plK49uRwIhpDJU+4TLl/S/5lNKBttu4V8yduCASGP//Oxf1wQGL
	PL8nXOlDssQu2jpbeoDckEb9UTJxctgWoe6FcazC+DKl29sVt+J9XltdiEGrQduILxJyKcQ5lH+
	OYcG5VkNyZ3ibbe2CEEkhVi/BLbBg6VEh4FJBVN3I1UehPSXQjv89Ynoc/OL4PK1s7ScczBwqGx
	wCHViz20zk3TVAOOh0VM7SEoi79DMgNpZUE2UWYUfZCTt1fRwKYt/JfMNvMCL8jVynMjAz3t+Vs
	T7PuGtz5QlF6hTqve5chuqBLDy0v10SM+sxkV+4TOiRtEoJvwCWZ4LIiXBCmdpKgV6ATI4r3vaj
	J3Aolfnz1TXcWUUJuqXa06+qOQRSwqahtTeSt2ToHwcyHocl6LV5rhq9qBpM02ATYydxhgGOoJw
	=
X-Received: by 2002:a17:903:37cf:b0:2a8:d9ea:8b59 with SMTP id d9443c01a7336-2ad6cd158a6mr20247395ad.7.1771591620763;
        Fri, 20 Feb 2026 04:47:00 -0800 (PST)
Received: from aegis ([2001:fd8:f657:5202:d49c:c900:af62:5f3c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aafb972sm179431235ad.88.2026.02.20.04.46.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 04:47:00 -0800 (PST)
From: Daniel J Blueman <daniel@quora.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@kernel.org,
	Daniel J Blueman <daniel@quora.org>
Subject: [PATCH v2] arm64: dts: qcom: hamoa/x1: fix idle exit latency
Date: Fri, 20 Feb 2026 20:44:58 +0800
Message-ID: <20260220124626.8611-1-daniel@quora.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[quora.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266936-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	DMARC_NA(0.00)[quora.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[daniel@quora.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[quora.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quora.org:mid,quora.org:dkim,quora.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 77FDB167973
X-Rspamd-Action: no action

Designs based on the Qualcomm X1 Hamoa reference platform report:
driver: Idle state 1 target residency too low

This is because the declared X1 idle entry plus exit latency of 680us
exceeds the declared minimum 600us residency time:
  entry-latency-us = <180>;
  exit-latency-us = <500>;
  min-residency-us = <600>;

Fix this to be 320us so the sum of the entry and exit latencies matches
the downstream 500us exit latency, as directed by Maulik.

Tested on a Lenovo Yoga Slim 7x with Qualcomm X1E-80-100.

Fixes: 2e65616ef07f ("arm64: dts: qcom: x1e80100: Update C4/C5 residency/exit numbers")
Signed-off-by: Daniel J Blueman <daniel@quora.org>
---
Changelog:
v2:
 - update exit latency

v1: https://lore.kernel.org/all/20260220070204.101672-1-daniel@quora.org/
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
+				exit-latency-us = <320>;
 				min-residency-us = <600>;
 			};
 		};
-- 
2.51.0


