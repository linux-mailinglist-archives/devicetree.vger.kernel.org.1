Return-Path: <devicetree+bounces-273479-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIXDNJn/r2mmdwIAu9opvQ
	(envelope-from <devicetree+bounces-273479-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:25:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A90B924AA26
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:25:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8A9BD3038735
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34483806B8;
	Tue, 10 Mar 2026 11:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lPDrxpkH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC043859CE
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773141834; cv=none; b=Wcqzj86K6ECcgmof3fc6WATBou/8g5cxfFxdzSW9I/Kc18dRuAwuWvhBKpmTWE+SFNozhyBhh0QfV5KuequurCRpjnQkn0fnT/aFEe/WSVbjUvAOAknSEZuBJyYfDg5fyMG52Knkerq9LlfM3IykkYKmthzf0yi43NTDcjTpIb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773141834; c=relaxed/simple;
	bh=W/1FEAlYojWL1bU8tkO80Dm54K6ucsxIJSx7uRiiapU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jSFjVLbCDPk0oHHWWGV2bqwNE5AMH1duLpJkEQ4iwiuYf+kX56LGNSAi9Xm8729u2YoIEMucZ89gv1NAKHru3ZvrnSjS6YJMFmfHPg6NG/gdRybKC+ZXF+K8DC1EucK6bAo3KKOuvScuwvXZEDXL5oyKPBwwDxkSv9ezChqY/q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lPDrxpkH; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439b7a87fb5so6027231f8f.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773141832; x=1773746632; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q9v149es6iuld0S7eGKDXVf+jDyagFR1V8/Oqt8h7Ak=;
        b=lPDrxpkHjKYzxP2SZVW80t/lvry7NcXPQiQ6v6iMxyvP4P48ipWQHWjVybIGzysc5S
         iv68ILbtw6Zrpn1BkWcKWYF2r3E55vYFiz9ElbmuVXgU3HQrmOj1XckBDyM0fKnsB0Xf
         bNAXjySEOsNk4uYvQp/HBuyo0kg2yc3JByKGI7NQNbsCHl+FdxOjCwaQgfPACbYQ3SHD
         8iUsfCAB4gNZZrjfo0xtFrMnt1JuRFn1dwDb1DoUXtSrZ4ybqyeFhgVJxA81zAMVQMt4
         sWW25LzRuasup+HTf/MaQVupiBgS1HT6e/vrfQ677ez2qPiAPGjDvsmQ5K2xZZ0lw66S
         cq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773141832; x=1773746632;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q9v149es6iuld0S7eGKDXVf+jDyagFR1V8/Oqt8h7Ak=;
        b=iko493cSJaQVkCCSiUxg978qCKZkhWY0fh1UM+BAhGu0/gGhNaweB0a0NW+EIP1/fK
         EB3j0R/Ya6+NIQB1ru8GS5RXGS3NJ3MwktG+phD/IVTlsP9eJlpuNp8FngbSyLuD69u/
         ovcK5LZxoGb9zCtDFhqtdTyjlRBJKB3EJ4Cabbs4gdERMxgKgVv1HNO+FMA3P6dBcuFE
         RatiCNeCbk4pFI5UfWhwJ1XxqyF5yLfTSXk7TXNYTInTg8qnzzomB9X1m08EAzP5rGPA
         CuLXf4J4Lte1VyIsQPGx0Y7jGxsigdANmBBJ43nm4VEQumlqO2oAteKDG0hSWnYFKOOy
         FGhQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/znfBG99PIOBUocJDI2gQMe87v1ZBysW1wAOR2NBTsR+ugPSCvg1iDrDOyQvuL3h7pwo2t2XFNNXi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1X0L5xHS4+TB+azTQuwWsstDVzEQCgw/epn/EiUjdP/MOaaEK
	sl2swp0HUF60OYboVZ/YwwwNFbtkwyIofgaN1sJpzOwICaThkUzRYDmL
X-Gm-Gg: ATEYQzzp41Htfkng0NsPPJrkwRj89XFKJF0denLoTFuE499icRNNU8VTNw7+azkeJ1J
	uAhWIPSiww0dOWS9aaXTLyNdqntoA6JSL2bnKU6620wZaY/szrEsvUFkQ9VMfhRnsy6VGW6pKL7
	8i+cOQMH8rKmHrmpe7x7QEVUk8YPD2o22cEa/r4jA9AoQ1O5UhMLLz/CTsT2V4B9IS8QnptU6jW
	9JhEhAV4bMJxrSRNQja5mkqhZcSaMgE5S7PqEgoRX3K7sChjwCq/993tGkyemtpUR1Cpiayxh+o
	hnC6ClyBENztLO+kHfk4qTJV3d2G9iPx9OhPttJb2f+nwc+jA7d/sOaW0lSCGqGLCrLuGZm2pEi
	D6Ab3bphFznyGr0BIQlMD4fUYjN2BTpfgS86wBU7p3z5ej5+R+B22n/o4WfWcJ9SSzF+ROjF3+6
	0DdTG4mcPR0Lrtd5OCoVCrlIE=
X-Received: by 2002:a05:6000:144e:b0:439:bce5:6508 with SMTP id ffacd0b85a97d-439da351a52mr25257592f8f.14.1773141831963;
        Tue, 10 Mar 2026 04:23:51 -0700 (PDT)
Received: from T15.. ([46.175.113.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad97abasm32238560f8f.10.2026.03.10.04.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 04:23:51 -0700 (PDT)
From: Wojciech Slenska <wojciech.slenska@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	Wojciech Slenska <wojciech.slenska@gmail.com>
Subject: [PATCH v2 0/2] IPA support on qcm2290
Date: Tue, 10 Mar 2026 12:22:29 +0100
Message-ID: <20260310112309.79261-1-wojciech.slenska@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A90B924AA26
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-273479-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wojciechslenska@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

This series adds IPA support for the QCM2290 SoC.

The configuration is based on SC7180, as both SoCs
implement IPA v4.2.

---
Changes in v2:
- Order fallback list by priority
- Add leading zeros to register addresses
- Use RPM_ACTIVE_TAG instead of RPM_ALWAYS_TAG in the last path
- Link to v1: https://lore.kernel.org/all/20241220073540.37631-1-wojciech.slenska@gmail.com

---
Wojciech Slenska (2):
  dt-bindings: net: qcom,ipa: document qcm2290 compatible
  arm64: dts: qcom: agatti: Add IPA nodes

 .../devicetree/bindings/net/qcom,ipa.yaml     |  4 ++
 arch/arm64/boot/dts/qcom/agatti.dtsi          | 53 +++++++++++++++++++
 2 files changed, 57 insertions(+)

-- 
2.43.0


