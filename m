Return-Path: <devicetree+bounces-236852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4494AC485CD
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 18:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E2FCC34AB08
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 145D22D9797;
	Mon, 10 Nov 2025 17:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gliQu3sa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07C42D9782
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 17:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762796022; cv=none; b=APSXU1NhfZ7Zvuzm7dIZvetliVcMJZdTUdR0iDjcON7ovtx+3s8awDDJyKfnU1qEfVyNg05QpCPXnKRcfjFT57WKplI+ulYlS5k6zNw/jszfk27i4n/qgnOZ+6Sm5CFk0zUx9lrxbZmfK4+S/YiuObK8QcH426NmzNv4SNej1aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762796022; c=relaxed/simple;
	bh=YDmC2z63xnyncBVrO7Ltif8kw4rumvv6Ka6aN/+Z8sc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vj0gVnXsDWaCRR6v5a2Vfe39E7y1sjTY8kFkvmeF9atKI3gQq879sNeZrGjsrrBq65jhJw7p5PSCWgSmmi8lImYI3VXHxuPdZCLUtgkiYgihov5zfTCGz1BYiBKgj37E0d+f9kxUANp97aJLLic4Nj/XuDpPm1kz/gN87qXvmew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gliQu3sa; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-471191ac79dso35034745e9.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762796019; x=1763400819; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WSJqWy4wfSXZhaQaKW322RhPmT1j8xGKth4T2OfqmIA=;
        b=gliQu3sa8yGB3v/TAxbbYwCsKBqYIwGaFRneHdHLwFyQvBPOVPt5Lq9FBglAe+8Le1
         iZoGNkarecctKcocfAVHmnvizpOseWu3WJ3Hh3OllhXWZY83EEVHdLY6IcCr7cE1lVV0
         HVK6BoQcKZm5Oba1G1Pj8iTvSCc5xFlqK7ivGeP4HSYbLFQjdKMg+hUJVIjN42OvBbzv
         6TvKDRG6TrlABZBgWn/m/m3OIdR6X2Jrs06ara/eZD4wuDt9ardbrq4natqOCHnTwPne
         c3eQUlKbDai7nZGsKDHNPpNjHlaoL+B5HPTTx80HLbw9qHrYh54GkJQsokx5kxDS7gH1
         YY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762796019; x=1763400819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WSJqWy4wfSXZhaQaKW322RhPmT1j8xGKth4T2OfqmIA=;
        b=W4eDvkuBkUk+qMk/imZaQAOCicREDjPoK1PsWvPtS90AoBe2ptJKpUUvKFVT4xvVk1
         jy7lgx7LQWXd/rrNy7SF5ce+yWRYh0A+owcsoeOYux2BAaQpnkKAl106CtmpsbooiaZU
         XQOhNkyG6XQY/RrEJ+XFMQ7iEwsbPS8m8YVtBDgaxtHgxpf9lZ+Hh0WoXykEZip+wObg
         DS+mC0fSENlAJLKsXrD/Uff6f4UjnO2iT+ZSQY72Xy7AUrQ+76//TeFVaKpGfQ+nAK/9
         OT0B3GAxbvpjwePweE2AUxxQPDGFj8+DSpSvPbZQtWKc4xwCcZ75hSkQdsJzdQOx4hq/
         53Ow==
X-Forwarded-Encrypted: i=1; AJvYcCXjLmV/FxLCY/jw0bUUHjgpKAXsqm7XxYgmQaXldaErxCahHQxnxsfGINQqZjyQI5lL3VMYCMv356nE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx13rNN7ic3G1qrf2UVqYgaFr+1ziYNsFM3couPsIli36kp+ujR
	2o/+eeAIOyiMSMnfhT7tM/dhmUf45e4Ya/QkxdbsV8qRxuVD3t8zbOmKzvBxVnDyBvA=
X-Gm-Gg: ASbGncvA049yq9fQDciAzDn71Yd+TKtezlUS0n6y+LUFL40SNTeKawiFDgca4J7da+Z
	M20hSGyP6Pn5/iQv0DsuxMkSpcgdvPzHkP3ORrm5Q3Hf230KMZrFNwoZh3EdSdLcxyShy/rxlF/
	4ntEhpCnGzrxcNrHUJc0NeWUMdYi5h/YBQw7+VOfoeMS0MZXVBf+6+pTWTEgqxAJUdwvXvWXGau
	SPhqvJodVPsMxfabLxIukDxjcH+Yp7UAEoJwcL9pF2pk8s30dgSXr9uxpeO4020vLKka7wOciPA
	8zh84JnqQtDnCkdc7/xBoKsVbaTIF/1sNmLYr3rjBX/IiO/j+Gx5Br8NyZ28C+YNdfIUu/tZsuP
	JAnlvHU1hKABrUCvXe0YecqaQ3Os7/t3RUjMNWBEQ4qlcrevZv95bA8D8X01j0i37wL4R+/XJny
	Z+IKiHnOo9nZJOmi8bHrg=
X-Google-Smtp-Source: AGHT+IF4B3dSxsq/6aCmBGqen4lFZOQM6R9kmpQqCIpNgVB5XME58ogi9bfcWf65NAevay4coklcXg==
X-Received: by 2002:a05:600c:840f:b0:471:c72:c7f8 with SMTP id 5b1f17b1804b1-47773271943mr83366585e9.21.1762796018775;
        Mon, 10 Nov 2025 09:33:38 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:d5ec:666a:8d59:87fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47774df2d80sm140111375e9.14.2025.11.10.09.33.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 09:33:37 -0800 (PST)
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
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	Frank.li@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: cassel@kernel.org
Subject: [PATCH 2/4 v4] PCI: dw: Add more registers and bitfield definition
Date: Mon, 10 Nov 2025 18:33:32 +0100
Message-ID: <20251110173334.234303-3-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251110173334.234303-1-vincent.guittot@linaro.org>
References: <20251110173334.234303-1-vincent.guittot@linaro.org>
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


