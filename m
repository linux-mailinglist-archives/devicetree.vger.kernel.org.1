Return-Path: <devicetree+bounces-266147-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG7hND1plGlFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266147-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:12:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D40A14C6EF
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:12:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 35AEF30107B0
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C719A35FF5B;
	Tue, 17 Feb 2026 13:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J5S11HTn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAE8F2C21ED
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333946; cv=none; b=l9A1N4TOKluLRXv9dkHo4niHvI0ZYJoKrBt6OSF8roLY1vNM36RLJoMwU2DphrnNtGdCslx5s4eEsZovVi79SLFY7rf6Vl8ncpLJFY/H/8QgRKJqpljnCOsCG7XjZ9R/NwJ37gi802bIxjdKP4druMF+T1JeOHKfK8d2lb56Xo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333946; c=relaxed/simple;
	bh=E+mqOESSVBjSqiFnhnpG8g7Vrm1sJAcBoyOztPYkI9M=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BeCBfTGZu8micQP0gY0tv05tLQj4/+QxFHqhU2VjOGPuaQWj5ZU3RT5clojS68WMy03PsJ/5ayL79QrPyZVHvvkJbtfpRsMdU8QoU8Pm+rZWoUTx8X13Ar32/hxshG12c1RQ1zkkGnMSkho0mOXPYEyeQJoHBLsDYCE+2NAPW1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J5S11HTn; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-354bc7c2c46so2671250a91.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771333945; x=1771938745; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=shgQILtznBovwoTlB3ZwkWPGxdgyGAqq3XVFEoRE4u0=;
        b=J5S11HTndFmtH5fQWLFFzyyK3hmHPfC7gSwypUUmuH3tlXZ997g2tTaQwKh/p7fJ/r
         bGGiw65+5k8yH23jY9p+eGHRmW2s7QTd7S2WgkT+7J6vWHkGz7QtmZ1yWZEfXH+h+8Bs
         ZIozxpShXOprx28lNy0Qb+nh+5q5WdFo6zqG9yI7AhRqxGkStAjkscBuoUdMVUQB4vKp
         ClmNkTbNQ39opaSOmJRY/kb9pP52WkoFabKT2UtqlGdzzbwmCn/7anm2jCaz+tT1SMgY
         H3yqvt2jHJ51y9MEFmn6jEGWjsnjmBZ1s8tvY/B/wSv1ng/T+xL49++sAkqBIlWE02Ks
         g0+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771333945; x=1771938745;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=shgQILtznBovwoTlB3ZwkWPGxdgyGAqq3XVFEoRE4u0=;
        b=r5gmkQlsRTOmp1AX9iP6KEAMES/6TaIjqfVGnoKuqNobewmQqMRV/aosxPR0JFcoHV
         4RBPv/8GWVwm97Z3Ohdm8c7+0lau1DQgzvEm9a3JPIJYgcituvCmSb5kTIMHNgS+ivZK
         ejCOvKeLcEmqUmZkS0DVzVpfp8LxImd+UpDADez/t4AAGEHNCz/+5G/OM6m6fGEISOnK
         eEZi7v1mUivNMsPm81q9qXO/RiyaUz+NnYzOkip+dHf/eTUgXdx71JJNC5xi5D85gfvo
         S7T6gW2FIjgI215vaN6PocTSofYOfR20MUw2ajiV09EyuU3NuS4MMTjKS7VKucKnz3GF
         En5w==
X-Forwarded-Encrypted: i=1; AJvYcCUTAifLM4l1hwOeGLYDnKUsEOR94LTkGqtbE3tXAo5rUuc42vJfrvTlbLEyfFErDI1jEbxdUNGi5sDV@vger.kernel.org
X-Gm-Message-State: AOJu0YwGiIK5FOyo1Ox2L7seF+mFdviZ5B2oqFqa5IBirU5c6GnRe5ii
	KGJRqv5ptVgNKyGYOLGdF6BX8k1gIn24s09r+W3w91otTi2cWHO2arEk
X-Gm-Gg: AZuq6aIp/grBspmbbz76QxVrOlMrxwNWXNm5uwigGMFCLtD2ZmmvMnReaNke/q5j0TW
	3cYLcorN1jlr6tIKUvzBz1osaLZWtI+sOWh8JKXFMmucUT6PfiQYRACgf1K7ygta1yUStWtbes2
	WdJdlnjrF1h4BFoRyToSnfe/KX/HPB9729tyLw1zQdg4ta5Gw5nUTppFIE/FB9cwTcrqofoYAQl
	Gd4UgQUwJCM3KvXOgpkhgTON8h4SOr9QqFgaSL1CQ7qEuoAqTYUAgtvZOfgwqH0mjmt/gIz2VKv
	aSeVdriwciMdCVNa5Nlhf9dvcJZ/X6IGSXX3vEljN/4B2T2le5W8De+zZ4qQSHDnjKoXl/6+0LM
	DZXpQoiJ/bcKjRBu7MvCPx/NMpllnkdFNNtURXk/lEXfbSpHev8CKyhfCcstd98Kfw/rCrcFgBN
	fEz0G4zgbRaKmrIVU7mHf0Ktk92Vg713/6WUFnP/52wwQkervgdMVxwxoLkUAyOsAXCgv5BJ5Rq
	8AEHzkMgF6leiB4
X-Received: by 2002:a17:90b:2c90:b0:34a:b8e0:dd64 with SMTP id 98e67ed59e1d1-356aaa9bb34mr10777742a91.1.1771333944790;
        Tue, 17 Feb 2026 05:12:24 -0800 (PST)
Received: from pranav.. ([2401:4900:79d5:5d22:bcf8:754:c50b:1bd6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567e7d95c0sm18752229a91.3.2026.02.17.05.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 05:12:24 -0800 (PST)
From: PranavKharche24 <pranavkharche7@gmail.com>
To: ribalda@kernel.org,
	jic23@kernel.org
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	PranavKharche24 <pranavkharche7@gmail.com>
Subject: [PATCH] dt-bindings: iio: dac: Fix typo in ti,dac7611.yaml
Date: Tue, 17 Feb 2026 18:41:32 +0530
Message-Id: <20260217131132.297180-1-pranavkharche7@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266147-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pranavkharche7@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ribalda.com:email]
X-Rspamd-Queue-Id: 7D40A14C6EF
X-Rspamd-Action: no action

Fix a typo in the description where "Is is" should be "It is".

Signed-off-by: PranavKharche24 <pranavkharche7@gmail.com>
---
 Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml b/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
index 20dd13706..624c640be 100644
--- a/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
@@ -9,7 +9,7 @@ title: Texas Instruments DAC7612 family of DACs
 description:
   The DAC7612 is a dual, 12-bit digital-to-analog converter (DAC) with
   guaranteed 12-bit monotonicity performance over the industrial temperature
-  range. Is is programmable through an SPI interface.
+  range. It is programmable through an SPI interface.
 
 maintainers:
   - Ricardo Ribalda Delgado <ricardo@ribalda.com>
-- 
2.34.1


