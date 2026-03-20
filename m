Return-Path: <devicetree+bounces-278109-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBy/C9YCvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278109-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:18:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2FE2D71AE
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:18:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B0A163069BA5
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF9D237EFEF;
	Fri, 20 Mar 2026 08:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="4fLtUZSh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B376C371CE6
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773994221; cv=none; b=V9fI7kuDUj1pX8vB4gSXqf6ngcc4sOXinayyn+WUGsXx25bJ8xzTIhaT93RXOdQXfvb34/h7+xCSKqEmKby3SXQ1J527K74Q0HaL3QdrncVgs3Js+fud8HT3jORWusWFOl0p6zBoFA2nyAGJAITOpCA+Gt0GT3tFqIBogbptxfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773994221; c=relaxed/simple;
	bh=OOBMl6N+6wWq4VI/kMem7gKFfbgc3xAME32xiW5QX+Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HdzbCextdzhdhy6D1e8xa1qLBVzRH0PUuCLePOj2PGmQhgNiexX+1BmKm+7NLNajs5BPOuIKoWU3MQWWOKzKKixQUOfG+jUgMb35VrRYSmrl5vFDMB7TYt7z90NPs2dFUnUgWp+D8mbiRQxLN7BT6pjq0fsRA6RIGc/NB3Z3GCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=4fLtUZSh; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b9825ba7f9dso137355666b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773994218; x=1774599018; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xz0m8rU9A280bToU8IuILL5Mw5gJnGqIrAD0/ydeaXM=;
        b=4fLtUZShdAuIn9+mW2e/IYierHJgZA97eTd/3tmFFEmhLgZSfTYDHArmzx1JBZdzi9
         cKrXgmNwG/muGDMFYKeecZXsP9a9yjBvvLbIQOdv/sEqFpesqwcoGPDm7HwonxNF+bpg
         cLDZMR+tZ/bT2fdUQx1Jjiyk3nsl2pCT3YbAWVL9mKO7uFeokS3ShmA10TK0aGs2pskH
         e00BtKk74/gv6c+Z8p1xJj8x/oU80MhUH+anagd62XdHvodaDN8s/2NO26q8XOPy63BP
         zl2qdDzkSoBI+sKPzsKTX95dun5JZeXfDBiN+Sy6/5V42m8HjUoaFzJh4dKsX3gE+qJ9
         oZLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773994218; x=1774599018;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xz0m8rU9A280bToU8IuILL5Mw5gJnGqIrAD0/ydeaXM=;
        b=N/PnBRj+BpDZsfE/i/o6xUpNt3oBGVwQRH7qRpe70zJU/ctHBcqzxhM2HUrNViY2Ez
         3o37j3QEV7pPjooeytnZc4NGrlNI+XJB+I53XzauoncNwwUky2+jgDxICunM1hwqggTR
         95Agp3WiH2kOfiHUp1qtjvpMJJg9vx3d6WEPmQvhhAGUCaZqTWn8qeszD6muYLwhZS3P
         lY9iNBuBpQGwKbqXUCBo0FMGZ+OPqPoNFY9RIkDBkR6IbFH9qt11g8lRGIOUxRSVfHaP
         CmpBD3QYfmWSCra6xgayuWIQ7BDHIN90aNz10/ZcwTqYDweqM1FJNO7wwJnih959jhpg
         fgyA==
X-Forwarded-Encrypted: i=1; AJvYcCXJpU7a7c6f5xp8xErJp5Hu+2an4l3zFbR5Ecu6jlVlxcGNLaxIxhGtN5KUYe3dF0d7SP2U7+3FnMCk@vger.kernel.org
X-Gm-Message-State: AOJu0YypvB/eBpumbdR75/UtXHSFHw8og9UM9WNURDoIPsYE82n2QrT/
	Y+m6dmFQiHSqSALe+s6HIWWh7rUhrDN/0Z+N95SHSKBHh6+g2zSVwZi6My+g7tBjQgs=
