Return-Path: <devicetree+bounces-278131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDfrG/sJvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:48:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D8D2D773D
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A546E3085FA0
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B3BA37EFF3;
	Fri, 20 Mar 2026 08:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="c2xjV5nh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C2937DEAD
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996271; cv=none; b=fDgijnReSk/q3j8qq2w0gDiYM57fEuJnBR54bw+mjWAHYS+YYzGRaQSa8oc34EWZef5SXutk5Zx91yQTL9MHVMpRoSHPZEN4RtJQ2VMZEVSulOCV/E9KGxWL9D2ZiGPfLfM+Qmk5Vn+B0sP6dbMKKrKRiO1CHWK6qujLduYDwrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996271; c=relaxed/simple;
	bh=YBSJQqPlaqAbvT27EtoR1HX4uFAm8KgkbASXeXtKrU0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J9+Nmxw79N0CppicFRYnBh96j99ppT226nxTxUCLhjm5bk1KOPo00hq7cJ4JPe1SWIjltSLvalfuMhnqWpMuL09er1gH2fDChENsBPBU/gBohwVO9zLJJJz5HyovOzNg1KZuNeuDOu+fjX09a8w5Nk4OZdD3Gb9oBbFyK+OtfbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=c2xjV5nh; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2ad617d5b80so11124035ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996269; x=1774601069; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NST1RpwwZp2tcAMZXFkmE4+NkoKPGEFDpa66C3GY3os=;
        b=c2xjV5nhFXMmLi2/PTqd6z0SqF6yGw1V8tcnY+YDamnSulxMuw5t4v+PCAxK8SNrX8
         faEB8ZPJkyNItgw5X6NRjkggrqJ7UbnmZ7b7u4A+5uC7W9wMI60R8Z/kyN4r5XZpG7m/
         2bghvDX88ZuJNjWFJKYLvy5AWPIGjlGmZIrg8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996269; x=1774601069;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NST1RpwwZp2tcAMZXFkmE4+NkoKPGEFDpa66C3GY3os=;
        b=YlF1o6OAgw+nBYwWd7mtIDB96w16OfbeFr3BTBwL7WupIR7IgaEGX6F99hpwv6rV10
         pmcOTxybwS+FMKW1xK2HmuknjJPdTwwOwVhE9AqkOZiiqUrKguC9jMJBlOKFmU/iUtZC
         IGVGPiTc1q76Eoqm5ETlOSwoTwIamhViKQ2q840AfL+dzSd6hpPpbulS4Vl7t403mD1i
         sm6gezdICoEEfB1ldhyKEWOxhV2dvZ8b70kaXHfJK2GN5inX0IWemorKAuJbjJt0NkRT
         o5FgWr5OYYcj+CcPC/J39WJlk4nt0dGrwMZmjxegJ3k2XEfmVq79Hb1Jk8CvdGeSwOqM
         j83Q==
X-Forwarded-Encrypted: i=1; AJvYcCWcLYJi1ynYjm1IWwxLpn3/0R1DC+6OtLwpiBUpq/MWp6W62wSzV4GbOTaRIPBhNYpTgIcUJs4zMhxA@vger.kernel.org
X-Gm-Message-State: AOJu0YwSmDqHa3P2CCY4bjHOwsotAHycBWWG3pQMeFu+eROsGFqCRz7m
	gKGK2okYhaflqHClwVIBrICAANZK6p37Swl3HceNwLsbVJSOd0jw7UaBD3xoD5IxSSkFSo2/Ax4
	Uwgw=
X-Gm-Gg: ATEYQzyATK/mvmb1vVp/UTANxv9PCJCxiqMjL3PJy2oSMPSOnrJJpkFuiY477hVRslv
	syIQVhJThO+afcOqRrPLPz0rqxLs//wwn6Hz+GnuYRk06PzTQvEji08jOoXUNTLVplBOc588lMd
	kTKRMhGCPaSfvrWNlC7n+nNxPfGf3bd56ALmdC99R5fsCypYRCl65bwBq5aX6iD8XmtapQZYh0b
	99FiZE1h1oiMsYg18rhCvMjvnzs1ihiXuNlH+EIoFgjv5xw7AgsfFUswr7bkYiwjAhC+jWyx5kr
	Gr0RwKA67YGwpz9lPoDEMsTvNuH6xGDGzAanQwyuWNMWnTLnHKtsqkbqi6NnfNS4K/UKUHVYkRx
	BoIQ/dkkMZsPO7YSz3uI6YNf5Zeks2tnpOnCuQassCYce3UXTtBWbBWacMt41IYEELnVH7mClxE
	rKEQK89wIkpZG0PT46Jha6AvaugZwc1ia8pfh2xUsd1ZUFUZVO+XdpN+tfTog0tvYrvqiMIixHc
	tXHjALE
X-Received: by 2002:a17:903:183:b0:2b0:5654:ff00 with SMTP id d9443c01a7336-2b08270dd85mr19846135ad.9.1773996269206;
        Fri, 20 Mar 2026 01:44:29 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:28 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 13/13] arm64: dts: mediatek: mt8188-geralt: Add little core CPU power supplies
Date: Fri, 20 Mar 2026 16:43:45 +0800
Message-ID: <20260320084351.2461060-14-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320084351.2461060-1-wenst@chromium.org>
References: <20260320084351.2461060-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278131-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 31D8D2D773D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The device tree for the MT8188 Geralt is missing power supplies for all
the CPU cores. Power for the little cores is fed from the MT6359 PMIC.
Power for the big cores is fed from an MT6319 PMIC on SPMI. The latter
is currently not working in Linux.

Add the power supplies for the little cores.

Supplies for the big cores will be added once the issue with SPMI is
resolved.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../boot/dts/mediatek/mt8188-geralt.dtsi      | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
index fc84dfedab03..7108bfa53ad0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
@@ -217,6 +217,30 @@ &cam_vcore {
 	domain-supply = <&mt6359_vproc1_buck_reg>;
 };
 
+&cpu0 {
+	cpu-supply = <&mt6359_vcore_buck_reg>;
+};
+
+&cpu1 {
+	cpu-supply = <&mt6359_vcore_buck_reg>;
+};
+
+&cpu2 {
+	cpu-supply = <&mt6359_vcore_buck_reg>;
+};
+
+&cpu3 {
+	cpu-supply = <&mt6359_vcore_buck_reg>;
+};
+
+&cpu4 {
+	cpu-supply = <&mt6359_vcore_buck_reg>;
+};
+
+&cpu5 {
+	cpu-supply = <&mt6359_vcore_buck_reg>;
+};
+
 /*
  * Geralt is the reference design and doesn't have target TDP.
  * Ciri is (currently) the only device following Geralt, and its
-- 
2.53.0.959.g497ff81fa9-goog


