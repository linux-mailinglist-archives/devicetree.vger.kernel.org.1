Return-Path: <devicetree+bounces-270828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMqiFLyOp2lRiQAAu9opvQ
	(envelope-from <devicetree+bounces-270828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 02:45:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6CB1F9A4E
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 02:45:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2F855301BFA2
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 01:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D626731A7EA;
	Wed,  4 Mar 2026 01:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IxnlTdjf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A44453195F9
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 01:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772588726; cv=none; b=iMtRwsYJr7fuxXvTEv1vqOD7lncOfnzzvgnKxqoJ2i8PEFyk4PgqQ/+Wzr2lVtAmDbvsaX+P+aej0XfjFKyqMhI5EJ0/ryTJ77urw7HpT0YOHNEJMBo8vlbT2WzeT9WC9GYU0MlN8XCi5Mt/VfsUrHkUmNWfwv1nxt793E2c7E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772588726; c=relaxed/simple;
	bh=YKU/DnmNIxKk/G4FaBPJrYaaIFx5k+4NkZwdBNpIKdU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZIf9Eu/Aa8gX28N6Pbda01AyK5mN9GOq0Ppv0N452XbAmxjGU0YsjJpa18v+1YLPDUoH6Vq42g+rd0MzJSpaOfSRD1poK+pGxbes2nZYML6ZAmK3uS31lJV7Nco475I6GFNDOxZGWx2waIZs+aH1VoqK4OORZp/gJlzytJCxD9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IxnlTdjf; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-5069df1dea8so53411441cf.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 17:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772588725; x=1773193525; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fMK0diFp+y5MtkQk4eP+T+xRtrAK1MN5VxTGJH3Ujrk=;
        b=IxnlTdjfx3GFqP9x79r146KPdFjfbwImXoEht5zDWJWsM1YUxpU9K08ZgyVYHHmCQd
         9AYn2MFh+vi2xtngV0TK8DD0Gtkzdlomviu6Dn9zi744RkEl+Vg+Z8KkWcNHM61h/Chl
         B1M7Dz9gA1D7gt1hhxV7uDG2rnxy47IjAu2wmpv/H3F+aWFJKRgUKCv/hcr+Z6xRNI88
         TYFsiJLIT+V4e665PgGnRTR8/XZdvLosVoi25T7sNIvJoS6c4CR8fx1NIndSu7efRxVd
         vnDJQWpXWqG+z78FhS1BAA93BFn27t24xKBYSDdEbvMdfG358UshtuAY83a2nbaMt7PN
         QQUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772588725; x=1773193525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fMK0diFp+y5MtkQk4eP+T+xRtrAK1MN5VxTGJH3Ujrk=;
        b=RaJKjYdYknSu1jxRUt+t90R1xwKiGUm/e6kXBA9d4KI2NH4PyzLn1MjwOtrjpuNk7G
         E/lszWiJbR+185ftCcNHlqNn/FOqb7PgbggEJBmtunr1P/h3La83DuhmyQQgbex6mzaZ
         Lj4T69UsALKKrwgMbRagey//kjiSfki5bTWvS514RPotkCR46xn9KB6+GTlqqiZiXMwC
         0bVj2gp82Eh7+Bd0cofhNo/o3Q9XqMO5zhORsmbUbIhklB988hJVtI1CA8Gyt810lfzb
         nZCOfCkW3KtpCCUNtal8OqJ+xfsx4JXX9INLt60e+DSCjQiwlPCJe7usir310+qAkJ1N
         OGxA==
X-Forwarded-Encrypted: i=1; AJvYcCWqq1L2pEob8QkVO/JnmpKT0DMrPrP5ps2vDSSPczvc3R5x8e3yPVyVBP7Zftl0C51i0iqF7/ShSUgu@vger.kernel.org
X-Gm-Message-State: AOJu0YzM5qdcg945urA3+7aYqSIlo0C5HqNFJIaJxaVedHLyKVBvK58f
	2z0KRpbwEqTdm6NsS/F1Eq8oYrhkb0eUfzipawKI6j1HWa4FcXsx+Ory
X-Gm-Gg: ATEYQzy62YI7JaeIdW/HTvGELcihcNNNL4erUbHaGvEZ7rUpJJdjmwwPHTQxIIfc72J
	Gd9WuxXG1dgzr1FlVuW+jNM/ODLZSxrt4rnw3pRoq2RWULGzEtHy1v29uz+DJHvudJ9yThJUd+M
	SIAwLCH8jvpViry6vXSOVrAkSuX1KgGq9daM2wP0//D2esy2R9LtdSmG5SXL94WeNZMYsbnAza8
	tCTQ5CAMEy2qt7J8TbB5bXoe7wcu+Flc6yFQmJZwtC+SZhuwVcaUJstgS1pWrSyrn0HyPk7bxjk
	T8vyq3WssyW4okQ5uB9wFH5MavBtaWdEuaChG6joC6XU/Qa0QXChYL9rbmDPlZ+DSl/t8NjM6Lk
	Fg9SEoKC3X5X+poi6SiH1C5VmHe+GRo1Ie1IrTbkUruDmTELuWoIGipT3UX/Ry4Tj7e0924r8K6
	L10esOKvH2jBnsbs4xwnZ3Vo7QNulCmpf1EWJi
X-Received: by 2002:a05:622a:14cf:b0:502:9e4c:2670 with SMTP id d75a77b69052e-508db2ed117mr5799891cf.27.1772588724614;
        Tue, 03 Mar 2026 17:45:24 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899c7374e07sm145443306d6.33.2026.03.03.17.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 17:45:24 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 2/3] dt-bindings: thermal: lmh: Add SDM670 compatible
Date: Tue,  3 Mar 2026 20:45:29 -0500
Message-ID: <20260304014530.27775-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304014530.27775-1-mailingradian@gmail.com>
References: <20260304014530.27775-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3E6CB1F9A4E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270828-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,arm.com,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Document the SDM670 LMh.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/thermal/qcom-lmh.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml b/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
index 1175bb358382..ce72347e29d1 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
@@ -22,6 +22,9 @@ properties:
           - qcom,sc8180x-lmh
           - qcom,sdm845-lmh
           - qcom,sm8150-lmh
+      - items:
+          - const: qcom,sdm670-lmh
+          - const: qcom,sdm845-lmh
       - items:
           - const: qcom,qcm2290-lmh
           - const: qcom,sm8150-lmh
-- 
2.53.0


