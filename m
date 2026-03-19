Return-Path: <devicetree+bounces-277604-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBoVHH6wu2k8mgIAu9opvQ
	(envelope-from <devicetree+bounces-277604-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:14:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E35212C7B8F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:14:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3EEC303A5C1
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3FE53A784B;
	Thu, 19 Mar 2026 08:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="QxEVmRTs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF803A6B8D
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773907974; cv=none; b=B2yB6VuVpiYiVOdmNQbI75QaX+4fNa1CWNKBmuAdnxVg5o2KBVsNtOrY6FIiGg3nPvsGyyoi7fKdhTwNU5Ci6M9kV6tTcIk3yZ8lLIulwBgADu7AskJpPvNBi39h22uGMRdFdfbMutuWKwykBCCCIA+RCBCajWR7myTwXzlWuc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773907974; c=relaxed/simple;
	bh=TUOoVZbjO+iFbYwjUmr6bbaQgTh+bqzs6sxID1OEThs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Z6GO80Qp/y78EyrnHWy3avK5h22V8+alIzmSoJ/83FAMDbdWJxcRCWelVs/nLpsJcmNXkWBvJTyRakcbmZ5v8S4X8v/Q6AWj60oZoQunsb6mpqaUF8buG3vNbMYxahBNS2aoOctYE/s4BKU61xu/2S6aQMYemAJKrOuzBlvTDIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=QxEVmRTs; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b9825ba7f9dso6008366b.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 01:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773907972; x=1774512772; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8rOKIKrnNG7thFoePiGqUSEd9q+P+T3Ql6ZAbLy3uYI=;
        b=QxEVmRTs3kfR+IpXccwtJ11PafJ51DBrAbSmxHJxZPCWPRM611/F7jTxiHhfg7Cqmg
         Ci8Q78A1RQO/1c1UWw0ILv9zbXC74nyFl3ieuieu6KprAOmaN0ubopZlsk1jWjSQV1FC
         zB+KeF2UuWUm5kiV6tPUuS3IEAbBHnd/cfJfVkUGa7qIcDc3/yfdAYwtQv3uDVXFL5T7
         nxKzWIB8R3m6PZTO6tRujQpbktEk3veGYl+EM8oBbB2O2fwyAI7tvU3p631dPBPPJzlF
         p4Uleg6TYRXQH2X0iUeRVd9EW72vNm0VWyuNKwPQLQt4IwbQih4ishFpOv9g5lWMM/S2
         Fb9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773907972; x=1774512772;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8rOKIKrnNG7thFoePiGqUSEd9q+P+T3Ql6ZAbLy3uYI=;
        b=ghmmeHndQkbxsiJi8D1wn9lDyXpk7iR8lp33J38flLbvb+HLoPF/XJNT5DQDb0I4kt
         86P16sn5J3fo1FySxkFaHIqGvIcCPM3yddbBzi+2k0yI6TIvIk6m4U82OcTw2iiTby0+
         035dft6Fg4+fEXGiPd+8hgDN8hbzf3HLBUuJ5/Qm4PZID/1Dn4+MUXFgfxA4VCgFAu/A
         CyefuBHuh3/J3fhlX0Owj2GJGS4oLOq+oTAg7s36tNqeFrVofIig+KD+qzTZexT1BwFQ
         cQ9hUSwbNfbhaD3B/718L2MYIb2J673pYFEBtlAqpZ8wKiW+aOZrKpxeaJqkDK3KsYYL
         EgCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcHT99YgrBHx/f82MrdsM7uWKy7vvK3oqA8nSQP/s//4C+5ZWXHQaSiXs6IQK0Ku/jckEwbmFP/GQK@vger.kernel.org
X-Gm-Message-State: AOJu0YyHWRZvKuYXtQDz6NyHzC8UGh4C+td+3Rzxfj364CDUMDKvC5Zk
	gSDQ13rg2tt/Zqk/SVu5pmttZg84nGPH4DLm6OBErsk8zb/b3MM3uTHid+sWddWowD4=
X-Gm-Gg: ATEYQzwOMavq4qpZiOScLpgi/WMS2yU2i6xCR8okYatNfWirKLIZR2wARS9tCfacDME
	1LJYS6ZzQELNDiRsXWvIH/enIegnmgxCJ7YsdBs5IhZWG7D5SoojL/RFB2XvYJLcUxsxDwVyQl/
	XPMMN+BxHyhO3Dn4+sM1L+jIAq/FvCltD5yuoHsZskNDTkOT83/zxvkpIYKzseIe7t+Pkj5TU8v
	NsJMyFvkCSqBjgwNoU8W8O6UiG9oN6mcfamQz4eGkOIdCl3eflltJGr173weix28m6JY49PH0TN
	1Hw+tefyHuYUwILi18Kx+4/3wBGfZbKIPxVk0F1Qi3UshlORpYlYh7GpfnuV1TAzuuvQVNXVZUq
	sVpHWu9iTi0eLKXjWohqqAOjPoWA5aohGil3mTLwq04t2OiubQHIywnm/iHCNbdufaTmjUpnKW6
	ljCXKxlnWqnI2H2YFJSg9e9lP1yiqpmpbGqvw8dEpAJW/nLANKAPNrN7Cq7XapxTQx52XjySW3K
	vFnXg==
X-Received: by 2002:a17:906:6a1e:b0:b98:65e:90a with SMTP id a640c23a62f3a-b980f925794mr144559566b.3.1773907971715;
        Thu, 19 Mar 2026 01:12:51 -0700 (PDT)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f1751cfesm399884566b.63.2026.03.19.01.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 01:12:51 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/2] Front camera enablement on Fairphone 5
