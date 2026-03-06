Return-Path: <devicetree+bounces-272135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNJ/HJTeqmlqXwEAu9opvQ
	(envelope-from <devicetree+bounces-272135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:03:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A93D32223D7
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:02:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DF5930965A2
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713363A9625;
	Fri,  6 Mar 2026 14:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="XXfkMDTo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF6920B810
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772805694; cv=none; b=laaOAVM3Y0AlYClQRsgxJhNMPFvqZk4d90Yh4oC+FGw99icn27SkB6Hi2F87LJv/vqp25ChYe9vBAW95K0YzOzUPh4LkQ/wblS4+biOoHUsK9T+wbnz28UPl1imdOo+alMmBemUqH7iOrQKyPq019C8SvEsZNHiOLyCMiDx7knc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772805694; c=relaxed/simple;
	bh=L9aCmYrVlZ4PW14Fpycu7TkZyCpdzFqIVjaZtEOLg0Q=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Qo0O+Kyai3m/pE1UKGomhVD/mRsDN6CmpedB/HOp07t1uhAMky3peT2pkdw6U+ZiMFLQ+Zx2mBWa2PQPCuznOrnePkFujX7pruULlsE0+QPyiKwlTzwRAaXcMU4aMbgQPCoLfwZ//u8S6FWn0vvJbFiboBoRFEJu8Z+kDu6mX/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=XXfkMDTo; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-48373a4bca3so58568565e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772805683; x=1773410483; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7aIxKNveDFp0/XpNnbeBWkYfukXfTraa/qjTjTHoatw=;
        b=XXfkMDToN5jpCwjtg9RaFd/y5mKKzSXvLQ14rTUZFs6HXHbOdjIH24EFS1BuRohESq
         WG52TdPiT+md98ouRggGTlaZhI+a2WRApJR0+PVLP23nHHA0IzwBaUYl8F9GeLHc6HLw
         wpmiRX3Pob8IqF2p8+/1yAReYR+zTCOFsahnmGUSkjv9nh1e829s7foD0OcK/g+tNagr
         8TmNyfKks44dlAWsJqt3R3G0pb8PT46eGJX99J1a1wfC28XLo44Ium7ZjcOR41xXpe/O
         vPv6vemLrE3FTyyHNPsla8YAFT61DXEl5LyJnJo0HFjMqqlxtq/34jgJT9SZLteVghqy
         eGJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772805683; x=1773410483;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7aIxKNveDFp0/XpNnbeBWkYfukXfTraa/qjTjTHoatw=;
        b=a7D3aTAnlxy2k0JOlJq26engTzxU4XVxx42PyFE3pgydY8Z5QE13LJzgZH9Dq+a5vZ
         LVdShmnJwNV6tNJ/xWxrpS7eCfDawC44mh58sN7hHJuoH/zxrUl3Uw2LnSDouS9YtvIA
         OwdZeSaRuV5ZosajBv/vCKlhKbTg43sNC59TD020cp6UP7y9ihLx47pYMh8L2CJHQqN+
         JXnWVIujoe5xTtZ+bCcMh3NTIGgZSnjIbmP3zFQwa0TKUSNxMcKbNlB44u6KW8yjPKDR
         tbGV80OxTKzVopRKklfDmPCJvLJIMCo32DspzZd0yr7fgbMAk78dm/4Piplg8H+zuPo/
         zdJg==
X-Forwarded-Encrypted: i=1; AJvYcCUDCwqgpqG1uyEGRs9XKHwv/bpTlEe2M/hh1zASSrl0mzIUyiN00G8xe2Yuaz4YtMYqWt+5YlBekc48@vger.kernel.org
X-Gm-Message-State: AOJu0YzdlUqTlVlMRrZtzgieYWXd7N2eOQKUvHTYlxxf1eu0qqJI81xi
	0Rs9PEjJLB2i7lZLSKCiW1WPx0nQQUTFjEDTpMKmbMNZ++Tspm0M9etW9H9px8w27rw=
X-Gm-Gg: ATEYQzylM5Z9Ie1fnBaYyTdMFO1j/qrsPUpzMe3Wb95I+l1Hk+UU1f+ihCXWUFTMAXc
	YBnMwHKtsznPm8e42EsrePM2KBGwo7jnSopK6DgXeBNt04CokYQ/Lxotjy3IqygfMFpR8jAbfKy
	cSq6wroW+aJGQSmWoQaKPLD4vfQ9aKVx62YANBAxPRkAO0/GhF4nNz6T/PbTtUUbo33E1CXTB0o
	tg4SGJUdhnqZAZdRtpnxQg32fNMvYUx3ZjU+OOT0/lGk4Sb38S8L7fAcseX3Qiy39M0AwayVBxq
	QLxbX28o1zmj3ysEnUQmJdq3B51VJLaNe9/bTFR4663s/LWVxzJSTdTBYmCrF7nQb3Z64V8FsY+
	Ae4i4pY1JF9TAMAwnU9W0sTwdDpOyZkAmKQ5yZeVWArlEOLtiPDKMBMaqVg7pGSJlxhytn2+baj
	KsEqBFIjfkb1MBVEbpN2gvn1LhlQcQ4EcOBYW2c/yUZyiugd4IGtdPEjzMxMczl6gFFHy4YK+xu
	4NXYWpW8skln+c=
X-Received: by 2002:a05:600c:4591:b0:483:6d4a:7e6d with SMTP id 5b1f17b1804b1-48526978644mr32267695e9.30.1772805683313;
        Fri, 06 Mar 2026 06:01:23 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad97be5sm4313828f8f.11.2026.03.06.06.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:01:22 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/2] Add fastrpc and GPR support for Milos
Date: Fri, 06 Mar 2026 15:01:18 +0100
Message-Id: <20260306-milos-fastrpc-gpr-v1-0-893eb98869ce@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/y3MywrCMBCF4VcJs3YgjSFKX0W6SOK0DpiLSZRC6
 bsbrMv/wPk2qFSYKoxig0Ifrpxij+EkwD9sXAj53huUVEaepcHAz1RxtrWV7HHJBaXSRrtBuau
 6QP/lQjOvP/M2HV3o9e50O0ZwthL6FAK3UURaG/55DdO+fwHpuRChlAAAAA==
X-Change-ID: 20260306-milos-fastrpc-gpr-02464b12b827
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772805682; l=541;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=L9aCmYrVlZ4PW14Fpycu7TkZyCpdzFqIVjaZtEOLg0Q=;
 b=SSOmp+Tog5dudIQ0pSdCXra7o4zTEE+d90tyJjtmDN0HTdrwao2coy0F1zq8lc1P9ZY++IBzr
 1M0df5Rl3yRB0AN2W8Doa6oksTFEVX9hHrUYyKLJBMUCmGCtlJn7txY
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Queue-Id: A93D32223D7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272135-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid]
X-Rspamd-Action: no action

Add devicetree nodes for fastrpc (ADSP & CDSP) and GPR for the Milos
SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (2):
      arm64: dts: qcom: milos: Add fastrpc nodes
      arm64: dts: qcom: milos: add ADSP GPR

 arch/arm64/boot/dts/qcom/milos.dtsi | 185 ++++++++++++++++++++++++++++++++++++
 1 file changed, 185 insertions(+)
---
base-commit: 755bfcf32666f86ca2a9a2ea2c9dc7eca4c330a1
change-id: 20260306-milos-fastrpc-gpr-02464b12b827

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


