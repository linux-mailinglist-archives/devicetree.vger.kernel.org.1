Return-Path: <devicetree+bounces-272044-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FnrHILDqmlXWQEAu9opvQ
	(envelope-from <devicetree+bounces-272044-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:07:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB8622022E
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:07:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B9E3F3029BAB
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:06:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E5DE38E126;
	Fri,  6 Mar 2026 12:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fkh7R4wI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21482378D8B
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772798786; cv=none; b=Hx22xqzfQehDOYdOmHazTDlgIXqG8NKCCDdzZQ8VBewzZMdTKAJagVlL4y54hHyLhmEhivUARehqJ592pamoilK6DMxmNxiZ/AuV5K4dnE9wqvAG4NLw/jJwMfzFz3nwvuPMrpOccG++YufCLww8HM5igvLVXtF1kMf1u6jCdWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772798786; c=relaxed/simple;
	bh=q8iNQRclNimcvTVMz/xp0ANElWweIprPYt8rET1d6u4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KMGCtTQttVu0PNNpAUhsjAGmfCpu8pbOhz27yZnCdN27yINKJEb2xBoLUlGLmi4mLi28E33Nkt4x8nYyyiDXgnsn5QpoUXNcq/JxyxWFRsvgcMzSXYiKkVYTapeQ5M4uZGSZJVgsAzzWIXLwINTzSVbLHcStuC2MlSGmSGjplBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fkh7R4wI; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439b2965d4bso5026132f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772798783; x=1773403583; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a+y0veSsgUsUJmnxU5xqCTTpBOt5TLJfl8EzSd1maDY=;
        b=fkh7R4wIhYmfpptMYrrqKRXNhNMhDlYQD6yU52VfzlaukLS141fSbydQF9L2K1IyKd
         DKLtonRhlY/JuKJ85qnFTRbDWT0QWFpeSzx222wlsEMHN8gyTjIHZEq9ycITQwtWjpqV
         ZpJl20PJVPIhGvDL0Nf/kWMxu32WE6DmH/1zWfKAwyodo6Jtk8oAIRWt7Lp9adA9Gp8D
         qcgbXlhwYOMomuNaPd9xE4Xo0n2NFRoffcuR5cOnh0oOP0y2f9rlDcuf7I6ukFyLv4py
         t/Hs9zXRg97khQJdm663VAZ0TRH44faJyqrjyrBsvEV2DG9l0jrsinqp2XG+pZObXG7L
         4qCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772798783; x=1773403583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a+y0veSsgUsUJmnxU5xqCTTpBOt5TLJfl8EzSd1maDY=;
        b=b7tOBplp9PI1BK82yMXnZJuRKQ4TFKv3ho7vLbSXxU279H4pBnw8TjXaCDoG9TdwXF
         yTCPY9mLUu+6IYXZpd1D/ogKQwh0yeyoRHhp1oZHoQqSiw+W9nkIzmdYI22aT2mqh64h
         CEm7vKgBkAEyyt5itZwo+5wK+r1ptYM+4agdGmpR9JvAVh6S1miFlyL8uBDD1tcxL80U
         6Ut1P1cfZtIW3ZvSV/sHL6HHz4PMHDtmBg/Tp0WNJRFIWXvWIm8Gv78ZROkiihTT1frr
         aDceWr9Ol8kXJIZqmErUmKe6AraRdUOK7piksH4LrwekLos/k5dJ1CkSQRJHLZPojUuZ
         mtkA==
X-Forwarded-Encrypted: i=1; AJvYcCXR2hdW5t8TyrtwDYeMPRGtp7KK4mXF14vq4xNFtMNbJdR2a9/ri5SYr8/2bX7nJKHIdzkb3QrEq4Ft@vger.kernel.org
X-Gm-Message-State: AOJu0YyFV4sKi8kkY2tQV4OXT0DObj/3g2vS7VlgqXDwYBlWBA9AvvTc
	rI1QQJYJLtSP75ICWqiA5G74TgfYBOq8tiDoX+VOwxZD3PZruDXOi7jR
X-Gm-Gg: ATEYQzzpEe17aQdl2Zyt0fcxAuBASjqbTbdlsC5acFrMDqUWrezSLJTzm60K2I1bHRF
	r2g0fEceBGOH6dl4W3lwybjR0xlmsH+5m2AtucqWQ330FVMyochILgUGLwx72hgGqQ8DBeFV4Gt
	H1uLlNLRQV7ePmZrDN4vrOB8wp2pm2Q73v5FNyVmkRMibSu3yiAJhg6gV1BYGlUp/hKXV5KZh4W
	8EJ9AyYvm4cwAMH0rJN7gFVClpy6Sy1hna2yJdQxzYbsRImsCpTbVswE2rBbgRbmKR0xAPjP5Pg
	LWWkPcuDoyiRn+mAicZ86pnf+LIke3366oih7kGfZD8+vkKaasYIamJWKtGALLd6qS69XXpds7N
	6AJ7XgdWBYMZ3PftKnt8P7OgtJRkfdOfQoO2xOuFzZbmPlUysfV4RlnPa2Tv9AC7j3VQOwts+ca
	rKyIHyW7okeWB/dgm1PFU=
X-Received: by 2002:a05:6000:290f:b0:439:b715:6f49 with SMTP id ffacd0b85a97d-439da86fa3dmr3098642f8f.59.1772798783337;
        Fri, 06 Mar 2026 04:06:23 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2b9d8sm3457225f8f.21.2026.03.06.04.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:06:22 -0800 (PST)
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
	Julien Massot <julien.massot@collabora.com>,
	Gary Bisson <bisson.gary@gmail.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/7] dt-bindings: input: mtk-pmic-keys: add MT6392 binding definition
Date: Fri,  6 Mar 2026 12:03:07 +0000
Message-ID: <20260306120521.163654-4-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260306120521.163654-1-l.scorcia@gmail.com>
References: <20260306120521.163654-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7BB8622022E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272044-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,packett.cool,kernel.org,mediatek.com,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,packett.cool:email]
X-Rspamd-Action: no action

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


