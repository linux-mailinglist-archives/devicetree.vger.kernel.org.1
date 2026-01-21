Return-Path: <devicetree+bounces-258135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNDbD2hGcWn2fgAAu9opvQ
	(envelope-from <devicetree+bounces-258135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:34:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED8B5E1E5
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:34:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 388C5844C5F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA8283AE717;
	Wed, 21 Jan 2026 21:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IxRz7f6t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F093E9F6D
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 21:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769029340; cv=none; b=vBL2xYeFBRJ6e5i21WEIY2jK7ma2qWAhVWHxXTKfNY6+u5/Bb7W9O/gagR1uGOg2WI7Cw0eoH9b9mtlTSPjigoKbFEEP1IfpiyioPParZMYFq7LBs2nEpbX0Y+Lwzx/WLrfRdxD9LKS1Hhz85GBSOmZIfBbxzjRCD3kGvV8Y6z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769029340; c=relaxed/simple;
	bh=vE52ZZoZJn6jfGKNFJhmt+K+7owBh9ZcuK+dIiYw9JQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j3eKm2e0VXA0rW7eW1SCO56GesB/FcgsKWeT5TLfDM+jkadRMWVut1VNXw1srtqYCymnxbjEdsZKLHDMbIFlErkTdL3R8r3q489QNBYbTtOhFBzWfhyhLk+403PKFyZtQsPQrvBG8ih1IYcn9dgneA/ojrwNB1minZqyBr4WmZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IxRz7f6t; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42fb2314f52so147349f8f.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:02:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769029337; x=1769634137; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sa/7GdD7A4/u70FqBtQBR6RTLsWyqjA9Qwa5O2OHUBI=;
        b=IxRz7f6tmPaPO6PEMcT8Q5UFSmcgYsPvbii6C65s4mjjdp1XCgj14hOo5dtrZQp63a
         WQNNB91dOOFUTRWJ95L9bu6X3CSf+NT/edZa6A3xgV8taPxI4YUQm1MgHasHm05Tb7b0
         zx0p2nFKCVVc9VUOwDmtM3/GxkkuGcqxuzuebxoCvJmuKWvdzQjbWDoTBkF9su0Ar028
         xTJeFJuLIypVZhSAIrTU+HY6CYyzCYzVcw4iUaJnrhcbU4mA3mKNHLqJMza5nPdpxTam
         PbHVfx4FD4+rPDDpBqqdneDkJSUYp613ElilyOvS9zq0pFueAdnUYLOl67dieVRxec68
         C6Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769029337; x=1769634137;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Sa/7GdD7A4/u70FqBtQBR6RTLsWyqjA9Qwa5O2OHUBI=;
        b=obBD1aqaVV1p7iqMbq1IIMfQ3wxD4Grlf2ftE4U4jV97Jk+vXgaoky0nO4/naiCUXp
         ThrSENHk8KRsLgNBzzbqf78FC51FyZVUNNpmLFkY+Gcga03ksAFNBvNXPFiBAmovs00R
         V66Qx/tEquDXoi9SDo6TH1Oy6oS4WDHlpcY4enmD8f2DUdH+qySkiHX6xgfU9CzEcW5z
         7125W8fc9uUo9lL+Ko6yO6TBRpWLSW2EBslh88exIH0XIfVSz9/c/O77flGlHeqiMmWy
         xUeePJgABOfDBOhPmS5EmZ8Azr6+LZBnzeUBfjMyz1QVgLK/y+56aYjSq/O5CHG92BSU
         S7mw==
X-Gm-Message-State: AOJu0Ywi2Ph4LmJAB4XsqDxoZkYwgBcdIuYmbUTd+r/7M2XhaHBUh2bU
	BG3HbN9ToTbCnXYfoqnl7b772ASTSXSBuj4iPHu9md3ys+/wbNwYFdYt
X-Gm-Gg: AZuq6aJGnVw474VZLks2yUBi3SvyuTuUQaR/4SGUhiWuM7F+i8/3MLSgJ+DoarzUSWF
	eWcbgL5tGmg6aFENtiWq4lh7+ul/YFempjBARyS/oqc6SYtMmdzuxXn6qqZm4HPXTsmbMQYbm1d
	zLbaiLjET8fQMZq3MSfzGfRPxEa7vP2KFEm8rNr9UBBPxQX3af3oM4MhrlBoLvbJ46Yq4z0SkYm
	ZmAPrKIbikSVW1yvoGABJdPVq/ALnMxpI0qorFTM3b8oHrm8kCJGJznz0NLKq6aGiMkfudz1W3L
	BlHAmIKFIRYfSBxEuuzGmRrtdp35HE/QSp9ShE6k2aKN01S7kUh4LnyTcSPhpJETB2qX6aZ62rK
	Csf98Sgr4LqZfPGcFeKM/mFVUA+I8Slh5lhZNX1Ju8DAY2qLnbPdjqGH8hYHpAW0AhxBN3PRlew
	jSRGsuTyHykXvviCpc6zPqE7e7KQ==
X-Received: by 2002:a05:6000:2882:b0:432:a9db:f99d with SMTP id ffacd0b85a97d-4358ff80f34mr11272640f8f.36.1769029336624;
        Wed, 21 Jan 2026 13:02:16 -0800 (PST)
Received: from unknown.tail46804.ts.net ([78.209.12.160])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-43596b62700sm11031394f8f.42.2026.01.21.13.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 13:02:16 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	krzysztof.kozlowski@linaro.org,
	alexey.min@gmail.com
Subject: Re: [PATCH 0/7] arm64: dts: qcom: Add Xiaomi SDM636/SDM660 devices
Date: Wed, 21 Jan 2026 22:02:05 +0100
Message-ID: <20260121210205.29922-1-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120180052.1031231-1-morf3089@gmail.com>
References: <20260120180052.1031231-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258135-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,oss.qualcomm.com,linaro.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_NONE(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 2ED8B5E1E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thanks everyone for the reviews!

v2 is in progress addressing:

- Konrad's consolidation suggestions (ramoops, hall sensor, pm660_charger,
  pm660l_wled, gpio-reserved-ranges moved to common dtsi)
- Fixed copyright attribution in common dtsi
- Added Co-developed-by for Alexey Minnekhanov's lavender regulator work
- Added comments explaining l3b regulator-always-on (touchscreen power)

Will send v2 after allowing time for any additional feedback on v1.

Gianluca

