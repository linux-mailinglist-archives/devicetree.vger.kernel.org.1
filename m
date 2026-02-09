Return-Path: <devicetree+bounces-263984-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHh7HVTaiWlFCgAAu9opvQ
	(envelope-from <devicetree+bounces-263984-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:00:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2FD10F47F
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 809C030036C0
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 13:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C28FB37475D;
	Mon,  9 Feb 2026 13:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zLAbkGpC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFE037104D
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 13:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770642001; cv=none; b=jbJ5jhGjMMVXf9gj4ajyQjwu/rrfOr49niH0DIQZWESpJBCJSR2YExtkiS2cfSDMlpOesv0uWSHCXdFjWJaxgVe9sZkdfMXhMY1IqbKE1UtpWFkXX/AhoDQBh4sX0xIDK6EGYawKfyr796kSx9qRNPavfQC6W9U5FqqceNZn2dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770642001; c=relaxed/simple;
	bh=ccDGQKcZ6ePGyeyFfLhe3FHr6NiUQV+ntQLRKhAADt4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=I3nrYO72sDM+vDfnyXHgZsEpu/tcxXcoW7kffw7UsJPuTBu6r2broCc67tqQ49U/VV6++AMwXHJQDepnMYLJuylNmegyJacb+VXMBWCnF2z78C6AmvbyPPVAy8qzAYuFnlmhnnH+SeBLbeMyxloWDkanwEqEFSqaAUIMe0pFa60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zLAbkGpC; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b8849dc12f6so603910866b.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 05:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770641999; x=1771246799; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jSuIAS3dA0vwtYsZinS/Tz8DT6xIcPyMvSlHpVYFP/Q=;
        b=zLAbkGpCLQP8zHspVH3vAojQy1izapXG3tbhZnepxwhxy6oFXDT9F2pYl9Nyywaeos
         Jntze/2f9+yamj/BX+tZ+v59Po+bogDWPrq+AS/Chc82j7rHAD+YmPLIFXw+D93gmJ6u
         o2dyP8C1NLD56Wd5pe99wuyXPSCFRIQZ/aN6slTqk31myT9sGqz4Xfk5NtSyXhLsy6RP
         5glWv8jolq0GCoHhPXOeIniJhXawAV7Gudrv66wvIuVi4KmN2j6T1mbmZSLvfCxM1eLd
         eV+wRdt2NgjuBOu6bpsfjHzYzdgfaSsdZAdqD9HZSBOfOgh4XC9XpzTpv8WFQVm6BgBl
         3bJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770641999; x=1771246799;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jSuIAS3dA0vwtYsZinS/Tz8DT6xIcPyMvSlHpVYFP/Q=;
        b=FEl/hhseSIp8IhCSDvA52wX3Q0oF0GYQFxFvf+QTx9FohYL+5/VujnPJJg3+stUGal
         N6l5eDHjXJLnFTz0kWDG/987zPYa7LLBCe2G8sUrFpXgDNXlKeucRtQM+hyxdTFo17Y6
         lw96ThSsu7odtXb5fy6w6CO0WpYFMkIRDRNH7TgBYjJn6/Oe3jKv2EWH2Uc+GP4ecto6
         IPkKHWMk5DwsV0w51Ccntn4Axt5brGthA2Flh9PPUczKuAk0/oztYnFi7cQH64F7aqKr
         dLYSlKD2mTgPyLm022C+d+BWeS8mMppSdQuZpxKQVZt3d7iBLZxpaysGMcjkN4529bOJ
         yGLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkpeqEh5OViayi4V3+xrbYPnQuAiCSDsBd63w48VqXDGH7BNU49aomPoR2ArJsgGt/rU97zYaUxmPU@vger.kernel.org
X-Gm-Message-State: AOJu0YyEq1C6+OERocmdE4758VnvmF8DZLBOUimjUg7Zfr0kEN8413EW
	XZggjkRA49Ty8qR2MbThLHDr1EoEr/rBPBzOejN1Wtl+bhKPRC6UrYnVRwhDsOdXwEA=
X-Gm-Gg: AZuq6aIbITjwcgU3KalZ9zgK0EXpyvpFbe8nqkEUaZT/O4c5HgF+1qokNiV57h724m1
	Uv1NmwJH/Ykh3fXWIpa32HqSRn8Ua2Al3fKxv9MXtgN0P//ibdbfF1sun7dT3BT5PTmnMifyuH4
	3zAUkjrWOl9Bd780zDYpp4QPl531jI5x2/Qowh1Vl+N/s7ZxRRzCGojlti49PXeJlxDLIXNztqt
	WcXB2TU37D5T3NfrMN6KrxKqu30XWo5ZSKHoSAC5xsVaz5/FNUgHx/qAekjb90yqyzQKlOOqp0Z
	F+OHxZDQOj1MzhQBFJEa8KhSADLenoqZyF3mttOpm9IQ1mIjd7b/3IGaW4wlzOZtt9SYO0fsY4u
	nAc15V+BTrWWk0THW9DL6BSk8TQgCflWtSYIMU1+HSzzGwh31VIWEWPaDzSk2ZC+3YIO6BS7BS7
	nzLtJ4ev/Fng494W+TJ0tjJ3YyY0tkf05L4rYyQ77C8Hxog21KPt8S1Oz4G1sr4QmrHLNe+w==
X-Received: by 2002:a17:907:3cc7:b0:b87:1839:2600 with SMTP id a640c23a62f3a-b8edf344224mr630775866b.33.1770641999349;
        Mon, 09 Feb 2026 04:59:59 -0800 (PST)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65983ec70fdsm2803040a12.15.2026.02.09.04.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 04:59:59 -0800 (PST)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Subject: [PATCH v3 0/3] Add support for Awinic AW86938 haptic driver
Date: Mon, 09 Feb 2026 13:59:44 +0100
Message-Id: <20260209-aw86938-driver-v3-0-5c79cff30492@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEDaiWkC/2XPsRLCIAwG4FfpMYsHoa3o5Ht4DqkEm8G2QkW9n
 u8uWl10/JPLl2QSkQJTFJtiEoESR+67HMyiEIcWuyNJdjkLUFBprY3Eq63XxkoXOFGQTelROQN
 gEUQeGgJ5vr3B3T7nluPYh/vbT/pVnSlQ5S+VtFSSGrfStrbOG9x65DC0fUfLQ38SLy7Bl6iVB
 vtHQCaaShMpWyP66pd4zCcGOl/yq+N8p2gwksz9E4+boqPbKD8LVnni8QSKBCYYJAEAAA==
X-Change-ID: 20251113-aw86938-driver-b4fa0d3228a2
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770641998; l=1380;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=ccDGQKcZ6ePGyeyFfLhe3FHr6NiUQV+ntQLRKhAADt4=;
 b=w6jQK/AuWxQgRLy4mYkgWfxsIgi1k0f5NWQjQyV6pxjgcc0WJkYvCpxy3w+s7ok46PY/HInXO
 n1nGk4LnnvRBNE5UYaYsE9KYXL5sXZprpfvkgq0FpZ6CQCVx1nVFSEf
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263984-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,fairphone.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[fairphone.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[griffin.kroah@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:mid,fairphone.com:dkim,fairphone.com:email]
X-Rspamd-Queue-Id: CC2FD10F47F
X-Rspamd-Action: no action

Add devicetree bindings and a driver for the AW86938 haptic driver chip,
and add it to the devicetree for the Fairphone 6 smartphone.

This driver is very similar to the AW86927, and shares many core
features.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
Changes in v3:
- Changed how compatibility was handled according to feedback
- Added reset gpio config for vibrator node
- Link to v2: https://lore.kernel.org/r/20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com

Changes in v2:
- Added AW86938 specific registers
- Added chip model enum to differentiate chips
- Link to v1: https://lore.kernel.org/r/20251204-aw86938-driver-v1-0-ebd71868df3a@fairphone.com

---
Griffin Kroah-Hartman (3):
      dt-bindings: input: awinic,aw86927: Add Awinic AW86938
      Input: aw86938 - add driver for Awinic AW86938
      arm64: dts: qcom: milos-fairphone-fp6: Add vibrator support

 .../devicetree/bindings/input/awinic,aw86927.yaml  |  7 ++-
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts   | 26 ++++++++++-
 drivers/input/misc/aw86927.c                       | 54 ++++++++++++++++++----
 3 files changed, 76 insertions(+), 11 deletions(-)
---
base-commit: 0364de6be161e2360cbb1f26d5aff5b343ef7bb0
change-id: 20251113-aw86938-driver-b4fa0d3228a2

Best regards,
-- 
Griffin Kroah-Hartman <griffin.kroah@fairphone.com>


