Return-Path: <devicetree+bounces-272133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sH39AfjcqmkZXwEAu9opvQ
	(envelope-from <devicetree+bounces-272133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 14:56:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D652222EA
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 14:56:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8178A304B4C5
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 13:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D67743A2547;
	Fri,  6 Mar 2026 13:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="FL0TuqvY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964FA3A1A20
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 13:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772804928; cv=none; b=dUfToHrl2VA4q1nL7GngEptVCdS69U2z15Xx19VEs9vk/UkZgBNZR91FvdtE7u41g6ymbYyJLySPs0zAzoW+CC6KmRoqdoOU0hA6GZvsKn/X8mYx0X/YEGAMCRL6ToZ+M+LfOTtf2nnJJ2d+MV4n7U/qXvediMn35/7lgBfrHqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772804928; c=relaxed/simple;
	bh=sh6CHOb16k/4gSZCp2k+BEa4Dkc0sI/mIZiIfX6yj8k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=boC1wVGbOLN+C1vh7ihXSUHX3WPMMHeJtO9oRHPorEP7Xa3HGsUl3hFGTRNs+P0d/uYfIaYgFJl1eSxi7l3kCuQy/4RMj8jdMwiqMUSeOpmiAD+xQ5IIg0HSuS4zHp3OS5FCzlhhDHN9A/3WuIGKBEL7LtvORyC/AYnHPjB5JxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=FL0TuqvY; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-439aa2f8ebaso4018925f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 05:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772804925; x=1773409725; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0NLCQ6pVVPeDAMvh5rjRXQzwrKOPpCKjM6nme7d/FUk=;
        b=FL0TuqvYEQRCJVcnkV6MltEaP6XCq7evLzjYp7hV8teD9SN1p8WVarZcIunc6EdwfV
         oeYtCGnnquUkhrcvkkBEOK0t32Duh58cDneI8T8w+6Ht1mt2PqudsjSD/gT6ipIjPw2Q
         WzWCoRH51Ed/hPNLf3jqqhit+0/AzsLZ3ZRMd/1xfOPkDDTirhKQ/0f9g62KRbsksWQh
         xHR4vzk3T0jEdsIOfYqIfKdgx9l38Nenu+8uYdUtHPeOPPL2dO/YLm4YZyeOymzbMorx
         1vzZmYGRHDX/cQQwKKPqcUqDqUqr5Hb+1+scq8LIOOKPmXEbsQeJF8Fg7mH7Ql8plwJP
         ZGgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772804925; x=1773409725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0NLCQ6pVVPeDAMvh5rjRXQzwrKOPpCKjM6nme7d/FUk=;
        b=ri+l/1RpU3Ud6TqHSbcUUXWdqiz2bnQ+x53XmumngBaKRES7bGjt5xhp9YY14Fobe8
         COJ8wz6TKPtz4xOK0vcKeN1KOyvknyAKggeeVNCKqoQo/ZW48B9Qix+r49HSf9soAEZI
         JvTt+poBz6op6ZG4UaN1heXHZ0rrX6b1iidmWSv0Furk+Rmo0evKfmEgyJG6CxnLa6wt
         fbjK0ZxrdK8EX1+Xlq4sOZEPryJf+TKFHMBvYfKWBu+mxPBQb6NRD7QL6T1SNM9hzi2T
         l2W9CWtXqn+ytgTd1mjkTbkJ6NX+Ad2WM5f5BflGoDEBRw5TJ6aACUeFLwNDYqzWR2TC
         GSjA==
X-Forwarded-Encrypted: i=1; AJvYcCVfu9Xjbor5c2LUU/jrkZLlnbZlFTiNDAtQ9z1o4JLPOeFoSglzcDmTp7lESuaPUqfRnQPNw7Bb+AIv@vger.kernel.org
X-Gm-Message-State: AOJu0YzR5QMX4XT8oQmEpC+eJujIJFmAHPh3Nmzg4C9QFWFLYRDn8kBo
	bnX41XHzQV3igKKvk8l7PhFXsRHtaz4RGMkZq5+Ht8zBGfenYOpTMmNAATrcbaJjOOE=
X-Gm-Gg: ATEYQzzHiNxLfk/eEF5KzbeRnIn+WDQ+ieoEJF5TTfacHWukWpdibbTraCOJZ0xAxX/
	nKC6AY6T0EnZr7hAE6EUeyDv/AVGfvdmgrKT5Y9oOGW63cwwLbj5GEYHceDFG3nFHuVIYKDPom7
	25pasWZkPT72nABO4h+NH11ldPI2ocnS6JJmBlBXQkjBbJ+Dgfx/ylocnN6NeosnIXMrbdCI/uJ
	LKWht7HhzjwM07Moo0BBk2jhEhLDIjGLcvmvxYzXdD/hq8cZkDp1dAwWy4yM8uZUyNkoxFVgt1Z
	sHliaPpy8a3oqmnFoBKgOgLR4Ex053MeTX1TSMzDWEAh+b4wE5uOM+FuaEb2DzU30ts6DprFSBy
	5nzyHjIYsDDUQqI4aoAMjkEVCKd7j4lb28MZfOChxvuHo70Rlrg6g/Yey9sZEH6nDofyXfmNIHr
	UvYXbCLudotrr2A7Glr1b4SuiR6vXHd6BzX1QC/UPw63cOgkk8jOWVMNdsnIh83Dd/q/zZsBNRz
	V6o
X-Received: by 2002:adf:f74c:0:b0:439:ddc0:4bee with SMTP id ffacd0b85a97d-439ddc04d31mr1328872f8f.16.1772804925037;
        Fri, 06 Mar 2026 05:48:45 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8daf2sm4304767f8f.2.2026.03.06.05.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 05:48:44 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 06 Mar 2026 14:48:39 +0100
Subject: [PATCH 3/3] arm64: dts: qcom: milos: Add GX clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-milos-gxclkctl-v1-3-00b09ee159a7@fairphone.com>
References: <20260306-milos-gxclkctl-v1-0-00b09ee159a7@fairphone.com>
In-Reply-To: <20260306-milos-gxclkctl-v1-0-00b09ee159a7@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772804920; l=942;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=sh6CHOb16k/4gSZCp2k+BEa4Dkc0sI/mIZiIfX6yj8k=;
 b=Rwk6ksYDrCy/cThAXlHI6XclEqEjFdyZIsN3Mj2VOEbOOYEO9KGJX1gdo6C++nUkWEidEBRdB
 oQSI5ukXauxDMw/IUpmkGg7SRWOspAU7NUong4soUzWJeEfr7rjyWFF
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Queue-Id: 02D652222EA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272133-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,3c40000:email,3d90000:email,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid,3d64000:email]
X-Rspamd-Action: no action

Add a node for the GX clock controller, which provides a power domain to
consumers.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
index e1a51d43943f..621f05820826 100644
--- a/arch/arm64/boot/dts/qcom/milos.dtsi
+++ b/arch/arm64/boot/dts/qcom/milos.dtsi
@@ -1224,6 +1224,16 @@ lpass_ag_noc: interconnect@3c40000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		gxclkctl: clock-controller@3d64000 {
+			compatible = "qcom,milos-gxclkctl";
+			reg = <0x0 0x03d64000 0x0 0x6000>;
+
+			power-domains = <&rpmhpd RPMHPD_GFX>,
+					<&gpucc GPU_CC_CX_GDSC>;
+
+			#power-domain-cells = <1>;
+		};
+
 		gpucc: clock-controller@3d90000 {
 			compatible = "qcom,milos-gpucc";
 			reg = <0x0 0x03d90000 0x0 0x9800>;

-- 
2.53.0


