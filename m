Return-Path: <devicetree+bounces-239905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B409C6A7DD
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 17:05:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id CF6C22D383
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFCD636C5BC;
	Tue, 18 Nov 2025 16:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m8w4Yd+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C116736A037
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 16:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763481779; cv=none; b=gR3UwdoN8KogXzqq7kZPHs1TyOH9SZCigFVv9UZCCKcWm4Pkaz0jb52k3MixvsTSpK0DjT5eZP5MuBXlBwbcN6Zqp+Mcj5RrMfMJ1VX4EKW6D3aDJ7amZ0dgxfOd8GMjO2acAuIQ4BHl/urdZOMHuQofHizLD7dc//trVEuS+kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763481779; c=relaxed/simple;
	bh=YDmC2z63xnyncBVrO7Ltif8kw4rumvv6Ka6aN/+Z8sc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rEbliGnZQUFaOfpp95eEjGkHzb5n+Qp0yINMXoVOniKDk5N6SC0khPjVzqKCwNbDnipYYm4J087lffjaJie1dgOZx1g2P1heJCa+vcZHmy7xD0/d37zQu/xvNJLgukXOM+iSOkLsNODf6rBOpFndwo3PF4V/DzWz4ktf/Z6TDgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m8w4Yd+F; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso22142595e9.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763481776; x=1764086576; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WSJqWy4wfSXZhaQaKW322RhPmT1j8xGKth4T2OfqmIA=;
        b=m8w4Yd+FBl7uxkV9TfR9iVZ73Z+KcDaO1V3eBhPD8mRrJgiMauuD6DzqAN9GJj7/1f
         w68teIeaSzTB9h9omE0nSLW9800ItuX3ZoHWwEmjPwWnxTWSBFYfLlIxxbQmZGC39IOX
         LKeW5aZZaE56AKG5QZSQNVCHG7GggPnBKOhB2zjH97IwMlQw4Ivxk2fOvsbHFfWaRmcr
         RHhu0MsrT//HE1AadVC9clJLCcOgtePXhzScJAjyarlBR5GH7RAEt2g+72+7/k2oSkDv
         XHI4diMNlfqScPDp17WtZWJYHwHFYmI4AUoth1LdQHvLpI1M/EBR/nWnKbmfa9dPFeV1
         qh4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763481776; x=1764086576;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WSJqWy4wfSXZhaQaKW322RhPmT1j8xGKth4T2OfqmIA=;
        b=tcGRlmD8yUAPbrnZRtsV8ToaA6XZQWcDrycqR/Cc8ZQVpvX7uQWyT0BpffjX8cWJCd
         zVSfzyRpcUPuQYDxtDwY+4QT1DSB/rqQ4LznlSgJSb9IKYC2xClNEvkG4w7NPVPzU22P
         /eTPAUch0bdtwhzfBmxRzTIA1GqBCimWsTqoBLi7xgPi7EDlQ6QKYsMRVBMjy/Irhygm
         hLYTd37CIaPc1hWfpPg7skmWlZftf17LGTLXdrBkFLcrcd2NC8+DTrY3i0dYekW/ivhn
         k1qI7mQMycLkYn1VCO0aaLqvsU0DvdvlpMKGOW4idZ0XScZAP4QK3ciO39DvqH4dxm5c
         tlHw==
X-Forwarded-Encrypted: i=1; AJvYcCXJtEjb7H0GxEdNdkH/EUYGdVUYWE6LCF4v7tK+fLsMsLVlIxBItVg8i6Yr7exfrDbarXwf9w9CJPzn@vger.kernel.org
X-Gm-Message-State: AOJu0YwdqdipMdiGwjb73323Pee+nbZR24mlVwjRsTjkCp4hvNB9ydHs
	Ac0R61KmVzJKP3MxxwNfJcMnACgt35O5Corh8yfDuEQH8Bi3Yi0/soWcCc1WRY9XIiA=