Date: Thu, 19 Mar 2026 09:12:48 +0100
Message-Id: <20260319-fp5-s5kjn1-v2-0-6840da94c574@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22NQQ7CIBBFr9LMWgxDLW1ceQ/TBamDjEaoUImm6
 d3FunDj8r3kvz9DosiUYF/NEClz4uALqE0FgzP+TIJPhUFJpWWNtbBjI1JzvXgUnTSd1oZIaYQ
 yGCNZfq6xY//lSPdHaU4/6ThNIb7Ww4wf+7edUUhhzc7i0Kq2xu5gDcfRBU/bIdygX5blDcEWQ
 pa9AAAA
X-Change-ID: 20260313-fp5-s5kjn1-80a866aee261
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773907970; l=911;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=TUOoVZbjO+iFbYwjUmr6bbaQgTh+bqzs6sxID1OEThs=;
 b=3h9k1o1poytneYxAr1tewAZ2fG5Ti3jGJe1qat/BypAgCSIEzsNQjfT5dsJu13xmLuOK8uPlF
 nQ+gx93TGFWDVYaeUb+ZSNs6+S72R/X+EnPnHjdFFmLEFthpTTy/kTe
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277604-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid]
X-Rspamd-Queue-Id: E35212C7B8F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since the Samsung S5KJN1 driver was upstreamed recently, we can enable
the camera upstream by adding a few bits to dts.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Move cam-mclk3-default-state to kodiak.dtsi
- Pick up tags, drop applied patch
- Link to v1: https://lore.kernel.org/r/20260313-fp5-s5kjn1-v1-0-fa4f1c727318@fairphone.com

---
Luca Weiss (2):
      arm64: dts: qcom: qcm6490-fairphone-fp5: Sort pinctrl nodes by pins
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add front camera support

 arch/arm64/boot/dts/qcom/kodiak.dtsi               |   7 ++
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 121 ++++++++++++++-------
 2 files changed, 90 insertions(+), 38 deletions(-)
---
base-commit: 55154681052313ecee04ce301de6666575cc54e7
change-id: 20260313-fp5-s5kjn1-80a866aee261

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


