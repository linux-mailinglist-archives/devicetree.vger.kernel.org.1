Return-Path: <devicetree+bounces-271651-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OITcNF29qWnNDQEAu9opvQ
	(envelope-from <devicetree+bounces-271651-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:29:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB2A216351
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:29:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 935C531664A7
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 17:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C40883E3DBE;
	Thu,  5 Mar 2026 17:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AtSAmJDI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9AC3DEAE1
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 17:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772731499; cv=none; b=Yk63zgDv3seYgc3EX0ArNXD/cPoU+oSn5xVdofcSn4uo1OepL2o5vSAOJHAuRIvLHzZDDTcrzpnWp5xJBuORAYUhYd8RwNsWncRv9YnSKTSjVtKhE1lxcI0x7ukMbr66OrvLHXmUm6hmmVxdpBdoUORaHTfhRYj5CkwJs8sAl2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772731499; c=relaxed/simple;
	bh=wkInOjrZaLypG+YJyMOElL91vQDlGMgZZRetwfb19jw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N8pOWz+E1M+MlMHZwcbejIYYydEo6Gh9j7EXkFAIZjzhXcBBv29FVF3ZmXKNNwfiz4oQ0VJoYKPP2enhdupCywCvM7jikqc0hQrCJkbBXeowtlG5eYFarrVj4X96ALFSF5/zvWWspj5q3DifgNHCL3g8AsErrgXv7G7vLRz2p88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AtSAmJDI; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48329eb96a7so55606745e9.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772731496; x=1773336296; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Zg/K+szC5UKXvUnRETUoIREZ/EKs2+8N6xJphLqr/M=;
        b=AtSAmJDISjx40pckita5QwW8P8BFWF1sCT/PUmCx36O6KHVrIO98lS7Flpl9SyB28G
         qdpdozVZmciD5y1ZTQ7Gh8F/Z8KHbtmUO9TDQ63ye2hMikgFaYToUJJdrG8k4/wBTo7C
         JcNb0Dok7oypcTaU7PttMYfRzOS95d+v7DxRSqnSFZJLAb3ejmKYxDpfhJE/TGYJt1nd
         r6pX0JFk6+Yt0/q6AKo4BCRFOXk4v7qQu7RWsCG4A12cFgaE/Ew/7iHNOada3uDFnZ03
         n2TuSVm4P5ue53iDBF6yHZJVSWSDoTkRrrgfFixJqnEIfEQv2U7YIAHKKgNIVExUfULl
         Rgug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772731496; x=1773336296;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5Zg/K+szC5UKXvUnRETUoIREZ/EKs2+8N6xJphLqr/M=;
        b=WsP66Tu0ZRJgKSsuYDz2rKpiHmhMXpFzyxoQRNaQy/FewfGRXMcKKEUgqCKLUfZ4Is
         PX4gFJ01CaSz3/aqI8QUg5BaqVQA/yKu07+Q1EFg39dPM4NWM5cLAKtcREVjfz0uEpJg
         X++3KEHzgfNlU3jpNvTL28KN9+yTZUh3px0YXdCpkoCATwV0gREMSxLigW0NYhnHQNsB
         fvg/495HjynTf2ltBuoOGMSC87mzBLSBWt1jM3q0n5TYgd3l2hqPyz/QTnI9V1e2Nxs9
         zmRfgChuZO+ijnthDXpdGE6JrAbO6zZZH+Uilf3K2bqxB7mrg3gdMp/BiYOzCpMQiFXZ
         boNg==
X-Forwarded-Encrypted: i=1; AJvYcCUOKBpGglLSj9ruT+rm6TGa8TjS27+LNtQfSLMlkZ22+Tk/aiupIr3XZpZvH8szbQPW4YCfp/cLlBAv@vger.kernel.org
X-Gm-Message-State: AOJu0YzApDptVDIevlHxfvNAHdO1oN3ru8xIrZiWD73Iy606TYfhRFu6
	qpPvyQNAM+6DAS25WH0lI0YlQxSMuphLUeIUrlkBw9edQot9YRdlP6Lk2GVYILIG
X-Gm-Gg: ATEYQzxfnq6BamB8HUndIX5215o2U69T67wx7w0HFxmQfHPt/vZLcVRHjOcva1yMeep
	jyps8BaLbyfdQVDsvfGd1LIRLn/4L6SbDkahILcaT/mQYzPc2mS2shbzjeHQ2vq/dWhjMx7L2yN
	73EBfwq2snSkITVHwzxG2QeU7pX4zU5+jaLXX0jpaIfIU8IM532QSPUg/vko56vuWUiTha9ciw1
	bepsJ+DY0voP+WdQFlgsa/nEpO0qVYqrpIz307Gg/3id0+xPrGNIdiGi+xZ+/DcwHdlFLbUFj8H
	Wr3mVd75m9ngYjYIBMQncVDBtjqcyqNfRVfJh+99O8l0wmcvySXd/2YppgPXIInKoMpFPg5CSP6
	pkLi1hun0ovj+tgMyF1ESOFtkg9tXYD3wk3bB7Gj+81IU8FlBADA8ZV4tmul95sRzrxogjibDYB
	uLIJEB44grV9ZEhITYx4pHnFwihjRHyDiR9As7CMt0Dcy9LpXNovXb8MCgUy+cLJ56iNsv5Y7sx
	pgu8dvTghbSqxg1wRqQMCbjUsc=
X-Received: by 2002:a05:600c:3b21:b0:480:6852:8d94 with SMTP id 5b1f17b1804b1-485198955a9mr118647745e9.27.1772731496189;
        Thu, 05 Mar 2026 09:24:56 -0800 (PST)
Received: from ernest.hoecke-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fafe4c9sm67153495e9.15.2026.03.05.09.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 09:24:55 -0800 (PST)
From: Ernest Van Hoecke <ernestvanhoecke@gmail.com>
Date: Thu, 05 Mar 2026 18:24:29 +0100
Subject: [PATCH 1/6] dt-bindings: arm: fsl: add Verdin iMX95
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-verdin-imx95-upstream-frank-li-base-v1-1-823fad02def9@toradex.com>
References: <20260305-verdin-imx95-upstream-frank-li-base-v1-0-823fad02def9@toradex.com>
In-Reply-To: <20260305-verdin-imx95-upstream-frank-li-base-v1-0-823fad02def9@toradex.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>, 
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, 
 Francesco Dolcini <francesco.dolcini@toradex.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.13.0
X-Rspamd-Queue-Id: 1AB2A216351
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271651-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ernestvanhoecke@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

From: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>

Add DT compatible strings for the Verdin i.MX95 SoM and its supported
carrier boards: the Verdin Development Board, and the Dahlia, Ivy,
Mallow and Yavia carrier boards.

Link: https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
Link: https://www.toradex.com/products/carrier-board/verdin-development-board-kit
Link: https://www.toradex.com/de/products/carrier-board/dahlia-carrier-board-kit
Link: https://www.toradex.com/products/carrier-board/ivy-carrier-board
Link: https://www.toradex.com/products/carrier-board/mallow-carrier-board
Link: https://www.toradex.com/products/carrier-board/yavia
Signed-off-by: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5716d701292c..f0701143b237 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1477,6 +1477,30 @@ properties:
           - const: toradex,smarc-imx95     # Toradex SMARC iMX95 Module
           - const: fsl,imx95
 
+      - description: Toradex Boards with Verdin iMX95 Modules
+        items:
+          - enum:
+              - toradex,verdin-imx95-nonwifi-dahlia # Verdin iMX95 Module on Dahlia
+              - toradex,verdin-imx95-nonwifi-dev    # Verdin iMX95 Module on Verdin Development Board
+              - toradex,verdin-imx95-nonwifi-ivy    # Verdin iMX95 Module on Ivy
+              - toradex,verdin-imx95-nonwifi-mallow # Verdin iMX95 Module on Mallow
+              - toradex,verdin-imx95-nonwifi-yavia  # Verdin iMX95 Module on Yavia
+          - const: toradex,verdin-imx95-nonwifi     # Verdin iMX95 Module without Wi-Fi / BT
+          - const: toradex,verdin-imx95             # Verdin iMX95 Module
+          - const: fsl,imx95
+
+      - description: Toradex Boards with Verdin iMX95 Wi-Fi / BT Modules
+        items:
+          - enum:
+              - toradex,verdin-imx95-wifi-dahlia  # Verdin iMX95 Wi-Fi / BT Module on Dahlia
+              - toradex,verdin-imx95-wifi-dev     # Verdin iMX95 Wi-Fi / BT Module on Verdin Development B.
+              - toradex,verdin-imx95-wifi-ivy     # Verdin iMX95 Wi-Fi / BT Module on Ivy
+              - toradex,verdin-imx95-wifi-mallow  # Verdin iMX95 Wi-Fi / BT Module on Mallow
+              - toradex,verdin-imx95-wifi-yavia   # Verdin iMX95 Wi-Fi / BT Module on Yavia
+          - const: toradex,verdin-imx95-wifi      # Verdin iMX95 Wi-Fi / BT Module
+          - const: toradex,verdin-imx95           # Verdin iMX95 Module
+          - const: fsl,imx95
+
       - description: i.MXRT1050 based Boards
         items:
           - enum:

-- 
2.43.0


