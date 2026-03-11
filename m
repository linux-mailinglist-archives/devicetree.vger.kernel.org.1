Return-Path: <devicetree+bounces-273821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LXAFbnusGkaowIAu9opvQ
	(envelope-from <devicetree+bounces-273821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:25:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF9025BF57
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:25:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 523F23026DAF
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 04:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E86B82D0C89;
	Wed, 11 Mar 2026 04:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ULejNhSc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED002C11EE
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773203121; cv=none; b=q0a8kSAKt+VXbwR+7bbCPt5bBjwGlEfroDGiyO1squzX3iTGafmPtC+L7ZkGYPDLaDhExF6PTMzxp7G7SCN5YlnY5XY179ueOWiH9lM9LZtRwk6u/AH7LRChJl2e/TiVUk3bhT37hwMMrUgfquGCcGvP1UrB6wiB2otmVaM9k9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773203121; c=relaxed/simple;
	bh=ay7kLC7nSOMoueeuZ07rwxwG7DCmth5fcpnKLvgPIH0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XGxkNTNYu2nq46+Lrw17/fVZOUsbfCrAu8gzhAkmTsv87DG9MN7he3NFpxKO+ey2JLJLqL/T7KxjkYWtJsVaBL8V5sBcaM42a51ml8Glr/7rKa2uL8/+e7joxmfml/xqhb+QXtaGTtN6jVE+0X5Zm97xAb043HcVlBSR7D1uE1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ULejNhSc; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-35983877dc5so4592658a91.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 21:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773203120; x=1773807920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ay7kLC7nSOMoueeuZ07rwxwG7DCmth5fcpnKLvgPIH0=;
        b=ULejNhScN1UcAPrEvNAAuintkrPizdGF4EJi1g9MuM9X0aaj/tRDAsUYrB0VfRjH5F
         UrxJ4GsQ3cNVwgHhVo61ZSUaMS4YAX6gLLGYpTpHC03rHO66V7yQSiCDS8HP4s4+nWhE
         Asx2gbOYpQb7ux5qlqRPvG6hL+z3p8jUS2HFHVow1BUy1gji5HzUi1ESwW/3x4vDATIh
         Q8PJtCVwXpkFHwgDuXAX8rcoFKQvi4/6eU9GHmQb6O2s7OXQiNs0uIb7t5TOdviF8lHl
         1m+nAKrpPTUn7uqeHASeSpjIWRmlMKx8QEa82HZAYyn89mN2AjiYbsdhcmu9XHCYixMT
         Dvzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773203120; x=1773807920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ay7kLC7nSOMoueeuZ07rwxwG7DCmth5fcpnKLvgPIH0=;
        b=LCMil35ylxdaPzkCBdLMjfvrtqRv7GwqwfCxFjnS6S4DXlXEJI9LH7PPqI6VqimWjH
         i/d7avlGZyZe1awYlOw60fOJfLznkmqtFwZMAhz/K2K80kMaEDO3y+In5imJz5wKXwG2
         8fEAm1XpSQMbAnHCLYaBv8KZOWJBUNOOuKM24af1HZYMESyu6xQaUwlJTUculsl5u3vq
         dzWUwbreo/e3XlZAlFDa9QYGsOfW9Wj9EuYvHrolmBd8a1PLMTCacsrbArHaKWOzQEHy
         i+wd9PC/LsDKgR3l5+ic9698Is8JooGuPK8/QMo4xGl9bq0tu7yIwJKIhPmZ0zv8OVX9
         FU0g==
X-Forwarded-Encrypted: i=1; AJvYcCUKo2BgVbZY9ABDd8GGaCs+duNG4l9/xPiWR+0gnaMfcEBZS4GraehyApDmatoM9Sq31MS+zKG11YuM@vger.kernel.org
X-Gm-Message-State: AOJu0YzvMCScjwLfNxf85B+dyI6njJu/HMVoLaRsZp6FrtUdWJ1XT1nR
	e8GQE9Fd80zh1ZQAbs0y/a4n7NnquHeH8+9u5Z4051kribtbm/feUH5Z
X-Gm-Gg: ATEYQzwTLtFN+5ZUTGjO/ZPxOUo/Y8qEkgSfp7aYOAEdWUVzGKHC2LQ+JYNdvCuHWfQ
	2JhudLC2c2b7HLEPBpDCMbOhNqSLj5dgmE0i8WObupXtww33/kkaIMkI9Wdp1Lh/gxxz8Y6AEkM
	RwJm2a3GTyOBc8JNGTOTjdoRoX15g0fSyxaD1ZtAqWjHNIi7PaxERejA1nXiYf7RUOzG9bb3GVN
	1rKfcNEGA1ujEfb2iiDg4vVMEUif/BnQkawi3JT3mFT5Blrfi38KvUVrpRyXdScy95q1cxlEuQg
	6nIqObJmYlyMfddZ/mmokgGSAlr4c4XTAAfCuRm1Ac1SxqVKZm8vH582CcSqbTN198S5ggOs5vx
	57r/T8vRC17pAcqg2/2m2OwGghYAfJTFje2M4mZdE1xIeS0bMhP9Agt8+scww3+3Dqy6x5GftYC
	Fh8YkWfL9f6v8xXtKMwTjeiC7zpdd8aG05DZbovDdmBNxmYF/gMaKSpC1D6ErEADOSPFEqgpV1L
	2iDSfRWlDw=
X-Received: by 2002:a17:902:c94b:b0:2ae:456d:b843 with SMTP id d9443c01a7336-2aeae90b61fmr13064715ad.48.1773203120198;
        Tue, 10 Mar 2026 21:25:20 -0700 (PDT)
Received: from localhost.localdomain ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae361a00sm8316975ad.76.2026.03.10.21.25.16
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 10 Mar 2026 21:25:19 -0700 (PDT)
From: phucduc.bui@gmail.com
To: dmitry.torokhov@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	geert+renesas@glider.be,
	hechtb@gmail.com,
	javier.carrasco@wolfvision.net,
	jeff@labundy.com,
	krzk+dt@kernel.org,
	krzk@kernel.org,
	krzysztof.kozlowski@oss.qualcomm.com,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	magnus.damm@gmail.com,
	phucduc.bui@gmail.com,
	robh@kernel.org,
	wsa+renesas@sang-engineering.com
Subject: Re: [PATCH v4 1/2] dt-bindings: input: touchscreen: 
Date: Wed, 11 Mar 2026 11:25:13 +0700
Message-Id: <20260311042513.2434-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
In-Reply-To: <abCqyU2-iQgcghzy@google.com>
References: <abCqyU2-iQgcghzy@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5FF9025BF57
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	SUBJECT_ENDS_SPACES(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,glider.be,gmail.com,wolfvision.net,labundy.com,oss.qualcomm.com,sang-engineering.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273821-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Dmitry,

Thank you for applying the patch.

Best regards,
Phuc

