Return-Path: <devicetree+bounces-273183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOKCJ8Zyr2lYZgIAu9opvQ
	(envelope-from <devicetree+bounces-273183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:24:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEB1243826
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:24:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E6CA23013707
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D5B287265;
	Tue, 10 Mar 2026 01:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="muPISeKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDEF11FC0EF
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 01:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773105856; cv=none; b=tES468vWkrB6TB09JfPrNuNvW80vycyEXuQPbXkRusrDH5LnpFKX59vlDnpfSv/RYBj2u7arH0y0o8gZnrcuMB6lxb2MTG7VSZ1a5BUdBGq1oDWJb4Li2q0g36ppnkzKpod1DT+OIWSvGJnreoqk+NKLODWOtAjGu1jF+HK4jWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773105856; c=relaxed/simple;
	bh=azhP4OQfnKshtp5KSEfFcI9QFn852/dMLQQGiE9h/UI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=POYz9ZzvIG7ApGdbCK0UxAL1H8GlxOvY1l85YOeY+3L2i7Geg+xjWp6qc0ezU5o6sa9IyyKaFQ9+/5k9aVn188yTVxjEI5WunvvUmYXKPU/CkN0JzQn1sQVBBT060DiYM6ESZafw4OH3MJHgcEjMCKtKAHOVjUsyAaZncWGdl/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=muPISeKo; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-899f8c33c11so83886486d6.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 18:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773105854; x=1773710654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1gZG4pObxgFQxZXmUVKBVBBQrg+Kzcp2eMS58uQAHOA=;
        b=muPISeKo1TTZleMjvQlpW/LTKclhb0YovvdYdEnFWELzxGqKzftdQmjAzz1Y91Q14T
         BYCi2MAtauHPLaCTUmIzYqDOqFspOAsfjU24uNGwUMqKu4I/zx3iAPb1HluPLMSwJ6RF
         2jjIg/ZcecVvDaKosOIUkbNX+aGicWIQpNugKUERyDAsOiDspq1C3VhNXY1lpSpY/Ndg
         wCDO2RGUe1KfoOStg1RTEWNH0x8SqfFk6xbznbOr7zrTbaUzLcMUv+YLpJGi9ctAljDn
         seQ99mrm7D/Hp7rpGUX/Ldz2R0ueI9smDa6xqV1Nlm6kaLDpHz8N/x9/VbSS7SX0Buic
         GgRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773105854; x=1773710654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1gZG4pObxgFQxZXmUVKBVBBQrg+Kzcp2eMS58uQAHOA=;
        b=Z/euBIsOixVFUNzrFMucx2UhD70hgPrgPVADpKTYbIO10VlZ1U+iLXkjLCuwnUXlj4
         FDT1ubQmAlGf3asmNJzLqQxDZIhpPLZWGKl6rcwTfUlz2Pu4+ZQaV9ZHExadyB/5r6Zf
         yaAsceTNHq1ZRjtGlQ+1GnQ5naP0zFgYixLJHUXQ3uegayEVneWLfXoK5MsIoU9wpGQy
         TNl4l2B4u0EAoLqAQniehlak9o+2Rtjp7ElcgmrzC6ZEOqfTiVAWeZe0tAqQwsBapPaa
         uii26YyrvNxO4IgXjG5Vf8D34tYnGP+KuZMWqDv6Ly6aT4deF/FeerJ6EzcqPwJ4q/Ap
         +iwQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3lAoW2SetH36NLGNyStzH0LLA8vhZQsZlXnqpT6VG0xhNe1rVqgD5Ep/V4ir4Ampx1zo71o/YEem6@vger.kernel.org
X-Gm-Message-State: AOJu0YzCaX4491Ngc5nBZQUtOVUjD/fWqkgTN+zJZKxWLuVklfaa3D1j
	Sq+OeZO7aUTw4oOzOY+jL2jjw1EUyMdtXKcgk2uBalpqraJncSgRM2Wt
X-Gm-Gg: ATEYQzxUtjo0LJJ43XjufhnFgs3rPa/fD53ixA+2R41PnB8LkG3KrCVut2F2mS+1pMR
	8lhKe2N+nA/okV7Ieb0Q2+XkKHU+qDHVX7PtJGUF4FZneCvckpEgPB+g0dkrQ3gTaanzZqvnMMx
	fusrsRE9jj2/nUTuDMkvAc7FdgxRxwBcTaDlO7jiGKqbqml5k1+tl49KEfMKOOFSQtDOmoG0orj
	C15EmthlEONh/snsafuNU0mBJLhn6gf3ZIuJbXmOZqJuoXEXZsx2hTxBZSSYbx4a8OsTi4Mt4X3
	sQn8mGa/D9evTcKOVLgRZKL7HGhXU/uLKxQgxiWEsFU1SqbyepjCEJ7dV61posXh3++WbIWhEkI
	1PtAUYv6dMFJFvSOdYZpBO9PFvDUQLwfAPbJRRdVqrjYqnN1dk4w8p5QOKwut3tiSCbN0qzM9VD
	9JY4xBlj4jDYNRz43Bl9qpDVGXAU6upJy1PLPU/0WlMsPK0z+O8qGvRVSP7mbvx9upQaHw6bGhA
	vS5ecYLYuUvj60=
X-Received: by 2002:a05:6214:250a:b0:89a:3ad:8bd9 with SMTP id 6a1803df08f44-89a30b03888mr185705346d6.50.1773105853993;
        Mon, 09 Mar 2026 18:24:13 -0700 (PDT)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a57c3e622sm8859416d6.47.2026.03.09.18.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 18:24:13 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 4/5] arm64: dts: qcom: sdm670: add lpi pinctrl
