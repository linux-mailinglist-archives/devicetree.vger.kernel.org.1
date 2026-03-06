Return-Path: <devicetree+bounces-272138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBlGM83eqmlqXwEAu9opvQ
	(envelope-from <devicetree+bounces-272138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:03:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3873D22241C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2DB7310894A
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7E83AA1B0;
	Fri,  6 Mar 2026 14:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="3jass/54"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0FD3A9002
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772805700; cv=none; b=e6wsnkQQwQj54grTAyh7fq+yQWxH2RLzve5qEZ+uHBQlhBuijnztNtaCUKjXPUuU7zBIf9+4Tq7xlkSjjYEz9QFqDRZKEkbiKMNnFPWJvFBXlAkWjvJ7Ut2QSniFMouP40L0/NEEs+3iMKIG9Q0O3J2j87bkXqyJ0JtkiY/QwLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772805700; c=relaxed/simple;
	bh=wkBia88uzJMGxqRD6S3lsbMjeBW6LiNh1cpModx72H8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ab5veweNHXTXbTNHaabQBlmbymPefaWefMIMcESGhRqCYxhQPW2WzO4a3TC4rJOzDaPWmvurNYXEBDDCIi7wOESh8ag3dbEtJ24kuvJ1yhIKS9pSJr+fNR8KnWCoCbOYV0QY09RgpRVIcouW7hTpyg6m9KG+pgTbLAj+tPYLoFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=3jass/54; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b94a19fdso5290434f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772805690; x=1773410490; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vCjpNt6dWkJQCAOzL3i/TG9URIgkeT7ZM1PwnUPeAYg=;
        b=3jass/54aoPksJpnbGLfLY6ttoD1Zpx3BHtjzdQJyCJm1jLjc40eJP84wlrfLOf9ux
         LQMxpFUsWPpJSjiC85b74awObqplD0VWZhQVirFFhlUQoR94faghRQMn5Vc0DOO8S7RZ
         lk3TerFSKTeN8O4zYeciSLQJZq6xqHeC1PxuUl98X30iAThX0HQEKojAoft+e0HgS/cl
         ejOfn8F8y30FWBSEPiS9Yl2VsMuh1Jz3QFBWQqMi9TVR08DDtRvJh2CCBCZo4HLtKZIN
         T1updq20ftXssojIG8f5LBbRjcUx1LzTaQj+C+BDrk7e8UB5ESJjm+HOW/nPn7QH6z7Z
         NQoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772805690; x=1773410490;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vCjpNt6dWkJQCAOzL3i/TG9URIgkeT7ZM1PwnUPeAYg=;
        b=Zw3UJnRY24DeVYHaGN0LRSuzfHgkNxbtJI+Ky2kd/h4VNCAGdd1AGQdxAmhEAA8UUD
         2XO9Yr3BDbyPxYEDnCV90u2qXmhqoAYkZuXdNbnzE2a2flnzr9Axsbt8EfPXD1IRvfLZ
         wEA/rOZzk0iPRSOUQNSsU4GUnuLE8qKDwnM2tPSakWKChR7BczHC5cPeUplHfl2aotZJ
         +K/g079OdQ3yffGMhmCXsMA3KpCA1r+uUC0wSRDK87ZWCP9LQmQP5qJqex5ZLjPK9c6X
         T5jFeVFTWIv5U3NAqmATTvr9vwwtvAfJehNM3QXZSKMaAOdA6KTG5VvtcL7l/49NR8kF
         cgZw==
X-Forwarded-Encrypted: i=1; AJvYcCWjfFY/xexSACn2kTzeRFmUUl3O3XTjJ+giOecBLkwq50AKOHSYsvJO7+3lhFn44pK7wcftiyLk88Fl@vger.kernel.org
X-Gm-Message-State: AOJu0YzDWgVI6YYQ6CPwvRAW6zQ7KsSqfffap4DV2A5AKAMvQ2Jixh15
	I9DqAT8WtSnodwHC2qQHzxXQ7HlDQdeCVTz4IJ4pVhsqBMGtlaZ+fp0DNkh3ntr23Ao=
X-Gm-Gg: ATEYQzzlASoCvGyr8dWVgomsXszDH7f2HviUu7eGYCKn8DKxJ3pxovVwimjKP6watCh
	/cKlZcEe3QaeVZo3uUDu0fPblM0R16HqEKLbMf+QK842rlqNPS9HAw0D1kuF20rAGwyIrhxoTRF
	DQdWXkpWCptAUK4eykinybgC6/QPmPprRsYDCpG5WgVCMLWDDA+OIxm41/X53zIdIL0nN5A67ek
	gP2C1zw4F7XBF3wLk77zNGjvAQI4TjMHTzkCQobjH0+1KI3R3bPqyOB3sU0t+jaB21T3/3ve6/y
	ezP7TnzPkWBPxqEXKita5vULAqHycA4O0ncUuSn+xmGyeSSHsWpD5Rj6l6AhlXL4Zja2BiNoAn2
	/O40ebU944RS5qBEuG2X3OAvKwaA6j9gbGv0F4kLkRcA5bpXBy2eHIyMHHlPOUIXQFKarGPOGwv
	X15FyORCpFyneevRq1UzrvYkccB0TUBZE8f23RbuE87UtVliR/RwDe9FyxWRHvVEnRmb8Cg6lyg
	Rjn
X-Received: by 2002:a05:6000:400f:b0:439:b374:c6d8 with SMTP id ffacd0b85a97d-439da89bbdcmr3621790f8f.46.1772805685236;
        Fri, 06 Mar 2026 06:01:25 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad97be5sm4313828f8f.11.2026.03.06.06.01.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:01:24 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 06 Mar 2026 15:01:19 +0100
Subject: [PATCH 1/2] arm64: dts: qcom: milos: Add fastrpc nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-milos-fastrpc-gpr-v1-1-893eb98869ce@fairphone.com>
References: <20260306-milos-fastrpc-gpr-v1-0-893eb98869ce@fairphone.com>
In-Reply-To: <20260306-milos-fastrpc-gpr-v1-0-893eb98869ce@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772805682; l=4212;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=wkBia88uzJMGxqRD6S3lsbMjeBW6LiNh1cpModx72H8=;
 b=NGipAl+gIt6Q9KQUFZ1cGi4ANI7T7hMgguIpm8JNWRYfC/gARnHOgFgUgmwep/FbNtS6jxYsq
 /NvLG2HgSKUCTTED5we7gq5h53zjFNyj8tC0ny+3+LWA3IWMU3P6UfZ
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Queue-Id: 3873D22241C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272138-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add fastrpc nodes for both ADSP and CDSP.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos.dtsi | 144 ++++++++++++++++++++++++++++++++++++
 1 file changed, 144 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
index e1a51d43943f..83a454ae9bf8 100644
--- a/arch/arm64/boot/dts/qcom/milos.dtsi
+++ b/arch/arm64/boot/dts/qcom/milos.dtsi
@@ -1214,6 +1214,55 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 
 				label = "lpass";
 				qcom,remote-pid = <2>;
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "adsp";
+					qcom,non-secure-domain;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x1003 0x0>,
+							 <&apps_smmu 0x1063 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x1004 0x0>,
+							 <&apps_smmu 0x1064 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x1005 0x0>,
+							 <&apps_smmu 0x1065 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@6 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <6>;
+						iommus = <&apps_smmu 0x1006 0x0>,
+							 <&apps_smmu 0x1066 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@7 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <7>;
+						iommus = <&apps_smmu 0x1007 0x0>,
+							 <&apps_smmu 0x1067 0x0>;
+						dma-coherent;
+					};
+				};
 			};
 		};
 
@@ -2164,6 +2213,101 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 
 				label = "cdsp";
 				qcom,remote-pid = <5>;
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "cdsp";
+					qcom,non-secure-domain;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@1 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <1>;
+						iommus = <&apps_smmu 0x0c01 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@2 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <2>;
+						iommus = <&apps_smmu 0x0c02 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x0c03 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x0c04 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x0c05 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@6 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <6>;
+						iommus = <&apps_smmu 0x0c06 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@7 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <7>;
+						iommus = <&apps_smmu 0x0c07 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@8 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <8>;
+						iommus = <&apps_smmu 0x0c08 0x0>;
+						dma-coherent;
+					};
+
+					/* note: secure cb9 in downstream */
+
+					compute-cb@12 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <12>;
+						iommus = <&apps_smmu 0x0c0c 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@13 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <13>;
+						iommus = <&apps_smmu 0x0c0d 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@14 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <14>;
+						iommus = <&apps_smmu 0x0c0e 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@15 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <15>;
+						iommus = <&apps_smmu 0x0c0f 0x0>;
+						dma-coherent;
+					};
+				};
 			};
 		};
 	};

-- 
2.53.0


