Return-Path: <devicetree+bounces-285955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKuDKbcS12kSKwgAu9opvQ
	(envelope-from <devicetree+bounces-285955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 04:45:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D2C3C5A48
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 04:45:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C34C6300E3B8
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 02:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E504366073;
	Thu,  9 Apr 2026 02:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="CPgyoBPe"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A7F3191A5;
	Thu,  9 Apr 2026 02:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775702536; cv=none; b=o5144jCEIP7I4UrWyV+/zBD3HKD+Le17kbWx3DJY8rPwLDoj+fhk5mslz/jkuqHHmfEgefNJHw/QbqNvw4rwNuQQYR9AQ3ns0g+glCwplVGVJHiFCgj3VpMumCte4mTBUWNUgOe4ZWGoCh8MZvdBRuojkXpnk0pikOgS8yvvcg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775702536; c=relaxed/simple;
	bh=avkBRlVvqGENkwJCm67RuhypnfyQsQyll2W/+C2W1pQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hWDfLdiFIhz/dadfM0NX6AVzcBIg4stT7FCIuRwU4dTbvYuVGCUYIC+yEZOguvATF8OLZHzjkhimow95oP3pMc2CXDu0cYlVT4ts9a9Bc/qdgIV/diqejzNkXKfegkEj0lNTmNXp3IVowFWlMAl2GlaQ6e/Om4g/jLgv3A3c1x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=CPgyoBPe; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1775702532;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=XARS5rwlzbvWSjXYf3dbuEzBJGuybKUvL6KHWyiBriU=;
	b=CPgyoBPe4JRas3Ee3YWmijXscgwxni32jRrkom9yCRCE//c13XmwLpWQkXsB39SD/+UpEs
	5MexFZSBgCJjfyjMV51lum7CnyKYFrq+LZTb9r5xClfEHHI8dUTjYZDlsROOlku17PsOhf
	7akqz8iURGAZP+u/ixSKLaNDpC7lL6vcf3OLT+HTH0zR/1+IxOoVA6KmqYuS+iw+l0cgvY
	K16eSKXhpeF3jRzLr+6LNjT8k3Q60njNmwUlqXAnQaf/tG/60E4Q6TUBezB5nlugYxZl8P
	RwpMzw8Zq0QeQzlpTuL0e0ReAFjxCWQ0hvmXPcIvAirnDF8qObmrRBUOpfQLqw==
From: Paul Sajna <sajattack@postmarketos.org>
Subject: [PATCH 0/4] arm64: dts: qcom: sdm845-lg: Devicetree followup
Date: Wed, 08 Apr 2026 19:41:11 -0700
Message-Id: <20260408-judyln-followup-v1-0-823467519b59@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/y2NQW6DMBBFr4K87lTOgMFhlXtUWRh7ppkWY4IhT
 Rvl7nWTLt+X3vs3lWkRyqqvbmqhi2RJU4HdS6X8yU3vBBIKK9TY6kZb+NjC9zgBp3FMX9sMpFH
 vuA7Y0V4Va16I5foovh2fvNB5K+H1OapIObtHuK/+sx3kT5nhlPIK3kU4R4FiwcWAhsDOOm18a
 2p7kKusr/7n72lwmcCnGGXtqzB0xJ4aR1i7YKhBNmxMg5YN7plbHGzLblDH+/0XGVo4JfUAAAA
 =
X-Change-ID: 20260408-judyln-followup-e0201f3d27e9
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jeff Johnson <jeff.johnson@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 Paul Sajna <sajattack@postmarketos.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775702528; l=1338;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=avkBRlVvqGENkwJCm67RuhypnfyQsQyll2W/+C2W1pQ=;
 b=ILALBJAfcfnz/pZp2yv5lMyA3Qz4YL86QPQca6zfFTM7mIXePk9V/M0btI4pRVarSgTprGwlt
 +/h0HDek+W0CK3Y/3uyg4r/8r/qvggJo7V7SLaYHBu3k40t19Xcx2uX
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285955-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sajattack@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[postmarketos.org:dkim,postmarketos.org:email,postmarketos.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ixit.cz:email]
X-Rspamd-Queue-Id: 02D2C3C5A48
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Re-send 3 patches that got dropped from 20260331-judyln-dts-v7-0-87217b15fefb@postmarketos.org

(https://lore.kernel.org/linux-arm-msm/177541802142.2061229.9094394728986735362.b4-ty@kernel.org/)

Re-enable qcom,snoc-host-cap-skip-quirk

To: 

Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
Paul Sajna (4):
      arm64: dts: qcom: sdm845-lg-common: Add camera flash
      arm64: dts: qcom: sdm845-lg-common: Change ipa gsi-loader to 'self', add memory-region
      arm64: dts: qcom: sdm845-lg-{judyln, judyp}: Reference memory region in fb
      arm64: dts: qcom: sdm845-lg: Enable qcom,snoc-host-cap-skip-quirk

 arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 22 +++++++++++++++++++---
 arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts  |  4 ++--
 arch/arm64/boot/dts/qcom/sdm845-lg-judyp.dts   |  4 ++--
 3 files changed, 23 insertions(+), 7 deletions(-)
---
base-commit: db7efce4ae23ad5e42f5f55428f529ff62b86fab
change-id: 20260408-judyln-followup-e0201f3d27e9
prerequisite-message-id: 20260407-skip-host-cam-qmi-req-v5-0-dfa8a05c6538@ixit.cz
prerequisite-patch-id: ac24dd000a2ecf55cb4da9fbc62e4834530036fd
prerequisite-patch-id: 9c69ab29256c15a0e8ac1c3b9ef64b27661c7815
prerequisite-patch-id: bd62d277785dc0a3bed4beff8d22d7bfd7e491fb

Best regards,
-- 
Paul Sajna <sajattack@postmarketos.org>


