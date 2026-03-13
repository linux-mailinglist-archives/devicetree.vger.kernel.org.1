Return-Path: <devicetree+bounces-275313-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBZTJHAitGl7hwAAu9opvQ
	(envelope-from <devicetree+bounces-275313-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:42:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1D5285339
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:42:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1D5C030630A1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AEAF396599;
	Fri, 13 Mar 2026 14:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="N5oZlpC4"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D63833291F;
	Fri, 13 Mar 2026 14:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773411192; cv=none; b=u5rBRphe9qM22LVVnxT+reEi8SJS9/4lQOJdC4K5tCF50CDLzF1cYbJyNEf+SRMHM1lVwxGOSIb+9lWrHWpcgXKKGXBHpgf94vY1j5jW7YWv+HUJVbuTUy1Guvo79Yr91yyptr5q1d9CcCQWckIgriyVk5sE04eAgng03iYmKgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773411192; c=relaxed/simple;
	bh=UTq691sm/2IDUmgHPJbWWA/JCLuN534M7BjSdbmQ2wk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oul300GhN8M1NL8DC/BSPfKioB0uK0kbUN4qoQVOqmv4hEHhZ/5WcdRywjwS9r3u2MSYfRS2NoeBJoA6zqgNCeXb6TV5dpVp0TVAOF/kX9anC9bL+suweVBMNJSyc8Aqbdt6JMIrg5v8WxSVVZhrb0LYQEN/7SZ8EwxLJ0NfD/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=N5oZlpC4; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=Of0tCyi4GhX/abWwE5gSOLlU0u1QeOv0uyKh7x2z7GA=; b=N5oZlpC4c7lz2oq5wDywJ8W9WT
	kGe3L6+PURFHNg8xB38IVfVktpybqfpW5jtwFt7qrClJcSTcJqwxtO3KyYLq1wsTkFgccczZAAbw7
	ZbDv4C+yiICq+kx0EbL2DfBnqoxbKdtKV6O0oPaULb3WDA0aWBtQjFH8akfvw7QQBC0uTxNOIfF4a
	QnUnkLKsH+iPWvm9j8lrOVKkU2R8ZGGWeXwQWe9xqk6dIQFtdJltoY6sZsabc90fNgFxBDi9rFGm7
	ERIMtNalekbHNvCQcZ6J0LKkdKliJnVUd/lBjG+gdsN/cbhg1ut6t/7QRbX2wDv9NWj1dbV5sstUP
	/JqcPCwQ==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w13GG-000AdF-2Q;
	Fri, 13 Mar 2026 15:13:08 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w13GG-0005rF-1g;
	Fri, 13 Mar 2026 15:13:08 +0100
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: imx95: Move funnel outside from soc
Date: Fri, 13 Mar 2026 15:13:04 +0100
Message-ID: <20260313141305.1844209-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27939/Fri Mar 13 07:24:42 2026)
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275313-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	DBL_PROHIBIT(0.00)[2.114.17.112:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,tq-group.com:email,ew.tq-group.com:dkim,ew.tq-group.com:mid,0.0.0.84:email]
X-Rspamd-Queue-Id: 8D1D5285339
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The 'funnel' node does not contain a register range, so it should
be placed outside of the soc node to fix schema warnings from
simple-bus.yaml.
Change is similar to commit 9cfe3c892b761 ("arm64: dts: imx8mp: Move
funnel outside from soc")

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95.dtsi | 92 ++++++++++++------------
 1 file changed, 46 insertions(+), 46 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
index 5f61866e9df9e..e5f0053b5e168 100644
--- a/arch/arm64/boot/dts/freescale/imx95.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
@@ -391,6 +391,52 @@ scmi_misc: protocol@84 {
 		};
 	};
 
+	funnel0: funnel {
+		/*
+		 * non-configurable funnel don't show up on the AMBA
+		 * bus.  As such no need to add "arm,primecell".
+		 */
+		compatible = "arm,coresight-static-funnel";
+		status = "disabled";
+
+		in-ports {
+			port {
+				ca_funnel_in_port0: endpoint {
+					remote-endpoint = <&etm0_out_port>;
+				};
+			};
+		};
+
+		out-ports {
+			port {
+				ca_funnel_out_port0: endpoint {
+					remote-endpoint = <&hugo_funnel_in_port0>;
+				};
+			};
+		};
+	};
+
+	funnel1: funnel-sys {
+		compatible = "arm,coresight-static-funnel";
+		status = "disabled";
+
+		in-ports {
+			port {
+				hugo_funnel_in_port0: endpoint {
+					remote-endpoint = <&ca_funnel_out_port0>;
+				};
+			};
+		};
+
+		out-ports {
+			port {
+				hugo_funnel_out_port0: endpoint {
+					remote-endpoint = <&etf_in_port>;
+				};
+			};
+		};
+	};
+
 	mqs1: mqs-1 {
 		compatible = "fsl,imx95-aonmix-mqs";
 		status = "disabled";
@@ -537,52 +583,6 @@ etm0_out_port: endpoint {
 			};
 		};
 
-		funnel0: funnel {
-			/*
-			 * non-configurable funnel don't show up on the AMBA
-			 * bus.  As such no need to add "arm,primecell".
-			 */
-			compatible = "arm,coresight-static-funnel";
-			status = "disabled";
-
-			in-ports {
-				port {
-					ca_funnel_in_port0: endpoint {
-						remote-endpoint = <&etm0_out_port>;
-					};
-				};
-			};
-
-			out-ports {
-				port {
-					ca_funnel_out_port0: endpoint {
-						remote-endpoint = <&hugo_funnel_in_port0>;
-					};
-				};
-			};
-		};
-
-		funnel1: funnel-sys {
-			compatible = "arm,coresight-static-funnel";
-			status = "disabled";
-
-			in-ports {
-				port {
-					hugo_funnel_in_port0: endpoint {
-						remote-endpoint = <&ca_funnel_out_port0>;
-					};
-				};
-			};
-
-			out-ports {
-				port {
-					hugo_funnel_out_port0: endpoint {
-						remote-endpoint = <&etf_in_port>;
-					};
-				};
-			};
-		};
-
 		etf: etf@41030000 {
 			compatible = "arm,coresight-tmc", "arm,primecell";
 			reg = <0x0 0x41030000 0x0 0x1000>;
-- 
2.43.0


