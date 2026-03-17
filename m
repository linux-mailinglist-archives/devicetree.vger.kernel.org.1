Return-Path: <devicetree+bounces-276825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yG3rLmWhuWmiLQIAu9opvQ
	(envelope-from <devicetree+bounces-276825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:45:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 615FE2B1182
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:45:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1159F300F7B4
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26EE83F7863;
	Tue, 17 Mar 2026 18:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zq/XaBfW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F8F36F400
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 18:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773773152; cv=none; b=dUtr7TO/cPaIG2Fl67tLN5VrTrN4pY7iHvwOpBx4bOQqgitFyzKzGiYGL3Hplbla/5wsmBOkgiLJWzylMCTbPbZ/E9zFEqqLnENtoi0fENNzKp73QTtK1GoH0D4dghLhsO3g3CK7kcEOtCYLIMtKqevw97VZBSFuKGz7NRVXEUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773773152; c=relaxed/simple;
	bh=q8iNQRclNimcvTVMz/xp0ANElWweIprPYt8rET1d6u4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GeVqwVrN1n0Q3zQMVBaizXj8HdqCXuk3EYh3QtIfKmSDRg9L1ru2R4LIq1JlKFXHNmbyUkorXEcyJY0BFqWs3wOXNuQ9R6/zJhAeOdURIouLdhv/BSWHGYJ++4s+ur9Lu+3G0CCb6QZ7ZrZQ47bcgTj6v8IUF+8ZM0+10Kxqv/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zq/XaBfW; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-48532925a4bso32520375e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 11:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773773149; x=1774377949; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a+y0veSsgUsUJmnxU5xqCTTpBOt5TLJfl8EzSd1maDY=;
        b=Zq/XaBfWQVvF5NbK0pKEYbQgj18PCCJvmQZjlZi4bsBXlf8GfR9mowFsgZWsMOgkp+
         Zav70swWAdTCzizZWJaS472IaKZ3nynQi/pCAO8sWT+qjE5gybdm2WF7KCIkdRRyWWX4
         dRIXOgN5EisbsCtUu9zRj5oU+MfkEDo5hqNbhDzENmLq67ow8DOyUVdL36qNUQJmOwFs
         rtqdEu8PWQUYpzVkrUjl4/0+qd2/Ijnjuz9Yio1F9d9oZosnGtMBTz7P21Y5isLVnq99
         9a3Un61QzYs6/3snZ0MVLTvRfB5NL7GOyG6h2QnQrLvLotYzBqHntbbpdf0bwqYMnQgW
         I1jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773773149; x=1774377949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a+y0veSsgUsUJmnxU5xqCTTpBOt5TLJfl8EzSd1maDY=;
        b=c6cAheyJqxvfEIjgFkQ8xja3cU/tbCrMt9p9Jnh7mLiL/oD7nLck0ijcTiy9CVuI9S
         uQpW/t5RHV0VRxvu5TgGSwCNIAa+0Yzv6Z9/wxKWJHbbKWXOlky+UM9Xp4m4f2IzXN9C
         Norueh04or9VqZpqcoYMZQCrvIVWFwaZMKszWWIn3eVmskJgNhpdRyaZKtFnWRtbMhDy
         Q73jsFiuOiqAd9LAe3fkGL76uRFyqRt0Wy936NFmUn7cVzyH11CAgwrefzB9Eu8O6WNv
         zSODeYbRUdNFpPwIQLLf1BzCjTjU9QPxE11vrpONFTfCZ5fmSJqt/6kf8erAJxLxCK4P
         9XTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVg3jxg9wYRo+ZCJSqAX14g+4ZOlEKYkww6r4AbLk5W3Sip07zmZSys17Hkfpk56GSg6WHAENBveAPw@vger.kernel.org
X-Gm-Message-State: AOJu0Yyd0xJC6DQP8MZbTNXsYOYyVZAknMmpftWgccPwNSHYUs0kN2uF
	IAvzD9N9gn4+aJcU86LaKVc3+/zSPRU73AufPO+pFVNrlCSt07A/QoQ5
X-Gm-Gg: ATEYQzwg4A7hsqClQ7aXplUrDePBeOLhhwk+PNjBI0mjUCR7EGJgepIoGNhmMqAcPx1
	F6rYJq5+vJiekRycLFaH82F9LzEsx2WV/xpqxCqYZI5cPk+NeYwLj6YhO5PFkVRi7G9HEFZAQ7u
	zq1+meDYhBV3bStfC+Ir1raNzPxTXQfDWfLjEGWW1YsjpuhoeKXsphcduF7x/wltqIooxZZcBvC
	BVmmjyxuCvKS+gdt9HIPOyNrcRK49h2Vn4z0KwUWx5idq6BJTN26F9V8WGLgKsnAJ/ZelPVlgGX
	zDYnpt9zQ4tBbXjUJnrYdfz0ksQ/nEB8gxGCVIdsOIHoqRcVkgkeF7TLeaWDF5Wsr7EliQD1Ns0
	8aRy2sRWx9oLrNgiBdyQN2CHW9fWs4eih4K2W3/LygbIPshxuCh1u07mHiaPgyBAf9TzjC+i+lK
	V8OpiAHyiP+Z5BDwhe24Cba/lpsabEdQ==
X-Received: by 2002:a05:600c:1f93:b0:485:3b5b:eb8 with SMTP id 5b1f17b1804b1-486f4463591mr10143505e9.26.1773773148893;
        Tue, 17 Mar 2026 11:45:48 -0700 (PDT)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4ba760esm102725e9.24.2026.03.17.11.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:45:48 -0700 (PDT)
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
	Linus Walleij <linusw@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Gary Bisson <bisson.gary@gmail.com>,
	Julien Massot <julien.massot@collabora.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org
Subject: [PATCH v3 2/9] dt-bindings: input: mtk-pmic-keys: add MT6392 binding definition
Date: Tue, 17 Mar 2026 18:43:05 +0000
Message-ID: <20260317184507.523060-3-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317184507.523060-1-l.scorcia@gmail.com>
References: <20260317184507.523060-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276825-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,packett.cool,kernel.org,mediatek.com,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,packett.cool:email]
X-Rspamd-Queue-Id: 615FE2B1182
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Fabien Parent <parent.f@gmail.com>

Add the binding documentation of the mtk-pmic-keys for the MT6392 PMICs.

Signed-off-by: Fabien Parent <parent.f@gmail.com>
Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml b/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml
index b95435bd6a9b..2d3c4161a7f8 100644
--- a/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml
+++ b/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml
@@ -30,6 +30,7 @@ properties:
       - mediatek,mt6357-keys
       - mediatek,mt6358-keys
       - mediatek,mt6359-keys
+      - mediatek,mt6392-keys
       - mediatek,mt6397-keys
 
   power-off-time-sec: true
-- 
2.43.0


