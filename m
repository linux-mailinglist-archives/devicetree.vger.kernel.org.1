Return-Path: <devicetree+bounces-320905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i+JFLS1jS2pEQgEAu9opvQ
	(envelope-from <devicetree+bounces-320905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:11:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DBB70DF32
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:11:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=einfochips.com header.s=NAESA-Selector1 header.b=LU4zTF+x;
	dmarc=pass (policy=reject) header.from=einfochips.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320905-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320905-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2FF7930073F8
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 08:11:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08D773EDE59;
	Mon,  6 Jul 2026 08:11:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from naesa05.arrow.com (naesa05.arrow.com [216.150.161.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956A83B6352;
	Mon,  6 Jul 2026 08:11:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783325478; cv=none; b=JiZc73/+y0yPUaq4+N3l3WT45nv++rBZkCy1duhac/5A/VQ/B3Z95HkryyBv/riGiieU3xlyYyYHvdLn+iM4CChT5IIJCUTnP3h/dQzYOaMpb47ZrSNznzNyxQlhuydp++EN8Q0b45bnXQPX1XZnJhed++rABE87y7hn9CemUVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783325478; c=relaxed/simple;
	bh=Q/Hj33DLpcs2zdqCW9ns4EkeTsFZhzDVp5AhWDnfxc8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sWJ0n7uIXDmfZqEF9TAYwsCNyWJw6NsziB+bgwYWSmse1BIEV+SjErfgoB8yvUJ2Jn8VFdlgwdcsgCv0ugDmxwMhKoFDlOJ850nsnVVxU2L1Q9i6cVIRmGqvxnzXpmDdEOLEcj2WryD5Jh9uf+1N9TVDm7a/Ocn9bRhS1Pfpfic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=einfochips.com; spf=pass smtp.mailfrom=einfochips.com; dkim=pass (2048-bit key) header.d=einfochips.com header.i=@einfochips.com header.b=LU4zTF+x; arc=none smtp.client-ip=216.150.161.26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=einfochips.com; i=@einfochips.com; l=1026; q=dns/txt;
  s=NAESA-Selector1; t=1783325471; x=1814861471;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NZrSLv+fD0qvW7IF5sK5E0CXoCtasghvxf6Evd3A7pI=;
  b=LU4zTF+xLCLut2oVaXgdHq+1+Rh1FCb/Dugp2En30RECvWnPIhAatAoS
   i4r82ekLGKBgM72I+30MZC91OHRdgmbZl4RIljMuzvY3Pc/GJJAK3V3Qa
   5oMDNsm/3MB8HmWnddCJVHEbfFz5q4LvzA+WYNZBW2SdZTjaCnnwAOHLN
   JAvvYuy4RhKkFB6GnmGPjWCE08FVuEFPxwMd4H3kaaWI+2+nJZVBFJfkR
   bXGQMb1CEo5lr7f2rm4YFWsT00+s6VzgxQkc8acM1CzXygjEgEphIrvJX
   1YIg6DtVgotLWxamvpzUoTmOOKW11D+yg4gD1NRrftLr3xg6OgWq56f5P
   w==;
X-CSE-ConnectionGUID: hQNeb98iT9Ow9lHck/Wu+g==
X-CSE-MsgGUID: YacXAAWLSRusUi5KvcmDvg==
X-IronPort-AV: E=Sophos;i="6.25,149,1779170400"; 
   d="scan'208";a="57540305"
Received: from unknown (HELO eicahmirelay01.einfochips.com) ([10.100.49.50])
  by naesa05out.arrow.com with ESMTP; 06 Jul 2026 02:11:04 -0600
Received: from AHMCPU1888.localdomain ([172.25.5.100]) by eicahmirelay01.einfochips.com with Microsoft SMTPSVC(10.0.20348.1);
	 Mon, 6 Jul 2026 13:40:56 +0530
From: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Andi Shyti <andi.shyti@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Min Lin <linmin@eswincomputing.com>
Cc: Yulin Lu <luyulin@eswincomputing.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Darshan Prajapati <darshan.prajapati@einfochips.com>,
	Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>
Subject: [PATCH v2 4/8] dt-bindings: mfd: syscon: add ESWIN EIC7700 compatible
Date: Mon,  6 Jul 2026 13:40:51 +0530
Message-Id: <20260706081055.1126275-5-pinkesh.vaghela@einfochips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260706081055.1126275-1-pinkesh.vaghela@einfochips.com>
References: <20260706081055.1126275-1-pinkesh.vaghela@einfochips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 06 Jul 2026 08:10:56.0050 (UTC) FILETIME=[F8830920:01DD0D1E]
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[einfochips.com,reject];
	R_DKIM_ALLOW(-0.20)[einfochips.com:s=NAESA-Selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320905-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[pinkesh.vaghela@einfochips.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:andi.shyti@kernel.org,m:mika.westerberg@linux.intel.com,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linmin@eswincomputing.com,m:luyulin@eswincomputing.com,m:samuel.holland@sifive.com,m:darshan.prajapati@einfochips.com,m:pinkesh.vaghela@einfochips.com,m:pritesh.patel@einfochips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pinkesh.vaghela@einfochips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[einfochips.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 27DBB70DF32

Document ESWIN EIC7700 SoC compatible for syscon registers.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index e22867088063..7d3365601249 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -62,6 +62,7 @@ select:
           - cirrus,ep7209-syscon3
           - cnxt,cx92755-uc
           - econet,en751221-chip-scu
+          - eswin,eic7700-syscfg
           - freecom,fsg-cs2-system-controller
           - fsl,imx93-aonmix-ns-syscfg
           - fsl,imx93-wakeupmix-syscfg
@@ -175,6 +176,7 @@ properties:
               - cirrus,ep7209-syscon3
               - cnxt,cx92755-uc
               - econet,en751221-chip-scu
+              - eswin,eic7700-syscfg
               - freecom,fsg-cs2-system-controller
               - fsl,imx93-aonmix-ns-syscfg
               - fsl,imx93-wakeupmix-syscfg
-- 
2.34.1


