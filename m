Return-Path: <devicetree+bounces-264640-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AkANaIsjGlOiwAAu9opvQ
	(envelope-from <devicetree+bounces-264640-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:15:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F95D121D06
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:15:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6BFF0302BDCA
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF6428314E;
	Wed, 11 Feb 2026 07:15:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699561E9B35
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 07:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770794142; cv=none; b=cIf6zRGg6YO/2yhApV6PLx84Ee9DEOfK+TngCKeLbR8wdMF9CKwS6PgUyYYewQN/DArKAl/+YGYhGy+HRyqRg+Eeprb1PKfTDm4UtfJyIY3K1emyfEJ3IFX5dPE8j4XdOY1daUkMW9RpDjhQl30lKQbQLb277+fzGe3MsGIIU5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770794142; c=relaxed/simple;
	bh=1z9QXfaNM31CLdI80Xi3sblAOGbXr02fTw9N8R8Tk3Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oVvU21g4gd13WZLPVKHPDa2fkFPbpnNEa1r1dkTN7A+OUNRT3mTj90Pej5z9Fkf2W9SUVS9ViBs+Qb0V8X4Jc3ACH3kieqAepjSOpRkg96DAG1NcDTvwGsrz2EXgGD8JmNpXs9jqG347elCNmluSOEp4roApFTDw3FDEI2BJ7KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=li-nk.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=li-nk.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-34c93e0269cso404983a91.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 23:15:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770794141; x=1771398941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1z9QXfaNM31CLdI80Xi3sblAOGbXr02fTw9N8R8Tk3Y=;
        b=lBnRFA3hv/qek8rQstPlx1xSH6f9dFqO47Pk4AKGRrXtpvoRUkhYFyFE76euYENpYf
         w1S14MHx2YL/3WKcdhmEf2vTMrik8Bj3FDDqNS+hj34dY8XLfbp/ZfXiXFG5RMZaxKV9
         3vDGxvcCRhu92OlGe5APLkgRAglNsp/c1j5ZGcNtZGRjTfC6Bh2N2wynfr6zDX6w1ICY
         fYTR8bAzk+vcsnugPcEBAneqXiS+P9Bl2ddrmV/FGBlkvO3S66B540HaoAqH4aaywelY
         JxeUKGTtH9caNwLaiV4JtyYKddAGQNFTVjDwrisIywHYYI/EaZOQoq2F3+b9F21hjvLu
         WEAw==
X-Forwarded-Encrypted: i=1; AJvYcCVv8jdZ7j1z2I7JP76JBY5OoOrcnYMRhf4baBL5bt3QoJa90jnDfn7U6ciuYFw/XgVsANe2ffFJLDud@vger.kernel.org
X-Gm-Message-State: AOJu0YwmJnvMoNxUpWy+CjuJ7R/7wY2jFe6ms2hXeXwPaBntFJ/r8Rah
	Jrs5DD1LZ6YqHeRAtEGLKsIztBrHt5K6Z5U9Of0gU94Mk9YnbtQPHT99
X-Gm-Gg: AZuq6aJVXTeyT6do5m3JKDiKDHkuveTI8T/UvtZUyjib8W4RjySCmIwSGvy1NP2USFq
	R6Gs34R3wgtwL5foyfnEeryl8yZSdwzFhlaWcnEUhlP5vQHgZxNrVGlPDEc33NrAeJLuK5P2Myx
	f8AuM751g6RarjqAXqntPxVaXc40yh1bMfPHaQLuzDSYdppbZrdb2fl2oNmkWX4kkK4WexQ5Q7I
	xehuVKmg0dbFU1lCXNfU1J/NaRLTSgu/rZwqUjFk5S3wEHHoqPcHU2njLpJx3r1clQ33wLi88Oe
	tmHPVyOiqFTzjGjJQ9yWQ4mqjqTk7MQPc8Gk9ARKYQRh4C6BQX/8G65WPOZL10n00piNr9TTEOR
	knKuC7LSBGYu0XyqGIuQ5SIknZqlmM/8/8yYzJBew/JhGKN9C6RKGJ+uqvDQ6mX/88kUu6wizK5
	kaWq2uO8VhpWTPulDvwkv5c1CVq4haRWDPB4s4kVAloRmTt3CDju/266MvkCiXef/eWuOkwLpYB
	KSl6IhS5VfB
X-Received: by 2002:a17:90b:5106:b0:354:57eb:c826 with SMTP id 98e67ed59e1d1-3566641e5ddmr4309870a91.2.1770794140714;
        Tue, 10 Feb 2026 23:15:40 -0800 (PST)
Received: from bishop.localdomain ([207.32.167.122])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35662f6b624sm5300572a91.11.2026.02.10.23.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 23:15:40 -0800 (PST)
Received: by bishop.localdomain (Postfix, from userid 1000)
	id 06E8D142C7E; Tue, 10 Feb 2026 23:15:40 -0800 (PST)
From: li-nkSN <colin@li-nk.org>
To: jens.glathe@oldschoolsolutions.biz
Cc: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	"Colin K. Williams" <colin@li-nk.org>
Subject: Re: [PATCH 0/4] arm64: qcom: x1-vivobook-s15: add X1P42100 variant, restructure dts files
Date: Tue, 10 Feb 2026 23:15:38 -0800
Message-ID: <20260211071538.182318-1-colin@li-nk.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260208-b4-vivobook-v1-0-3a9b5e153909@oldschoolsolutions.biz>
References: <20260208-b4-vivobook-v1-0-3a9b5e153909@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264640-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[li-nk.org];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[colin@li-nk.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6F95D121D06
X-Rspamd-Action: no action

I have been testing Jens's device tree for the X1P42100 ASUS Vivobook S15
for about a year now on my hardware. The generated DTB works well and the
device is fully operational in daily use.

tested-by: Colin K. Williams <colin@li-nk.org>

