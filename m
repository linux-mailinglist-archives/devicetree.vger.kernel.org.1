Return-Path: <devicetree+bounces-279472-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SP6vE/XxwWkgYAQAu9opvQ
	(envelope-from <devicetree+bounces-279472-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 03:07:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C96300F18
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 03:07:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EEEBF3034286
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 02:01:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A42235A952;
	Tue, 24 Mar 2026 02:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TyYkjnku"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D308E19EED3
	for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 02:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774317676; cv=none; b=FS7akRQniTdi7i9IVeIY42o3n8EN2OgaZVk0qB1IEeZThodQz8GNgNvRITwzAG2LddN5woC/d9rHmLxllhBiauruVz2bpRy9rz5MQv+QSy9xssZScfEsjDn8x5GqsvVX/wRowmMgpLN5GdHKe9NBRLQ7eK6/O3tPa7KRPwFzMJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774317676; c=relaxed/simple;
	bh=xFFZh3do61VXvhto8TMwJeAY2BV56D21KYqosBzULpg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LhmfkTUSfA8vHi6G+pg/JodT73s6UxzaCel7XLGdj87k4ePbbpsMsFjUHFZhyJ4J13Qiqnmp2B8TLy0EptvdoitxfA/uzSqQe5qZX1qd/z80fSPaFmy9mATeGAmlFyqW+rNHfFOqG2Wd6NdXJ0z0cjBuXR4MTmYm+GGl6ZthCBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TyYkjnku; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-50b29c4e554so43132561cf.0
        for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 19:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774317673; x=1774922473; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ty0hATXyl9HZHQUJuw2vSXKHAn6gPHhqKGm7bgTuFLw=;
        b=TyYkjnku7qv6q1ENylFnS9YJWc28ZGo6213ScifRy8wEMpXp3VDJmsqnk+XSrhyV0A
         ZfHlKYJFQaUm/zbgPM2x1O9Xo9HP4bDG6xlH/3ONQLYq4aC8qEYDd6yivA19pm8r1HNj
         qwF2iL9O8UyKw6SdiJKDddotFLyXRAy9DJDDQiW4yKyEtBx6ZcTLfjmTBI5bLIvacd3m
         ncatawGw1OelbN1Vrj3SRQzrbONs8Apc2pQWaQwmDeIKCVlkzrb78UgGI5q7u3n62Qk+
         2o0ZqdvBqDkr04R649sB6BClueU3JPlKwyxL2lF/yNC+Y1DlvuSGkL8k5CvJ+kw/ZEiT
         36YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774317673; x=1774922473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ty0hATXyl9HZHQUJuw2vSXKHAn6gPHhqKGm7bgTuFLw=;
        b=BNoveBFMYU5AM2GAtSJoPR4f7iWe+UV6fCCTltjrpqkLMPwNs1I/84ZEbWBxalmaPm
         6+ZPNktotj8P3sq80Uuhwtc6L8cjQHNZayDbXhFv6W1JNeU3Gz+MxDbvTRv7uuHsD1tL
         prNQ2/9GpdhMOfC517DpJUcQaTedCTKXl010b0c8cXajUX4TKWmzLqMvwH0vQ/GJGnRI
         +mQjeSLAkEnTOxoscGrcLiP1mfvDsX5JMwcGCzWa8qFiN8nlRdRwd4SuVkCib59MIFSo
         XSwyp6iySc/ydeBZUOIQ6L6Eq5nA/p1b9y3W09cLLilfjUj2cB9THHUsvAnEdP0qGgd0
         fLjw==
X-Forwarded-Encrypted: i=1; AJvYcCUtLAxTq9UwVHI9QrH/Oh3YZP3aOJMJQsCn2/KVxHBdE7HJDw/0PKpBog4d75r1njoS9hqvI5/u/zD6@vger.kernel.org
X-Gm-Message-State: AOJu0YwwT1JEC5DQiG2bIn6j/v76NlcSAkwrO1lnHL9+H1ZeHSUeT/md
	vKWaCfGfgbbjJlA3Qvq6BAwFrIVgz0MZfdHXcFE+SOLIEe5GlP/Ogwqj
X-Gm-Gg: ATEYQzyvOfJ7DqmpmJ8QVjpU6seosliY3rX69025Fhkz+Ix5j5PIwFBTgp6Uq9nc++D
	vWuqqNrPxaeLUVTVFGz3eNPHTn6XycJuFs7kYEm2+cNdwVDW5Gufz28Q+1Pz4G0HixopYjwpan0
	uxhHvi0EnUZezc7gf7BEHvoBiMgVAzb95w4Nn05QB4J6JWIZyJ39FZ08TpwiMCoKVTJ4LDBKQMF
	vEN27HAy1HWhfS+f0VmgPmPIdAUAjY5SinzCqm6AbfmAVWRzszMGx9eRxUrOraAKkv+QB9moZ5M
	joyavgCKDaNLBY0xyiNnp9E0rGEp8fqZtYNRlePTanMDxHNX+I785YZiI6hjfjMpXzabSuWV79s
	buNl7n1PWfzXfPKuEWQCNXTP1W0Kd0IJfC+E0aHqcBB5nKTLgbWBy7Uk5JunHMJH4FNjT5HrVLC
	cTcVp/v0DVwMMXxAT3FBqPwnIYXw==
X-Received: by 2002:a05:622a:1486:b0:509:456e:a179 with SMTP id d75a77b69052e-50b3757374fmr219881111cf.64.1774317672550;
        Mon, 23 Mar 2026 19:01:12 -0700 (PDT)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50b6d19789bsm15864691cf.29.2026.03.23.19.01.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 19:01:11 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Bryan O'Donoghue" <bod@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v11 1/7] dt-bindings: media: qcom,sdm670-camss: Remove clock-lanes requirement
Date: Mon, 23 Mar 2026 22:01:26 -0400
Message-ID: <20260324020132.8683-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260324020132.8683-1-mailingradian@gmail.com>
References: <20260324020132.8683-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[collabora.com,ixit.cz,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-279472-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.2:email]
X-Rspamd-Queue-Id: 58C96300F18
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The clock-lanes property has no effect on the hardware configuration, as
of commit 336136e197e2 ("media: dt-bindings: media: camss: Remove
clock-lane property"). Since boards with new camss support can omit the
property, remove it from the required lists.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
index 46cc7fff1599..084b65740d53 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
@@ -124,7 +124,6 @@ properties:
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@1:
@@ -147,7 +146,6 @@ properties:
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@2:
@@ -170,7 +168,6 @@ properties:
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
 required:
-- 
2.53.0


