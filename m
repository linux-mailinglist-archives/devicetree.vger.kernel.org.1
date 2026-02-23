Return-Path: <devicetree+bounces-267276-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGcRItn5m2l5+gMAu9opvQ
	(envelope-from <devicetree+bounces-267276-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:55:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B67EA172684
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:55:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 61075300E186
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33E88347FD3;
	Mon, 23 Feb 2026 06:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EOyPxJ74"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com [209.85.167.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82631F099C
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829715; cv=none; b=X5/f6IdBK5CMncj+FOJkggIAYs5+ItqYutZZMlD0S3NT/P0hWXehE+c+bKLYfnpCKUS2dSDqtIU++NGTFukFl7qlM6C80X0tqi5UsRj8HM4S2kxzeHWmp1F2n7oU2+tj8ZI7wOHm5zypPnq12lrrvsS8ROzKSTiES+E2Hh+pPvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829715; c=relaxed/simple;
	bh=SPf/7oKhywmYy+f5Av2C+F11RjwUS8kq4GQYjSKixqo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bGLxgYET+w6FnixyugZpbAjO7tybjCJ3dXp25VfFZbMVCdP1iZcmZSmXVW9QmV88E7r/J2rd29w55tVqa42zF8XzrW4W7VRuGV17haIWXEPp8Y9Vuei7TES+P4XO2MklgHyzfEp/IzZD/w33DLYa7gtfILt5K/3WR9H9QoSRYmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EOyPxJ74; arc=none smtp.client-ip=209.85.167.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f66.google.com with SMTP id 2adb3069b0e04-59e614b3dbcso3874009e87.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771829712; x=1772434512; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7+Y6ydg7opucreYTF6TTLBCsji184axNL5GpZ3ETSys=;
        b=EOyPxJ74JOq2O+vq7hv6ES/dX8XvmSlPO81ZEupfg0E7tgvvidLM2xGR8lCILirIuf
         D7P7HhwdCE3HxY7OweliXSlXvx6Sqyu6vJJBVppzaYb8/KaxwXS6LU67NV1WNplYtSA8
         b7oDSWIjaocLJIM4/3lpX/IS3z/WXNmQJV5eN/aenbCR8hlz57TErWA5XzvxtjrsziV9
         Oy4BDbMGOpg+Le9Ogq9nRC+duD+6UQZEL53CICRZn7IzHrI+T5PuB8oo18ugeNGwxORP
         Y4sPLhD9Iof5YPlsc2uz6nS+k1RnCkQ6JI38dQTAS2avVXEsfSxdXv0IBs/+7ESR1THL
         kD2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829712; x=1772434512;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7+Y6ydg7opucreYTF6TTLBCsji184axNL5GpZ3ETSys=;
        b=EL0nsZI0b0JN0cD71igk1e7eVwarxMeYx7ilEESX3MgS1ANdcCrWG3t2mypRDH083B
         VGTp4jhjPWOk0+CCM6JoZNltTvL27cv76S1Fhb9YLgh5gXTGFw4gG3XHRUn9xeYYYpJE
         5iKhKJh8arDJKwvX4ZoYTUyWMKBr225qfuuIDQvuIFsXF9lM6k56e+bYQHRbcTUW8j28
         GIV8s2bm/llOz9KhOyBS/QzoUIct4BsFpZfVl8MBh7PY4/yrp+ymESdMiPZCRJwUz0jE
         hPTeRpdU6+VnmQCm7qpPXErlqvPfGXWDaCVp0nbXFf42U6m497JaML3zCUHV7xxOHVjU
         e8cA==
X-Forwarded-Encrypted: i=1; AJvYcCX6MwAVesAQOoEEdBg+x58yRNIkeJw/czZrYfI0OBFWP32O86YnvZtFoQvIfrLdXnlMCKB/mEJ/AreT@vger.kernel.org
X-Gm-Message-State: AOJu0Yxbo+371RQUzfkCFM9MwFuxcVQXb2U/AHhWKTJJ2MfUKY30ibYy
	haz4CAfr8NhAxaQROL4VRFPeDucb1p71Wpfi+aTUioS/7P1ooafBxsSJ
X-Gm-Gg: AZuq6aLXohiuZAGB1GqhIsJ5W+D+EZp2pm/RTra91yKDzyK6PJ5afYvkpPT8iVHXr4A
	g72YvgTwcctP4m+uH/FRRpdg8gjXQyo10X3pUsEZaJbAbytF2A2f6FnWkH3Km1CU3LO/JxCHERx
	3w4nBNNlq9h4vxijiyvNPEuq28G6N+6DX7csspgK01K1cTud8XFzPcNfSqxzyJmEu5i3aPzgcD4
	wQdcaMoaWOzHiyw/S0PAvZwAMC6gQIBBmkRNaOCc/UqDYSNqk26RuKU1XGdA70SRgOcOB161r5D
	3ojWz5v3iBiJ9segdjhSUjP0wVoogubBjWGuol4anjUs14FLHzT9V3p4uZf2zn8slLlvyxTUGUz
	VuCkxYEdbsWTgmy0H8nI0geG9GRPtGij56G5fGV+4Rxh0LkDUse0BtyZMiz6QthrRELzvQYSfSc
	dze191TGOV9aiv
X-Received: by 2002:a05:6512:3053:b0:59e:6006:62bf with SMTP id 2adb3069b0e04-5a0ed8a6736mr2448098e87.37.1771829711746;
        Sun, 22 Feb 2026 22:55:11 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb4c60bsm1373802e87.84.2026.02.22.22.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:55:11 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] ARM: tegra: document Tegra20 HDMI port
Date: Mon, 23 Feb 2026 08:54:58 +0200
Message-ID: <20260223065500.13357-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267276-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nvidia.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B67EA172684
X-Rspamd-Action: no action

Document port which can be used in the HDMI to model it using OF
graph.

---
Changes in v2:
- fixed intendation
- adjusted port description
---

Svyatoslav Ryhel (2):
  dt-bindings: display: tegra: document Tegra20 HDMI port
  ARM: tegra: transformers: add connector node

 .../display/tegra/nvidia,tegra20-hdmi.yaml    | 13 ++++++++++--
 .../boot/dts/nvidia/tegra30-asus-tf600t.dts   | 21 +++++++++++++++++--
 2 files changed, 30 insertions(+), 4 deletions(-)

-- 
2.51.0


