Return-Path: <devicetree+bounces-271236-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKKnBCqHqGn2vQAAu9opvQ
	(envelope-from <devicetree+bounces-271236-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:25:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A71322070C7
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:25:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68BC830961FF
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1792E3DEAF5;
	Wed,  4 Mar 2026 19:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aCYms1KM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5608F3DBD64
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772652268; cv=none; b=lw8Ekx8uQ1CgE4PG0S1T2lDOwO4ajQrq//+QmgrxAhveTqM9weaMGbblpwvQPLWUCw4LCZA6QGbMTvhYbV2puOhU8E7xvTdS/+/M25FWuo/XJB9jJfwxYs+iBFcV3YjYQTW0qi69/DtHVQHHiwwIYxrBCGDmJ2vwlJ93DSYN0KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772652268; c=relaxed/simple;
	bh=6ei+Huwh4PKhOxKolosUs5btGNjYQcybQcHfUM+2gg4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Zpm+4HbKDaDPlfKq1FOzs23ofOX0gYjdQLZQcUH9vRWglJdPK1NpozfZZOReHrfnRIAwqn5moXkW+xUwPPDYQZ0Z770oPZnrXoXxpFW5yocuJq7ogJcoBJ1Z9q8LNt7/M20QWBw2go7K9BSWSJYH0REVQHz12xH6ohY0LjTjTGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aCYms1KM; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-4648447c899so4576826b6e.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772652265; x=1773257065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fphkXrW0oEd5iFF9aoqhAXkr62Eqyv7ZOBulCkksYyw=;
        b=aCYms1KMm6GLVKucopsbzahvzXyQLOFUYtjFkjkmIkDtURSIhd09IgKwul3pyz2XQd
         poZSXR7G8Y3CavAaICLtFPr3KLmttlCMwJt2MDg9pqVagTQ25IyidxM0JoHDoNWc2T6d
         gPZX7HmtVWlCUdyTbiJWv63pnaQ6+Ol4bZ7eBewWHnBJTRXD47KS9n0ShHjAsYoYkgfX
         y6lqV8jJoDWpaAuh+m5Ilj6BvrRK0s7IUKTQ/t1MNcr/vVBFNKh9MF2lEAwwPsDcCKvA
         uypiIC6+0ST9LvYDhNDAjNBeFvS/vBwRdddI5nAVUz7Ok+P4qRTIM4btWxBP7WbuZofa
         dWTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772652265; x=1773257065;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fphkXrW0oEd5iFF9aoqhAXkr62Eqyv7ZOBulCkksYyw=;
        b=E8DaWbw9TiCoPXnvr58z6430g1Y/AhInExCihctEinKQ7YgKgLsbv4vJmESR5JjuSj
         AIplhyidSfXHe9B4AMYI2fhTCXY4JSfV36qU7TNzX0wBbomFgg1zGMZMMwe7uYb6noUJ
         9JkYuJa45BGFvQv2o1hclzfyXyehqACiLrCCiGpt6vPMpXtW4JUrXYSrycn9pzw7XuEA
         nyNiYbEP4PRQNryxsjJmFoTyUn0z4T519f80XQ9z6KzgHOKSLz4OM9c4SAB+55Gi/FZa
         4qPf7xJ+nALCEZJi/KxO7q+TTIMaSuCkstktS4gaSH9jJKJofbVJXmRkAUq2ar3s0GO3
         bKDw==
X-Forwarded-Encrypted: i=1; AJvYcCUfFs1CisFnZAvwMldskQgewSWy+O01AJ5kFlZRj4Vo9rw4KES3O4kpr5mzs5O3kx7XOM7DnzqQgDQL@vger.kernel.org
X-Gm-Message-State: AOJu0YxkEYTOusxvJ3nxJ5/Tm8CIxQ5mYZDlMDnkoZaaSggzk2z6Xa9w
	GTj4ZTdvx5ryOR78QylukCt8gKbVYHd0Ax7QyCn3IBYRKd1p1diqJrze
X-Gm-Gg: ATEYQzz0TF/cEpmyeLaPJvJ4jAa/I6QoJmq5CUav7soZleIo3AJVPSGtVlfeVER/kfJ
	1buI6e+uYy8Kq2gHSliaNbaJzjGvKmoV//8lhSEPt5zMrVtioIIOZNxxZtSekdxKBwxe5lDcbZn
	R/0d8CzI1FD52xKdgB9TUr0H3GXvUZnJzs8f95C4s8TNxM4ENiiqG8m82MeUwfgakqGy0mrTlQz
	40nD9EgM1rkvq+jCN1K0XtYKomKGC8DQIJOPWCxhALsiekccrFQyY4T7CtD+kGDEoG+ooClu0MQ
	zN9ABFMxCk4SmLuvoFiN28Ks15UyxJItlUybcEdDm85plFBuLz538h+20ibUHh6wyKb6b8GE59A
	dMeYtTPvYJPwSbGFFCWlPRkoAakd0VNs65JZXbIc4MNtdjhmpOFdvI4SgHv+cAwG1Zkelp8L7oK
	5IwZC+MBJFteraF7ALx98MnRYmm1QwGGl7SWn2a18ITf2Xb22fdsH5Y2HOQW5H8KxfFr0YXodiR
	h2GuwQybjRlmoQjexLe9mWiFwdrHoGEicz4lK8zEQ==
X-Received: by 2002:a05:6820:208d:b0:676:d076:e4ce with SMTP id 006d021491bc7-67b1e903320mr1702204eaf.68.1772652265335;
        Wed, 04 Mar 2026 11:24:25 -0800 (PST)
Received: from framework.misc.iastate.edu ([2610:130:110:25d:5b2b:e942:c11b:ed62])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-679f2d85297sm13294165eaf.11.2026.03.04.11.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:24:24 -0800 (PST)
From: Kerigan Creighton <kerigancreighton@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: loic.poulain@oss.qualcomm.com,
	wcn36xx@lists.infradead.org,
	andersson@kernel.org,
	mathieu.poirier@linaro.org,
	linux-remoteproc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kerigan Creighton <kerigancreighton@gmail.com>
Subject: [PATCH 3/3] dt-bindings: remoteproc: qcom,wcnss-pil: add WCN3610 compatible
Date: Wed,  4 Mar 2026 13:24:09 -0600
Message-ID: <20260304192409.927562-3-kerigancreighton@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304192409.927562-1-kerigancreighton@gmail.com>
References: <20260304192409.927562-1-kerigancreighton@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A71322070C7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,lists.infradead.org,kernel.org,linaro.org,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-271236-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kerigancreighton@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Document the qcom,wcn3610 compatible string for use with
the qcom_wcnss_iris remoteproc driver.

Signed-off-by: Kerigan Creighton <kerigancreighton@gmail.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml
index 117fb4d0c4..018cdf5177 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml
@@ -109,6 +109,7 @@ properties:
     properties:
       compatible:
         enum:
+          - qcom,wcn3610
           - qcom,wcn3620
           - qcom,wcn3660
           - qcom,wcn3660b
-- 
2.53.0