X-Gm-Gg: ASbGncs0iFAERwA4z2eNpj6AtIz6I5njxVpfViKm0miw5EJUTfZim9Yq8U5knyQRyv7
	cCKYUfGgMfTIcnMHcc2LIo95cI6+BaZxmt/LfP1OS9SQ8Gl4s//XTOfh2zI5hcG3Gpy8QVw2IsS
	zv60C7619Ljpi03glu9sUG5Sz85UUuTpfkjnIj7Nli51XBfi+FdfUYhVoE3ebk4hoJtxscSZ3Fs
	83KBOH3w6wzccu8xLxaPynTLhlt7GcwSAFYQcbOYH3aAcH1EFxiIdgFRd3S1EFFFlKR89ZFKxFy
	hs+yPhLJBgPUwpv0a18JcmQvX+Bel/K03NyYEfGonqRHSYMiziayCG5gsLHOwpy4xSUAjBMPoA1
	1u10RehDUb5phAfQjuWuh7RdXqWlEvT4Ykm6z/JGH/ldsIJxHBDoAFvgRw6wM3LnMmGwVR3kjIb
	YitDsOklkzqKKPjmvlfL8=
X-Google-Smtp-Source: AGHT+IG+BDNHdoKr+nmoBcJhjAG/ZnTb/B28SkxQADb4sfx6Pq139Gu1ATJ4y3Mlt9Ib3CscQR65Pg==
X-Received: by 2002:a05:600c:1f12:b0:471:c72:c7f8 with SMTP id 5b1f17b1804b1-4778fe9b44dmr169442525e9.21.1763481776169;
        Tue, 18 Nov 2025 08:02:56 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:76db:cf5c:2806:ec0b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4779fc42f25sm171954575e9.6.2025.11.18.08.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 08:02:52 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	s32@nxp.com,
	bhelgaas@google.com,
	jingoohan1@gmail.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ionut.Vicovan@nxp.com,
	larisa.grigore@nxp.com,
	Ghennadi.Procopciuc@nxp.com,
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	Frank.li@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: cassel@kernel.org
Subject: [PATCH 2/4 v5] PCI: dw: Add more registers and bitfield definition
Date: Tue, 18 Nov 2025 17:02:36 +0100
Message-ID: <20251118160238.26265-3-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251118160238.26265-1-vincent.guittot@linaro.org>
References: <20251118160238.26265-1-vincent.guittot@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add new registers and bitfield definition:
- GEN3_RELATED_OFF_EQ_PHASE_2_3 field of GEN3_RELATED_OFF
- 3 Coherency control registers

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 drivers/pci/controller/dwc/pcie-designware.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index e995f692a1ec..e60b77f1b5e6 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -121,6 +121,7 @@
 
 #define GEN3_RELATED_OFF			0x890
 #define GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL	BIT(0)
+#define GEN3_RELATED_OFF_EQ_PHASE_2_3		BIT(9)
 #define GEN3_RELATED_OFF_RXEQ_RGRDLESS_RXTS	BIT(13)
 #define GEN3_RELATED_OFF_GEN3_EQ_DISABLE	BIT(16)
 #define GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT	24
@@ -138,6 +139,13 @@
 #define GEN3_EQ_FMDC_MAX_PRE_CURSOR_DELTA	GENMASK(13, 10)
 #define GEN3_EQ_FMDC_MAX_POST_CURSOR_DELTA	GENMASK(17, 14)
 
+#define COHERENCY_CONTROL_1_OFF			0x8E0
+#define CFG_MEMTYPE_BOUNDARY_LOW_ADDR_MASK	GENMASK(31, 2)
+#define CFG_MEMTYPE_VALUE			BIT(0)
+
+#define COHERENCY_CONTROL_2_OFF			0x8E4
+#define COHERENCY_CONTROL_3_OFF			0x8E8
+
 #define PCIE_PORT_MULTI_LANE_CTRL	0x8C0
 #define PORT_MLTI_UPCFG_SUPPORT		BIT(7)
 
-- 
2.43.0


