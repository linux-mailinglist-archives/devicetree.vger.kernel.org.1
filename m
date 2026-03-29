Return-Path: <devicetree+bounces-282025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wA7xHNrDyGmOqQUAu9opvQ
	(envelope-from <devicetree+bounces-282025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 08:16:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DEB350E8A
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 08:16:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4AF573032DE0
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 06:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8C562BEFE5;
	Sun, 29 Mar 2026 06:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k8vuASOa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD6B4502F
	for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 06:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774764957; cv=none; b=mUSqEofSxnaD+6hFnVcBsnS3gEgtPyrikDXNh3NkuA5CsKLPZYJnndiFeZSt+UhkK3cxViQH7JQCmNlIwj4c40pi6aBz1yaRzE7yG3q33XgrTU8xhs8vDhB08dkov/jO1rcsNXPr/U/vyJQYl77m8azIV65OtzTN5dyZ1FgNA/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774764957; c=relaxed/simple;
	bh=iL31+SMrBzKCE3ncPrH6N3IXt0HrvrV+OHrHkY3ZenQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aKQd3kLEsrPb+W2iHBWw1eG5+nS0doNNlSKrlK9Bsn5XB6rbuOGQInjdVMsvLtcggwH74eJOibDAzzgETganltDWNih2h3KMMD5PHEMKJb2eyHNkRVcFo1GtmhmU6n9QfmY09Tpcny81/GvMRt1FZiSh650K/GAn/106UVzB8FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k8vuASOa; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-82c4b5dfe6cso1610498b3a.2
        for <devicetree@vger.kernel.org>; Sat, 28 Mar 2026 23:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774764956; x=1775369756; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jzSVIyxJVE3INc2YlO2V/JlUMWvH8XiTteapFFYHtbU=;
        b=k8vuASOamzjpgg4c180pnK3+vziT5YhwXQCQKYS9zVEZWk9hbtyynosXifGEYkMqF9
         i1YQtkrYzviBIGwP98h0Z7KMh4S4G7+MTsZykZyQQ6jK+U5QqPBpFceRYUQD0YnzXyHo
         drEefCBAnaOYhOPH5ncxWu4opEjtZXRngL3aFjOQI6e/dCy57ifQdqyapaLqxbk6bEJl
         oNj60uThk+fRc6HwZ6ALeQtjxZ/E0QK+KMJukJSqrPujOBg+cDzAIW7Yfc20l25Rmlho
         sXUF5j/FML3adZa8+USGt3KTE5moimJwwtbWKvCkmnhXN29SqUNhs9PCA2sI7EgjlhlK
         N1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774764956; x=1775369756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jzSVIyxJVE3INc2YlO2V/JlUMWvH8XiTteapFFYHtbU=;
        b=XesNETpnKn7OfbTKGr+n57oIKuqbwKFxVTG6diLj/RtcozMIagEf4liy8hw59bbByD
         uoGs/3dNf0bep77A7H4PMAM9ak9MuW1pbq9pIgV4cn80OPoF3cQbU8SQtxW4Z0KUhnY3
         ykxRP1k8z7flNWrnTqTjozKbTPMjKb5z4dTaI9rIozK+hk5j3i2JFcKd7MLloIAC3A6/
         ZIQHd9/rALwXGwOMANqX+FhtiTjoe5YhQfnzqttKGj4yZ8NdxFTPDeWBfdpXQ5BDobhY
         dfcdAuT8LvnVLEK4OIUagkXK+PW7OTWrRpRSYtNk44CEimgiWOHDX2zeeRe6z1QbGChW
         dQkg==
X-Forwarded-Encrypted: i=1; AJvYcCVmbZEZkgBBAyxGin3Nw3Vfca4i4g5/fsZAjBzOsySE1QvdjNkYbZRx2NWbck2eoJ4SGr48sTBDhzmY@vger.kernel.org
X-Gm-Message-State: AOJu0YyeXMVHJeqTyrTEM4fmG6u/j3XDSBYLZAKwtBbyfy1JZlHKLpUi
	2aDv6pIADLCdD3tC6QY+szyo4j3fkojvJDniDngsfg6AIsZBa7gtlqU5
X-Gm-Gg: ATEYQzwg4qIs2my7hOLuacDx52zYdf0j81+3sd5oiHONoupSn3Fn9fU9cH2GdZItXln
	O+lb52Hg7Ub+TqAIXNxPLRF3L8AwkK6GsxncGCcYg9YNCis18Mwprq0ElGlUkM8MYaAU+4mNqRi
	I6x06Tm/4SmU093dY123l8Ysth4Z5fq84MhC2xDQgFTdf64WjQtgkGWb4Vuj5mMwgvDoT+OhVN/
	bL4m/THQbKbuiB5M4w9bn5YTMsfwXutEt5lVlxLt3f+Oll0k+T2CtqhvH4qI6mPh1AlxmPxk7f4
	sbn0k6K+RG4iuoyDgV8nRQTJkVcJyF8Fb20lNgxw+d5GF6jhmvq1lnXcSCb/lKGC2cg3RyM+be/
	D6Jv/Nh5KpFawRqB3vG9clq3GleXRe6kJEWt8ylfAOj/Wo48nTSFYIYcIt3xDnpBPV4wBeu0k5X
	lZm2f4SO6xBXJ1ThyTt7DYF8Wkl4it9FDOc5Xmi+LRyjMKz/JsVuCx25jyoDXVW/OkPuCXArrXD
	iY=
X-Received: by 2002:a05:6a20:7485:b0:398:9466:2eda with SMTP id adf61e73a8af0-39c878c4986mr8419647637.19.1774764956074;
        Sat, 28 Mar 2026 23:15:56 -0700 (PDT)
Received: from toolbx.gk.pfsense.com ([103.70.166.143])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82ca8436f19sm3709731b3a.9.2026.03.28.23.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2026 23:15:55 -0700 (PDT)
From: Gopi Krishna Menon <krishnagopi487@gmail.com>
To: rafael@kernel.org,
	daniel.lezcano@kernel.org,
	rui.zhang@intel.com,
	lukasz.luba@arm.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	vireshk@kernel.org,
	conor+dt@kernel.org
Cc: Gopi Krishna Menon <krishnagopi487@gmail.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	soc@lists.linux.dev,
	daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	d-gole@ti.com,
	m-chawdhry@ti.com
Subject: [PATCH v2 2/2] ARM: dts: st: spear: rename thermal_flags to st,thermal-flags
Date: Sun, 29 Mar 2026 11:45:20 +0530
Message-ID: <20260329061523.98346-3-krishnagopi487@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260329061523.98346-1-krishnagopi487@gmail.com>
References: <20260329061523.98346-1-krishnagopi487@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,nxp.com,ti.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-282025-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krishnagopi487@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,e07008c4:email]
X-Rspamd-Queue-Id: 04DEB350E8A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

st,thermal-flags is a required property in SPEAr Thermal Sensor node,
which is incorrectly written as thermal_flags in spear13xx.dtsi.

Rename thermal_flags to st,thermal-flags to fix the property name

Signed-off-by: Gopi Krishna Menon <krishnagopi487@gmail.com>
---
Changes since v1:
- Reword the commit message and subject

Note:
* This patch is part of the GSoC2026 application process for device tree bindings conversions
* https://github.com/LinuxFoundationGSoC/ProjectIdeas/wiki/GSoC-2026-Device-Tree-Bindings

 arch/arm/boot/dts/st/spear13xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/spear13xx.dtsi b/arch/arm/boot/dts/st/spear13xx.dtsi
index 159e941708ca..97357680dd51 100644
--- a/arch/arm/boot/dts/st/spear13xx.dtsi
+++ b/arch/arm/boot/dts/st/spear13xx.dtsi
@@ -332,7 +332,7 @@ wdt@ec800620 {
 			thermal@e07008c4 {
 				compatible = "st,thermal-spear1340";
 				reg = <0xe07008c4 0x4>;
-				thermal_flags = <0x7000>;
+				st,thermal-flags = <0x7000>;
 			};
 		};
 	};
-- 
2.52.0


