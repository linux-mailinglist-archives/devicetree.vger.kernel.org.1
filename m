Return-Path: <devicetree+bounces-267559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uC8FE0mMnGl8JQQAu9opvQ
	(envelope-from <devicetree+bounces-267559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:20:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0330D17AA46
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:20:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7B09C309FB8B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:17:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CBCD331209;
	Mon, 23 Feb 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gPuSI1sc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022FE330648
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771867053; cv=none; b=MhC1C0QUe1/iAD76xtY6ruSCzYCeucgL7iOjbDvOLAeQdTwr7KLXc1zWkvt5ij0gk8BnEi+xbohXvqtRqBLufwWKqzCPDxf/K4ocnjV2uMEhFWjg1sZfMxjNb5jU1g9qeOp3edtgqItT0uibpO3cu1e1we352AvNRbfe/pQNgY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771867053; c=relaxed/simple;
	bh=OZfaPFSqbA2C31QZTHgklz9lyeFU0Jd8/jlpq+HGvJI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r6xUXOZiiRB1yX0T/1Pi9E/8pMzJH6WclckzIF4WKftftWlx3k/PsiYezxOiesjbtCGz+CnMrMScZMp3j8fQT74M8nmrx65pbAMnylk+br1Uo7w+9PHFiJNHFK0v2tLuDKYxJccu/Uabtvif98GysPiaHv1mo+VfJBedi72a0d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gPuSI1sc; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-436e8758b91so3133188f8f.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771867049; x=1772471849; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qfSw/YyZxtWdt6T+0h8WzqJ7g3THGU6LxAxLY8xoIzw=;
        b=gPuSI1scwCWzlR8FBeZxbwSrPM+9HXa9Pgv+N3SySO1xN4xE3RclTXWEPoKXdIuUGt
         c6tJwU3RdZ+hyeBO4b8J5be5POhh5wlMtmUGIgcIPW19bdabM0TfZGeOmbR21aDa+r+a
         DB9uAVjN7rOHQ8pfNFzRiPhCCyVyWhJJb0igFgYKzAFE7pPTMnrvvBmqla9sHo5fG4s7
         0OOpIexnPfbua2ARxQt20UtF/+wyqimd97WtszzGUPox+HfDxVRjr98j5SFL6h2q0HI7
         mByQM4T6sHDK7RtRv8DkROMYKsf22cIk/q62bSI5btAVLglwRzkf8t0HjxrLVPemgF5X
         yLmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771867049; x=1772471849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qfSw/YyZxtWdt6T+0h8WzqJ7g3THGU6LxAxLY8xoIzw=;
        b=SNUa+/gcgQrlk/b41P03CQF4PmdA5v/xcuoQGYlOY2XFe413Va2FFxKeiaO73f6CRC
         3eFYjZZmNJ1W9LHbokKtbCUWnCpbP/NkAFcGSVCYc/XwExjfwEkvK4QYdDoTf6Dvv660
         70cckuXBAqkRzDkNWJ1M+eEy3GaLuuw+2y/+Vr4fE9RkjImGArslHzVzkXPn9owM7lmw
         s6oFQJwSdRft56yKEnrCGCY3ScvYaTIyB90hao1NgvKwB4Swqb0hVEfNlFZ/+sSQT1AN
         GjXTYruoqgIxBmlCP45N/r3UZxKU4JQOpGagCD+e1a8CcBXvdPOb0cbLFOTJMChkyekQ
         zFDw==
X-Forwarded-Encrypted: i=1; AJvYcCVb61hypMadeBNydo4pRkBeLDCxYWTwNS86VpwLAFNYkAzDHVGPcT+iS0dsdiJwPo3jPX8miHo9v4UE@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ9+tlDYp1F2hbiRNlJnCYJ+WN9d9Mh8tcWYYGlv3Fl4EP1ME0
	1lXsv8duyBQRo3wqCHv94mKFUav6dt3LMan4pqrjXVJHBSqduLotuXPv
X-Gm-Gg: ATEYQzwaY6LAwXp/iw78cY+Hcwkpkp/wNNfJI+qoz8YJtFxili0Bo7DkqC5q3VT29j4
	YyJnHbTfEJWSTvUdkUF2j8pPgQEBTIkb2WqXzRDFofCffEIajTK8LEw4LCkqre6gd9JZYH7YktA
	YwVvRAKRXk0LV+ztk1vpOFqUSgJLkJoNNZZk3yiHaKEQicXJojKe97By7ncXuCa888ps0JQOJJR
	XBhv17kiTAglHUVQw6pa6rDho6sgxY7ld5BRq4zLrnN/u1Ofw2wb/Tj1cpbyUSXJhxoU1cejQND
	Z7ClpfP8PzalwgxTov4ft2g25R67WMPFil+qiCNbOxyzcpaDeBzfY8PPuM/Toj6Mw01vw+xnAjX
	ypuo5ZN8qpieNyD5EJZgFJ6GggHC0C+BRF9UNCE6AAFTvkHF3cER81ytiODTVloolMan/2RMlt/
	rGZcV3g7jr0CcPNZgPoGI=
X-Received: by 2002:a05:6000:188e:b0:437:9d2f:8bf1 with SMTP id ffacd0b85a97d-4396f17ce2cmr17527562f8f.38.1771867049261;
        Mon, 23 Feb 2026 09:17:29 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c982sm20871454f8f.31.2026.02.23.09.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 09:17:28 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Fabien Parent <parent.f@gmail.com>,
	Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Lee Jones <lee@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Eddie Huang <eddie.huang@mediatek.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Julien Massot <julien.massot@collabora.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Gary Bisson <bisson.gary@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH 2/9] dt-bindings: regulator: add support for MT6392
Date: Mon, 23 Feb 2026 17:12:41 +0000
Message-ID: <b7664f4d9a7b038b0603b6bba79cfab4e18cbdd6.1771865015.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771865014.git.l.scorcia@gmail.com>
References: <cover.1771865014.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[gmail.com,packett.cool,kernel.org,mediatek.com,collabora.com,bootlin.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267559-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,packett.cool:email]
X-Rspamd-Queue-Id: 0330D17AA46
X-Rspamd-Action: no action

From: Fabien Parent <parent.f@gmail.com>

Add binding documentation of the regulator for MT6392 SoCs.

Signed-off-by: Fabien Parent <parent.f@gmail.com>
Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
index 5f422d311d4d..b61fce8f09c0 100644
--- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
@@ -94,6 +94,7 @@ properties:
               - mediatek,mt6328-regulator
               - mediatek,mt6358-regulator
               - mediatek,mt6359-regulator
+              - mediatek,mt6392-regulator
               - mediatek,mt6397-regulator
           - items:
               - enum:
-- 
2.43.0


