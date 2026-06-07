Return-Path: <devicetree+bounces-307788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GUjkHTw0JWotEgIAu9opvQ
	(envelope-from <devicetree+bounces-307788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 11:05:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9E164F33F
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 11:04:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ghhWBhfl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307788-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-307788-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7889A30015B2
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 09:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B35D37C0FB;
	Sun,  7 Jun 2026 09:04:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783A437C0F3
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 09:04:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780823095; cv=none; b=Hb34P/oWqq9SQN17aMv8WWvV6J3GkxodcfpOeCD1cTgZgQ/BLszKXnTGpBcKFY0wFHtUydLp/oVDyZxk+0zEpPZBabT2jtkzvIj3XQ3AoEYyGCh08cmxk+/AQPzZGfv1xfma+m0WgUaa25FuFxHHdXFuUAawTyklgpJkMk9EqAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780823095; c=relaxed/simple;
	bh=mDBJnLc05sn+0RioJQg35cC9HBk0a63nVy1XdD7llqk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rUrvux5IQqNB7ccwWEw33prQDVXNUBTMYtLkQVh4ej1Vxf3JtETbv8r4YTuE5xqmuajmXKo8oyM1x9trQEqM8pcEI6nt6qZpWNodSFd1TNfJK848Mr6thdsiBPeSAuMopPVBXVu82JU0hFqAH/U+q4KtDbI67PStjjlA4M6M4cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ghhWBhfl; arc=none smtp.client-ip=209.85.215.170
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-c8532ba6c95so1066718a12.0
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 02:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780823094; x=1781427894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mDBJnLc05sn+0RioJQg35cC9HBk0a63nVy1XdD7llqk=;
        b=ghhWBhflMznCXXvl5cUujj7EihgsntEePjFOKVwRvBzbbWHZ/ctpQgVPBPiP785rAq
         W8FXMVLNq1bdsx3sSod2Jui8gIINKF7XNtMxkb7AlJNYNgfJgJMFoPktEk6oXv61wnIY
         tqx3ubRQHY2FPDv5EMOESkbAqvXokWkHn+sPl19nBHcClv/M0w7MkLWHeOiEoKzKrrDN
         je1xx63ecCuUuZjazkDMauKEiTQOTJZ7QI0DnnAlzJmeX1pwmESdeucjf6KFam8JWEzV
         Qnf+tptARVkTPC7ppsnjXgCTkxTyqHGmmk8Q6PyHBM/TGKNqa6Zq7/Y6nIfNv92nKdNU
         3rzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780823094; x=1781427894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mDBJnLc05sn+0RioJQg35cC9HBk0a63nVy1XdD7llqk=;
        b=XFtZOGT1B/sZzgHdymZoqFfq0DjAzgFd62uBQ2lxEbHNQiVECQ5dqTCFhNjD5x8+Ol
         MwyicpUtev6IHYizatCq80fINlSR2sAo7jUj8MBKBQrPOn+4rRCZ6k3LqYA2MbB9zDMF
         38XUHpNleQFOBM6qWtUMCCVUPj8s6OFCSdpe7gO0MG8ECkNraGV0oxVP2UjznDlJkKlc
         xYOmNMDGzM7VEbJ2VPHdXgWzr9YBo1msezHY53VNdgi+t03EkcbFWUysWQcYUfraL9ZC
         2CTs3lDYrpTOxYcWNxQ4Hnu5BjCxTgk7bdOtMxsjXTJLjETBFq7azhX2dwvxzu5AmCrI
         EAnw==
X-Forwarded-Encrypted: i=1; AFNElJ+oWhG/PU6obkoA+EJ96mDoBIMgVy/ycNsewWSDxZ0zafORpDUdvzzkBAfP87Z98kGFW2P6jgDPGMLK@vger.kernel.org
X-Gm-Message-State: AOJu0YxLqwgGilr5w1rQ93DfsGRaEcPGaKWW3ev7oVROxkPpuxe1hjer
	+f7m2DB8ej5KM+TZCum/9e+z2t67vfWHPAV/iowG4KUAGEQmA3yIC1fF7e80ww==
X-Gm-Gg: Acq92OFhrrUIqXiI0h8Hg/5AzS1zijAZ87U76Q6bCkXypKnqFfHa9lUhzwUHThLMTMX
	r5jIqNKjTAixLtsukfVC+cWFuYB06oa6pLTYvitn5bUQKg6znDjKatxbKj4nKFTivbsL6tdl0dK
	as73MHGSXSO+cLtadq+RKrS5CcNrLWEdyY6lHe+pC0OdXeJfm0KcTOQ0aifpWAosFABBKqAAHhb
	7DYLYOVNloG+/oNTCmn0AuPlCZxHHB6JDGWmdS6zlb3FJhU43JXRPSD5aE9Dm7KAbybohIlG3jv
	5h0dhEp/xA1TRIu8bhAbS3PJrwV6SK8LTSt6C7Nq4K84wpSVl1wRU9HcCXOOdqPrqB643B65+A5
	rD71bP+RcMlaMV7D9ZbgTH+jYZNTVrHwhYJd9CW2ptf3WypN3VtY44kbB3DDoB7fxx5Gn3s/N/p
	LXrjG7U7lfBI9XCI1XGJf+0MERRVdSfxeifJwEmBj7fUxbD58o4A1xcwH1sPfR0M//aZHjRQ==
X-Received: by 2002:a17:90b:2e45:b0:36a:95c:7613 with SMTP id 98e67ed59e1d1-370ef3e8fe0mr10945156a91.10.1780823093707;
        Sun, 07 Jun 2026 02:04:53 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:88b6:5847:963:c0bb:262b:6764])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f6bf82fecsm12179851a91.3.2026.06.07.02.04.49
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 07 Jun 2026 02:04:53 -0700 (PDT)
From: Ajit Singh <blfizzyy@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/3] arm64: dts: qcom: Add Vicharak Axon Mini
Date: Sun,  7 Jun 2026 14:34:46 +0530
Message-ID: <20260607090446.22637-1-blfizzyy@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260519125655.23796-1-blfizzyy@gmail.com>
References: <20260519125655.23796-1-blfizzyy@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-307788-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[blfizzyy@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[blfizzyy@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F9E164F33F

Hi,

Gentle ping for this v3 series.

The binding patches have Acked-by tags, and I am not aware of any
remaining review comments on the DTS patch.

Thanks,
Ajit