Date: Mon,  9 Mar 2026 21:24:45 -0400
Message-ID: <20260310012446.32226-5-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310012446.32226-1-mailingradian@gmail.com>
References: <20260310012446.32226-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: DDEB1243826
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273183-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,62b40000:email,17d78800:email]
X-Rspamd-Action: no action

The Snapdragon 670 has a separate TLMM for audio pins. Add the device
node for it.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 73 ++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index 4879d29d63c2..e21d42483378 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -2346,6 +2346,79 @@ lmh_cluster0: lmh@17d78800 {
 			interrupt-controller;
 			#interrupt-cells = <1>;
 		};
+
+		lpi_tlmm: pinctrl@62b40000 {
+			compatible = "qcom,sdm670-lpass-lpi-pinctrl";
+			reg = <0 0x62b40000 0 0x20000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpi_tlmm 0 0 32>;
+
+			cdc_pdm_default: cdc-pdm-default-state {
+				clk-pins {
+					pins = "gpio18";
+					function = "slimbus_clk";
+					drive-strength = <4>;
+					output-low;
+				};
+
+				sync-pins {
+					pins = "gpio19";
+					function = "pdm_sync";
+					drive-strength = <4>;
+					output-low;
+				};
+
+				tx-pins {
+					pins = "gpio20";
+					function = "pdm_tx";
+					drive-strength = <8>;
+				};
+
+				rx-pins {
+					pins = "gpio21", "gpio23", "gpio25";
+					function = "pdm_rx";
+					drive-strength = <4>;
+					output-low;
+				};
+			};
+
+			cdc_comp_default: cdc-comp-default-state {
+				pins = "gpio22", "gpio24";
+				function = "comp_rx";
+				drive-strength = <4>;
+			};
+
+			cdc_dmic_default: cdc-dmic-default-state {
+				clk1-pins {
+					pins = "gpio26";
+					function = "dmic1_clk";
+					drive-strength = <8>;
+					output-high;
+				};
+
+				clk2-pins {
+					pins = "gpio28";
+					function = "dmic2_clk";
+					drive-strength = <8>;
+					output-high;
+				};
+
+				data1-pins {
+					pins = "gpio27";
+					function = "dmic1_data";
+					drive-strength = <8>;
+					input-enable;
+				};
+
+				data2-pins {
+					pins = "gpio29";
+					function = "dmic2_data";
+					drive-strength = <8>;
+					input-enable;
+				};
+			};
+		};
 	};
 
 	thermal-zones {
-- 
2.53.0


