Return-Path: <devicetree+bounces-259623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAiiCXS9d2l8kgEAu9opvQ
	(envelope-from <devicetree+bounces-259623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:16:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 015BA8C722
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:16:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E7BB302A52D
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B9827CB35;
	Mon, 26 Jan 2026 19:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fcV78d1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A632528FD
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769454952; cv=none; b=WjH+Mm+EjvROMObs1SYbIWCCAj3hhJ5L4xmlE3YAPb6yFun8imqswOLEH8D9zNsVOO5us6BrhdQZUYI3IlG5Xaughxs1vOIwwCbE5sAM4T66OJzHPbUbjEEEznS8FLzWKZnpW08LZKgv5H0+lMViSE5UiEx6CTAxNQd/OQAb7TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769454952; c=relaxed/simple;
	bh=raBx+Qdai5ZkiQYhuTqQNlBy1l8tIYeinzCV8VWO67E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KK9192mwDSY1tIC67xyO/LuH2KCRYjbxnvb9iENsfOOtBYV65vG/B8ZnMfY5aNB/icRsScwpba3MomBZq+rO4A3CRDnylAfKrWR1OGn+ubo/R39qMMcPRrCDnCEhaFHLO4Mvr2qUbi9/JH0awxU81LzD9xzGXSbqR6lVpH2nJr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fcV78d1B; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42fb5810d39so3138215f8f.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769454949; x=1770059749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TbHz9AHsTxZBxTlKqWlpfBap6OFPOQasclNmZKuJ2mQ=;
        b=fcV78d1BJitlkNK+21CGtBcGE6WdY2GGXJRkt+HNIlJUYUQ3W6JoW5bPX+zuv5KYZf
         u4nY8IySStMa2Jw/OVNjy0L8eHyyt3TOM9n1Ud3zEummZDwOH+3lFbjvcPq7cOm4UwpQ
         z6WgQ2AolOk7rMuctsn3ACifh37uDyX/tmWbsgSGISyjsr92A7TKujwSMmAimoWqPmk8
         y2GnCqrKpQQQA7HQpv0XQhS6nmy93y/bP2ccrdqGcdWu7LuxaYktK1Tip4pNvcVn966P
         ejTeeRq6tXIl6ckON+wfPXKl3uFkvc1ujfTEQ/TRGWT8epSJTatvSu7yEjRZf07VV5rr
         zQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769454949; x=1770059749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TbHz9AHsTxZBxTlKqWlpfBap6OFPOQasclNmZKuJ2mQ=;
        b=mgC4LcVwciTmPL5X+X8c30x0AwJGWr5yeo6KxEZ9pfGolzIYmldd6E/HA96ysbrhPZ
         l6o45uJ5DqmzBJPFGtTzZhumzH0mOH1Ax/x+Pkbrfk24sEJx0/+9B6XL2BIUsQlfmvwX
         /WUb8RlAc8FISD+U6iPElOpkBSIsicQTH21fUejcCtTybmobtUJspow12EAeejkHn8DK
         Jdf8b2Pcun5AFtGNRvSC/4aCMZ7LuysY/PyFI6bnWWWFMMuw0mJGnz4frdTlpjOMOBhj
         O3yEt09K7rREarwcJQfGstCThwQ51Yxpfmg0FJVaMG8iPXAD/q4TBF50s62wkDBe2Efb
         o4Ag==
X-Gm-Message-State: AOJu0YyJqchWIwDmeGKEbeSXcLOsjUoW/Aos3hsnXtOJof0V3kG8AJzP
	ZKDINDSQ81843xDg7o6PyC06/kMOsr+ciXzWzzNU0yjVJP1zYEG43XLc
X-Gm-Gg: AZuq6aKOxg4+fLKjWFr3YYm3wTtOtwR6STYYbhIdNvtVwqZr4tgeVcWHO0xgOISBVQC
	mesvwy212fpTng67qp78SA2s0afSgq+pYAUxEz+KvmKECGCWvHoTNzKGnycVfZeUAlb2ykwjFKb
	G4ogajM6sZT57qC+MnLxtKMS7bsBnamIlwy81I5CHn2FbywdmX+XBw0WKWG2zNoeb+hw79Zzgfx
	q3L8B9RfWbC+mp6+ArsdN17Ve9utAr2oE6tCIaVaHdfA5OqQY91PFpUwam7fdJqQsuajoRlyDmO
	Wx9QtGbXKOUQyWFGd0+EtsMHeprY4vldj7wdpPRCyMQTQj6vS6oUzwuFnOGHXAVPyhReLp6kaCX
	AIYg1zduyfvZ5F+qt00p9fIeSUTMqh/neq0cF2nRZDX0pakG/UsUpKiI19NqgVk/g06T+jXyyPa
	qM
X-Received: by 2002:a05:6000:4203:b0:435:a647:a3b8 with SMTP id ffacd0b85a97d-435ca1872famr9039595f8f.36.1769454949020;
        Mon, 26 Jan 2026 11:15:49 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c02d0dsm30958219f8f.4.2026.01.26.11.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 11:15:48 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Mikko Perttunen <mperttunen@nvidia.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/5] ARM: tegra: Add External Memory Controller node on Tegra114
Date: Mon, 26 Jan 2026 21:15:33 +0200
Message-ID: <20260126191536.78829-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126191536.78829-1-clamor95@gmail.com>
References: <20260126191536.78829-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259623-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[3.147.162.88:email,4.44.146.176:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,4.44.103.184:email,3.147.158.112:email,nvidia.com:email]
X-Rspamd-Queue-Id: 015BA8C722
X-Rspamd-Action: no action

Add External Memory Controller node to the device-tree.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 arch/arm/boot/dts/nvidia/tegra114.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra114.dtsi b/arch/arm/boot/dts/nvidia/tegra114.dtsi
index ef0618e9eec1..77ab17f397f6 100644
--- a/arch/arm/boot/dts/nvidia/tegra114.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra114.dtsi
@@ -259,6 +259,8 @@ tegra_car: clock@60006000 {
 		reg = <0x60006000 0x1000>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
+
+		nvidia,external-memory-controller = <&emc>;
 	};
 
 	flow-controller@60007000 {
@@ -655,6 +657,16 @@ mc: memory-controller@70019000 {
 		#iommu-cells = <1>;
 	};
 
+	emc: external-memory-controller@7001b000 {
+		compatible = "nvidia,tegra114-emc";
+		reg = <0x7001b000 0x800>;
+		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA114_CLK_EMC>;
+		clock-names = "emc";
+
+		nvidia,memory-controller = <&mc>;
+	};
+
 	hda@70030000 {
 		compatible = "nvidia,tegra114-hda", "nvidia,tegra30-hda";
 		reg = <0x70030000 0x10000>;
-- 
2.51.0