X-Gm-Gg: ATEYQzzXyIAnXazZuuuRfaMdokg3Zrxgws7r0DPFVOoTv3KATuYeHE61lR82Ig8jaR+
	WBpjAzgvxHDd46MrY2hUhyQJCjspFWbqvQeusxomf/nGulp5fNMo7mRrOGc0EsZ6o+wKOPVPHMI
	Y7Hiu2QcCWc+fszxhyCFfRRdzCcjDfEWJmn3Z8mlxTNe9EtQvBN2/JIjbcpz9tjoplsoRoe9mGV
	Y5ytnnHOUgscms61oH8KgBzqSJIwaeeuKZAX8wdqVc/08RROLJmK+a4ZIcl488PV1iC3ZkDqIV+
	AsaWmk2TYYHRub3Ru5HxUA1ZcvNGHCzZZwGbONyvv9b/xbI+kn7bN+ZWllms1GUjTOYPYU6miuf
	OARZCMoBbff6Bs3IMQq7vLHS5xjciR4Tf1GDuQqqHVMaLLI43FJMUearNE2FR5yw6g3/S3LT6xq
	acSBVmOM0yvhkg5aiPANcyseBshSdu5+IQ6514uUD5Fv4jKu4q3OKCOmlAwiiyvKG5aQ7wKJpMt
	o3KkQ==
X-Received: by 2002:a17:906:37cb:b0:b97:f2cc:8c3e with SMTP id a640c23a62f3a-b982f39b197mr103173666b.10.1773994218017;
        Fri, 20 Mar 2026 01:10:18 -0700 (PDT)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9832f43b5csm121016466b.1.2026.03.20.01.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:10:17 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 20 Mar 2026 09:09:51 +0100
Subject: [PATCH v2 3/3] arm64: dts: qcom: milos-fairphone-fp6: Add camera
 EEPROMs on CCI busses
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-milos-cci-v2-3-1947fc83f756@fairphone.com>
References: <20260320-milos-cci-v2-0-1947fc83f756@fairphone.com>
In-Reply-To: <20260320-milos-cci-v2-0-1947fc83f756@fairphone.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773994215; l=1724;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=OOBMl6N+6wWq4VI/kMem7gKFfbgc3xAME32xiW5QX+Q=;
 b=PtK07MSBbaUBbhPt07Jp3YhUm43bkaj9J/cjajCZxkqEJDLGAMbgkavtMBPQ1xvpFsBgidmXv
 HN6LoKa4+BNDhiBU8v5dt3YQbHIyzADJhP4OPy9KuTy9VDJdlU4XbqT
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
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
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278109-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.51:email,0.0.0.50:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid,qualcomm.com:email,0.0.0.52:email]
X-Rspamd-Queue-Id: 5B2FE2D71AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable the CCI I2C busses and add nodes for the EEPROMs found on the
camera that are connected there.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 50 ++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
index bba327cc7a38..3e65f5deb5a6 100644
--- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
+++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
@@ -541,6 +541,56 @@ vreg_l11f: ldo11 {
 	};
 };
 
+&cci0 {
+	status = "okay";
+};
+
+&cci0_i2c0 {
+	/* Main cam: Sony IMX896 @ 0x1a */
+
+	eeprom@50 {
+		compatible = "puya,p24c128f", "atmel,24c128";
+		reg = <0x50>;
+		vcc-supply = <&vreg_l6p>;
+		read-only;
+	};
+
+	/* Dongwoon DW9784 VCM/OIS @ 0x72 */
+};
+
+
+&cci0_i2c1 {
+	/* Awinic AW86017 VCM @ 0x0c */
+	/* UW cam: OmniVision OV13B10 @ 0x36 */
+
+	eeprom@52 {
+		compatible = "puya,p24c128f", "atmel,24c128";
+		reg = <0x52>;
+		vcc-supply = <&vreg_l6p>;
+		read-only;
+	};
+};
+
+&cci1 {
+	/* cci1_i2c0 is not used for CCI */
+	pinctrl-0 = <&cci1_1_default>;
+	pinctrl-1 = <&cci1_1_sleep>;
+
+	status = "okay";
+};
+
+&cci1_i2c1 {
+	/* Awinic AW86016 VCM @ 0x0c */
+	/* Front cam: Samsung S5KKD1 @ 0x3d */
+
+	eeprom@51 {
+		compatible = "puya,p24c128f", "atmel,24c128";
+		reg = <0x51>;
+		vcc-supply = <&vreg_l6p>;
+		read-only;
+	};
+};
+
 &gcc {
 	protected-clocks = <GCC_PCIE_1_AUX_CLK>, <GCC_PCIE_1_AUX_CLK_SRC>,
 			   <GCC_PCIE_1_CFG_AHB_CLK>, <GCC_PCIE_1_MSTR_AXI_CLK>,

-- 
2.53.0


