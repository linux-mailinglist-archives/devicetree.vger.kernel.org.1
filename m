Return-Path: <devicetree+bounces-271521-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJ0mIt1qqWnH7AAAu9opvQ
	(envelope-from <devicetree+bounces-271521-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:37:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 088D4210A80
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:37:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C71823038F00
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 11:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50359390200;
	Thu,  5 Mar 2026 11:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KnwyEQ43"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADF518DB26
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 11:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772710568; cv=none; b=WIFAcRK6Diz9wXQSGVBQ+CLrFkp2+Lm+BluYeEGgxS200Vt8FqKWSQC5NuREHADqUPPpDB/5NXiJIDleCU7ey2Xg1Tgryq4s0a9K4Hi/mkBYrxfI09kKTMimLUyDH4nVJnt8QicZKg3nKf8Ot7WLFmRY7+kwRAvlkoO4VhnRpkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772710568; c=relaxed/simple;
	bh=bslnI6zzDAblJ6or/5cmZXVJm5WyOHjDwWTu/m0o1fA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kaCKLPPfQ1O/EMTvVEISC79Wmg+7aqoMNhpp8a3kKQXtwvmPMJwBrYPbQk4fbMJWHeZDNxeUYkTMCIPiw/yeWXnOUxP6YeKi2HrmM7/nb46ho7MGIv7G7iGtPergneT9nXirJ/Eq8E/YUqsgKxhb4caEQoy77KSh0T311rareg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KnwyEQ43; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2ae3a2f6007so37704035ad.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 03:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772710565; x=1773315365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gyy5fA9H56ek5WkTEHHXIwE3xgEKy4C1ClouQ5oXj9w=;
        b=KnwyEQ439aP4ZAEPEPBFlb6u1DrsxGcA7uvqBiRL5YZ7M4QlPaRmRomENd2iuE6sMq
         GxkV83emPGAUCfob6rrX6NmCyToxzeyVy91FdFIYYdTwgkTfZBPKn2S7vGa9BDoJPRAN
         CLU/zAFLiVOhygDNdbaKnIeG7sRrjDPaysOKtSTGnmlHX/w9zW+M6VcTRmvDHUcE/Tef
         OwtWY7lOCVzuE9QQweTGNCrPSOuliOjrztKVi7+d10cEVsmh1ugH8U7ecKtgZsd6oeMO
         827lwZJqwrvh4DMtyti7+ukgi/IIQvE6xN/EikAGtjkN4NM04WfQSi2GULxMlBiV0RY9
         zCgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772710565; x=1773315365;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gyy5fA9H56ek5WkTEHHXIwE3xgEKy4C1ClouQ5oXj9w=;
        b=bE1v6y5EMttfiTODAwUwTNGX+72U9bT1SuMt+IFakQ1qqLw//Af2KRMVuKYvGKZn4Z
         L5Uw68luw+4FoIN0e95OVUBacEvdoDpKkIj2EhWJPByOC+ZVStrcxKYc1baziTmRoZgT
         OIjCgJi1p7DE4ZgBAOAvwgINIClPBjBzdyaKdIXoIl878gCbG6ouBPz1zTyaOaf2fTqq
         XKa6lM4nvCc2HX/1HACP25TQOfVRFe1TCQMl5E/9L1yTIB5FUzTumiiWV2YlyFAWT2nY
         HkPHUNUsAK3SW3eoLfkQ1l60IwSsTUM06h6kn5t6VdC/9j9e+4vSk2GCggFfynlhACqH
         miTw==
X-Forwarded-Encrypted: i=1; AJvYcCVYCxtxFE0ITRNLzlGYErWbWmtqvZxto8COuhJmzsywjaqpoqoNod9J0zYfY4yLRMTpKZCip2nSQ3xh@vger.kernel.org
X-Gm-Message-State: AOJu0YwWoPZSpJo03FzIlwChpxoU/MKbMnOYrLtKvq3GjypZGHuIXbgN
	7nhGjdS5R54UjmrrJmJSdq8MHKJl3YlUU7M7J+MeLL1pXYVZBBOJHDEW
X-Gm-Gg: ATEYQzwia8EDyeWtARlDZ7l39cpjF+LUa++XjxKbtNeLtsVZdEJ2tVZ6zHeaqzLtXro
	l+EQsNXrWjOvWoyHUmyzql8ZuZ4mImcdYrvjaR/0biWKwdL5RnGdINuO2QELMPb/HkU/8kflJUF
	2RBR9R+c/sNzlacWaSPyNDcDom/SAB3GLLoVNulIZ2GWRcs7297obDAZvpOJUEMxckn9wxEskin
	25oLx1pJu4UgymxZ9nPrEOwe1ZcC3e5w7uhZKN5kBnz8ga1kjSZloEvwJpo8N5F32+iBnbWG/lG
	wnrUbnVep9D40FGpsEWyumsoI6Qec6lKOaSLgKmqQnscMpcCw1rVH1PYntSxhmQtw7sV2YLcEqm
	7lnU4xCPDDHGiul8nRftsBamTtARz/aItAJ36iyaQUjURPLvdnQLGPj7+zu0a4UZg6qxOjSKKy3
	oa4DPjY3hqA4OIGuxP1kjFvzPIeceSJ4NcJpCl99mx6vwBpch4F9KTy8n1vYunz8GJhrck
X-Received: by 2002:a17:902:cec6:b0:2ae:491b:6f8d with SMTP id d9443c01a7336-2ae6ab1e1fcmr57386325ad.39.1772710565364;
        Thu, 05 Mar 2026 03:36:05 -0800 (PST)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae5e1699c9sm78796995ad.10.2026.03.05.03.36.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 03:36:04 -0800 (PST)
From: phucduc.bui@gmail.com
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com
Cc: javier.carrasco@wolfvision.net,
	hechtb@gmail.com,
	wsa+renesas@sang-engineering.com,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	phucduc.bui@gmail.com
Subject: [PATCH 0/2] st1232: Add wakeup-source support
Date: Thu,  5 Mar 2026 18:35:10 +0700
Message-ID: <20260305113512.227269-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 088D4210A80
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[wolfvision.net,gmail.com,sang-engineering.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271521-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,glider.be];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

This patch series adds support for using the Sitronix ST1232
touchscreen as a wakeup source on the Armadillo800EVA board.

Patch 1 documents the generic wakeup-source property in the
Devicetree binding for the ST1232 touchscreen controller.

Patch 2 enables the wakeup-source property in the ST1232
touchscreen node for the Armadillo800EVA board, allowing touch
events to wake the system from suspend.

This series depends on the following patch which has been
submitted but not yet merged:

drm: shmobile: Fix blank screen after resume when LCDC is stopped
Link: https://lore.kernel.org/all/20260226054035.30330-1-phucduc.bui@gmail.com/

bui duc phuc (2):
  dt-bindings: input: touchscreen: sitronix,st1232: Add wakeup-source
  arm: dts: renesas: r8a7740-armadillo800eva: Add wakeup-source to
    st1232

 .../bindings/input/touchscreen/sitronix,st1232.yaml          | 5 +++++
 arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts        | 1 +
 2 files changed, 6 insertions(+)

-- 
2.43.0


