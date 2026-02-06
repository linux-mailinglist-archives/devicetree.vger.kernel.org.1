Return-Path: <devicetree+bounces-263442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLjhOPAkhmlSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:29:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 45400100FF3
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 40C19300B8F2
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8804440F8DF;
	Fri,  6 Feb 2026 17:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cy7D5/aQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E5D3ECBE0
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770398952; cv=none; b=YHYjbH6f0JbVxOy9QHvI8OvuCSi4DCnCnjdM+WDZpaboVMFpi84am+UpbxQynyIgnPqUEBQ5CwMWyww7QClB2YJs7BzSRSkvhsJdOOFuh8Bw8NWQLt9f1iizHGdsoDXSHn2KQ8auCvjb93wvx5+DuhA2ZoqDl+EU/If5DsQFTHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770398952; c=relaxed/simple;
	bh=ZD4nCU1fSikM66x2BzXQDLAPQ/aKlesSciJTloOavOk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KdiN4ESQlWAPWpm0CUbX/4cVJ3fOpsizgXZg+vgMrry08VHY1sw8xN6p0jloDXKXlN/P+ZDxBwiAidn1ikiwD/KcWjErnxZCOlwTPtHyu2W9cjEd9yhggk0ju5v4ff/t0y6Eb6WkoJ2uUId6tORZKjlqgA7KpUMvMLHzPdbyOUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cy7D5/aQ; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-4362e77d7fbso506632f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770398951; x=1771003751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ldMiDngjdctc31b6FkPkpahyZfqyaKMT07cTU/t7Dek=;
        b=Cy7D5/aQupv5AV5sGVzbXgiWPDUKQdVEG/s08X0cnPsWi+6PDhgG9zrHBYgl08m1MG
         KOpiuSzIX4jbcsIyDOO8KFbF/5YtzOySAKBtIiHWpWpX4XQx4ZrVjNmBsGT2mZdjcbMo
         Bpve2d29FSTOwpJZS652z/r9RF9N00hsitOwKfJQjQe21yW21Fn4vXUIidYGThSWwycP
         r+RMMiuFKJD8OxFgi4IwcW2CeRlIbftsnEjYOgSE9iJU5g7bFooVBz+qGJe+Hd20iyjR
         5EDcxKLc7ycoyJ/sF8ZInPC74bvbsWLl90UbVQv2ynAvtMxjJYD3ivJ4HCABea5H64dp
         2CUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770398951; x=1771003751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ldMiDngjdctc31b6FkPkpahyZfqyaKMT07cTU/t7Dek=;
        b=mCdpH6A3SLhwB1PLKvGwlbweBTMrHFjUbS2Fr+KFTberw31cSXkhOak55cHOYkhNOb
         FOs22VZz7dht46dSa4d33yEoLwfAS+TrAAvS0/CAj7vAnohQBbXz9VZAa9vFglLZ1OGQ
         qJyJ8XcbT9PbRmacl8nKZgnoJdyRMUTt0gjYwYhbPtwDzWR3wMH18OdY9QwSYr3G7JxH
         x+BfWitsJNsc4y2tyPL5F9j/wRaA2B2tsUVqYxDt3Z73R1XqzhLxBvm8DCWAguu5GJxB
         GJlb+xfAUmsZfIb6Lg8MPr8FeZtHecUdjNq/Xq0AlHmC8QUm3GfZnyIG7EzXdmzD9R8v
         7VJA==
X-Forwarded-Encrypted: i=1; AJvYcCWco62y6TeodWAfxaPGoP7v1B8QUS+X2+lZ1jy7cLYANHr0BXhz8B9GocEr5vQYIsHrwbSE3PPXeRYo@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz0tAm9YpSLd7clTDBnqbQDDgoXI22XxvCXMNlHiuuWSqIM2BH
	fpbdJdnVsmH7Pklj8uP5Y12Rxvc9CuneJgCeCy9YXQKSAhM/QJDVk8Zk
X-Gm-Gg: AZuq6aKACRkkuJ4uyxwGwlT/Cx0BXwqAT++cig1mP5OzvrvDF5OqpLEvbI7ZRr53WDe
	Fd9XmU5pag2gYURZcRgsZ8Y+4AoALoZx1zq7mKIVY9Wd8ZZrptudUWkKfg29JtLFbuWQbuA9O+d
	h/NUe1PgD7xXkK+tzJGnPn8VHxKTXvnFLkCA6n2o7KMHCwr6HQaO2iDhLHwnLn4qq/iNawUGyMm
	tl07n9hxuIdByusrQxajsqnhh00uKZsSVU9TSFyMy2LxWoaaBxUqyeY7edevsOXW+MksKU+OOlu
	/K5rHi2E72XzhlyZljTWFsrtGuURyz+6GWlLnVuKBma0VtOEzCbOEyzc3UyIMAjvUM11N3dil//
	J9xgnhZT/DuCi99w3pYTqHcMRDvclcfl6vSFsV7hMxz8x5A8wZqP4gYmyfW9cSnETFosfdZMMH1
	VO
X-Received: by 2002:a05:6000:2307:b0:435:a9c9:159 with SMTP id ffacd0b85a97d-436293411e4mr5376216f8f.18.1770398950486;
        Fri, 06 Feb 2026 09:29:10 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43629734268sm6846033f8f.24.2026.02.06.09.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:29:10 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dixit Parmar <dixitparmar19@gmail.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v2 02/11] dt-bindings: regulator: cpcap-regulator: document Mot regulator
Date: Fri,  6 Feb 2026 19:28:36 +0200
Message-ID: <20260206172845.145407-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260206172845.145407-1-clamor95@gmail.com>
References: <20260206172845.145407-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263442-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 45400100FF3
X-Rspamd-Action: no action

Document regulator composition used by the CPCAP of Tegra20 Mot board,
that is a base for Atrix 4G and Droid X2.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../devicetree/bindings/regulator/motorola,cpcap-regulator.yaml  | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml b/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
index 50bc57f06b51..b73d32a86904 100644
--- a/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
@@ -20,6 +20,7 @@ properties:
     enum:
       - motorola,cpcap-regulator
       - motorola,mapphone-cpcap-regulator
+      - motorola,mot-cpcap-regulator
       - motorola,xoom-cpcap-regulator
 
   regulators:
-- 
2.51.0


