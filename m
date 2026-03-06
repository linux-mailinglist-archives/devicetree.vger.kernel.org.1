Return-Path: <devicetree+bounces-272043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICQRKHXEqmnVWwEAu9opvQ
	(envelope-from <devicetree+bounces-272043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:11:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDC72203F7
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:11:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEFEA3173ABA
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0133838E5D9;
	Fri,  6 Mar 2026 12:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kUSSrAph"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9387838E122
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772798775; cv=none; b=aecIE4ZOuCaSXIVpSfDPNN9WfCK9ClLsfGssaCsnc053Ld8BJob1ZVcc9ofEk+KT+vRqp5k5VNNpih0GqgLXt+hp3D7r+s08ZGt90nXz/10AB8X8ZyuEE9ezhnYmoC6Ce2U/WFrU/WMheqnLaHbAcfihgZK4D24WpJUstzh/G/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772798775; c=relaxed/simple;
	bh=skkrqdaR/0vPKuUeSwmb6iwhZ8r9gu0r7vVQvuCbBik=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ErInjEJit6JxeAs15hEToAq3Pg5Tb+cprbjD9483cbWQ0NtFxCZXh/bsud7TuGKLMagpUyFtMDCv53br8Wt72OY4v0HP142yYFnEffFmbQGX8bRylEub9WNkkB+GOyAh0SsMEdYRE6B4jnIWzCqnzY7tS7BIOpcXDsGuiIcqN5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kUSSrAph; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-439c5b40f60so2628197f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:06:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772798773; x=1773403573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xWHYFXyM7zqNoEaGGLabRt6WO8B9aIWRMhobpXYX2k4=;
        b=kUSSrAph8/UVQPztSZw6A1jhHFfGaT6qA/DAJ4/5HsqnIuClA8jEItkmmWq6/UP+kf
         UYiPomSHwQhyn0IkvRxOSN1NHO6bfE1zaPLFDn9ruR6W/W6GydZdr4jz5wqmTU6s74Jb
         MPLtCdEZIYlx0D4eTUWWIW4WvTYM+ZwHk2IOGZCC/7ybXxBTHLdjTDVKBlDkWSD0obyb
         acMgl/B1L8BggiYpMkDGZXR/ESPTFwx5XfVMX8GY5SHaapgK8pjd29XjJVnJeXxjAOUf
         iofpYaCMPay5bnA69StNLsblT5oXkCKVcRbaLhhacZW0+edSJRyZijnPnuYuTrdvAkyf
         GOvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772798773; x=1773403573;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xWHYFXyM7zqNoEaGGLabRt6WO8B9aIWRMhobpXYX2k4=;
        b=jMQWMksWwIPuBWZ/egAE/CxlVGmQeyzVS4unxIqkfZLzd6EX6Qg0scxY4ZSo3Ybamb
         vIO1vVj4nJG5ksL8+q8G5Q3Nymt4T8u7fYcw9BBYt2auzQqtG3WsFBwvUWimkdKtK+EH
         vfd1tzi+AKOGRpys+MvjjwFn44vPGg/6FxXeuws/bMB36Q0NynW7XEnCEh5mnJDb1Cmh
         pY+cP4/PHBdbPQvTTlVPN3iU9+jdvVert7VQ0BRXlD8oqi/wLGk8VLfLYG/XEPae3Aaa
         x/hsIHqSf1xMDsEL0ND6OgJfsmjtuMd8iFO3ljDMyjWb2xGZT/+kT3ty8m43htT0wZfe
         LRGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJvFJuzID3A/9r0IhUZR0rXpQYDunDUSdhCiBQv7CmwWS2Jt1clDM7t8iuH9tfxoqUFom5ILOQUC3J@vger.kernel.org
X-Gm-Message-State: AOJu0YzXbDJ0OXEaVAu99dZbV/zol1GZd6np5KK+GpgkqjUSWZOx35zY
	99k1VQqzs5sbFDWxd3+PnGSOcvJ8ezlvhg3xjkTBQWVK3mB+nhnPOSqi
X-Gm-Gg: ATEYQzwhzK8GP/jvYykS5Z5dr0XOB2oj/bi5D51YozP9QcdPvCh1XPGD94y4yYCRHqJ
	YjSn1njgLxi7o1FdeGgU6bPqx/zMopHFXJR4YPhVrziMiuQlwfQWtjWmRQEC/DtP0o+KzVNNPq/
	KdEeGExIgMYr56FZycypxWMgtuNukQHVRnroo9s185B/zNS05B8Av1IuuWFYdFV4a5jS6fZ+ohy
	+U5WpPBWsAgSbdeGbwth1MEt/yjhsvvRBSkjGH+OQ6LSqaxHbt4Txya8TZgz/r2YYLdjNIuBmMC
	Wsvpwmc3Wy6CD9YAgjKvf9Md6iKQgGOS6gtasO32eOpgYDl6ihuhqKx0OUzFall758eoaoJYmRx
	GbB5XH32BtNiuqMDXnic8tbtGcSnTJTiDw3cdpYHJr/FlSC9s/vlZOyXJOqnZjdRJ+quzjkHCQd
	Q6oNeD+fwLs0Tg/VaQArTicy6IxPYAzg==
X-Received: by 2002:a05:6000:4283:b0:439:b912:7391 with SMTP id ffacd0b85a97d-439da34840bmr3145089f8f.10.1772798772610;
        Fri, 06 Mar 2026 04:06:12 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2b9d8sm3457225f8f.21.2026.03.06.04.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:06:12 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Fabien Parent <parent.f@gmail.com>,
	Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
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
	Gary Bisson <bisson.gary@gmail.com>,
	Julien Massot <julien.massot@collabora.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/7] dt-bindings: regulator: add support for MT6392
Date: Fri,  6 Mar 2026 12:03:06 +0000
Message-ID: <20260306120521.163654-3-l.scorcia@gmail.com>
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
X-Rspamd-Queue-Id: 3DDC72203F7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272043-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,packett.cool:email]
X-Rspamd-Action: no action

From: Fabien Parent <parent.f@gmail.com>

Add binding documentation of the regulator for MT6392 SoCs.

Signed-off-by: Fabien Parent <parent.f@gmail.com>
Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
index c358b2f8059c..bb1456d01ba9 100644
--- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
@@ -100,6 +100,7 @@ properties:
               - mediatek,mt6328-regulator
               - mediatek,mt6358-regulator
               - mediatek,mt6359-regulator
+              - mediatek,mt6392-regulator
               - mediatek,mt6397-regulator
           - items:
               - enum:
-- 
2.43.0


