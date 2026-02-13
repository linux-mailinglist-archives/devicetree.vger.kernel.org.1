Return-Path: <devicetree+bounces-265437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AE5QLwxaj2lxQgEAu9opvQ
	(envelope-from <devicetree+bounces-265437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:06:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 482161387D9
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:06:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE46B301174F
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB42363C78;
	Fri, 13 Feb 2026 17:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EiyTulUP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC9D32939F
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771002354; cv=none; b=TZWAnJFrDK7D3bvUVrjxRrD0asvzbUvD+DAXi5+8M9expcuYWWv190me7TMmBoS8m9SBvYC354bKzrVFzAfhWvZJaQFohTpaRxiOiCnLIgSmD7BK1tvXNj6rKh5XrPpHON4d5M5gxB4Pe0zj8f/X38RnpPXNettAaZID/v7Gag0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771002354; c=relaxed/simple;
	bh=IYGeX6DGry9FC/d4pSSuK9P0vd3gE/XtnL6hAhRpe8M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eJ/8onj6jjJWp8NKAiSLY/PrhExv+OiGkLcQAGFwPxyVgLxvYI4+TKVVg0bkq8n7NGkptn3AXTAPjBknj7e/Hm7M5WKwVL3AqZb6U4ND21n7sp6gdpHz7ZED8fhqJXh0gwnK9yT/4U8dGaL8zBcpmEhEKnmS2D2uruXI/tKsmLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EiyTulUP; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-4375d4fb4d4so928536f8f.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 09:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771002352; x=1771607152; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IYGeX6DGry9FC/d4pSSuK9P0vd3gE/XtnL6hAhRpe8M=;
        b=EiyTulUPkjOi8gY1tFD8M8PrHwNnxntNK0Hfx4/9m0TC08vaoGAuMh5XvmVxImrtsX
         13aJEcHEXGIWr97HBt2FqCUFABvgQ8/UyWG686PWGCuAgPU3x/BZ3zx1sOdcw/JqRulm
         qQY3szK2QPyocxAR2HuV4ad+WGLWbVsPCAzgwnJ6ghojnTwCJbRUBfGfBz6qCMd1Po+6
         Y3hizFCJhfKWjidsZYIvcVoI36UT+V2+7gMiuk4BcMhVLzFqhi+rRqaDa8RZ5FqkfoPK
         h77LQ/RqeY2+oAKDqOFx6+mnJFpnQHOGkhkNgW8pAxHOAXYAMp+PV1S/goulcLszYvhZ
         sEAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771002352; x=1771607152;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IYGeX6DGry9FC/d4pSSuK9P0vd3gE/XtnL6hAhRpe8M=;
        b=Cg+hk+Wn6T3aROgFL2T78Y3L/J9oBCMjOxv/CznqzTafHYrZorqmingezw3Bn4kL3W
         3gHr3/d0/qOoU4l+94rNF24bqZj5QwD5aDIlGaC5YhOyOErqS1VpnVlW4RXWRFIIlYPn
         mTpvArnJBklA3uLFYZ43+hjrrZGdwIqI0dWmkS0beRZDD5NkK53e8mH7+EQsH/k42cVD
         V+y280DMCmhilPf6BZVuw8J9yYnboxyfe1YLZaDsvpyTfwbRMoXWMmfcFWf3Z4x+5EoO
         wC81K7kz9rFdvdTs/OU4bpIGX/YpDzqVd4iTnzFoDb/rWnu6mDsYa4M7Pv27njACfsF9
         Wccg==
X-Forwarded-Encrypted: i=1; AJvYcCWnk0r/m2Dk1uTfl/buZdiEsVMKoNtRhmNIh/pc6j1gv0soFX82M6aumcjUQqsJ+3iiGS9kHsZHonUd@vger.kernel.org
X-Gm-Message-State: AOJu0YzP/eTHizW705l5qnoN46bW9ySiJu5a+y02sSn289JwKH+SlUJW
	80PLRzI6Ri28IGYao5wjykyFgEjwAxkKKxS68Uyr9BzXweh7g1FOgHVS
X-Gm-Gg: AZuq6aLFXl6hcl/rcaN0adfAs3OQGk2fSzGB9+iU7/Fi3aMUqxAj4V/dRmvJnXhoDjm
	BtbtsmNSG0C4qcG+qmOMrzZo9nHjd0wY0W2vgXNejKY/cWPMq6upaRW29Ta0zXhJkwNvsGT5PId
	XxHP2wMrvWFB5Jgy9c9Q0nBaY4tr68g5yASUMivFLsn2M9scrOJ/zWkCrMb/GlBGelOJEj+Irgn
	2dKCc7As6EmwcrLFwpz4pNp8husxcQsjfH1B3FGe2OqyYuZye6APGeA2L3VGjtOXeubtYDVIeXt
	1yomXWsVJXgnOXDVg1Qwx6ZFIN9ysgHIfyoqjIQqPHtRSoVSgd9K4CATsq8yGY/mv7Q1Ws/p65o
	tfpyCw4Qp8nexRH/4UgX43ws8/uPgIopi4rY+A1C5ixSaxoCVyhcgJ1OB/BVScq3ReD4zGsT/gC
	uUgYUdPVojCOR3qrdwRSaYz07/f7yDCzPTxyJBW5z+QM1M8NTDowf7j87AhW9RmqVdqyu/Ycr1z
	iU=
X-Received: by 2002:adf:ce90:0:b0:437:7088:4150 with SMTP id ffacd0b85a97d-437978c0a14mr4182508f8f.10.1771002352200;
        Fri, 13 Feb 2026 09:05:52 -0800 (PST)
Received: from db07.UM6P.local ([196.200.180.25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796abc85csm6682432f8f.22.2026.02.13.09.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 09:05:51 -0800 (PST)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: krzk@kernel.org
Cc: 0rayn.dev@gmail.com,
	Michael.Hennerich@analog.com,
	andy@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlechner@baylibre.com,
	jic23@kernel.org,
	krzk+dt@kernel.org,
	lars@metafoo.de,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mentees@lists.linuxfoundation.org,
	me@brighamcampbell.com,
	nuno.sa@analog.com,
	robh@kernel.org,
	skhan@linuxfoundation.org
Subject: Re: [PATCH v1 1/2] dt-bindings: iio: dac: ad5504: add output-range and missing gpios
Date: Fri, 13 Feb 2026 18:05:48 +0100
Message-ID: <20260213170548.28569-1-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260213-curvy-voracious-yak-cc13ec@quoll>
References: <20260213-curvy-voracious-yak-cc13ec@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[gmail.com,analog.com,kernel.org,vger.kernel.org,baylibre.com,metafoo.de,lists.linuxfoundation.org,brighamcampbell.com,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265437-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 482161387D9
X-Rspamd-Action: no action

Hello Krzysztof,

Thank you for the detailed review and for pointing me toward the standard
DAC schema.

I'll update the bindings in v2 to address your comments, and I will also
ensure I check the common schemas more thoroughly for future patches.

Best regards,
Taha

