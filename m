Return-Path: <devicetree+bounces-271778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UC+UI20jqmkOMAEAu9opvQ
	(envelope-from <devicetree+bounces-271778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:44:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 324F0219EDA
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:44:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F1FE53058734
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 00:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 542B02E7165;
	Fri,  6 Mar 2026 00:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LCIl/OnO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969A32DF155
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 00:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772757839; cv=none; b=CAcUb9fe1ctB6pBeY46e+viYrSTuWZM2dBLgNNBRuBbbYSBlI3JEqBygnPEX5E/dZJtTV9Dj5HyWjnsFuRrxlNZCLp9w8OciYncbPqYvEEe9rFY3Stylr/ihUyQM+JGHpkxvJsphl4s4pm7/JiHelpfWsyOipzXGOFOORVFfcLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772757839; c=relaxed/simple;
	bh=SwKQHqFPugEY5LBsRfzbny5oSAeUyqfWxPylHIWs5QQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jZBC1iOFzNgxVAT+sQj3wduuXEqiL/HqULthcN9Fd9NJw/RxouMVd+kOuPvAobXfJHRdaoUMmww9U5ou3nrJcQ1heU1KSoKKN+tZsYF/CCJ3uQWkWHkBLIfkrDg01O5K6L58KGdcgfllzPFCyCKQYs8Vgc5LPZsvRHhg3rCPGUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LCIl/OnO; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-463901a0accso2668082b6e.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 16:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772757835; x=1773362635; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5AiypmAgBLdMR9CuIx3DJ9/2CMWwdsmjB28iBee1fMM=;
        b=LCIl/OnOy9RfQ10XhstZa5HsHrYgab5cv0xfEj/fDZeK3CUE48bZCzHkBtYXcQqZCb
         IJwtYhijdoqpLeVEjuMyQGziuR/C9jLrxYHBWfRSR/AFX1a0OLBG72rfMBS6SHE0ubEG
         12PqrIdDBBe1z7CPa9as4c/5BuctiMaWbFGFvRRxdqFc+BAA+bDAvw8FdGJCs2ZNGio4
         B+QGzpyGw9oJOvVGT0M/Tir4fpPlJPxVO1DNJUArw71Lm/bOhIIXFOFqKIwL/yXHBY0d
         d8qebC5glmdhtf93nvj02Fc/hD+BCgbZIjPhx+QQdKqhU9l4cvpt7s3VJAcsotcflZUG
         5/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772757835; x=1773362635;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5AiypmAgBLdMR9CuIx3DJ9/2CMWwdsmjB28iBee1fMM=;
        b=nMiLyy1ptTELRWjPnJlFwz47SumuruuLFI58xmHX9ricHDBQZ+4sNGDjo0u8BGqzr1
         4g/WfBaOkwGhINyVoZKF8J/bpAGImP8mnEpM+9kl3s29R57IlkSBwsKMZMSwvzykZABm
         3NsFbRR5gs26BhUWSidXeHB300/3cdxeXMvvO6cP5UwllJSSWZ1YpoBK+p9APaIzp5/D
         0WuxYv57jCG14TgAIybD0Imapj2qHHHh77fTnfNZDFbU1tyBfSwhPVqxdAmq9/kIR7Hc
         GCgy7IxXCinRQ2ysduBnOaLMYn8G/OATQINsMExWqKekEzQGfG4vB7wFT7Yqu0DrRzyt
         o1BA==
X-Forwarded-Encrypted: i=1; AJvYcCWY6NH0Pj7rFVybtq9TeJ9XejEWs5mfXjJdm1zz4ACxqCHpO1l7JfhmXIVaXdio+7O+68yeIuLsScMv@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ8k1gNLXA5wJt1ElTYElOneggpmJGublUn+jBXE5D9pOeyDqb
	gyr20RqNE6FDX/M+S+N3yfk/LFHQIkrXHjIlmhmUWf8a7O0URkRfWdV0
X-Gm-Gg: ATEYQzyL4UbyVhmzOX+ivulDdfK2TFqU+Isf4PFv+hdE1ADwJcwGuZqazDCz5jhi5C1
	Sg+D90DUzhawa1bCVFky2/HiRbSiq0vEh1ZIJtINhQfFmhiMRHeGcPqkgozextFmRd4/BgvidIF
	zRwEvXFAnH5QBoGK+3CS2EMRCE8XmW28ivr/cHvDxfo40Vv6SzShgX1R9XDL5UvuHQSMmaCpVaR
	5KJkIprgI1IBkxJwwUAES9DZObZej1VOw/60jiRt9PsE9unqRqOGklEC1al6OEhkkTFreqJjQPh
	7AepAvMBGHx5S1zyvu+ZjHnrBAeAucmkFygwDDe6MJucwh3qlHOrbXpAtpEqs1UIFs0sjO+VnzB
	8TBHioUzn3+rp/uUUk7nfy1BgkCtJdGWgoLnW1zhqh/1EV+JmETf6MXbz8B4KRMy7FHBnZYWd0r
	J+9WvUdvUhxFK3DjnQN4lxtSV5txBDW/BjavthTCRslGp3FaCHtpIqBOpnLehW/hLZd0ZV0xFeu
	miXum9Dw+DLdM23qu4IiFsoFdBZHtH9dUPhvDi/kg==
X-Received: by 2002:a05:6808:c3d5:b0:45f:13fe:4a2d with SMTP id 5614622812f47-466dc9f4738mr204774b6e.4.1772757835483;
        Thu, 05 Mar 2026 16:43:55 -0800 (PST)
Received: from framework.misc.iastate.edu ([2610:130:110:25d:2aa4:4aff:fed7:9b19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-416e65b1c82sm69335fac.5.2026.03.05.16.43.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 16:43:55 -0800 (PST)
From: Kerigan Creighton <kerigancreighton@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: loic.poulain@oss.qualcomm.com,
	wcn36xx@lists.infradead.org,
	andersson@kernel.org,
	mathieu.poirier@linaro.org,
	linux-remoteproc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kerigan Creighton <kerigancreighton@gmail.com>
Subject: [PATCH v3 0/3] Add support for Qualcomm WCN3610
Date: Thu,  5 Mar 2026 18:43:41 -0600
Message-ID: <20260306004344.10968-1-kerigancreighton@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 324F0219EDA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,lists.infradead.org,kernel.org,linaro.org,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-271778-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kerigancreighton@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The WCN3610 is a 2.4GHz-only WLAN/BT combo chip used in some 
cheaper Android and Windows phones such as the Lumia 550, and 
IoT devices like the Anki Vector robot. It shares a lot in 
common with the WCN3620.

This series adds support for the WCN3610 across the necessary 
subsystems:

   * Document the new compatible string (patch 1).
   * Add compatible string in qcom_wcnss_iris (patch 2).
   * Add rf_id and CFGs for the WCN3610 in wcn36xx, disable
     powersave for this specific chip, ensure it is 2.4GHz-only
     (patch 3).

Tested on an Anki Vector 1.0 and 2.0 robot. Support for other 
WCN36xx chips has not been affected.

Changes in v2:
 - Move the Documentation patch to the beginning of the patch set.
 - Move remoteproc compatible string addition to the middle of 
   the patch set.
 - Add Reviewed-by Dmitry (thanks!) to remoteproc compatible patch.
 - Move wcn36xx driver changes to the end of the patch set.

Changes in v3:
 - Describe the hardware rather than the driver in the 
   dt-bindings patch [Krzysztof].
 - Describe why we need a new compatible in the remoteproc 
   patch [Krzysztof].
 - Describe where the CFG values came from in the wcn36xx 
   driver patch [Konrad].

Kerigan Creighton (3):
  dt-bindings: remoteproc: qcom,wcnss-pil: Add wcn3610 compatible
  remoteproc: qcom_wcnss_iris: Add support for WCN3610
  wifi: wcn36xx: Add support for WCN3610

 .../bindings/remoteproc/qcom,wcnss-pil.yaml   |  1 +
 drivers/net/wireless/ath/wcn36xx/main.c       |  4 +-
 drivers/net/wireless/ath/wcn36xx/smd.c        | 61 ++++++++++++++++++-
 drivers/net/wireless/ath/wcn36xx/wcn36xx.h    |  1 +
 drivers/remoteproc/qcom_wcnss_iris.c          |  1 +
 5 files changed, 66 insertions(+), 2 deletions(-)

-- 
2.53.0


