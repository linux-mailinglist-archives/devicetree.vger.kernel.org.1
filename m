Return-Path: <devicetree+bounces-278120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JXrAwgJvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:44:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A42F32D760D
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:44:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B85813031F35
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73FC9376BEB;
	Fri, 20 Mar 2026 08:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RjFZQ2Yo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31DB375ACA
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996246; cv=none; b=ih4BvE9/C4vizoZ9F9ku5r5ePUctWPdnQwxY0OQn8a8uki2zKGf/SdjdNlJEwHbey4m6XHzS16zHjSgaq9G9ckpADdrpYEhwP5qdVALH0J46cjqts8qjce41slsJffODPVKMOBJTpYXIknzZUR2G7e+a+aiwB1JpvoQ5HbmfSzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996246; c=relaxed/simple;
	bh=gadtlMvOXeJICbE/iT7M1NQz2qNAzNbTmFod78E76ro=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ry+RBAA3xelxlrqCNogQVOIRcKRhmL6iERe11TrG3kTJw1wxYkHvFZuQKHx/Jq5d2oiOJ7O2Jbbu9qvAg9F0L3W5WRCK5IjV8vxBOcmeWDtGoloWR4Yy0Nj08+0LPKIldLk8PyAzPucBqyaDEQUV099UTpnBWDoQlq7IoFvtKqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RjFZQ2Yo; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-35bb7afdc38so1097753a91.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996244; x=1774601044; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cWqNbTB8lPl7NXUj5bx+sUi8aqMzplYLnizvMqOci1s=;
        b=RjFZQ2Yo5P9u/Y2TvasXi5vAsaehvlSESZJQNgeYHPbXRwoiSdGfaA5koh8yQu/w0S
         pIt7RI9j4l+Md7IN3O1sSPngp52sa3YGBXgRUdm0ds6ZqQJgLSRyXSlGqTvq+zW4C52T
         j2eCR+0MXUaEN12ZCEftuf5/O4JIOIK25KbNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996244; x=1774601044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cWqNbTB8lPl7NXUj5bx+sUi8aqMzplYLnizvMqOci1s=;
        b=d6nVsmHCsPogqBk8pDwX9+59Izhef4bypcNNf87jJW7thAAqEgXSznng3I6eX9rj04
         3ZkrynWuhMLLBkdEzDkoXY0TC/CWKS+cI7Vevi8VhTiE7n0L4jjnbQtNsSK+ly0YOzeC
         prJOujASf46zNpodBkx/sU+P4DSsOgrTQfI+CZdATq4RAp3Vc0/dtrlPmt+mwNKnXYPy
         87pV6MZ/mFFRIxl/lREo9gdB64n2v6nLPLS5F9aHlEaFu4cbFIeob6EAcbcmIPJqFUDr
         MmsOVPlF/JgWFYo2A5q8w9Xr/fwKTRFHbDRWf7y/uKYrMqorCNDEJYpeHjwvmsByTcml
         hmUw==
X-Forwarded-Encrypted: i=1; AJvYcCXeJ2zlMVthXzKewhUa02v0DkDItTnejODcZdRwH/BVaVb5GHl81dhJX6KYu7ejFt82H/obffLE6F/w@vger.kernel.org
X-Gm-Message-State: AOJu0YxJAoCEAbxoro86tj6yqEipc7jbskfArngrvEH/RA6dnKYwXP9v
	gknq3XvPcSOR4DBp2ZV8Ignw+y306NfbPbPxCr+7lsPOPtA2Ec7nmgi+NdKP8JdNFA==
X-Gm-Gg: ATEYQzyIDDVohvx7k++rpuOdwdG3HseEknG7xyJgErEhlMSWylLTwlAG3CBSeVC6LDp
	6pV42X1yuSO/9O7DYZPQ+5fsuOIAja7kDJbzkH3xFUK8IxdTTOIrgHwSG4CuS4SvtgL5cRsQmpz
	cWzwcdi1UH5IwRJHRwVcEv0bkKVBxw0dw1hgXf1NVoRcBS3cBzZ7VoF+I3Qo54zwkyOJD3bHQQg
	zwWNhlQZZ+j/pS/DP+zB9zi6xhrSvAAm3LvbdtK8hJJa5GsWvyVy/8TWsSpmFrEUtZ2MVH+Rcob
	5PWg70QLXBOpFo+qM362yxAWjZ4VZD39m1RRQDHTVOugm/3Yv0QHQHCHrj82ub7916OUSfEkmaV
	GPHJhDnADCyUXp2XY0VYu5N/BMOjODkK2Hm0OL/NBeLzvVXA7qo0nfcxzsxhA6KHD2FiZVaWtxi
	mxLwgYmBH1a7HP23tPm8VHDtV5LpD37FcARwKhu+j7AAvrZldCvh3dk+vpsqE3FQ0knqEy71hFt
	qmSoXQF
X-Received: by 2002:a17:902:e551:b0:2ae:6755:a258 with SMTP id d9443c01a7336-2b0826b8b9emr20276665ad.3.1773996244137;
        Fri, 20 Mar 2026 01:44:04 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:03 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 02/13] arm64: dts: mediatek: mt6359: Add label for regulator sub-node
Date: Fri, 20 Mar 2026 16:43:34 +0800
Message-ID: <20260320084351.2461060-3-wenst@chromium.org>
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
	TAGGED_FROM(0.00)[bounces-278120-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: A42F32D760D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The MT6359 regulator bindings gained supply name properties. Add a label
to the regulator sub-node so that board dts files can reference the node
to set the supplies.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt6359.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6359.dtsi b/arch/arm64/boot/dts/mediatek/mt6359.dtsi
index 1c41c4701319..a3542186fc64 100644
--- a/arch/arm64/boot/dts/mediatek/mt6359.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6359.dtsi
@@ -19,7 +19,7 @@ mt6359codec: audio-codec {
 			compatible = "mediatek,mt6359-codec";
 		};
 
-		regulators {
+		mt6359regulators: regulators {
 			compatible = "mediatek,mt6359-regulator";
 
 			mt6359_vs1_buck_reg: buck_vs1 {
-- 
2.53.0.959.g497ff81fa9-goog


